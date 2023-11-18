[Синонимы и обертки для типов](https://stepik.org/lesson/7602/step/12)

Реализуйте представителя `MapLike` для типа `ArrowMap`, определенного ниже.  
  
```haskell
import Prelude hiding (lookup)

class MapLike m where
    empty :: m k v
    lookup :: Ord k => k -> m k v -> Maybe v
    insert :: Ord k => k -> v -> m k v -> m k v
    delete :: Ord k => k -> m k v -> m k v
    fromList :: Ord k => [(k,v)] -> m k v

newtype ArrowMap k v = ArrowMap { getArrowMap :: k -> Maybe v }
```  
