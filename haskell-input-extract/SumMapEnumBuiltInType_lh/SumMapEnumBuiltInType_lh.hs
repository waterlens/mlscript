testSumMapEnumBuiltInType n = sum $ map (\x -> x * x) (enumFromTo 1 n)
testSumMapEnumBuiltInType $ primId 300000
