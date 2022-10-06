gcde :: (Integer, Integer) -> Integer
gcde(x, y)
    | (x == y) = x
    | (x > y) = gcde((x - y), y)
    | otherwise = gcde(y, (y - x))