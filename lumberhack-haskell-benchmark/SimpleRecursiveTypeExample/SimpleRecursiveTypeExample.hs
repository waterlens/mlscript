import Criterion.Main


--- original ---
testSimpleRecursiveTypeExample_₀ _lh_testSimpleRecursiveTypeExample_arg1¹ = (let _lh_listcomp_fun¹ = (\_lh_listcomp_fun_para¹ -> (case _lh_listcomp_fun_para¹ of {(_lh_listcomp_fun_ls_h¹ : _lh_listcomp_fun_ls_t¹) -> (_lh_listcomp_fun_ls_h¹:(_lh_listcomp_fun¹ _lh_listcomp_fun_ls_t¹)); [] -> []})) in (_lh_listcomp_fun¹ (_lh_testSimpleRecursiveTypeExample_arg1¹:[])))

--- lumberhack ---
testSimpleRecursiveTypeExample_₀_₀ _lh_testSimpleRecursiveTypeExample_arg1⁰ = (let _lh_listcomp_fun⁰ = (\_lh_listcomp_fun_para⁰ -> (_lh_listcomp_fun_para⁰ _lh_listcomp_fun⁰)) in (_lh_listcomp_fun⁰ (let _lh_listcomp_fun_ls_t⁰ = (\_lh_listcomp_fun¹ -> []) in (let _lh_listcomp_fun_ls_h⁰ = _lh_testSimpleRecursiveTypeExample_arg1⁰ in (\_lh_listcomp_fun² -> (_lh_listcomp_fun_ls_h⁰:(_lh_listcomp_fun² _lh_listcomp_fun_ls_t⁰)))))))

main :: IO ()
main = defaultMain [ bgroup "SimpleRecursiveTypeExample" [
    bench "lumberhack_SimpleRecursiveTypeExample" $ nf testSimpleRecursiveTypeExample_₀_₀ 3
  , bench "original_SimpleRecursiveTypeExample" $ nf testSimpleRecursiveTypeExample_₀ 3 ] ]
