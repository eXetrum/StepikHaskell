newtype Maybe' a = Maybe' {getMaybe :: Maybe a}
  deriving (Eq, Show)

instance (Monoid a) => Monoid (Maybe' a) where
  mempty = Maybe' $ Just mempty
  (Maybe' (Just a)) `mappend` (Maybe' (Just b)) = Maybe' (Just (a `mappend` b))
  _ `mappend` _ = Maybe' Nothing
