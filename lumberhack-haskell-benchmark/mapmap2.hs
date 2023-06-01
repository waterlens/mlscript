import Criterion.Main


map₀ f⁰ ls⁰ = (ls⁰ f⁰)
map₁ f¹ ls¹ = (case ls¹ of {(h⁰ : t⁰) -> (let h¹ = (f¹ h⁰) in (let t¹ = ((map₁ f¹) t⁰) in (\f² -> ((f² h¹):((map₀ f²) t¹))))); [] -> (\f³ -> [])})

map₁2 f¹ ls¹ f² = (case ls¹ of {(h⁰ : t⁰) -> (let h¹ = (f¹ h⁰) in (let t¹ = ((map₁2 f¹) t⁰) in (((f² h¹):((map₀ f²) t¹))))); [] -> ([])})

mapff f1 ls f2 = case ls of { (h:t) -> (f2 $ f1 h):(mapff f1 t f2); [] -> []}

testOur ls = ((map₀ (\x⁰ -> (x⁰ + 1))) ((map₁ (\x¹ -> (x¹ + x¹))) ls))
testOurFloatOut ls = ((map₀ (\x⁰ -> (x⁰ + 1))) ((map₁2 (\x¹ -> (x¹ + x¹))) ls))
testDefault ls = map (\x -> x + 1) $ map (\x -> x + x) ls
testManual ls = map (\x -> x + x + 1) ls
testManual2 ls = mapff (\x -> x + x) ls (\x -> x + 1)

main :: IO ()
main = defaultMain [ bgroup "f1" [
                                 bench "our" $ nf testOur [1..5000000]
                                 , bench "default" $ nf testDefault [1..5000000]
                                 , bench "ourFloatOut" $ nf testOurFloatOut [1..5000000]
                                 , bench "manual2" $ nf testManual2 [1..5000000]
                                 , bench "manual" $ nf testManual [1..5000000] ] ]
