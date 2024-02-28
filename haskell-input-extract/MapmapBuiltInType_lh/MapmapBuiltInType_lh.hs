testMapmapBuiltInType ls = map (\x -> x + 1) $ map (\x -> x * x) ls
testMapmapBuiltInType $ primId [1..100000]
