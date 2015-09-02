
module Unit01(projection,collinear,dist,(=~)) where

import qualified Drawing as D
import Geometry

infix 1 =~

midpoint a b | apart a b = m
             | otherwise = a
    where intersect = circle_circle (a,b) (b,a)
          [m] = line_line (a,b) (c,d)
          [c,d] = case intersect of
                    [c,d] -> [c,d]
                    [] -> error ("Null midpoint"
                                 ++ ", a=" ++ D.showpoint a
                                 ++ ", b=" ++ D.showpoint b)

projection (a,b) c | apart a b = c'
                   | otherwise = error "Projection not apart"
    where inter = line_circle (a,b) (c,a) 
          c' = case inter of
                    [d,e] -> midpoint d e
                    [c'] -> c'
                    _ -> error ("Projection: "
                                ++ ",a=" ++ D.showpoint a
                                ++ ",b=" ++ D.showpoint b
                                ++ ",c=" ++ D.showpoint c)
                    --other -> a

collinear points = map (projection (a,b)) rest
    where [a,b] = take 2 points
          rest = drop 2 points

x =~ y = abs (x-y) < 0.01
