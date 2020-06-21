-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we
-- get 3, 5, 6 and 9. The sum of these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.
--
-- https://projecteuler.net/problem=1

isMultipleOf num x =
  x `mod` num == 0

problem1 x =
  sum $
  filter (\num -> (isMultipleOf 3 num) || (isMultipleOf 5 num)) $
  [1..(x - 1)]

main =
  print $ problem1 1000
