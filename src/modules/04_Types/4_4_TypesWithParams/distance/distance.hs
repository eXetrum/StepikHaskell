data Coord a = Coord a a

distance :: Coord Double -> Coord Double -> Double
distance (Coord x1 y1) (Coord x2 y2) = sqrt . sum . map (^2) $ zipWith (-) [x1, y1] [x2, y2]

manhDistance :: Coord Int -> Coord Int -> Int
manhDistance (Coord x1 y1) (Coord x2 y2) = sum . map abs $ zipWith (-) [x1, y1] [x2, y2]