instance Functor SomeType where
    fmap f x = x >>= k
      where
        k x = return $ f x