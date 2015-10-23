
import Drawing
import Unit01(four,angle,(=~))

main = drawPicture myPicture

myPicture points =
    drawLine (a,b) &
    drawLine (b,c) &
    drawLine (c,d) &
    drawPointsLabels [a,b,c,d] ["A","B","C","D"] &
    messages ["Are lines AB and CD parallel? " ++ answer]
        where
        [a,b,c,d] = four points
        perimeter = 0
        answer | (angle a b c) + (angle d c b) =~ 180 = "Yes" 
               | otherwise = "No"
