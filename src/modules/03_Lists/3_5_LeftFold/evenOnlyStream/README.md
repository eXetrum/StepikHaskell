[Левая свертка и ее сравнение с правой](https://stepik.org/lesson/5790/step/10)

Попробуйте добиться того, чтобы реализованная вами в прошлом задании функция `evenOnly` позволяла работать и с бесконечными списками.  
\
То есть, например, запрос на первые три элемента бесконечного списка, возвращаемого этой функцией, примененной к списку всех натуральных чисел, должен завершаться:  

```haskell
GHCi> take 3 (evenOnly [1..])
[2,4,6]
```  
