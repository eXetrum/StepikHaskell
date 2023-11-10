perms :: [a] -> [[a]]
perms [] = [[]]
perms (x:xs) = concatMap (insertAtEveryPosition x) (perms xs)
  where
    insertAtEveryPosition :: a -> [a] -> [[a]]
    insertAtEveryPosition x [] = [[x]]
    insertAtEveryPosition x (y:ys) = (x:y:ys) : map (y:) (insertAtEveryPosition x ys)