
import Drawing
import Unit02(ushape,ushape_example,projection,dist,four_convex,check_p04fourpoints)

main = drawPicture myPicture

myPicture points =
    drawPolygon [a,b,c,d] &
    drawPointsLabels [a,b,c,d] ["A","B","C","D"] &
    messages [ "Perimeter=" ++ show perimeter
             , "Area=" ++ show area
             , "The computation is " ++ check_p04fourpoints a b c d area perimeter
             ]
        where
        [a,b,c,d] = four_convex points
        perimeter = 0
        area = 0
