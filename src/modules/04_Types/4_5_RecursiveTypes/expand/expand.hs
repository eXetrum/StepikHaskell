infixl 6 :+:
infixl 7 :*:
data Expr = Val Int | Expr :+: Expr | Expr :*: Expr
    deriving (Show, Eq)

expand :: Expr -> Expr
expand e
  | e /= e' = expand e'
  | otherwise = e
  where
    e' = go e
    go :: Expr -> Expr
    go ((e1 :+: e2) :*: e) = go e1 :*: go e :+: go e2 :*: go e
    go (e :*: (e1 :+: e2)) = go e :*: go e1 :+: go e :*: go e2
    go (e1 :+: e2) = go e1 :+: go e2
    go (e1 :*: e2) = go e1 :*: go e2
    go e = e