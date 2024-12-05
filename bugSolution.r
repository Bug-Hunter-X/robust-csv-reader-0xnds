```r
# This improved code checks if the file exists before attempting to read it.
file_path <- "my_file.csv"
if (file.exists(file_path)) {
  data <- read.csv(file_path)
  # ... further code that uses 'data' ...
} else {
  stop(paste("Error: File not found at", file_path))
}
```