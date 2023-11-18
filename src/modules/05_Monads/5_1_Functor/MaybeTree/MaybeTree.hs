import Data.Functor

instance Functor Tree where
    fmap f (Leaf x)       = (Leaf $ f <$> x)
    fmap f (Branch l x r) = Branch (f <$> l) (f <$> x) (f <$> r)