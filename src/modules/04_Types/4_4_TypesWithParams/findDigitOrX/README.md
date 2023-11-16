[Типы с параметрами](https://stepik.org/lesson/5746/step/7)

Реализуйте функцию `findDigitOrX`, использующую функцию `findDigit` (последнюю реализовывать не нужно).  
`findDigitOrX` должна находить цифру в строке, а если в строке цифр нет, то она должна возвращать символ `'X'`.  
Используйте конструкцию `case`.  
  
```haskell
import Data.Char(isDigit)

findDigit :: [Char] -> Maybe Char

findDigitOrX :: [Char] -> Char
findDigitOrX = undefined
```  