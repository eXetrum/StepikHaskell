[Типы перечислений](https://stepik.org/lesson/4916/step/11)

Тип `LogLevel` описывает различные уровни логирования.  

```haskell
data LogLevel = Error | Warning | Info
```  
\
Определите функцию `cmp`, сравнивающую элементы типа `LogLevel` так, чтобы было верно, что `Error > Warning > Info`.  
```haskell
GHCi> cmp Error Warning
GT
GHCi> cmp Info Warning
LT
GHCi> cmp Warning Warning
EQ
```  