import Drawing

main = drawPicture myPicture


myPicture points =
    drawSegment (a,b) &
    drawSegment (b,c) &
    drawSegment (c,a) &
    drawPoints [a,b,c] &
    drawLabels [a,b,c] ["A","B","C"] &
    message "Lines"
    where [a,b,c] = take 3 points
