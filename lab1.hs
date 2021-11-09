import Data.List
import System.IO

randTuple = [[(1, [False, True]), (5, [True, True])], [(9, [False, False]), (55, [True, False])]]

randTuple2 = [[(11, [False, False]), (11, [False, False])], [(11, [False, False]), (11, [False, False])]]

f1 :: (Float, Float, Float) -> Bool
f1 (a, b, c) = 
    if a*a == (b*b+c*c) || b*b == (a*a+c*c) || c*c == (b*b+a*a) then True
        else False

f2 :: Float -> Float -> Float -> Bool
f2 a1 b1 c1 = if a1*a1 == (b1*b1+c1*c1) || b1*b1 == (a1*a1+c1*c1) || c1*c1 == (b1*b1+a1*a1) then True
    else False