[Монада Reader](https://stepik.org/lesson/8441/step/8)

Реализуйте функцию `local'` из прошлого задания.  
Считайте, что монада `Reader` определена так, как на видео:  
  
```haskell
data Reader r a = Reader { runReader :: (r -> a) }

instance Monad (Reader r) where
  return x = Reader $ \_ -> x
  m >>= k  = Reader $ \r -> runReader (k (runReader m r)) r
```  
  
  
```haskell
local' :: (r -> r') -> Reader r' a -> Reader r a
local' f m = ?
```
