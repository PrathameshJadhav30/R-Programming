scores <- data.frame(
  student = c(1,2,3,4,5,6,7,8,9,10),
  mathematics = c(90, 85, 78, 92, 88, 84, 76, 91, 89, 77),
  science = c(88, 79, 85, 95, 91, 80, 83, 92, 87, 78),
  english = c(85, 82, 90, 86, 80, 88, 84, 87, 91, 79)
)
paste("Mean Of Mathamematics:",mean(scores$mathematics))
paste("Mean Of Science:",mean(scores$science))
paste("Mean Of English:",mean(scores$english))

paste("Median Of Mathamematics:",median(scores$mathematics))
paste("Median Of Science:",median(scores$science))
paste("Median Of Mathamematics:",median(scores$mathematics))