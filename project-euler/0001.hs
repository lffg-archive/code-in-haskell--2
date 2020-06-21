-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we
-- get 3, 5, 6 and 9. The sum of these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.
--
-- https://projecteuler.net/problem=1

import           Data.List

problem1 x =
  sum $ filter (\num -> num `mod` 3 == 0 || num `mod` 5 == 0) [1 .. (x - 1)]

problem1' x = sum $ union [3, 6 .. y] [5, 10 .. y] where y = x - 1

main = do
  print $ problem1 1000
  print $ problem1' 1000
