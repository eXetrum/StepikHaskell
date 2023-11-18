[Синонимы и обертки для типов](https://stepik.org/lesson/7602/step/9)

Реализуйте представителя класса типов `Monoid` для `Maybe'` a так, чтобы `mempty` не был равен `Maybe' Nothing`.  
Нельзя накладывать никаких дополнительных ограничений на тип `a`, кроме указанных в условии.  
  
```haskell
newtype Maybe' a = Maybe' { getMaybe :: Maybe a }
    deriving (Eq,Show)

instance Monoid a => Monoid (Maybe' a) where
    mempty = undefined
    mappend = undefined
```  
