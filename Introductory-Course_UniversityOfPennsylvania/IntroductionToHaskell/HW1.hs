-- Validating Credit Card Numbers: https://www.seas.upenn.edu/~cis1940/spring13/hw/01-intro.pdf
module HW1(toDigits, toDigitsRev ) where
-- Exercise 1
toDigits    :: Integer -> [Integer] -- Convert positive Integers to a list of digits
toDigits n
    | n <= 0    = []                            -- Return empty list for non-positive numbers
    | otherwise = map (read . (:[])) (show n)   -- Convert each character to an Integer

toDigitsRev :: Integer -> [Integer] -- Convert positive Integers to a list of digits (in reverse order)
toDigitsRev = reverse . toDigits