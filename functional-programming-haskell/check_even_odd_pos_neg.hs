checkEvenOddPosNeg :: Integer -> String
checkEvenOddPosNeg x
    | x `mod` 2 == 0, x < 0 = "Genap Negatif"
    | x `mod` 2 == 0, x > 0 = "Genap Positif"
    | x `mod` 2 == 1, x < 0 = "Ganjil Negatif"
    | x `mod` 2 == 1, x > 0 = "Ganjil Positif"
    | otherwise = "Special Numbers"