
import Drawing

main = drawPicture myPicture

myPicture points =
    drawPointsLabels [a,b,c] ["A","B","C"] &
    messages [ "|AB| = " ++ shownum dist_ab
             , "|BC| = " ++ shownum dist_bc
             , "|CA| = " ++ shownum dist_ca]
    where [a,b,c] = take 3 points
          (a1,a2) = a
          (b1,b2) = b
          (c1,c2) = c
          dist_ab = 0.0
          dist_bc = 0.0
          dist_ca = 0.0
          
