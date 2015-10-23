
import Drawing
import Unit01(four,angle,(=~),perpendicular,line_line)

main = drawPicture myPicture

myPicture points =
    drawPointsLabels [a,b,c,d] ["A","B","C","D"] &
    messages ["Rectangle with vertices P Q R S"]
        where
        [a,b,c,d] = four points
