evenOnly :: [a] -> [a]
evenOnly = foldr (\(n,x) xs -> if even n then x:xs else xs) [] . zip [1..]