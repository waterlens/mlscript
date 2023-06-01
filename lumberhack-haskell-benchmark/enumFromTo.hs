import Criterion.Main


enumFromTo₀₀ a⁰ b⁰ = (if (a⁰ <= b⁰) then (a⁰:((enumFromTo₀₀ (a⁰ + 1)) b⁰)) else [])
map₀₀ f⁰ ls⁰ = (ls⁰ f⁰)
map₁₀ f¹ ls¹ = (case ls¹ of {(h⁰ : t⁰) -> (let h¹ = (f¹ h⁰) in (let t¹ = ((map₁₀ f¹) t⁰) in (\f² -> ((f² h¹):((map₀₀ f²) t¹))))); [] -> (\f³ -> [])})

myMap f [] = []
myMap f (h:t) = (f h):(myMap f t)

myEnumFromTo a b = if a <= b then a:(myEnumFromTo (a + 1) b) else []

testLumberhack n = ((map₀₀ (\x⁰ -> (x⁰ + 1))) ((map₁₀ (\x¹ -> (x¹ + x¹))) ((enumFromTo₀₀ 1) n)))
testDefault n = map (\x -> x + 1) $ map (\x -> x + x) [1 .. n]
testDefaultMyMap n = myMap (\x -> x + 1) $ myMap (\x -> x + x) [1 .. n]
testDefaultMyEnumFromTo n = map (\x -> x + 1) $ map (\x -> x + x) (myEnumFromTo 1 n)
testDefaultMyEnumFromToMyMap n = myMap (\x -> x + 1) $ myMap (\x -> x + x) (myEnumFromTo 1 n)

main :: IO ()
main = defaultMain [ bgroup "f1" [
                                   bench "lumberhack" $ nf testLumberhack 1000000
                                 , bench "default" $ nf testDefault 1000000
                                 , bench "defaultMyEnumFromTo" $ nf testDefaultMyEnumFromTo 1000000 
                                 , bench "defaultMyEnumFromToMyMap" $ nf testDefaultMyEnumFromToMyMap 1000000
                                 , bench "defaultMyMap" $ nf testDefaultMyMap 1000000] ]


