[Типы перечислений](https://stepik.org/lesson/4916/step/13)

Пусть объявлен следующий тип данных:  

```haskell
data Result = Fail | Success
```  
\
И допустим определен некоторый тип данных SomeData и некоторая функция  

```haskell
doSomeWork :: SomeData -> (Result,Int)
```  
возвращающая результат своей работы и либо код ошибки в случае неудачи, либо `0` в случае успеха.  
\
Определите функцию `processData`, которая вызывает `doSomeWork` и возвращает строку `"Success"` в случае ее успешного завершения, либо строку `"Fail: N"` в случае неудачи, где `N` — код ошибки.  
