void main() {
	int curnum = 20;
	while(!divisCheck(curnum)){
		curnum++;
	}
	print(curnum);
}

bool divisCheck(int n){
	for(int i = 1; i <= 20; i++){
		if(n%i==0) continue;
		else return false;
	}
	return true;
}