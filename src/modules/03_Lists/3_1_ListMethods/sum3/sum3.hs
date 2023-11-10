sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 xs ys zs = go xs ys zs
  where
    go [] [] [] = []
    go (x:xs) [] [] = x : go xs [] []
    go [] (y:ys) [] = y : go [] ys []
    go [] [] (z:zs) = z : go [] [] zs
    go (x:xs) (y:ys) [] = (x + y) : go xs ys []
    go (x:xs) [] (z:zs) = (x + z) : go xs [] zs
    go [] (y:ys) (z:zs) = (y + z) : go [] ys zs
    go (x:xs) (y:ys) (z:zs) = (x + y + z) : go xs ys zs