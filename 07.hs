isPrime n = null[x | x<- takeWhile(\x -> (x*x <= n)) [2..], mod n x == 0] --Nieve
nthPrime n = (!!(n-1)) $ filter isPrime [2..] 

main = print $ nthPrime 10001