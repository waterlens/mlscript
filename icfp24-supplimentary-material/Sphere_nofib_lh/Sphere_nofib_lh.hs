pi = 3.141592653589793
null [] = True
null (h:t) = False
fst (a,b) = a
snd (a,b) = b
epsilon, infinity :: Double
epsilon  = 0.000001
infinity = 100000000.0
type Vector = (Double, Double, Double)
vecadd, vecsub, vecmult :: Vector -> Vector -> Vector
vecadd  (x1,y1,z1) (x2,y2,z2) = (x1+.x2, y1+.y2, z1+.z2)
vecsub  (x1,y1,z1) (x2,y2,z2) = (x1-.x2, y1-.y2, z1-.z2)
vecmult (x1,y1,z1) (x2,y2,z2) = (x1*.x2, y1*.y2, z1*.z2)
vecsum :: [Vector] -> Vector
vecsum param = foldr vecadd (0.0,0.0,0.0) param
vecnorm :: Vector -> (Vector, Double)
vecnorm (x,y,z) =
  let len = sqrt ((x *. x) +. (y *. y) +. (z *. z)) in
  ((x /. len, y /. len, z /. len), len)
vecscale :: Vector -> Double -> Vector
vecscale (x,y,z) a = (a *. x, a *. y, a *. z)
vecdot :: Vector -> Vector -> Double
vecdot (x1,y1,z1) (x2,y2,z2) = (x1 *. x2) +. (y1 *. y2) +. (z1 *. z2)
veccross :: Vector -> Vector -> Vector
veccross (x1,y1,z1) (x2,y2,z2) = ((y1 *. z2) -. (y2 *. z1), (z1*.x2) -. (z2 *. x1), (x1 *. y2) -. (x2 *. y1))
is_zerovector :: Vector -> Bool
is_zerovector (x,y,z) = (polyLt x epsilon) && (polyLt y epsilon) && (polyLt z epsilon)
data Light = Directional Vector Vector | Point Vector Vector
lightpos :: Light -> Vector
lightpos (Point pos col) = pos
lightdir :: Light -> Vector
lightdir (Directional dir col) = fst (vecnorm dir)
lightcolour :: Light -> Vector
lightcolour (Directional dir col) = col
lightcolour (Point pos col)       = col
data Surfspec = Ambient Vector        -- all but specpow default to zero
              | Diffuse Vector
              | Specular Vector
              | Specpow Double        -- default 8
              | Reflect Double
              | Transmit Double
              | Refract Double        -- default 1, like air == no refraction
              | Body Vector           -- body colour, default (1, 1, 1)
ambientsurf :: [Surfspec] -> Vector
ambientsurf ss = head ([ s | Ambient s <- ss] ++ [(0.0,0.0,0.0)])
diffusesurf :: [Surfspec] -> Vector
diffusesurf ss = head ([ s | Diffuse s <- ss] ++ [(0.0,0.0,0.0)])
specularsurf :: [Surfspec] -> Vector
specularsurf ss = head ([ s | Specular s <- ss] ++ [(0.0,0.0,0.0)])
specpowsurf :: [Surfspec] -> Double
specpowsurf ss = head ([ s | Specpow s <- ss] ++ [8.0])
reflectsurf :: [Surfspec] -> Double
reflectsurf ss = head ([ s | Reflect s <- ss] ++ [0.0])
transmitsurf :: [Surfspec] -> Double
transmitsurf ss = head ([ s | Transmit s <- ss] ++ [0.0])
refractsurf :: [Surfspec] -> Double
refractsurf ss = head ([ s | Refract s <- ss] ++ [1.0])
bodysurf :: [Surfspec] -> Vector
bodysurf ss = head ([ s | Body s <- ss] ++ [(1.0,1.0,1.0)])
data Sphere = Sphere Vector Double [Surfspec] -- pos, radius, surface type
spheresurf :: Sphere -> [Surfspec]
spheresurf (Sphere pos rad surf) = surf
lookat = (0.0,0.0,0.0)
vup = (0.0,0.0,1.0)
fov :: Double
fov = 45.0
-- testspheres :: [Sphere]
-- testspheres = testspheres
s2 :: [Surfspec]
s2 = [Ambient (0.035, 0.0325, 0.025), Diffuse (0.5, 0.45, 0.35), Specular (0.8, 0.8, 0.8), Specpow 3.0, Reflect 0.5]
testspheres :: [Sphere]
testspheres = [(Sphere (0.0,0.0,0.0) 0.5 (s2)),
               (Sphere (0.272166,0.272166,0.544331) 0.166667 (s2)),
               (Sphere (0.643951,0.172546,0.0) 0.166667 (s2)),
               (Sphere (0.172546,0.643951,0.0) 0.166667 (s2)),
               (Sphere (0.0 -. 0.371785,0.0996195,0.544331) 0.166667 (s2)),
               (Sphere (0.0 -. 0.471405,0.471405,0.0) 0.166667 (s2)),
               (Sphere (0.0 -. 0.643951,0.0 -. 0.172546,0.0) 0.166667 (s2)),
               (Sphere (0.0996195,0.0 -. 0.371785,0.544331) 0.166667 (s2)),
               (Sphere (0.0 -. 0.172546,0.0 -. 0.643951,0.0) 0.166667 (s2)),
               (Sphere (0.471405,0.0 -. 0.471405,0.0) 0.166667 (s2))]
testlights :: [Light]
testlights = [Point (4.0, 3.0, 2.0) (0.288675,0.288675,0.288675),
              Point (1.0, 0.0 -. 4.0, 4.0) (0.288675,0.288675,0.288675),
              Point (0.0 -. 3.0,1.0,5.0) (0.288675,0.288675,0.288675)]
lookfrom, background :: Vector
lookfrom   = (2.1, 1.3, 1.7)
background = (0.078, 0.361, 0.753)
ray :: Int -> [((Int, Int),Vector)]
ray winsize =
  let lights = (testlights) in
  case (camparams lookfrom (lookat) (vup) fov (float_of_int winsize)) of {
    (firstray, scrnx, scrny) ->
      let f = \i -> \j -> tracepixel (testspheres) lights (float_of_int i) (float_of_int j) firstray scrnx scrny in
      [ ((i,j), f i j) | i<-[0..(winsize-1)], j<-[0..(winsize-1)]]
  }
dtor :: Double -> Double
dtor x = (x *. pi) /. (180.0)
camparams :: Vector -> Vector -> Vector -> Double -> Double
           -> (Vector, Vector, Vector)
camparams lookfrom lookat vup fov winsize =
  let initfirstray = vecsub lookat lookfrom in
  case (vecnorm initfirstray) of {
    (lookdir, dist) -> case (vecnorm (veccross lookdir vup)) of {
      (scrni, _) -> case (vecnorm (veccross scrni lookdir)) of {
        (scrnj, _) ->
          let xfov = fov in
          let yfov = fov in
          let xwinsize = winsize in
          let ywinsize = winsize in
          let magx = 2.0 *. dist *. (tan (dtor (xfov /. 2.0))) /. xwinsize in
          let magy = 2.0 *. dist *. (tan (dtor (yfov /. 2.0))) /. ywinsize in
          let scrnx = vecscale scrni magx in
          let scrny = vecscale scrnj magy in
          let firstray = vecsub initfirstray (vecadd (vecscale scrnx (0.5 *. xwinsize)) (vecscale scrny (0.5 *. ywinsize))) in
          (firstray, scrnx, scrny)
      }
    }
  }  
tracepixel ::  [Sphere] -> [Light] -> Double -> Double -> Vector -> Vector -> Vector -> Vector
tracepixel spheres lights x y firstray scrnx scrny =
  let pos = lookfrom in
  case (vecnorm (vecadd (vecadd firstray (vecscale scrnx x)) (vecscale scrny y))) of {
    (dir, _) -> case (trace spheres pos dir) of {
      (hit, dist, sp) ->
        if hit then
          shade lights sp pos dir dist (1.0,1.0,1.0)
        else
          background
    }
  }
trace :: [Sphere] -> Vector -> Vector -> (Bool,Double,Sphere)
trace spheres pos dir =
  let f = \d1s1 -> \d2s2 -> case d1s1 of {
    (d1,s1) -> case d2s2 of {
      (d2,s2) -> if polyLt d1 d2 then (d1,s1) else (d2,s2)
    }
  } in
  let sphmap = \xss -> case xss of {
    [] -> [];
    (x:xs) ->
      case (sphereintersect pos dir x) of {
        (is_hit, where_hit) -> if is_hit then (where_hit, x):(sphmap xs) else sphmap xs
      }
  } in
  let dists = sphmap spheres in
  if (null dists)
  then (False, infinity, head spheres)
  else case (foldr f (head dists) (tail dists)) of { (mindist, sp) -> (True, mindist, sp) }
shade :: [Light] -> Sphere -> Vector -> Vector -> Double -> Vector -> Vector
shade lights sp lookpos dir dist contrib =
  let hitpos = vecadd lookpos (vecscale dir dist) in
  let ambientlight = (1.0, 1.0, 1.0) in
  let surf = spheresurf sp in
  let amb = vecmult ambientlight (ambientsurf surf) in
  let norm = spherenormal hitpos sp in
  let refl = vecadd dir (vecscale norm ((0.0 -. 2.0) *. (vecdot dir norm))) in
  let diff = vecsum (map (\l->lightray l hitpos norm refl surf) lights) in
  let transmitted = transmitsurf surf in
  let simple = vecadd amb diff in
  let trintensity = vecscale (bodysurf surf) transmitted in
  case (if polyLt transmitted epsilon then (False, simple) else transmitray lights simple hitpos dir (refractsurf surf) trintensity contrib norm) of {
    (is_tir, trcol) ->
      let reflsurf = vecscale (specularsurf surf) (reflectsurf surf) in
      let reflectiv = if (is_tir) then (vecadd trintensity reflsurf) else reflsurf in
      let rcol = if is_zerovector reflectiv then trcol else reflectray hitpos refl lights reflectiv contrib trcol in
      rcol
  }
transmitray :: [Light] -> Vector -> Vector -> Vector -> Double -> Vector -> Vector -> Vector -> (Bool, Vector)
transmitray lights colour pos dir index intens contrib norm =
  let newcontrib = vecmult intens contrib in
  case (refractray index dir norm) of {
    (is_tir, newdir) ->
      let nearpos = vecadd pos (vecscale newdir epsilon) in
      case (trace (testspheres) nearpos newdir) of {
        (is_hit, dist, sp) ->
          let newcol = if is_hit then shade lights sp nearpos newdir dist newcontrib else background in
          if is_zerovector newcontrib
          then (False, colour)
          else (False, vecadd (vecmult newcol intens) colour)
      }
  }   
reflectray :: Vector -> Vector -> [Light] -> Vector -> Vector -> Vector -> Vector
reflectray pos newdir lights intens contrib colour =
  let newcontrib = vecmult intens contrib in
  let nearpos = vecadd pos (vecscale newdir epsilon) in
  case (trace (testspheres) nearpos newdir) of {
    (is_hit, dist, sp) ->
      let newcol = if is_hit then shade lights sp nearpos newdir dist newcontrib else background in
      if is_zerovector newcontrib
      then colour
      else vecadd colour (vecmult newcol intens)
  }
refractray :: Double -> Vector -> Vector -> (Bool,Vector)
refractray newindex olddir innorm =
  let dotp = 0.0 -. (vecdot olddir innorm) in
  case (if polyLt dotp 0.0 then (vecscale innorm (0.0 -. 1.0), 0.0 -. dotp, 1.0 /. newindex) else (innorm, dotp, newindex)) of {
    (norm, k, nr) ->
      let disc = 1.0 -. nr *. nr *. (1.0 -. (k *. k)) in
      let t = (nr *. k) -. (sqrt disc) in
      if polyLt disc 0.0 then (True, (0.0,0.0,0.0)) else (False, vecadd (vecscale norm t) (vecscale olddir nr))
  }
lightray :: Light -> Vector -> Vector -> Vector -> [Surfspec] -> Vector
lightray l pos norm refl surf =
  case (lightdirection l pos) of { (ldir, dist) ->
    let cosangle = vecdot ldir norm in
    case (shadowed pos ldir (lightcolour l)) of { (is_inshadow, lcolour) ->
      if is_inshadow then (0.0,0.0,0.0)
      else
        let diff = diffusesurf surf in
        let spow = specpowsurf surf in
          if (polyLeq cosangle 0.0) then
            let bodycol = bodysurf surf in
            let cosalpha = 0.0 -. (vecdot refl ldir) in
            let diffcont = vecmult (vecscale diff (0.0 -. cosangle)) lcolour in
            let speccont = if polyLeq cosalpha 0.0 then (0.0,0.0,0.0) else vecmult (vecscale bodycol (cosalpha**spow)) lcolour in
            vecadd diffcont speccont
          else
            let spec = specularsurf surf in
            let cosalpha = vecdot refl ldir in
            let diffcont = vecmult (vecscale diff cosangle) lcolour in
            let speccont = if polyLeq cosalpha 0.0 then (0.0,0.0,0.0) else vecmult (vecscale spec (cosalpha**spow)) lcolour in
            vecadd diffcont speccont
    }
  }
lightdirection :: Light -> Vector -> (Vector, Double)
lightdirection (Directional dir col) pt = (fst (vecnorm dir), infinity)
lightdirection (Point pos col) pt       = vecnorm (vecsub pos pt)
shadowed :: Vector -> Vector -> a -> (Bool,a)
shadowed pos dir lcolour =
  case (trace (testspheres) (vecadd pos (vecscale dir epsilon)) dir) of {
    (is_hit, dist, sp) -> if not is_hit then (False, lcolour) else (True, lcolour)
  }
sphereintersect :: Vector -> Vector -> Sphere -> (Bool,Double)
sphereintersect pos dir (Sphere spos rad _) =
  let m = vecsub pos spos in
  let bm = vecdot m dir in
  let m2 = vecdot m m in
  let disc = (bm *. bm) -. m2 +. (rad *. rad) in
  let slo = 0.0 -. bm -. (sqrt disc) in
  let shi = 0.0 -. bm +. (sqrt disc) in
  if polyLt disc 0.0 then
    (False, 0.0)
  else if polyLt slo 0.0 then
    if polyLt shi 0.0 then
      (False, 0.0)
    else 
      (True, shi)
  else (True, slo)
spherenormal :: Vector-> Sphere -> Vector
spherenormal pos (Sphere spos rad _) = vecscale (vecsub pos spos) (1.0 /. rad)
hash :: [Vector] -> Int
hash param =
  let u8 = \x -> (int_of_float . (\x -> 255.0 *. x)) x in
  foldr (\rgb acc -> case rgb of { (r,g,b) -> (u8 r) + ((u8 g) * 7) + ((u8 b) * 23) + (acc * 61) }) 0 param
run winsize = hash (map snd (ray winsize))
testSphere_nofib n = run n
testSphere_nofib $ primId 30
