{-
Завдання
Визначте вказанi функцiї в кожному з завдань: а) без застосування, б) з
застосуванням вбудованих функцiй.
1.2 Знайти передостаннiй елемент списку.
2.2 Циклiчний лiвий зсув списку на n позицiй.
-}

import Data.List
import System.IO

randTuple = [1, 2, 3, 4, 5]

beforeLast1 :: [Integer] -> Integer
beforeLast1 (some_tuple) = some_tuple !! (length(some_tuple)-2)

beforeLast2 :: [Integer] -> Integer
beforeLast2 [] = 0
beforeLast2 (x:xs) = if length(xs) == 1 then x
    else beforeLast2 xs

cycleShift1::([Integer],Int) -> [Integer]  
cycleShift1 (xs, n::Int) = if n == 0 then xs
    else cycleShift1(tail(xs) ++ [head(xs)], (n-1))

cycleShift2::([Integer],Int) -> [Integer]  
cycleShift2 (x:xs, n::Int) = if n == 0 then [x]++xs
    else cycleShift2(xs++[x], (n-1))