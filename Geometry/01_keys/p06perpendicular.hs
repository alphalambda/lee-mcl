
import Drawing
import Unit01(four,angle,(=~),perpendicular,line_line)

main = drawPicture myPicture

myPicture points =
    drawLine (a,b) &
    drawLine p1 &
    drawLine p2 &
    drawLine p3 &
    drawPointsLabels [a,b,c,d] ["A","B","C","D"] &
    messages ["Rectangle"]
        where
        [a,b,c,d] = four points
        p1 = perpendicular (a,b) c
        [f] = line_line p1 (a,b)
        p2 = perpendicular (a,b) d
        p3 = perpendicular (c,f) d
