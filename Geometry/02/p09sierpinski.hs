import Drawing
import Unit02(midpoint,apart)

main = drawPicture myPicture

myPicture points =
    drawSierpinski a b c &
    messages [ "Sierpinski"]
        where
        [a,b,c] = take 3 points
        
drawSierpinski a b c
    | apart a b && apart b c && apart c a =
        -- Your code should go here
        drawNothing -- Replace this line with the right code

    | otherwise =
        drawPoints []
            where
            a' = midpoint b c
            b' = midpoint c a
            c' = midpoint a b
