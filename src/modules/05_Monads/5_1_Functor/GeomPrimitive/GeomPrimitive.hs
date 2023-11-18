instance Functor GeomPrimitive where
    fmap f (Point p) = Point (fmap f p)
    fmap f (LineSegment a b) = LineSegment (fmap f a) (fmap f b)