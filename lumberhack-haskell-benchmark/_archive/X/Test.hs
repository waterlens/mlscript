-- import Unsafe

-- f :: [a] -> [a]
-- f :: (forall a. a -> a)
-- f :: (forall a. a) -> Int
-- f x = Unsafe.unsafeCoerce x f

-- f x = (case x of { h : t -> \ff -> h : ff t; [] -> \ff -> [] }) f

-- f x = (case x of { h : t -> \ff -> h : ff t; [] -> \ff -> [] }) f

-- f x = (case x of { [] -> \ff -> [] }) f

-- f = (let h = 3 in let t = \ff -> [] in \ff -> h : ff t) f

