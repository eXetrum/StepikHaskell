isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome (x:xs) = (x:xs) == reverse (x:xs)