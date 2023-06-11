import Criterion.Main


--- original ---
enumFromTo₀ a² b² = (if (a² <= b²) then (a²:((enumFromTo₀ (a² + 1)) b²)) else [])
map₀ f⁴ ls⁷ = (case ls⁷ of {(h⁷ : t⁸) -> ((f⁴ h⁷):((map₀ f⁴) t⁸)); [] -> []})
map₁ f⁵ ls⁸ = (case ls⁸ of {(h⁸ : t⁹) -> ((f⁵ h⁸):((map₁ f⁵) t⁹)); [] -> []})
testMapmap₀ _lh_testMapmap_arg1¹ = ((map₀ (\x² -> (x² + 1))) ((map₁ (\x³ -> (x³ + x³))) ((enumFromTo₀ 1) _lh_testMapmap_arg1¹)))

--- optimized ---
enumFromTo₀₀ a⁰ b⁰ = (if (a⁰ <= b⁰) then (let h⁰ = a⁰ in (let t⁰ = ((enumFromTo₀₀ (a⁰ + 1)) b⁰) in (\f¹ -> (let h¹ = (f¹ h⁰) in (let t¹ = ((map₁₀ f¹) t⁰) in (\f² -> ((f² h¹):((map₀₀ f²) t¹)))))))) else (\f³ f⁴ -> []))
map₀₀ f⁵ ls¹ = (ls¹ f⁵)
map₁₀ f⁰ ls⁰ = (ls⁰ f⁰)
testMapmap₀₀ _lh_testMapmap_arg1⁰ = ((map₀₀ (\x⁰ -> (x⁰ + 1))) ((map₁₀ (\x¹ -> (x¹ + x¹))) ((enumFromTo₀₀ 1) _lh_testMapmap_arg1⁰)))

main :: IO ()
main = defaultMain [ bgroup "Mapmap" [
    bench "lumberhack_Mapmap" $ nf testMapmap₀₀ 5000000
  , bench "original_Mapmap" $ nf testMapmap₀ 5000000 ] ]
