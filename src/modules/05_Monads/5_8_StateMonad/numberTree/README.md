[Монада State](https://stepik.org/lesson/8444/step/10)

Некоторое время назад мы определили тип двоичных деревьев, содержащих значения в узлах:  

```haskell
data Tree a = Leaf a | Fork (Tree a) a (Tree a)
```  
  
  

В этой задаче вам дано значение типа `Tree ()`, иными словами, вам задана форма дерева. Требуется пронумеровать вершины дерева данной формы, обойдя их _in-order_ (то есть, сначала обходим левое поддерево, затем текущую вершину, затем правое поддерево):  
  
```haskell
GHCi> numberTree (Leaf ())
Leaf 1
GHCi> numberTree (Fork (Leaf ()) () (Leaf ()))
Fork (Leaf 1) 2 (Leaf 3)
```  
  
  
```haskell
numberTree :: Tree () -> Tree Integer
numberTree tree = ?
```