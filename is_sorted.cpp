#include <cstdio>
#include <cstdlib>

int main(int argc, char** argv){
	if (argc < 1){
INVALID_INPUT:
		printf(
			"Usage: %s [inputfile]\n",
			argv[0]
		);
		return 0;
	}

	FILE* file = nullptr;
	file = fopen(argv[1], "r");
	if (file == nullptr){
		printf("Unable to open %s\n", argv[1]);
		goto INVALID_INPUT;
	}

	int size = 0;
	fscanf(file, "%d", &size);
	printf("Size: %d\n", size);

	int pre, cur, i=1;
	fscanf(file, "%d", &pre);
	for (; i<size; i++){
		if(fscanf(file, "%d", &cur)!=1){
			printf("Number of record is not right\n");
			goto INVALID_INPUT;
		}
		if (pre > cur){
			printf("Not sorted\n");
			printf("%8d\t%15d\n", i-1, pre);
			printf("%8d\t%15d\n", i,   cur);
			return 0;
		}
		else pre = cur;
	}
	
	printf("Sorted\n");
	return 0;
}















