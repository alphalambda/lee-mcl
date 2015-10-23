
import Drawing
import Unit02(ushape,ushape_example,projection,dist,check_p04ushape)

main = drawPicture myPicture

myPicture points =
    faint coordinates &
    drawPolygon [a,b,c,d,f,g,h,i] &
    drawPointsLabels [a,b,c,d,f,g,h,i] ["A","B","C","D","F","G","H","I"] &
    messages [ "Perimeter=" ++ show perimeter
             , "Area=" ++ show area
             , "The computation is " ++ check_p04ushape a b c d f g h i area perimeter
             ]
        where
        [a,b,c,d,f,g,h,i] = ushape points
        perimeter = 0
        area = 0
