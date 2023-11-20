-- data Log a = Log [String] a
bindLog :: Log a -> (a -> Log b) -> Log b
bindLog (Log msgA x) f = Log (msgA ++ msgB) y
  where
    (Log msgB y) = f x