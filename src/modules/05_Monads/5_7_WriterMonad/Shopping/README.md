[Монада Writer](https://stepik.org/lesson/8442/step/6)

Давайте разработаем программное обеспечение для кассовых аппаратов одного исландского магазина. Заказчик собирается описывать товары, купленные покупателем, с помощью типа `Shopping` следующим образом:  
  
```haskell
type Shopping = Writer (Sum Integer) ()

shopping1 :: Shopping
shopping1 = do
  purchase "Jeans"   19200
  purchase "Water"     180
  purchase "Lettuce"   328
```  
  
  
Последовательность приобретенных товаров записывается с помощью `do`-нотации. Для этого используется функция `purchase`, которую вам предстоит реализовать. Эта функция принимает наименование товара, а также его стоимость в исландских кронах (исландскую крону не принято делить на меньшие единицы, потому используется целочисленный тип `Integer`). Кроме того, вы должны реализовать функцию `total`:  
```haskell
GHCi> total shopping1 
19708
```  
  
  
```haskell
purchase :: String -> Integer -> Shopping
purchase item cost = ?

total :: Shopping -> Integer
total = ?
```
