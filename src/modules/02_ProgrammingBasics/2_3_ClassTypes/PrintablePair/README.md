[Классы типов](https://stepik.org/lesson/8420/step/9)

Сделайте тип пары представителем класса типов `Printable`, реализованного вами в предыдущей задаче, обеспечив следующее поведение:  
```haskell
GHCi> toString (False,())
"(false,unit type)"
GHCi> toString (True,False)
"(true,false)"
```  
_Примечание_.  
Объявление класса типов `Printable` и представителей этого класса для типов `()` и  `Bool` заново реализовывать не надо — они присутствуют в программе, вызывающей ваш код.  


