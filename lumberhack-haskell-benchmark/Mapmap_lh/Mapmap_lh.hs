import Criterion.Main


--- original ---
(testMapmap_lh_₁ 5000000)
enumFromTo_lh_₁ a⁰ b⁰ = (if (a⁰ <= b⁰) then (a⁰:((enumFromTo_lh_₁ (a⁰ + 1)) b⁰)) else [])
map_lh_₁ f¹ ls¹ = (case ls¹ of {(h¹ : t¹) -> ((f¹ h¹):((map_lh_₁ f¹) t¹)); [] -> []})
testMapmap_lh_₁ _lh_testMapmap_arg1⁰ = ((map_lh_₂ (\x⁰ -> (x⁰ + 1))) ((map_lh_₁ (\x¹ -> (x¹ + x¹))) ((enumFromTo_lh_₁ 1) _lh_testMapmap_arg1⁰)))

--- lumberhack ---
enumFromTo_lh_₁_₀ a⁰ b⁰ = (if (a⁰ <= b⁰) then (let t⁰ = ((enumFromTo_lh_₁_₀ (a⁰ + 1)) b⁰) in (let h⁰ = a⁰ in (\f¹ -> (let t¹ = ((map_lh_₁_₀ f¹) t⁰) in (let h¹ = (f¹ h⁰) in (\f² -> ((f² h¹):((map_lh_₂_₀ f²) t¹)))))))) else (\f³ f⁴ -> []))
map_lh_₁_₀ f⁵ ls¹ = (ls¹ f⁵)
map_lh_₂_₀ f⁰ ls⁰ = (ls⁰ f⁰)
testMapmap_lh_₁_₀ _lh_testMapmap_arg1⁰ = ((map_lh_₂_₀ (\x⁰ -> (x⁰ + 1))) ((map_lh_₁_₀ (\x¹ -> (x¹ + x¹))) ((enumFromTo_lh_₁_₀ 1) _lh_testMapmap_arg1⁰)))

main :: IO ()
main = defaultMain [ bgroup "Mapmap_lh" [
    bench "lumberhack_Mapmap_lh" $ nf testMapmap_lh_₁_₀ 5000000
  , bench "original_Mapmap_lh" $ nf testMapmap_lh_₁ 5000000 ] ]
