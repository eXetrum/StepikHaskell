data Coord a = Coord a a

getCenter :: Double -> Coord Int -> Coord Double
getCenter w (Coord x y) = Coord ((fromIntegral x + 0.5) * w) ((fromIntegral y + 0.5) * w)

getCell :: Double -> Coord Double -> Coord Int
getCell w (Coord x y) = Coord (floor (x / w)) (floor (y / w))