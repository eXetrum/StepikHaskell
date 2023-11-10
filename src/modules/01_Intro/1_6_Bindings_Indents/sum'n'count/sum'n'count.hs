sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = (hsum, hcount) where
    (hsum, hcount) = if x == 0 then (0, 1) else let
        helper acc_sum acc_count x
            | x == 0 = (acc_sum, acc_count)
            | otherwise = helper (acc_sum + (x `mod` 10)) (acc_count + 1) (x `div` 10)
          in helper 0 0 (abs x)