-- {-# ghc -Wall }
x :: Integer
x = 22

g :: Integer -> Integer -> Integer
g a b = (a + b) * 2

h:: (Integer -> s) -> s  -- def h[s] ()
h q = q 66
hh = \q -> q 66 -- same (lambda)

--h (\x -> x + 11)

j :: s -> s
j b = b

-- blah :: (y -> z) -> (x -> y) -> x -> z
-- blah = _

data Shape = Circle Integer | Square Integer| Triangle Integer Integer Integer-- 3 constructors
  deriving (Eq, Show)

perimeter :: Shape -> Integer
perimeter (Circle r) = r * 2 * 3
perimeter (Square x) = x * 4
perimeter (Triangle a b c) = a + b + c

data Three a = Three a a a
  deriving (Eq, Show)

mapThree :: (a -> b) -> Three a -> Three b
mapThree = \x -> \y -> case y of 
          Three  a1 a2 a3 -> Three (\x a1) (\x a2) (\x a3)
