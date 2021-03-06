
module Unit02(projection,collinear,perpendicular,line_line,apart,
              dist,angle,ushape,ushape_example,
              parallelogram,four,four_convex,midpoint,
              check_p01points,check_p02collinear,check_p03triangle,
              check_p04fourpoints,check_p04ushape,check_p05parallel,
              (=~)) where

import qualified Drawing as D
import Geometry
import Geometry.Utils(Point)

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

ushape points =
    [(p1,q1),(p1,q2),(p2,q2),(p2,q3),
     (p3,q3),(p3,q4),(p4,q4),(p4,q1)]
    where [(x1,y1),(x2,y2),(x3,y3),(x4,y4)] = take 4 points
          p1 = 0.5*x1 - 7.5
          q1 = 0.5*y1 - 7.5
          p2 = 0.5*x2 + 7.5
          q2 = 0.5*y2 + 7.5
          p3 = 0.5*x3 + 2.5
          q3 = 0.5*y3 - 2.5
          p4 = 0.5*x4 - 2.5
          q4 = 0.5*y4 + 2.5

ushape_example :: [Point]
ushape_example = ushape [o,o,o,o] where o=(0,0)

quadrilateral points
    | across c (a,b) d = [d,b,c,a]
    | across a (b,c) d = [a,b,d,c]
    | otherwise = [a,b,c,d]
        where
        [a,b,c,d] = take 4 points
        
four_convex points = quadrilateral [a,b,c,d]
    where
    [a,b,c] = take 3 points
    points' = drop 3 points
    Just d = find in_sector points'
    in_sector x =
        across a (b,c) x && sameside b (c,a) x && sameside c (a,b) x
        
parallelogram points = [a,b,c,d]
    where
    [a,b,c] = take 3 points
    p_ab = parallel (a,b) c
    p_bc = parallel (b,c) a
    [d] = line_line p_ab p_bc

parallel (p,q) a = (a,b)
    where
    b = a +| q -|p

perpendicular (p,q) a = (a,b)
    where
    (x,y) = q -| p
    b = a +| (-y,x)

(ax,ay) +| (bx,by) = (ax+bx,ay+by)

(ax,ay) -| (bx,by) = (ax-bx,ay-by)

four points | fst r < 1 = [a,b,c,d]
            | otherwise = parallelogram [a,b,c]
    where [r,a',b',c',d'] = take 5 points
          [a,b,c,d] = quadrilateral [a',b',c',d']
          
check_p01points a b c dab dbc dca
    | dab =~ dist a b,dbc =~ dist b c,dca =~ dist c a = "correct."
    | otherwise = "incorrect."

check_p02collinear a b c p
    | p == point_in_middle = "correct"
    | otherwise = "incorrect"
        where
        point_in_middle | dist a b =~ dist a c + dist c b = "C"
                        | dist b c =~ dist b a + dist a c = "A"
                        | dist c a =~ dist c b + dist b a = "B"
                        | otherwise = "none"

check_p03triangle a b c area' perimeter'
    | area =~ area', perimeter' =~ perimeter = "correct."
    | otherwise = "incorrect."
        where
        c' = projection (a,b) c
        base = dist a b
        height = dist c c'
        area = 0.5 * base * height
        perimeter = base + dist b c + dist c a

check_p04fourpoints a b c d area' perimeter'
    | area =~ area', perimeter =~ perimeter' = "correct."
    | otherwise = "incorrect."
        where
        b' = projection (a,c) b
        d' = projection (a,c) d
        base = dist a c
        area_b = 0.5 * base * dist b b'
        area_d = 0.5 * base * dist d d'
        area = area_b + area_d
        perimeter = dist a b + dist b c + dist c d + dist d a

check_p04ushape a b c d f g h i area' perimeter'
    | area =~ area', perimeter =~ perimeter' = "correct."
    | otherwise = "incorrect."
        where
        area1 = dist a b * dist a i
        area2 = dist g h * (dist a b - dist h i)
        area3 = dist c d * dist d f
        area = area1 + area2 + area3
        perimeter = dist a b + dist b c + dist c d
            + dist d f + dist f g + dist g h + dist h i
            + dist i a

check_p05parallel a b c d answer'
    | answer == answer' = "correct."
    | otherwise = "incorrect."
        where
            answer | (angle a b c) + (angle d c b) =~ 180 = "Yes" 
                   | otherwise = "No"
