[Типы с параметрами](https://stepik.org/lesson/5746/step/8)

`Maybe` можно рассматривать как простой контейнер, например, как список длины 0 или 1.  
Реализовать функции `maybeToList` и `listToMaybe`, преобразующие `Maybe a` в `[a]` и наоборот (вторая функция отбрасывает все элементы списка, кроме первого).  
  
```haskell
maybeToList :: Maybe a -> [a]
maybeToList = undefined

listToMaybe :: [a] -> Maybe a
listToMaybe = undefined
```  