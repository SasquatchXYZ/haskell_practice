--fac :: Int -> Int
--fac n = product [1..n]

fac :: Int -> Int
fac 0 = 1
fac n = n * fac (n -1)

insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y : ys)
  | x <= y = x : y : ys
  | otherwise = y : insert x ys

isort :: Ord a => [a] -> [a]
isort [] = []
isort (x : xs) = insert x (isort xs)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n -2) + fib (n -1)

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x : xs) = qsort smaller ++ [x] ++ qsort larger
  where
    smaller = [a | a <- xs, a <= x]
    larger = [b | b <- xs, b > x]
