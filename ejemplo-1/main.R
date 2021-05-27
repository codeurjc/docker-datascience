message("Sample Script in R")
message("Creating cars and trucks arrays...")

# Create cars and trucks arrays
cars <- c(1, 3, 6, 4, 9)
trucks <- c(2, 5, 4, 5, 12)

message("Creating plot using the cars and trucks arrays...")

# Create output folder
if (!dir.exists("/output")) {
    dir.create("/output")
}

# Open a png file
png(filename="/output/plot.png")

# Create a plot
plot(cars, type="o", col="blue", ylim=c(0,12))
lines(trucks, type="o", pch=22, lty=2, col="red")
title(main="Autos", col.main="red", font.main=4)

# Close the pdf file
dev.off()