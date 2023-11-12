data Result' = Fail' Int | Success' 

instance Show Result' where
    show (Fail' n) = "Fail: " ++ show n
    show _ = "Success"

doSomeWork' :: SomeData -> Result'
doSomeWork' x = case doSomeWork x of
    (Success, _) -> Success'
	(_, n) -> Fail' n