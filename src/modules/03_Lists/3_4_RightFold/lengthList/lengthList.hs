lengthList :: [a] -> Int
lengthList = foldr (\x s -> 1 + s) 0