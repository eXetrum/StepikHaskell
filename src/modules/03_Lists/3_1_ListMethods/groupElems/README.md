[Функции для работы со списками](https://stepik.org/lesson/8326/step/13)

Напишите функцию `groupElems` которая группирует одинаковые элементы в списке (если они идут подряд) и возвращает список таких групп.  
  
```haskell
GHCi> groupElems []
[]
GHCi> groupElems [1,2]
[[1],[2]]
GHCi> groupElems [1,2,2,2,4]
[[1],[2,2,2],[4]]
GHCi> groupElems [1,2,3,2,4]
[[1],[2],[3],[2],[4]]
```  
Разрешается использовать только функции, доступные из библиотеки `Prelude`.
