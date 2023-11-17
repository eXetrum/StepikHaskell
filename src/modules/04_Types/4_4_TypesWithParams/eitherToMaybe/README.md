[Типы с параметрами](https://stepik.org/lesson/5746/step/12)

Исправьте ошибку в приведенном коде.  
  
```haskell
eitherToMaybe :: Either a -> Maybe a
eitherToMaybe (Left a) = Just a
eitherToMaybe (Right _) = Nothing
```  