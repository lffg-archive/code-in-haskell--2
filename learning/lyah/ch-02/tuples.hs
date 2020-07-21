-- [[ TUPLES ]]

-- Tuples are a fixed-length collection of values. Example:

personTuple :: (String, Int)
personTuple = ("Luiz Felipe", 17)

-- As the above example shows, unlike lists (which must be homogeneous), tuples
-- can contain different types in its structure.

--------------------------------------------------------------------------------

-- [[ COMMON TUPLE FUNCTIONS ]]

-- `fst` returns the first element of a pair (a tuple with two elements):
firstElm :: String
firstElm = fst personTuple -- "Luiz Felipe"

-- `snd` returns the second element of a pair.
secondElm :: Int
secondElm = snd personTuple -- 17

-- `zip` takes two lists and returns one list of pairs:
test :: [(Char, Int)]
test = zip ['A', 'B', 'C', 'D'] [1, 2, 3, 4]
-- [('A', 1), ('B', 2), ('C', 3), ('D', 4)]
