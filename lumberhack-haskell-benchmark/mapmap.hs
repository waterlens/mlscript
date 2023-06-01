
import Criterion.Main

map₀ f⁰ ls⁰ = (ls⁰ f⁰)
map₁ f⁵ ls¹ = (ls¹ f⁵)
enumFromThenTo₀ a⁰ t⁰ b⁰ f¹ f² = if (a⁰ <= b⁰) then (let h⁰ = a⁰ in (let t¹ = (((enumFromThenTo₀ t⁰) ((2 * t⁰) - a⁰)) b⁰) in (let h¹ = (f¹ h⁰) in (let t² = ((map₁ f¹) t¹) in ((f² h¹):((map₀ f²) t²)))))) else ([])
enumFromThenTo₀2 a⁰ t⁰ b⁰ = if (a⁰ <= b⁰) then (let h⁰ = a⁰ in (let t¹ = (((enumFromThenTo₀2 t⁰) ((2 * t⁰) - a⁰)) b⁰) in \f¹ -> (let h¹ = (f¹ h⁰) in (let t² = ((map₁ f¹) t¹) in \f² -> ((f² h¹):((map₀ f²) t²)))))) else (\f¹ f² -> [])

myFromThenTo s t e = if s <= e then s:(myFromThenTo t (2 * t - s) e) else []
testOurFloatOut s t e = (map₀ (\x⁰ -> (x⁰ + 1))) ((map₁ (\x¹ -> (x¹ + x¹))) (((enumFromThenTo₀ s) t) e))
testOur s t e = (map₀ (\x⁰ -> (x⁰ + 1))) ((map₁ (\x¹ -> (x¹ + x¹))) (((enumFromThenTo₀2 s) t) e))
testDefault s t e = (map (+ 1)) $ map (\x -> x + x) $ myFromThenTo s t e
testMannual s t e = map (\x -> x + x + 1) $ myFromThenTo s t e

testDefault1 s t e = (map (+ 1)) $ map (\x -> x + x) [s, t .. e]
testMannual1 s t e = map (\x -> x + x + 1) [s, t .. e]


main :: IO ()
main = defaultMain [ bgroup "f1" [
                                   bench "our" $ nf (testOur 1 3) 1000000
                                 , bench "ourFloatOut" $ nf (testOurFloatOut 1 3) 1000000
                                 , bench "default" $ nf (testDefault 1 3) 1000000
                                 , bench "manual" $ nf (testMannual 1 3) 1000000
                                 , bench "default1" $ nf (testDefault1 1 3) 1000000
                                 , bench "manual1" $ nf (testMannual1 1 3) 1000000 ] ]
