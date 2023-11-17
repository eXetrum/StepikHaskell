data Tree a = Leaf a | Node (Tree a) (Tree a)

avg :: Tree Int -> Int
avg t =
    let (c,s) = go t
    in s `div` c
  where
    go :: Tree Int -> (Int,Int)
    go (Leaf x) = (1, x)
    go (Node left right) = (cntL + cntR, sumL + sumR)
      where
        (cntL, sumL) = go left
        (cntR, sumR) = go right