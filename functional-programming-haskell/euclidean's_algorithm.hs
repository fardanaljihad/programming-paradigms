eGCD :: (Integer, Integer) -> Integer
eGCD(x, y)
    | (x == y) = x
    | (x > y) = eGCD((x - y), y)
    | otherwise = eGCD(y, (y - x))