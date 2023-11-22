[Монада State](https://stepik.org/lesson/8444/step/6)

Давайте убедимся, что с помощью монады `State` можно эмулировать монаду `Reader`.  
Напишите функцию `readerToState`, «поднимающую» вычисление из монады `Reader` в монаду `State`:  

```haskell
GHCi> evalState (readerToState $ asks (+2)) 4
6
GHCi> runState (readerToState $ asks (+2)) 4
(6,4) 
```  
  
```haskell
readerToState :: Reader r a -> State r a
readerToState m = ?
```
