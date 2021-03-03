double :: Num a => a -> a
double x = x + x

quadruple :: Num a => a -> a
quadruple x = double (double x)

-- Factorial of a positive integer
factorial :: (Num a, Enum a) => a -> a
factorial n = product [1..n]

-- Average of a list of numbers
average :: Foldable t => t Int -> Int
average ns = sum ns `div` length ns
