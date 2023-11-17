[Рекурсивные типы данных](https://stepik.org/lesson/7009/step/3)

Тип `List`, определенный ниже, эквивалентен определению списков из стандартной библиотеки в том смысле, что существуют взаимно обратные функции, преобразующие `List a` в `[a]` и обратно.  
Реализуйте эти функции.  
  
```haskell
data List a = Nil | Cons a (List a)

fromList :: List a -> [a]
fromList = undefined

toList :: [a] -> List a
toList = undefined
```  