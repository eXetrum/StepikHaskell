readerToState :: Reader r a -> State r a
readerToState m = State $ \st -> (runReader m st, st)