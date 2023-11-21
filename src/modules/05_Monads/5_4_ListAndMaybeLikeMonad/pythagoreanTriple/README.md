[Список и Maybe как монады](https://stepik.org/lesson/8439/step/8)

Используя монаду списка и do-нотацию, реализуйте функцию  
```haskell
pythagoreanTriple :: Int -> [(Int, Int, Int)]
```  
  
которая принимает на вход некоторое число $$x$$ и возвращает список троек $$(a, b, c)$$, таких что  
  
$$a^2+b^2=c^2, a > 0, b > 0, c > 0, c <= x, a < b$$  
  
Число $$x$$ может быть $$<=0$$, на таком входе должен возвращаться пустой список.  
  
```haskell
GHCi> pythagoreanTriple 5
[(3,4,5)]

GHCi> pythagoreanTriple 0
[]

GHCi> pythagoreanTriple 10
[(3,4,5),(6,8,10)]
```  
  
```haskell
pythagoreanTriple :: Int -> [(Int, Int, Int)]
pythagoreanTriple x = do undefined
```
