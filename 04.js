var largest = 0

for(var a = 999; a >= 100; a--){
	for(var b = a; b >= 100; b--){
		n = a*b
		if(isPalindromic(n)){ 
			if(n > largest) largest = n
			break
		}
	}
}

print(largest);

function isPalindromic(n){
	str = '' + n
	len = str.length
	if(len <= 1){
		return true
	}else if(str[0] == str[len - 1]){
		return isPalindromic(str.substr(1,len-2))
	}else{
		return false
	}
}