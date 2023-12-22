import Criterion.Main


--- original ---
(testMapmap_lh 5000000)
enumFromTo_lh a⁰ b⁰ = (if (a⁰ <= b⁰) then (a⁰:((enumFromTo_lh (a⁰ + 1)) b⁰)) else [])
testMapmap_lh _lh_testMapmap_arg1⁰ = ((map_lh (\x⁰ -> (x⁰ + 1))) ((map_lh (\x¹ -> (x¹ + x¹))) ((enumFromTo_lh 1) _lh_testMapmap_arg1⁰)))

--- lumberhack ---
enumFromTo_lh_₀ a⁰ b⁰ = (if (a⁰ <= b⁰) then (let t⁰ = ((enumFromTo_lh_₀ (a⁰ + 1)) b⁰) in (let h⁰ = a⁰ in (\f² -> (let t¹ = ((map_lh_₁ f²) t⁰) in (let h¹ = (f² h⁰) in (\f³ -> ((f³ h¹):((map_lh_₀ f³) t¹)))))))) else (\f⁴ f⁵ -> []))
map_lh_₀ f¹ ls¹ = (ls¹ f¹)
map_lh_₁ f⁰ ls⁰ = (ls⁰ f⁰)
testMapmap_lh_₀ _lh_testMapmap_arg1⁰ = ((map_lh_₀ (\x⁰ -> (x⁰ + 1))) ((map_lh_₁ (\x¹ -> (x¹ + x¹))) ((enumFromTo_lh_₀ 1) _lh_testMapmap_arg1⁰)))

main :: IO ()
main = defaultMain [ bgroup "Mapmap_lh" [
    bench "lumberhack_Mapmap_lh" $ nf testMapmap_lh_₀ 5000000
  , bench "original_Mapmap_lh" $ nf testMapmap_lh 5000000 ] ]
