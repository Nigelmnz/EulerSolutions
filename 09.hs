result = [a*b*(1000-a-b) | a <-[1..500], b <- [1..500], b>a, a^2 + b^2 - (1000-a-b)^2 == 0]

main = print $ result