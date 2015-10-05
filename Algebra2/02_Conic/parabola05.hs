
import Geometry
import Drawing

main = drawPicture myPicture


myPicture points = 
    drawPointsLabels [focus,focus',vertex] ["F","F'","V"] &
    red (drawLine (focus,focus')) &
    blue (drawLine directrix) &
    drawPointLabel l "L" &
    drawSegment (focus,l) &
    faint (drawLine l_bisector) &
    faint (drawLine (parallel (focus,l) t)) &
    green (drawSegment (t,l)) &
    green (drawThickRay 0.1 (t,mirror t l)) &
    green (drawRay (t,mirror t focus)) &
    green (drawThickSegment 0.1 (t,focus)) &
    drawPath (map fst tangents) &
    drawPointLabel (sx,sy)  "S" &
    message ("Parabola: " ++ formula)
    
        where
        [focus'',vertex',r,sample] = take 4 points
        vertex'' = midpoint focus (midpoint focus vertex')
        focus = (0,snd focus'')
        vertex = (0,snd vertex'')
        focus' = mirror vertex focus
        bline = bisector focus focus'
        directrix = parallel bline focus'
        axis = (focus,focus')
        l = swoop axis directrix r
        l_bisector = bisector focus l
        l_axis = parallel axis l
        [t] = line_line l_bisector l_axis
        ts = map (\x -> x *| (l -| focus') +| focus') [-10,-9.9..10]
        tangents = map (tangent focus focus') ts
        (h,k) = vertex
        p = snd focus - snd vertex
        formula = "4" ++ show p ++ "(y- " ++ show k ++ ") = (x- " ++ show h ++ ")^2"
        (sx,_) = sample
        sy = y_solution k h p sx

y_solution k h p x = k + (x-h)^2/(4*p)

(ax,ay) +| (bx,by) = (ax+bx,ay+by)

(ax,ay) -| (bx,by) = (ax-bx,ay-by)

s *| (x,y) = (s*x,s*y)

(x,y) /| s = (x/s,y/s)

magnitude (x,y) = sqrt (x^2 + y^2)

midpoint a b = 0.5 *| (a +| b)

mirror c x = c +| c -| x

parallel (p,q) a = (a,b)
    where
    b = a +| q -|p

swoop axis directrix r = t
    where
    [t] = line_line directrix (parallel axis r)

bisector a b = (x,y)
    where
    [x,y] = circle_circle (a,b) (b,a)

tangent focus focus' p = (t,mirror m t)
    where
    l1 = parallel (focus,focus') p
    l2 = bisector focus p
    [t] = line_line l1 l2
    m = midpoint focus p
    d = line_line (t,m) (focus',p)
