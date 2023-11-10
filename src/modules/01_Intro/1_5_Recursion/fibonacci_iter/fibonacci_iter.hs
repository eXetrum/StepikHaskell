fibonacci :: Integer -> Integer
fibonacci n = helper 1 0 n
    
helper fj fi n 
    | n == 0 = fi
    | n > 0 = helper (fi + fj) fj (n - 1)
    | n < 0 = helper fi (fj - fi) (n + 1)