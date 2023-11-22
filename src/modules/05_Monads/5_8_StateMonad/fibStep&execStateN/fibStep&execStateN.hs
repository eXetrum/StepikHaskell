fibStep :: State (Integer, Integer) ()
fibStep = state $ \(a, b) -> ((), (b, a + b))

execStateN :: Int -> State s a -> s -> s
execStateN n m = execState (replicateM_ n m)