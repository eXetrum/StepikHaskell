numberTree :: Tree () -> Tree Integer
numberTree tree = evalState (number tree) 1
  where
    number :: Tree () -> State Integer (Tree Integer)
    number (Leaf ()) = get >>= \i -> modify (+1) >> return (Leaf i)
    number (Fork l () r) = do
      la <- number l
      i <- get
      modify (+1)
      ra <- number r
      return $ Fork la i ra