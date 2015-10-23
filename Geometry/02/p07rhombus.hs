
import Drawing
import Unit02(four,angle,(=~),perpendicular,line_line,midpoint)

main = drawPicture myPicture

myPicture points =
    drawLine (a,b) &
    messages ["Rhombus"]
        where
        [a,b,c,d] = four points
        
