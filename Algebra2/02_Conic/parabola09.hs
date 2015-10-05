
import Geometry
import Drawing

main = drawPicture myPicture

myPicture points = 
    drawPointsLabels [focus,focus'] ["F","F'"] &
    drawLine (focus,focus') &
    drawLine directrix &
    --faint (draw (map drawSegment coarse_tangents)) &
    drawPath (map fst tangents) &

    drawPoints [t1,p1] &
    red (drawSegment (t1,p1)) &
    red (drawSegment (t1,focus)) &
    red (drawSegment (focus,p1)) &
    red (drawLine (bisector focus p1)) &

    drawPoints [t2,p2] &
    blue ((drawSegment (t2,p2))) &
    blue (drawSegment (t2,focus)) &
    blue (drawSegment (focus,p2)) &
    blue (drawLine (bisector focus p2)) &

    green (drawSegment (focus,t')) &
    drawLine (midpoint focus p,midpoint focus p2) &
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
        p1 = 1.5 *| (p -| focus') +| focus'
        b1 = bisector focus p1
        [t1] = line_line b1 (parallel axis p1)
        p2 = 2.5 *| (p -| focus') +| focus'
        b2 = bisector focus p2
        [t2] = line_line b2 (parallel axis p2)
        coarse_ts = map (\x -> x *| (p -| focus') +| focus') [-10,-9..10]
        coarse_tangents = map (tangent focus focus') coarse_ts
        ts = map (\x -> x *| (p -| focus') +| focus') [-10,-9.9..10]
        tangents = map (tangent focus focus') ts
        --ts = map (swoop axis directrix) (take 100 $ drop 2 points)
        [t'] = line_line b1 b2
        
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
