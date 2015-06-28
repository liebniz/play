library(RUnit)

source("utils.R")


track <- tracker() ## initialize a tracking "object"
track$init() ## initialize the tracker
a <- -200:200
#a <- 330
res1 <- inspect(c2f(a), track=track) ## execute the test function and track
res2 <- inspect(f2c(a), track=track) ## execute the test function and track
# 
# 
resTrack <- track$getTrackInfo() ## get the result of Code Inspector (a list)
printHTML.trackInfo(resTrack) ## create HTML sites

test.suite <- defineTestSuite("tempConversion",
                              dirs = file.path("test"),
                              testFileRegexp = '.*Tests.R')

test.result <- runTestSuite(test.suite)

printTextProtocol(test.result)

printHTMLProtocol(test.result,fileName = "results/testUtils.html")


