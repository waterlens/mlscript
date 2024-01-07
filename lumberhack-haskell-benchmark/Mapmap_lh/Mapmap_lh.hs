import Criterion.Main


--- original ---
(testMapmap_lh_₁ 5000000)
enumFromTo_lh_₁ a⁰ b⁰ = (if (a⁰ <= b⁰) then (a⁰:((enumFromTo_lh_₁ (a⁰ + 1)) b⁰)) else [])
map_lh_₁ f¹ ls¹ = (case ls¹ of {(h¹ : t¹) -> ((f¹ h¹):((map_lh_₁ f¹) t¹)); [] -> []})
testMapmap_lh_₁ _lh_testMapmap_arg1⁰ = ((map_lh_₂ (\x⁰ -> (x⁰ + 1))) ((map_lh_₁ (\x¹ -> (x¹ + x¹))) ((enumFromTo_lh_₁ 1) _lh_testMapmap_arg1⁰)))

--- lumberhack ---
enumFromTo_lh_₁ a⁰ b⁰ = (if (a⁰ <= b⁰) then (let t⁰ = ((enumFromTo_lh_₁ (a⁰ + 1)) b⁰) in (let h⁰ = a⁰ in (\f² -> (let t¹ = ((map_lh_₁ f²) t⁰) in (let h¹ = (f² h⁰) in (\f³ -> ((f³ h¹):((map_lh_₂ f³) t¹)))))))) else (\f⁴ f⁵ -> []))
map_lh_₁ f¹ ls¹ = (ls¹ f¹)
map_lh_₂ f⁰ ls⁰ = (ls⁰ f⁰)
testMapmap_lh_₁ _lh_testMapmap_arg1⁰ = ((map_lh_₂ (\x⁰ -> (x⁰ + 1))) ((map_lh_₁ (\x¹ -> (x¹ + x¹))) ((enumFromTo_lh_₁ 1) _lh_testMapmap_arg1⁰)))

main :: IO ()
main = defaultMain [ bgroup "Mapmap_lh" [
    bench "lumberhack_Mapmap_lh" $ nf testMapmap_lh_₁ 5000000
  , bench "original_Mapmap_lh" $ nf testMapmap_lh_₁ 5000000 ] ]
