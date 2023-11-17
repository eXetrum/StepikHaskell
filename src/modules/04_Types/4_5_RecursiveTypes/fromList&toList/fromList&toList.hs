data List a = Nil | Cons a (List a)

fromList :: List a -> [a]
fromList Nil = []
fromList (Cons x rest) = x : fromList rest

toList :: [a] -> List a
toList [] = Nil
toList (x:xs) = (Cons x) (toList xs)