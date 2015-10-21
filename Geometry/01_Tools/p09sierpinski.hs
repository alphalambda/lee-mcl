import Drawing
import Unit01(midpoint,apart)

main = drawPicture myPicture

myPicture points =
    drawSierpinski a b c &
    messages [ "Sierpinski"]
        where
        [a,b,c] = take 3 points
        
drawSierpinski a b c
    | apart a b && apart b c && apart c a =
        drawSegment (a,b) &
        drawSegment (b,c) &
        drawSegment (c,a) &
        drawSierpinski a c' b' &
        drawSierpinski c' b a' &
        drawSierpinski b' a' c
    | otherwise =
        drawPoints []
            where
            a' = midpoint b c
            b' = midpoint c a
            c' = midpoint a b
