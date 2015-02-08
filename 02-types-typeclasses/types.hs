-- Int and Integer are almost the same, but Integers can get really big whereas
-- Ints can't
factorial :: Integer -> Integer
factorial n = product [1..n]

-- Float is a single precision real floating point
circumference :: Float -> Float
circumference r = 2 * pi * r

-- Double has...double the precision
circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- Bool can only be True or False
equalsThree :: Int -> Bool
equalsThree x = if x == 3 then True else False

-- Char is a character, with single quotes. A [Char] is a String
-- Tuples are also types but they are dependent on length as well as their
-- constituent types. The empty tuple () is also a type which can only have ()
-- as a value.
