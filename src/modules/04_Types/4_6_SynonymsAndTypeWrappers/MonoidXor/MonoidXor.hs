newtype Xor = Xor { getXor :: Bool }
    deriving (Eq,Show)

instance Monoid Xor where
    mempty = Xor False
    (Xor x) `mappend` (Xor y) = Xor $ x /= y 