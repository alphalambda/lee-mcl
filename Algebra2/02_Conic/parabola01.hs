
import Geometry
import Drawing

main = drawPicture myPicture

myPicture points = 
    drawPointsLabels [focus,focus'] ["F","F'"] &
    red (drawLine (focus,focus')) &
    blue (drawLine directrix) &
    message "Parabola: Focus, Axis and Directrix"
        where
        [focus,vertex'] = take 2 points
        vertex = midpoint focus (midpoint focus vertex')
        focus' = mirror vertex focus
        bline = bisector focus focus'
        directrix = parallel bline focus'

(ax,ay) +| (bx,by) = (ax+bx,ay+by)

(ax,ay) -| (bx,by) = (ax-bx,ay-by)

s *| (x,y) = (s*x,s*y)

(x,y) /| s = (x/s,y/s)

midpoint a b = 0.5 *| (a +| b)

mirror c x = c +| c -| x

parallel (p,q) a = (a,b)
    where
    b = a +| q -|p

bisector a b = (x,y)
    where
    [x,y] = circle_circle (a,b) (b,a)
