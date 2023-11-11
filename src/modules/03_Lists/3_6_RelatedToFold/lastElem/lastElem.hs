lastElem :: [a] -> a
lastElem = foldl1 (\_ y -> y)