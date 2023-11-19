instance Functor (Entry k1 k2) where
    fmap f (Entry x y) = Entry x (f y)

instance Functor (Map k1 k2) where
    fmap f (Map xs) = Map [fmap f x | x <- xs]