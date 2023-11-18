[Класс типов Functor и законы для него](https://stepik.org/lesson/8432/step/6)

Определите представителя класса `Functor` для бинарного дерева, в каждом узле которого хранятся элементы типа `Maybe`:  
  
```haskell
data Tree a = Leaf (Maybe a) | Branch (Tree a) (Maybe a) (Tree a) deriving Show
```  
  
```haskell
GHCi> words <$> Leaf Nothing
Leaf Nothing

GHCi> words <$> Leaf (Just "a b")
Leaf (Just ["a","b"])
```  
  
```haskell
instance Functor Tree where
    fmap = undefined
```