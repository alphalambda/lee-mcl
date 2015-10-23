
import Drawing
import Unit01(four,angle,(=~),perpendicular,line_line,midpoint)

main = drawPicture myPicture

myPicture points =
    drawLine (a,b) &
    drawLine p1 &
    drawLine p2 &
    drawLine p3 &
    drawSegment (e,f) &
    drawSegment (f,g) &
    drawSegment (g,h) &
    drawSegment (h,e) &
    drawPointsLabels [a,b,c,d,e,f,g,h] ["A","B","C","D","E","F","G","H"] &
    messages ["Rhombus"]
        where
        [a,b,c,d] = four points
        p1 = perpendicular (a,b) c
        [i] = line_line p1 (a,b)
        p2 = perpendicular (a,b) d
        p3 = perpendicular (c,f) d
        [j] = line_line p2 (a,b)
        e = midpoint i c
        f = midpoint c d
        g = midpoint j d
        h = midpoint i j
        
