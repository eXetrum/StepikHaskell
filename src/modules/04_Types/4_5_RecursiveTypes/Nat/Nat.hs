data Nat = Zero | Suc Nat
  deriving Show

fromNat :: Nat -> Integer
fromNat Zero = 0
fromNat (Suc n) = fromNat n + 1

toNat :: Integer -> Nat
toNat 0 = Zero
toNat x = Suc (toNat (x - 1))

add :: Nat -> Nat -> Nat
add Zero x = x
add (Suc x) y = add x (Suc y)

mul :: Nat -> Nat -> Nat
mul Zero _ = Zero
mul (Suc x) y = add y (mul x y)

fac :: Nat -> Nat
fac Zero = (Suc Zero)
fac (Suc x) = mul (Suc x) (fac x)