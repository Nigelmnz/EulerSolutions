import Data.List

primesTo n = 2 : sieve [3,5..n] where 
	sieve (x:xs)
		| x*x > n = x : xs
		| otherwise = x : sieve [t | t <- xs, mod t x /= 0]

sumPrimes = sum . primesTo

result = sumPrimes 2000000

main = print $ result