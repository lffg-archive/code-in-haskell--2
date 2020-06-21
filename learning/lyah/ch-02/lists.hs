{-# ANN module "HLint: Evaluate. Replace with: True" #-}
{-# ANN module "HLint: ignore Use list literal" #-}
{-# ANN module "HLint: ignore Use head" #-}

-- Lists can be created with [].
-- Lists are homogeneous (can contain only elements of the same type).

charList = ['A', 'B', 'C']
numList = [1, 2, 3]
stringList = ["Luiz", "Felipe", "Gonçalves"]

--------------------------------------------------------------------------------

-- Two lists may be concatenated with the `++` operator. Like so:

newNumList = numList ++ [4, 5]

-- However, the `++` operator is not recommended for big lists, as Haskell will
-- internally walk through the whole left-side list.

--------------------------------------------------------------------------------

-- The `++` operator can also be used to "concatenate" two strings, as strings
-- are just some kind of syntactic sugar for a list of characters.
-- Therefore, the following two are equivalent (note that they both have the
-- same type, which is `[Char]` (or just `String`)).

myString1 = ['L', 'u', 'i', 'z'] :: String
myString2 = "Luiz" :: String

--------------------------------------------------------------------------------

-- In contrast of putting something at the end of a Haskell list, putting
-- something on its beginning is very cheap ("instantaneous"). For that, the
-- "cons operator" (`:`) may be used:

numList2 = 0 : numList -- Will result in: `[0, 1, 2, 3]`

-- Notice that the cons operator is an infix function which takes two arguments:
-- The **element** that will be added at the beginning of the list and a list.
--
-- So, in contrast to the `++` operator, which takes two lists of the same type
-- (`(++) :: [a] -> [a] -> [a]`), the `:` operator takes an element and a list
-- (`(:) :: a -> [a] -> [a]`).

-- Besides that, the following two forms creates the same list:

numList3 = [1, 2, 3, 4, 5]
numList3' = 1 : 2 : 3 : 4 : 5 : []

-- Therefore, we can say that `[1, 2, 3, 4, 5]` is some kind of syntactic sugar.

--------------------------------------------------------------------------------

-- We can access some list member by its index using the `!!` operator:

numListAt0 = numList !! 0
numListAt1 = numList !! 1
numListAt2 = numList !! 2

-- If we try to access a index out of the list's range, an "index too large" is
-- throw. To prevent that, we can use the `null` function, which returns `True`
-- if the list is empty. The expression `length [a] == 0` also works.

--------------------------------------------------------------------------------

-- When two lists are compared using comparison operators (like `<`, `>`, etc),
-- the head is first compared. If they are equal in both arrays, the second
-- element is compared and so on. This is called "lexicographical order".

listComparisonResult1 = [1, 8, 9] > [9, 2, 1] -- False
listComparisonResult2 = [9, 1, 2] > [1, 8, 9] -- True

--------------------------------------------------------------------------------

-- There are a lot of functions which operates on lists. Some of them are:

headResult = head [1, 2, 3] -- 1

tailResult = tail [1, 2, 3] -- [2, 3]

lastResult = last [1, 2, 3] -- 3

initResult = init [1, 2, 3] -- [1, 2]

-- Note that `head`, `tail`, `last` and `init` will throw an "empty list"
-- exception when a empty list is passed.

lengthResult = [1, 2, 3] -- 3

nullResult1 = null [] -- True
nullResult2 = null [1, 2, 3] -- False

reverseResult = reverse [1, 2, 3] -- [3, 2, 1]

takeResult = take 2 [1, 2, 3] -- [1, 2]

-- Note that `take` does not throw any exception if the first argument number
-- is greater than the given list's length.

dropResult = drop 2 [1, 2, 3] -- [3]

maximumResult = maximum [1, 2, 3] -- 3

minimumResult = minimum [1, 2, 3] -- 1

sumResult = sum [1, 2, 3, 4] -- 6

productResult = product [1, 2, 3, 4] -- 24

elemResult1 = elem 2 [1, 2, 3] -- True
elemResult2 = elem 4 [1, 2, 3] -- False

-- Note that in all the above functions, the list is the last argument. This
-- helps in function composition (because of currying).

cycleResult = take 10 (cycle [1, 2, 3]) -- [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

repeatResult = take 10 (repeat 1) -- [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

-- The functions `cycle` and `repeat` produce an infinite list. The `take`
-- function was used to fetch the first 10 elements from the infinite list.

-- In the last `repeat` example, the `replicate` function would be the same:

replicateResult = replicate 10 1 -- [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

--------------------------------------------------------------------------------

-- In Haskell, we can create lists (and infinite lists) using ranges. Like so:

range1 = [1 .. 10] -- [1, 2, ..., 9, 10]

-- Steps may be used in list ranges:

evenRange = [2, 4 .. 10] -- [2, 4, 6, 8, 10]
oddRange = [1, 3 .. 10] -- [1, 3, 5, 7, 9]

-- Infinite lists can also be created. In that regard, it is pertinent to note
-- that they won't be evaluated unless needed (as Haskell is a lazy language).
-- The `take` function is used to take X elements from an infinite list.

infiniteList = [1 ..] -- [1, 2, 3, ...]
first10FromInfiniteList = take 10 infiniteList

-- Steps can also be used in infinite lists:

evenInfiniteList = [2, 4 ..] -- [2, 4, 6, ...]

--------------------------------------------------------------------------------

-- List comprehensions
