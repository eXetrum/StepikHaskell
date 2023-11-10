dist :: (Double, Double) -> (Double, Double) -> Double
dist (p1, p2) (p1', p2') = sqrt ((p1 - p1') ^ 2 + (p2 - p2') ^ 2)