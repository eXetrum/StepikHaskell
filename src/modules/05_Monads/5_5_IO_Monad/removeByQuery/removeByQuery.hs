import Data.List

main' :: IO ()
main' = do
    putStr "Substring: "
    substr <- getLine
    if length substr == 0 then putStrLn "Canceled"
    else do
        filtered <- getDirectoryContents "." >>= return . filter (isInfixOf substr)
        mapM_ putStrLn . map (\x -> "Removing file: " ++ x) $ filtered
        mapM_ removeFile filtered