processData :: SomeData -> String
processData d = 
  case doSomeWork d of
    (Fail, code) -> "Fail: " ++ show code
    (Success, _) -> "Success"