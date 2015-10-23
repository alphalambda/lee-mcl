
import Drawing

main = drawPicture myPicture

myPicture points =
    coordinates &
    messages ["Square with vertices A B C D"]
        where
        [a] = take 1 points
        (a1,a2) = a
