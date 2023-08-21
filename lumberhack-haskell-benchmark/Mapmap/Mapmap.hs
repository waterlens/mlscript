import Criterion.Main


--- original ---
enumFromTo₀ a⁵ b² = (if (a⁵ <= b²) then (a⁵:((enumFromTo₀ (a⁵ + 1)) b²)) else [])
map₀ f¹³ ls²⁰ = (case ls²⁰ of {(h²¹ : t²³) -> ((f¹³ h²¹):((map₀ f¹³) t²³)); [] -> []})
map₁ f¹² ls¹⁹ = (case ls¹⁹ of {(h²⁰ : t²²) -> ((f¹² h²⁰):((map₁ f¹²) t²²)); [] -> []})
testMapmap₀ _lh_testMapmap_arg1¹ = ((map₀ (\x⁴ -> (x⁴ + 1))) ((map₁ (\x⁵ -> (x⁵ + x⁵))) ((enumFromTo₀ 1) _lh_testMapmap_arg1¹)))

--- lumberhack ---
enumFromTo₀₀ a⁰ b⁰ = (if (a⁰ <= b⁰) then (let h⁰ = (lazy a⁰) in (let t⁰ = (lazy ((enumFromTo₀₀ (a⁰ + 1)) b⁰)) in (\f² -> (let h¹ = (lazy (f² (force h⁰))) in (let t¹ = (lazy ((map₁₀ f²) (force t⁰))) in (\f³ -> ((f³ (force h¹)):((map₀₀ f³) (force t¹))))))))) else (\f⁴ f⁵ -> []))
map₀₀ f⁰ ls⁰ = (ls⁰ f⁰)
map₁₀ f¹ ls¹ = (ls¹ f¹)
testMapmap₀₀ _lh_testMapmap_arg1⁰ = ((map₀₀ (\x⁰ -> (x⁰ + 1))) ((map₁₀ (\x¹ -> (x¹ + x¹))) ((enumFromTo₀₀ 1) _lh_testMapmap_arg1⁰)))

main :: IO ()
main = defaultMain [ bgroup "Mapmap" [
    bench "lumberhack_Mapmap" $ nf testMapmap₀₀ 5000000
  , bench "original_Mapmap" $ nf testMapmap₀ 5000000 ] ]
