
import Drawing
import Unit01(ushape,ushape_example,projection,dist,four)

main = drawPicture myPicture

myPicture points =
    faint coordinates &
    drawPolygon [a,b,c,d] &
    drawPointsLabels [a,b,c,d] ["A","B","C","D","F","G","H","I"] &
    messages ["Perimeter=" ++ show perimeter,
              "Area=" ++ show area]
        where
        [a,b,c,d] = four points
        perimeter = 0
        area = 0
