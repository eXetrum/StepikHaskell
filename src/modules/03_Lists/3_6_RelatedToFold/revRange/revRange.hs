revRange :: (Char,Char) -> [Char]
revRange = unfoldr g where
  g (begin, end)
    | begin > end = Nothing
    | otherwise   = Just (end, (begin, pred end))