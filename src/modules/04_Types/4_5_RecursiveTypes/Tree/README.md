[Рекурсивные типы данных](https://stepik.org/lesson/7009/step/5)

Тип бинарных деревьев можно описать следующим образом:  
`data Tree a = Leaf a | Node (Tree a) (Tree a)`  
  
Реализуйте функцию `height`, возвращающую высоту дерева, и функцию `size`, возвращающую количество узлов в дереве (и внутренних, и листьев).  
Считается, что дерево, состоящее из одного листа, имеет высоту `0`.  

```haskell
data Tree a = Leaf a | Node (Tree a) (Tree a)

height :: Tree a -> Int
height = undefined

size :: Tree a -> Int
size = undefined
```  