[Синонимы и обертки для типов](https://stepik.org/lesson/7602/step/7)

Реализуйте представителя класса типов `Monoid` для типа `Xor`, в котором `mappend` выполняет операцию `xor`.  
  
```haskell
newtype Xor = Xor { getXor :: Bool }
    deriving (Eq,Show)

instance Monoid Xor where
    mempty = undefined
    mappend = undefined
```  
