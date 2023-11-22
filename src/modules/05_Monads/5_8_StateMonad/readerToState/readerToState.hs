readerToState :: Reader r a -> State r a
readerToState m = state (\s -> (runReader m s, s))