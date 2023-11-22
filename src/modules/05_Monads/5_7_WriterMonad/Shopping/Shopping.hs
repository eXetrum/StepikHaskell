purchase :: String -> Integer -> Shopping
purchase _ = tell . Sum

total :: Shopping -> Integer
total = getSum . execWriter