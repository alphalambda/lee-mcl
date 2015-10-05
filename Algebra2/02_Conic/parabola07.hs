
import Geometry
import Drawing

main = drawPicture myPicture

myPicture points = 
    drawCircle (o,a) &
    drawPointsLabels [x,y] ["X","Y"] &
    drawLine (x,y) &
    blue (drawSegment (a,y) &
          drawSegment (a,b) &
          drawSegment (b,y)) &
    red (drawSegment (a,a') &
         drawSegment (a,x) &
         drawSegment (a',x)) &
    message "Parabola"
        where
        [o,a,x',y'] = take 4 points
        b = mirror o a
        [x,_] = line_circle (o,x') (o,a)
        Just y = find (sameside x (a,b)) (line_circle (o,y') (o,a))
        [a'] = line_line (perp_down (x,y) a) (x,y)
        
swoop axis directrix r = t
    where
    [t] = line_line directrix (parallel axis r)

tangent focus focus' p = (t,mirror m t)
    where
    l1 = parallel (focus,focus') p
    l2 = bisector focus p
    [t] = line_line l1 l2
    m = midpoint focus p
    d = line_line (t,m) (focus',p)

parallel (p,q) a = (a,b)
    where
    b = a +| q -|p
    
(ax,ay) +| (bx,by) = (ax+bx,ay+by)

(ax,ay) -| (bx,by) = (ax-bx,ay-by)

s *| (x,y) = (s*x,s*y)

(x,y) /| s = (x/s,y/s)

midpoint a b = 0.5 *| (a +| b)

mirror c x = c +| c -| x

bisector a b = (x,y)
    where
    [x,y] = circle_circle (a,b) (b,a)

perp_down (a,b) x = bisector c d
    where
    [c,d] = line_circle (a,b) (x,a)
