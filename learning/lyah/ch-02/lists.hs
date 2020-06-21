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

myString = ['L', 'u', 'i', 'z'] :: String
myString' = "Luiz" :: String

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
