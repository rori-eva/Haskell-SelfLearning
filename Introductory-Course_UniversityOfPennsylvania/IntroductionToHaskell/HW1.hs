-- Validating Credit Card Numbers: https://www.seas.upenn.edu/~cis1940/spring13/hw/01-intro.pdf
module HW1(toDigits, toDigitsRev, doubleEveryOther) where

-- Exercise 1
toDigits    :: Integer -> [Integer] -- Convert positive Integers to a list of digits
toDigits n
    | n <= 0    = []                            -- Return empty list for non-positive numbers
    | otherwise = map (read . (:[])) (show n)   -- Convert each character to an Integer

toDigitsRev :: Integer -> [Integer] -- Convert positive Integers to a list of digits (in reverse order)
toDigitsRev = reverse . toDigits

-- Exercise 2
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs =  reverse (zipWith doubleIfEvenPosition [0..] (reverse xs))
    where
        doubleIfEvenPosition :: Int -> Integer -> Integer
        doubleIfEvenPosition i x
            | i `mod` 2 == 1    = x * 2
            | otherwise         = x