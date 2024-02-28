testSumListComprehensionBuiltInType n = sum [ k * m | k <- [1..n], m <- [1..k] ]
testSumListComprehensionBuiltInType $ primId 1000
