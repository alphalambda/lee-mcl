
import Drawing
import Unit01(four,angle,(=~),check_p05parallel)

main = drawPicture myPicture

myPicture points =
    drawLine (a,b) &
    drawLine (b,c) &
    drawLine (c,d) &
    drawPointsLabels [a,b,c,d] ["A","B","C","D"] &
    messages [ "Are lines AB and CD parallel? " ++ answer
             , "The answer is " ++ check_p05parallel a b c d answer
             ]
        where
        [a,b,c,d] = four points
        perimeter = 0
        answer | angle a b c =~ 90 = "Yes" 
               | otherwise = "No"
