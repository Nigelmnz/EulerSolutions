var input = 600851475143
var LPF = 1

for (var i = 1; i <= input; i += 2) {
	if(input%i === 0 && isPrime(i)){
		input /= i
		LPF = i
	}
}

print(LPF)

//Nieve primaility check. Sieves would be better, but isPrime is rarely called
function isPrime(n){
	for(var i = 2; i <= Math.sqrt(n); i++){
		if(n%i === 0) return false
	}
	return true
}
