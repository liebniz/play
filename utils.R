## functions to exercise runit

## centigrade to Fahrenheit
c2f <- function(c) {
  f <- 9 / 5 * c + 32;
  return (f);
}

## Fahrenheit to centigrade
f2c <- function(f) {
#  c = 5 / 9 * (f - 32)
  c = 5 / 9 * f - 32
  return (c)
}
