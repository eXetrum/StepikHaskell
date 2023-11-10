instance (Printable a, Printable b) => Printable (a,b) where
    toString (p1, p2) = "(" ++ (toString p1) ++ "," ++ (toString p2) ++ ")"