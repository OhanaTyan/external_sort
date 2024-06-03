#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <algorithm>
#include <vector>
#include <csetjmp>

jmp_buf env;

int PARALLEL_SIZE;
int current_index;
int parallel_number;


int read_file_time = 0,
	write_file_time = 0;

FILE* ffopen(const char* file_name, const char* mode){
	FILE* file = nullptr;
	file = fopen(file_name, mode);
	if	(strcmp(mode, "r")==0)	read_file_time++;
	else						write_file_time++;
	if (file == nullptr) {
		printf("Unable to open %s\n", file_name);
		longjmp(env, 10);
	}
	fseek(file, 0, SEEK_SET);
	return file;
}

int get_min_number_among_pow_of_2_which_is_greater_than(int x){
	int i=0;
	int xx = x;
	for (; x!=1; x>>=1){
		i++;
	}
	i = 1<<i;
	if (xx == i)return i;
	else		return i<<1;
}

void write_file_name_to_buffer_by_number(char* buffer, int number){
	sprintf(buffer, "temp_file_%d.txt", number);
}

FILE* ffopen(int number, const char* mode){
	char buffer[300];
	write_file_name_to_buffer_by_number(buffer, number);
	return ffopen(buffer, mode);
}

void fclear(FILE* file){
	fseek(file, 0, SEEK_SET);
	fprintf(file, " ");
}


void fclear(const char* file_name){
	FILE* file = ffopen(file_name, "w");
	fclear(file);
	fclose(file);
}

void fclear(int number){
	char buffer[300];
	write_file_name_to_buffer_by_number(buffer, number);
	fclear(buffer);
}

void fmove(FILE* from, FILE* to){
	int size, record;
	fscanf(from,	"%d",	&size);
	fprintf(to  , "%d\n",	size);

	for (int i=0; i<size; i++){
		fscanf(from, "%d", &record);
		fprintf(to, "%d\n", record);
	}
}

void fmove(const char* from, const char* to){
	FILE* ffrom= ffopen(from, "r");
	FILE* tto  = ffopen(to,	  "w");
	fmove(ffrom, tto);
	fclose(ffrom);
	fclose(tto);
	
	fclear(from);
}

void fmove(int from, int to){
	char buffer1[300], buffer2[300];
	write_file_name_to_buffer_by_number(buffer1, from);
	write_file_name_to_buffer_by_number(buffer2, to);
	fmove(buffer1, buffer2);
}


void fmerge(FILE* from1, FILE* from2, FILE* to){
	int child1_size,
		child2_size,
		father_size;
	
	fscanf(from1, "%d", &child1_size);
	fscanf(from2, "%d", &child2_size);
	father_size = child1_size + child2_size;
	fprintf(to,	  "%d\n", father_size);

	int child1_record, child2_record;
	fscanf(from1, "%d", &child1_record);
	fscanf(from2, "%d", &child2_record);

	int child1_index = 0,
		child2_index = 0;
	
	for (;;){
		if (child1_record < child2_record){
			fprintf(to, "%d\n", child1_record);
			child1_index++;
			if (child1_index < child1_size){
				fscanf(from1, "%d", &child1_record);
			}
			else break;
		} else {
			fprintf(to, "%d\n", child2_record);
			child2_index++;
			if (child2_index < child2_size){
				fscanf(from2, "%d", &child2_record);
			}
			else break;
		}
	} 

	for (; child1_index < child1_size; child1_index++){
		fprintf(to, "%d\n", child1_record);
		fscanf(from1, "%d", &child1_record);
	}
	
	for (; child2_index < child2_size; child2_index++){
		fprintf(to, "%d\n", child2_record);
		fscanf(from2, "%d", &child2_record);
	}
}

void fmerge(const char*from1, const char* from2, const char* to){
	FILE* ffrom1 = ffopen(from1, "r");
	FILE* ffrom2 = ffopen(from2, "r");
	FILE* tto	 = ffopen(to,	 "w");
	fmerge(ffrom1, ffrom2, tto);
	fclose(ffrom1);
	fclose(ffrom2);
	fclose(tto);
}

void fmerge(int from1, int from2, int to){
	char buffer1[300],
		 buffer2[300],
		 buffer3[300];
	write_file_name_to_buffer_by_number(buffer1, from1);
	write_file_name_to_buffer_by_number(buffer2, from2);
	write_file_name_to_buffer_by_number(buffer3, to);
	fmerge(buffer1, buffer2, buffer3);
}

void generate_parallel(const char* file_name){
	FILE* input = ffopen(file_name, "r");
	int data_size;

	if (fscanf(input, "%d", &data_size) != 1){
		printf("Invalid file\n");
		longjmp(env, 11);	
	}
	parallel_number = data_size / PARALLEL_SIZE;
	if (data_size % PARALLEL_SIZE) parallel_number++;
	current_index = get_min_number_among_pow_of_2_which_is_greater_than(parallel_number);

	char buffer1[300],
		 buffer2[300];
	
	int file_number;
	int record_count = 0;
	for (int i=0; i<parallel_number; i++){
		file_number = current_index + i;

		int record = 0;
		std::vector<int> v;
		int j;
		for (j=0;
			j<PARALLEL_SIZE && record_count < data_size;
			j++, record_count++
		){
			fscanf(input, "%d", &record);
			v.push_back(record);
		}

		std::sort(v.begin(), v.end());

		write_file_name_to_buffer_by_number(buffer1, file_number);
		FILE* temp_output = ffopen(buffer1, "w");

		int temp_size = j;
		fprintf(temp_output, "%d\n", temp_size);
		
		for (int j=0; j<temp_size; j++){
			fprintf(temp_output, "%d\n", v[j]);
		}
	
		fclose(temp_output);
	}
}

void external_sort(const char* output_file_name){
	int max_child = current_index + parallel_number;//-1;
	for (
		current_index >>=1;
		current_index != 0;
		current_index >>=1,
//		max_child = max_child/2
		max_child = (max_child+1)/2
//		max_child = (max_child)/2+1
	){
		printf("max_child:%d\n", max_child);
		int upper = current_index<<1;
		for (int father=current_index; father<upper; father++){
			int child1 = father*2;
			if (child1 == max_child) break;
			int child2 = child1+1;
			if (child2 == max_child){
				fmove(child1, father);	
				break;
			} else {
				fmerge(child1, child2, father);
			}
		}
	}
	char buffer1[300];	
	write_file_name_to_buffer_by_number(buffer1, 1);
	fmove(buffer1, output_file_name);
	return;

}

int main(int argc, char** argv){
	if (argc < 3){
INVALID_INPUT:
		printf(
			"Usage: %s [parallel_size] [input_file_name] [output_file_name]\n",
			argv[0]
		);
		return -1;
	}

	if (setjmp(env)){
		printf("An error occured\n");
		return 0;
	}
	
	if (sscanf(argv[1], "%d", &PARALLEL_SIZE) != 1){
		goto INVALID_INPUT;
	}

	generate_parallel(argv[2]);

	external_sort(argv[3]);
	return 0;
}


















