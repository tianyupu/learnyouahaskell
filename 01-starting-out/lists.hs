someList = [5,4,3,2,1]

-- Append, prepend and get item at index
someList ++ [9,8,7]
6:someList
someList !! 4

-- Basic list functions
head someList
tail someList
last someList
init someList
length someList
null someList
reverse someList
take 2 someList -- gives [5,4]
drop 3 someList -- gives [2,1]
maximum someList
minimum someList
sum someList
product someList
elem 4 someList or 4 `elem` someList

-- List ranges
[1..20]
['a'..'z']
['K'..'Z']
[2,4..20] -- gives [2,4,6,8,10,12,14,16,18,20]
[3,6..20] -- gives [3,6,9,12,15,18]
[20..1] -- will not work, but [20,19..1] will

-- Make range infinite by not specifying an upper bound
take 24 [13,26..] -- get the first 24 multiples of 13
cycle someList -- turns a list into an infinite list
repeat 10 -- produces an infinite list of just 10s
replicate 5 2 -- returns [2,2,2,2,2]

-- List comprehensions
[x*2 | x <- [1..10]] -- [2,4,6,8,10,12,14,16,18,20]
-- an example of filtering with predicates:
[x | x <- [50..100], x `mod` 7 == 3] -- [52,59,66,73,80,87,94]
-- replace each odd number less than 10 with BOOM, otherwise BANG; if not odd,
-- discard
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
-- multiple predicates
[x | x <- [10..20], x /= 13, x /=15, x /= 19] -- [10,11,12,14,16,17,18,20]
-- multiple lists (list comps will produce all combinations of the given lists)
[x*y | x <- [2,5,10], y <- [8,10,11]] -- [16,20,22,40,50,55,80,100,110]

-- Our own length function
length' xs = sum [1 | _ <- xs]

-- Remove all non-uppercase characters from a string
removeNonUpper st = [c | c <- st, c `elem` ['A'..'Z']]
