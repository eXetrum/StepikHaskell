instance Functor Tree where
    fmap f (Leaf (Just x))              = Leaf (Just (f x))
    fmap f (Leaf Nothing)               = Leaf Nothing
    fmap f (Branch left (Just x) right) = Branch (fmap f left) (Just (f x)) (fmap f right)
    fmap f (Branch left Nothing right)  = Branch (fmap f left) Nothing (fmap f right)