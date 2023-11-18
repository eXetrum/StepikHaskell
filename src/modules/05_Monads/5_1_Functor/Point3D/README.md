[Класс типов Functor и законы для него](https://stepik.org/lesson/8432/step/3)

Определите представителя класса `Functor` для следующего типа данных, представляющего точку в трёхмерном пространстве:  
  
```haskell
data Point3D a = Point3D a a a deriving Show
```  
  
  
```haskell
GHCi> fmap (+ 1) (Point3D 5 6 7)
Point3D 6 7 8
```  
  
```haskell
instance Functor Point3D where
    fmap = undefined
```