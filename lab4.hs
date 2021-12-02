{-
Завдання
Фiгури на площинi. Використовуються такi фiгури, як коло (центр та ра-
дiус), прямокутник (координати лiвої верхньої та правої нижньої точок), три-
кутник (координати вершин) та мiтка — label (координати лiвої нижньої точки,
шрифт та рядок). Доступнi шрифти — Consolas, Lucida Console та Source Code
Pro. Визначне функцiї для:
2. отримання списку фiгур вказаного типу;
-}

import Data.List
import System.IO

data Font = Consolas
            | Lucida_Console
            | Source_Code_Pro
                deriving (Eq, Show, Ord)
data Circle = Center Float
                | Radius Float
data Rectangle = TopLeft Float
                | BottomRight Float
data Triangle = PointA Float
                | PointB Float
                | PointC Float
data Label = BottomLeft Float
                | Font  Font
                | Text String
data Shape = Circle 
            | Rectangle
            | Triangle 
            | Label
                deriving (Eq, Show)

randTuple::[Shape] = [Circle, Rectangle, Triangle,
                     Label, Circle]

findTypes :: Shape -> [Shape] -> Integer
findTypes _ [] = 0
findTypes a (x:xs) = if (a==x) then (1 + (findTypes a xs))
        else findTypes a xs
--findTypes Circle randTuple