nTimes:: a -> Int -> [a]
nTimes fill n 
    | n == 0 = []
    | n == 1 = fill : []
    | otherwise = fill : (nTimes fill (n - 1))