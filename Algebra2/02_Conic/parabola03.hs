
import Geometry
import Drawing

main = drawPicture myPicture

myPicture points = 
    drawPointsLabels [focus,focus'] ["F","F'"] &
    red (drawLine (focus,focus')) &
    blue (drawLine directrix) &
    drawPointsLabels [p,t] ["P","T"] &
    drawSegment (focus,p) &
    faint (drawLine p_bisector) &
    green (drawSegment (t,p)) &
    green (drawSegment (t,focus)) &
    message "Parabola: point T on the parabola, P on the directrix"
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
