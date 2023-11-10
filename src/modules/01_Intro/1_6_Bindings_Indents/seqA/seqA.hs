seqA :: Integer -> Integer
seqA n = let
    helper fk fj fi n
        | n == 0 = fi
        | otherwise = helper (fk + fj - 2 * fi) fk fj (n - 1)
    in helper 3 2 1 n