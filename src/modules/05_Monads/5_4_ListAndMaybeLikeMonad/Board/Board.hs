--Тип Board и функция nextPositions заданы, реализовывать их не нужно

nextPositionsN :: Board -> Int -> (Board -> Bool) -> [Board]
nextPositionsN b n pred
  | n < 0 = []
  | n == 0 = filter pred [b]
  | otherwise =
    do
      positions <- nextPositions b
      nextPositionsN positions (n - 1) pred