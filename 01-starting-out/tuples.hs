-- Tuples are used when you know exactly how many values you want to combine.
-- Its type depends on how many components it has and the types of the
-- components.
-- They also don't have to be homogenous.

fst (3,10) -- gives 3
snd ("Hello", True) -- gives True
zip [1,2,3] [5,5,5] -- gives [(1,5),(2,5),(3,5)]
