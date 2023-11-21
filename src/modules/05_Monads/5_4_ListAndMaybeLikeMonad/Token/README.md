[Список и Maybe как монады](https://stepik.org/lesson/8439/step/4)

Рассмотрим язык арифметических выражений, которые состоят из чисел, скобок, операций сложения и вычитания.  
Конструкции данного языка можно представить следующим типом данных:  
  
```haskell
data Token = Number Int | Plus | Minus | LeftBrace | RightBrace 
    deriving (Eq, Show)
```  
  
Реализуйте лексер арифметических выражений. Для начала реализуйте следующую функцию:  
  
```haskell
asToken :: String -> Maybe Token
```  
  
Она проверяет, является ли переданная строка числом (используйте функцию `isDigit` из модуля `Data.Char`), знаком `"+"` или `"-"`, открывающейся или закрывающейся скобкой.  
Если является, то она возвращает нужное значение обёрнутое в `Just`, в противном случае - `Nothing`:  
  
```haskell
GHCi> asToken "123"
Just (Number 123)

GHCi> asToken "abc"
Nothing
```  
  
Далее, реализуйте функцию `tokenize`:  
  
```haskell
tokenize :: String -> Maybe [Token]
```  
  
Функция принимает на вход строку и если каждое слово является корректным токеном, то она возвращает список этих токенов, завёрнутый в `Just`. В противном случае возвращается `Nothing`.  
  
Функция должна разбивать входную строку на отдельные слова по пробелам (используйте библиотечную функцию `words`). Далее, полученный список строк должен быть свёрнут с использованием функции `asToken` и свойств монады `Maybe`:  
  
```haskell
GHCi> tokenize "1 + 2"
Just [Number 1,Plus,Number 2]

GHCi> tokenize "1 + ( 7 - 2 )"
Just [Number 1,Plus,LeftBrace,Number 7,Minus,Number 2,RightBrace]

GHCi> tokenize "1 + abc"
Nothing
```  
  
Обратите внимание, что скобки отделяются пробелами от остальных выражений!  
  
```haskell
-- data Token = Number Int | Plus | Minus | LeftBrace | RightBrace     
--     deriving (Eq, Show)
-- Тип Token уже объявлен, его писать не нужно

asToken :: String -> Maybe Token
asToken = undefined

tokenize :: String -> Maybe [Token]
tokenize input = undefined
```
