import Criterion.Main


--- original ---
testSimpleRecursiveTypeExample₀ _lh_testSimpleRecursiveTypeExample_arg1¹ = (let _lh_listcomp_fun¹ = (\_lh_listcomp_fun_para¹ -> (case _lh_listcomp_fun_para¹ of {(_lh_listcomp_fun_ls_h¹ : _lh_listcomp_fun_ls_t¹) -> (_lh_listcomp_fun_ls_h¹:(_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)); [] -> []})) in (_lh_listcomp_fun¹ (_lh_testSimpleRecursiveTypeExample_arg1¹:[])))

--- optimized ---
testSimpleRecursiveTypeExample₀₀ _lh_testSimpleRecursiveTypeExample_arg1⁰ = (let _lh_listcomp_fun⁰ = (\_lh_listcomp_fun_para⁰ -> (_lh_listcomp_fun_para⁰ _lh_listcomp_fun⁰)) in (_lh_listcomp_fun⁰ (let _lh_listcomp_fun_ls_h⁰ = _lh_testSimpleRecursiveTypeExample_arg1⁰ in (let _lh_listcomp_fun_ls_t⁰ = (\_lh_listcomp_fun¹ -> []) in (\_lh_listcomp_fun² -> (_lh_listcomp_fun_ls_h⁰:(_lh_listcomp_fun² _lh_listcomp_fun_ls_t⁰)))))))

main :: IO ()
main = defaultMain [ bgroup "SimpleRecursiveTypeExample" [
    bench "lumberhack_SimpleRecursiveTypeExample" $ nf testSimpleRecursiveTypeExample₀₀ 3
  , bench "original_SimpleRecursiveTypeExample" $ nf testSimpleRecursiveTypeExample₀ 3 ] ]
