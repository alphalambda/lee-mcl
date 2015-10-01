
import Drawing
import Unit01(four,angle,(=~),perpendicular,line_line)

main = drawPicture myPicture

myPicture points =
    drawLine (a,b) &
    drawLine p1 &
    drawPointsLabels [a,b,c,d] ["A","B","C","D"] &
    messages ["Rectangle"]
        where
        [a,b,c,d] = four points
        p1 = perpendicular (a,b) c
