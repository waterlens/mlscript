import Criterion.Main


--- original ---
enumFromTo_₀ a⁵ b² = (if (a⁵ <= b²) then (a⁵:((enumFromTo_₀ (a⁵ + 1)) b²)) else [])
map_₀ f¹³ ls²⁰ = (case ls²⁰ of {(h²¹ : t²³) -> ((f¹³ h²¹):((map_₀ f¹³) t²³)); [] -> []})
map_₁ f¹² ls¹⁹ = (case ls¹⁹ of {(h²⁰ : t²²) -> ((f¹² h²⁰):((map_₁ f¹²) t²²)); [] -> []})
testMapmap_₀ _lh_testMapmap_arg1¹ = ((map_₀ (\x⁴ -> (x⁴ + 1))) ((map_₁ (\x⁵ -> (x⁵ + x⁵))) ((enumFromTo_₀ 1) _lh_testMapmap_arg1¹)))

--- lumberhack ---
enumFromTo_₀_₀ a⁰ b⁰ = (if (a⁰ <= b⁰) then (let t⁰ = ((enumFromTo_₀_₀ (a⁰ + 1)) b⁰) in (let h⁰ = a⁰ in (\f¹ -> (let t¹ = ((map_₁_₀ f¹) t⁰) in (let h¹ = (f¹ h⁰) in (\f² -> ((f² h¹):((map_₀_₀ f²) t¹)))))))) else (\f³ f⁴ -> []))
map_₀_₀ f⁵ ls¹ = (ls¹ f⁵)
map_₁_₀ f⁰ ls⁰ = (ls⁰ f⁰)
testMapmap_₀_₀ _lh_testMapmap_arg1⁰ = ((map_₀_₀ (\x⁰ -> (x⁰ + 1))) ((map_₁_₀ (\x¹ -> (x¹ + x¹))) ((enumFromTo_₀_₀ 1) _lh_testMapmap_arg1⁰)))

main :: IO ()
main = defaultMain [ bgroup "Mapmap" [
    bench "lumberhack_Mapmap" $ nf testMapmap_₀_₀ 5000000
  , bench "original_Mapmap" $ nf testMapmap_₀ 5000000 ] ]
