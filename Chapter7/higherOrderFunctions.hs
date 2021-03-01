twice :: (a -> a) -> a -> a
twice f x = f (f x)

-- map - applies a function to all elements of a list
-- filter - selects all elements of a list that satisfy a predicate
--        (predicate = function that returns a logical value)

-- all - decides if all elements of a list satisfy a predicate
-- any - decides if any elements of a list satisfies a predicate
-- takeWhile - select elements from a list while they satisfy a predicate
-- dropWhile - remove elements from a list while they satisfy a predicate
