evalWriter :: Writer w a -> a
evalWriter m = fst (runWriter m)