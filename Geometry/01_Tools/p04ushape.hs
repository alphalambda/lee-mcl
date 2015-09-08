
import Drawing
import Unit01(ushape)

main = drawPicture myPicture

myPicture points =
    drawPolygon [a,b,c,d,f,g,h,i] &
    drawPointsLabels [a,b,c,d,f,g,h,i] ["A","B","C","D","F","G","H","I"] &
    messages ["Perimeter=" ++ show perimeter,
              "Area=" ++ show area]
    where [a,b,c,d,f,g,h,i] = ushape points
          perimeter = 0
          area = 0
