[Установка и настройка среды](https://stepik.org/lesson/8119/step/6)

Запустите ваш текстовой редактор и создайте файл `Hello.hs`, содержащий следующую строку кода:  
```haskell
main = putStrLn "Hello, world!"
```  
\
Вызовите теперь с помощью средств вашей ОС интерпретатор GHCi c параметром — именем файла исходного кода:  
```haskell
ghci Hello.hs
```  
\
(Файл должен располагаться в том же каталоге, откуда происходит вызов интерпретатора.) 
Проверьте, что загрузка модуля прошла успешно, вызвав в интерпретаторе определенную вами функцию `main` :  
```haskell
GHCi> main
Hello, world!
```  
\
Какое приглашение на самом деле выдает командная строка интерпретатора 
(в предыдущем примере интерпретатор выдал приглашение ```GHCi> ```)?  
  
> *Main>
 