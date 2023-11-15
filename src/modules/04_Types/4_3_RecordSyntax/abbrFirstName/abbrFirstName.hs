data Person = Person { firstName :: String, lastName :: String, age :: Int }

abbrFirstName :: Person -> Person
abbrFirstName person@Person {firstName = fn}
  | length fn > 2 = person {firstName = head fn : "."}
  | otherwise = person