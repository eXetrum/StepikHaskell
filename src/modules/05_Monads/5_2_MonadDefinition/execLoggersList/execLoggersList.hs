execLoggersList :: a -> [a -> Log a] -> Log a
execLoggersList a = foldl (>>=) (return a)