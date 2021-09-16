#' Create histogram, boxplot and numeric summary
#' @export
#' @param x numeric variable
ds <- function(x) {
  #plot with 1 row and 2 columns
  par(mfrow = c(1,2))

  # Histogram
  hist(x = x, col = rainbow(30))

  # Box plot
  boxplot(x = x, col = 'green')

  par(mfrow = c(1,1))

  #Numeric summary
  data.frame(min = min(x),
             median = median(x),
             mean = mean(x),
             max = max(x),
             sd = sd(x),
             range = max(x) - min(x))
}
