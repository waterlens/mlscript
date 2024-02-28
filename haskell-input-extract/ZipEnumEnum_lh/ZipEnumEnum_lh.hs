testZipEnumEnum n = zip [1..n] [1..n]
testZipEnumEnum $ primId 100000
