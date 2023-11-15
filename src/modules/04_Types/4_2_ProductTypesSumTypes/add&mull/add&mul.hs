import Data.List

-- x + y (carry)	=> 	result (carry')
-- 0 + 0 (0)		=> 		 0 (0)
-- 1 + 0 (0)		=>		 1 (0)
-- 0 + 1 (0)		=>		 1 (0)
-- 1 + 1 (0)		=>		 0 (1)
-- 0 + 0 (1)		=>		 1 (0)
-- 1 + 0 (1)		=>		 0 (1)
-- 0 + 1 (1)		=>		 0 (1)
-- 1 + 1 (1)		=>		 1 (1)

-- x - y (borrow)	=> 	result (borrow')
-- 0 - 0 (0)		=> 		 0 (0)
-- 1 - 0 (0)		=>		 1 (0)
-- 0 - 1 (0)		=>		 1 (1)
-- 1 - 1 (0)		=>		 0 (0)
-- 0 - 0 (1)		=>		 1 (1)
-- 1 - 0 (1)		=>		 0 (0)
-- 0 - 1 (1)		=>		 0 (1)
-- 1 - 1 (1)		=>		 1 (1)

data Bit = Zero | One deriving (Eq, Show, Ord)
data Sign = Minus | Plus deriving (Eq, Show)
data Z = Z Sign [Bit] deriving (Show)

instance Eq Z where
  (Z signX bitsX) == (Z signY bitsY) = signX == signY && bitsX == bitsY


xorBit :: Bit -> Bit -> Bit
xorBit Zero Zero = Zero
xorBit One One = Zero
xorBit _ _ = One

andBit :: Bit -> Bit -> Bit
andBit One One = One
andBit _ _ = Zero

orBit :: Bit -> Bit -> Bit
orBit Zero Zero = Zero
orBit _ _ = One

notBit :: Bit -> Bit
notBit One = Zero
notBit Zero = One

negateSign :: Sign -> Sign
negateSign Plus = Minus
negateSign Minus = Plus

alignLists :: [Bit] -> [Bit] -> ([Bit], [Bit])
alignLists xs ys
  | lenX < lenY = (padWithZeros xs (lenY - lenX), ys)
  | lenX > lenY = (xs, padWithZeros ys (lenX - lenY))
  | otherwise = (xs, ys)
  where
    lenX = length xs
    lenY = length ys

padWithZeros :: [Bit] -> Int -> [Bit]
padWithZeros bits n = bits ++ replicate (n+1) Zero

dropLeadingZeros :: Z -> Z
dropLeadingZeros (Z sign bits) = Z sign (reverse . dropWhile (\x -> x == Zero) $ reverse bits)

shiftZ :: Z -> Int -> Z
shiftZ (Z sign bits) n = (Z sign ((replicate n Zero) ++ bits))


addWithCarry :: [Bit] -> [Bit] -> Bit -> [Bit]
addWithCarry [] [] carry = if carry == One then [One] else []
addWithCarry [] (y:ys) carry = (xorBit y carry) : addWithCarry [] ys (andBit y carry)
addWithCarry (x:xs) [] carry = (xorBit x carry) : addWithCarry xs [] (andBit x carry)
addWithCarry (x:xs) (y:ys) carry = (xorBit (xorBit x y) carry) : addWithCarry xs ys ((andBit x y) `orBit` (andBit x carry) `orBit` (andBit y carry))

compareAbs :: [Bit] -> [Bit] -> Ordering
compareAbs revAlignedBitsX revAlignedBitsY = cmp revAlignedBitsX revAlignedBitsY
  where
    cmp [] [] = EQ
    cmp (x:xs) (y:ys) = if x == y then cmp xs ys else if x < y then LT else GT

subtractWithBorrow :: [Bit] -> [Bit] -> Bit -> [Bit]
subtractWithBorrow xs ys borrow = subtractWithBorrow' xs (cycle ys) borrow

subtractWithBorrow' :: [Bit] -> [Bit] -> Bit -> [Bit]
subtractWithBorrow' [] _ borrow = if borrow == One then [One] else []
subtractWithBorrow' (x:xs) (y:ys) borrow =
  case (xorBit x (xorBit y borrow), orBit (andBit (notBit x) (orBit y borrow)) (andBit y borrow)) of
    (result, carry) -> result : subtractWithBorrow' xs ys carry

add' :: Z -> Z -> Z
add' (Z signX alignedBitsX) (Z signY alignedBitsY) = 
  case compareAbs (reverse alignedBitsX) (reverse alignedBitsY) of
    LT -> dropLeadingZeros (Z signY (subtractWithBorrow alignedBitsY alignedBitsX Zero))
    GT -> dropLeadingZeros (Z signX (subtractWithBorrow alignedBitsX alignedBitsY Zero))
    EQ -> Z Plus []

add :: Z -> Z -> Z
add (Z Plus bitsX) (Z Plus bitsY) = (Z Plus (addWithCarry bitsX bitsY Zero))
add (Z Minus bitsX) (Z Minus bitsY) = (Z Minus (addWithCarry bitsX bitsY Zero))
add (Z signX bitsX) (Z signY bitsY) = add' (Z signX (fst $ alignLists bitsX bitsY)) (Z signY (snd $ alignLists bitsX bitsY))


mulBits :: [Bit] -> [Bit] -> [Bit]
mulBits [] _ = []
mulBits (x:xs) ys = let
  (Z _ bits) = add (Z Plus (multiplyByBit x ys)) (Z Plus (Zero : mulBits xs ys))
  in bits

multiplyByBit :: Bit -> [Bit] -> [Bit]
multiplyByBit _ [] = []
multiplyByBit b (y:ys) = if b == One then y : multiplyByBit b ys else Zero : multiplyByBit b ys

mul :: Z -> Z -> Z
mul (Z _ []) _ = (Z Plus [])
mul _ (Z _ []) = (Z Plus [])
mul (Z signX bitsX) (Z signY bitsY) = let
  signResult = if signX == signY then Plus else Minus
  (alignedBitsX, alignedBitsY) = alignLists bitsX bitsY
  bitsResult = mulBits alignedBitsX alignedBitsY
  in dropLeadingZeros (Z signResult bitsResult)


----------------------------------------------------------
----------------- Debug part, test cases -----------------
----------------------------------------------------------
fromBit :: (Integral a) => Bit -> a
fromBit Zero = 0
fromBit One = 1

fromBits :: (Integral a) => [Bit] -> [a]
fromBits = map fromBit

fromSign :: (Integral a) => Sign -> a
fromSign Minus = -1
fromSign Plus = 1

fromZ :: (Integral a) => Z -> a
fromZ (Z sign bits) = sign' * value
  where
    sign' = fromSign sign
    value = (toDecimal . fromBits . reverse) bits

intoBit :: (Integral a) => a -> Bit
intoBit 0 = Zero
intoBit 1 = One
intoBit _ = undefined

intoBits :: (Integral a) => [a] -> [Bit]
intoBits = map intoBit

intoSign :: (Integral a) => a -> Sign
intoSign x = case signum x of
  -1 -> Minus
  _ -> Plus

intoZ :: (Integral a) => a -> Z
intoZ x = Z sign bits
  where
    sign = intoSign x
    bits = (intoBits . toReversedBinary) x

toDecimal :: Integral a => [a] -> a
toDecimal = foldl' f 0
  where
    f x acc = x * 2 + acc

toReversedBinary :: (Integral a) => a -> [a]
toReversedBinary = unfoldr f
  where
    f x = case divMod (abs x) 2 of
      (0, 0) -> Nothing
      (div, mod) -> Just (mod, div)

findStr :: (Eq a) => [a] -> [a] -> Maybe Int
findStr search str = findIndex (isPrefixOf search) (tails str)

pairs :: Int -> [(Int, Int)]
pairs n = [(x, y) | x <- [-n..n], y <- [-n..n]]

testAddOnce (a, b) = (show a ++ " + " ++ show b ++ " " ++ if (add (intoZ a) (intoZ b) == intoZ (a + b)) then " OK" else " FAIL")
testMulOnce (a, b) = (show a ++ " * " ++ show b ++ " " ++ if (mul (intoZ a) (intoZ b) == intoZ (a * b)) then " OK" else " FAIL")

gatherResults results testName = let
  searchOK s = findStr "OK" s
  successResults = filter (\x -> (searchOK x) /= Nothing) results
  failResults = filter (\x -> (searchOK x) == Nothing) results
  r = "Success = " ++ (show $ length successResults) ++ ", Fail = " ++ (show $ length failResults) ++ ", Total = " ++ (show $ length results)  
  in mapM_ putStrLn ([testName ++ " start"] ++ failResults ++ [testName ++ " summary: " ++ r])
  
runAddTest n = gatherResults (map testAddOnce (pairs n)) "[Test `add`]"
runMulTest n = gatherResults (map testMulOnce (pairs n)) "[Test `mul`]"