[Монада Identity](https://stepik.org/lesson/8438/step/3)

Если некоторый тип является представителем класса `Monad`, то его можно сделать представителем класса `Functor`, используя функцию `return` и оператор `>>=`.  
Причём, это можно сделать даже не зная, как данный тип устроен.  
  
Пусть вам дан тип  
```haskell
data SomeType a = ...
```  
  
и он является представителем класса `Monad`. Сделайте его представителем класса `Functor`.  
  
```haskell
instance Functor SomeType where
    fmap f x = undefined
```
