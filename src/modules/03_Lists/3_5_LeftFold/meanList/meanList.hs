meanList :: [Double] -> Double
meanList = (\(x,y) -> if y == 0 then 0 else x/y) . foldr (\x (s,l) -> (x + s, 1 + l)) (0, 0)