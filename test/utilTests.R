
test.c2f <- function() {
  checkEquals(c2f(0), 32)
}

test.f2c <- function() {
  checkEquals(f2c(32), 0)
}

test.c2c <- function() {
  checkEquals(c2f(f2c(32)), 32)
  checkEquals(c2f(f2c(88)), 88)
  checkEquals(c2f(f2c(89)), 89)
}
