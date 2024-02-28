const0 = z_of_int 0
const2100000000 = z_of_int 2100000000
const14000001 = z_of_int 14000001
z_enumFromThenTo a t b = if z_leq a b then a:(z_enumFromThenTo t (z_sub (z_mul (z_of_int 2) t) a) b) else []
runalltests astart astep alim bstart bstep blim = (
                                                      runbench (\a b -> z_add a b) (\a b -> a + b) "(+)" astart astep alim astart astep alim
                                                    , runbench (\a b -> z_sub a b) (\a b -> a - b) "(-)" astart astep alim astart astep alim
                                                    , runbench (\a b -> z_mul a b) (\a b -> a * b) "(*)" astart astep alim astart astep alim
                                                    , runbench (\a b -> z_div a b) (\a b -> a `div` b) "div" astart astep alim astart astep alim
                                                    , runbench (\a b -> z_mod a b) (\a b -> a `mod` b) "mod" astart astep alim astart astep alim
                                                    , runbench (\a b -> z_equal a b) (\a b -> a == b) "(==)" astart astep alim astart astep alim
                                                    , runbench (\a b -> z_lt a b) (\a b -> a < b) "(<)" astart astep alim astart astep alim
                                                    , runbench (\a b -> z_leq a b) (\a b -> a <= b) "(<=)" astart astep alim astart astep alim
                                                    , runbench (\a b -> z_gt a b) (\a b -> a > b) "(>)" astart astep alim astart astep alim
                                                    , runbench (\a b -> z_geq a b) (\a b -> a >= b) "(>=)" astart astep alim astart astep alim
                                                  )
runbench jop iop opstr astart astep alim bstart bstep blim =
  (intbench iop astart astep alim astart astep alim, integerbench jop astart astep alim astart astep alim)
integerbench op astart astep alim bstart bstep blim =
    [ op a b | a <- z_enumFromThenTo astart (z_add astart astep) alim, b <- z_enumFromThenTo bstart (z_add astart bstep) blim]
intbench op astart astep alim bstart bstep blim =
    [ op a b | a <- [(z_to_int astart),(z_to_int astart)+(z_to_int astep)..(z_to_int alim) ] , b <- [(z_to_int bstart),(z_to_int astart)+(z_to_int bstep)..(z_to_int blim) ]]
testInteger_nofib n = runalltests (z_sub (const0) (const2100000000)) n (const2100000000) (z_sub (const0) (const2100000000)) n (const2100000000)
testInteger_nofib $ primId (const14000001)
