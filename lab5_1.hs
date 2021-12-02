import Data.List
import System.IO

{-
Реалiзувати та скомпiлювати одну з програм, розроблених у лабора-
торнiй роботi No 3 для Вашого варiанта з введенням даних: а) з клавiатури, 
б) з файлу та виведенням результатiв: в) на екран, г) у файл.
-}

randTuple1 = [1, 2, 3, 4, 5]
randTuple2 = [1, 2, 3, 2, 1]

str1 = ['a'..'d']
str2 = ['a'..'d']

merge1 :: String -> String -> String
merge1 xs [] = []
merge1 [] ys = []
merge1 (x:xs) (y:ys) = if ys == [] then x:y:[]
    else if xs == [] then x:y:[]
        else (x:y:[]) ++ (merge1 xs ys)

investinput :: IO (String, String)
investinput = do
  putStrLn "Input first String"
  first <- getLine
  putStrLn "Input second String"
  second <- getLine
  return (first, second)


main = do
    putStrLn "Hello, input 2 Strings"
    (input1, input2) <- investinput
    let bur = merge1 input1 input2
    putStrLn "Result is: "
    putStrLn bur
    putStrLn "Press any button to exit"
    aaa <- getLine
    putStrLn "end"

--ghc --make lab5_1.hs