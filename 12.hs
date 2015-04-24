import Data.List
import Data.Maybe

nthTriangleNum n = round $ ((n+1)*n)/2

getFactorLen n
	| is_square n = (getFactorLen' n) - 1
	| otherwise = getFactorLen' n

getFactorLen' n = 2* length [f | f<- takeWhile(\x -> (x*x <= n)) [1..], mod n f == 0] 

is_square n = sq * sq == n
    where sq = floor $ sqrt $ (fromIntegral n::Double)

result = nthTriangleNum $ fst $ fromJust $ find ((\(_,l)-> l > 500)) [ (n , getFactorLen $ nthTriangleNum n) | n<-[1..]]

main = print $ result