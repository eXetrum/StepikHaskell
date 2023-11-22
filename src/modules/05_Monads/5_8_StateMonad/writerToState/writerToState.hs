writerToState :: Monoid w => Writer w a -> State w a
writerToState m = State $ \s -> let (v, l) = runWriter m in (v, s `mappend` l)