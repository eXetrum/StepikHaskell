[Параметрический полиморфизм](https://stepik.org/lesson/8417/step/3)

Напишите функцию трех аргументов `getSecondFrom`, полиморфную по каждому из них, которая полностью игнорирует первый и третий аргумент, а возвращает второй.  
Укажите ее тип.  
  
```haskell
GHCi> getSecondFrom True 'x' "Hello"
'x'
GHCi> getSecondFrom 'x' 42 True 
42
```  