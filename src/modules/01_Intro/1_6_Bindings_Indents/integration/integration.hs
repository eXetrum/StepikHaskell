integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = 0.5 * h * (f a + f b + 2 * s) where
    n = 10000000
    h = (b - a) / n
    s = let
        trapezio i acc
            | i < n = trapezio (i + 1) (acc + (f (a + h * i)))
            | otherwise = acc
          in trapezio 1 0  