

main :: IO ()
main = do
    putStrLn "Enter first number: "
    a <- getLine
    putStrLn "Enter second number: "
    b <- getLine
    putStrLn "Result: "
    print $ read a + read b
    return ()
