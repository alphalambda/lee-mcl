
import Drawing

import Unit01(projection)

main = drawPicture myPicture

myPicture points =
    drawPointsLabels [a,b,c,c'] ["A","B","C","C'"] &
    drawSegment (a,b) &
    drawSegment (b,c) &
    drawSegment (c,a) &
    red (drawSegment (c,c')) &
    messages [ "base(A,B)=" ++ shownum base ++ ", h=" ++ shownum height
             , "Area(A,B,C) = " ++ shownum area]
    where [a,b,c] = take 3 points
          c' = projection (a,b) c
          base = 0.0
          height = 0.0
          area = 0.0
