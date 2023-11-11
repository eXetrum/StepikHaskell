change 0 = [[]]
change s = [x:xs | x <- coins, s - x >= 0, xs <- change(s -x)]