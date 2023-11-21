import Data.Char
import Data.Maybe

--data Token = Number Int | Plus | Minus | LeftBrace | RightBrace     
--    deriving (Eq, Show)
-- Тип Token уже объявлен, его писать не нужно

asToken :: String -> Maybe Token
asToken s
  | (all isDigit s)  = return $ Number (read s :: Int)
  | s == "+" = return $ Plus
  | s == "-" = return $ Minus
  | s == "(" = return $ LeftBrace
  | s == ")" = return $ RightBrace
  | otherwise = Nothing 

tokenize :: String -> Maybe [Token]
tokenize input = unwrap $ map asToken (words input)
  where
    unwrap tokens
      | (any isNothing tokens) = Nothing
      | otherwise = sequence tokens