checkPrime :: Int -> Bool
checkPrime 1 = False
checkPrime 2 = True
checkPrime n 
    | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False
	| otherwise = True