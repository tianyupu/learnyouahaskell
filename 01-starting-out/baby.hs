-- A common pattern in haskell is to create complex functions from
-- simpler ones that are known to be correct
doubleUs x y = doubleMe x + doubleMe y
doubleMe x = x + x
-- The order of function definitions does not matter!

-- If statements are expressions, so they must return something (including the 'else' part
doubleSmallNumber x = if x > 100 then x else x*2
doubleSmallNumber' x = doubleSmallNumber x + 1
-- The ' usually denotes a strict version of a function or a slightly modified
-- version of a function or variable. It's a valid character in function names

-- Functions without parameters are 'definitions' or 'names'
-- They can't be changed after they are defined
pi = 3.14159265359
