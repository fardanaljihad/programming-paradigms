cek_nilai :: Integer -> String                  --function declaration 
cek_nilai x                                     --function definition 
    | (x >= 80) = "A"
    | (x >= 75) = "AB"
    | (x >= 70) = "B"
    | (x >= 65) = "BC"
    | (x >= 60) = "C" 
    | (x >= 50) = "D"
    | otherwise = "E"