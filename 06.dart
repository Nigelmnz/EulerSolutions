 // import "dart:math";
main() {
	int sqSum = 0;
	int sum = 0;
	for(int i=1; i<=100; i++){
		sqSum += i*i;
		sum += i;
	}

	print(sum*sum - sqSum);
}
