class Printable a where
    toString :: a -> [Char]

instance Printable Bool where
    toString x 
        | x == True = "true"
        | x == False = "false"

instance Printable () where
    toString x = "unit type"