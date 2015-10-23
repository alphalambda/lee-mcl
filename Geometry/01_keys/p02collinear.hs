
import Drawing
import Unit01(collinear,dist,(=~))

main = drawPicture myPicture

myPicture points =
    drawLine (a,b) &
    drawPointsLabels [a,b,c] ["A","B","C"] &
    message $ "The point in the middle is " ++ point_in_middle
    where [a,b,c] = take 3 (collinear points)
          point_in_middle | dist a b =~ dist a c + dist c b = "C"
                          | dist b c =~ dist b a + dist a c = "A"
                          | dist c a =~ dist c b + dist b a = "B"
                          | otherwise = "none"
