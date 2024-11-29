input_file <- "C:/Users/sanik/OneDrive/Documents/Documents/FAI.txt"   

# Check if the file exists
if (file.exists(input_file)) {
  data <- read.table(input_file, header = TRUE, sep = ",", fill = TRUE)
  cat("Data read from file:\n")
  print(data)
} else {
  cat("Input file does not exist!\n")
}

output_file <- "output_data.txt"   # Specify the output file path

# Writing data to the specified file
write.table(data, file = output_file, row.names = FALSE, col.names = TRUE)

cat("\nData has been written to", output_file, "\n")
