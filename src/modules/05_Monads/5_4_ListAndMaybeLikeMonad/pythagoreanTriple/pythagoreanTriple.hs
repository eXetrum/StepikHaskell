pythagoreanTriple :: Int -> [(Int, Int, Int)]
pythagoreanTriple x = do
  a <- [1..x]
  b <- [1..x]
  c <- [1..x]
  if a ^ 2 + b ^ 2 == c ^ 2 && a < b && c <= x then "Z" else []
  return (a, b, c)