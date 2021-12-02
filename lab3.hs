{-
Завдання
Визначте вказанi функцiї в кожному з завдань: а) без застосування, б) з
застосуванням вбудованих функцiй вищого порядку.
1.2 Чи є список палiндромом?
2.2 Об’єднання зi змiшуванням двох спискiв довжиною n1 та n2. Вихiдний
список має довжину 2 ∗ n, де n = min(n1, n2). Наприклад
"abcde"та "123"перетворюються на "a1b2c3"
-}
import Data.List
import System.IO

randTuple1 = [1, 2, 3, 4, 5]
randTuple2 = [1, 2, 3, 2, 1]

str1 = ['a'..'d']
str2 = ['a'..'d']

isPalindrom1 :: [Integer] -> Bool
isPalindrom1 [] = True
isPalindrom1 (x:xs) = if xs == [] then True
    else if (x /= (last xs)) then False
        else isPalindrom1 (init xs)

isPalindrom2 :: (Integer->Integer->Bool) -> [Integer] -> Bool
isPalindrom2 _ [] = True
isPalindrom2 f (x:xs)   | xs == [] = True
                        | f x (last(xs))   = False
                        | otherwise      = isPalindrom2 f (init(xs))
--isPalindrom2 (/=) randTuple2

merge1 :: String -> String -> String
merge1 xs [] = []
merge1 [] ys = []
merge1 (x:xs) (y:ys) = if ys == [] then x:y:[]
    else if xs == [] then x:y:[]
        else (x:y:[]) ++ (merge1 xs ys)

merge2 :: ([Char]->[Char]->String) -> String -> String -> String
merge2 _ xs [] = []
merge2 _ [] ys = []
merge2 f (x:xs) (y:ys) = (f [x] [y]) ++ (merge2 f (xs) (ys))
--merge2 (++) str1 str2