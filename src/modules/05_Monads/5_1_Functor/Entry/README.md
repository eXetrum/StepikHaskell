[Класс типов Functor и законы для него](https://stepik.org/lesson/8432/step/8)

Определите представителя класса `Functor` для типов данных `Entry` и `Map`.  
Тип `Map` представляет словарь, ключами которого являются пары:  
  
```haskell
data Entry k1 k2 v = Entry (k1, k2) v  deriving Show
data Map k1 k2 v = Map [Entry k1 k2 v]  deriving Show
```  
  
В результате должно обеспечиваться следующее поведение: `fmap` применяет функцию к значениям в словаре, не изменяя при этом ключи.  
  
```haskell
GHCi> fmap (map toUpper) $ Map []
Map []

GHCi> fmap (map toUpper) $ Map [Entry (0, 0) "origin", Entry (800, 0) "right corner"]
Map [Entry (0,0) "ORIGIN",Entry (800,0) "RIGHT CORNER"]
```  
  
```haskell
instance Functor (Entry k1 k2) where
    fmap = undefined

instance Functor (Map k1 k2) where
    fmap = undefined
```