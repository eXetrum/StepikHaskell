import Data.Char(isDigit)

findDigit :: [Char] -> Maybe Char

findDigitOrX :: [Char] -> Char
findDigitOrX s = 
  case findDigit s of
    (Just x) -> x
    Nothing  -> 'X'