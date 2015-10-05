
import Geometry
import Drawing

main = drawPicture myPicture

myPicture points = 
    drawPointsLabels [focus,focus'] ["F","F'"] &
    red (drawLine (focus,focus')) &
    blue (drawLine directrix) &
    drawPointLabel p "P" &
    drawSegment (focus,p) &
    faint (drawLine p_bisector) &
    faint (drawLine (parallel (focus,p) t)) &
    green (drawSegment (t,p)) &
    green (drawThickRay 0.1 (t,mirror t p)) &
    green (drawThickRay 0.1 (t,mirror t focus)) &
    green (drawSegment (t,focus)) &
    drawPath (map fst tangents) &
    message "Parabola"
        where
        [focus,vertex'] = take 2 points
        vertex = midpoint focus (midpoint focus vertex')
        focus' = mirror vertex focus
        bline = bisector focus focus'
        directrix = parallel bline focus'
        axis = (focus,focus')
        [r] = take 1 (drop 2 points)
        p = swoop axis directrix r
        p_bisector = bisector focus p
        p_axis = parallel axis p
        [t] = line_line p_bisector p_axis
        ts = map (\x -> x *| (p -| focus') +| focus') [-10,-9.9..10]
        tangents = map (tangent focus focus') ts
        
(ax,ay) +| (bx,by) = (ax+bx,ay+by)

(ax,ay) -| (bx,by) = (ax-bx,ay-by)

s *| (x,y) = (s*x,s*y)

(x,y) /| s = (x/s,y/s)

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
