#include <cstdio>
#include <cstdlib>
#include <functional>


int generate_random_number(){
	return (rand()/0xffffffff)*RAND_MAX + rand();

	//	return rand() & 0xfffffff;
//	return rand() % 10000000;
}

int main(int argc, char** argv){
	if (argc < 2){
INVALID_INPUT:
		printf(
			"Usage: %s [data_size] [outputfile]\n",
			argv[0]
		);
		return 0;
	}
	int size = 0;
	if (sscanf(argv[1], "%d", &size) != 1){
		goto INVALID_INPUT;
	}
	FILE* file = fopen(argv[2], "w");
	if (file == nullptr) {
		printf("Unable to open %s\n", argv[2]);
		goto INVALID_INPUT;
	}

	fprintf(file, "%d\n", size);

	for (int i=0; i<size; i++){
		int random_number = generate_random_number();
//		printf("%d\n", random_number);
//		fflush(stdout);
		//fprintf(file, "%d\n", generate_random_number());
		fprintf(file, "%d\n", random_number);
	}
	fflush(stdout);
	fclose(file);
	return 0;
}

















