sort :: Ord a => [a] -> [a]
sort []     = []
sort (x:xs) = (sort [y | y <- xs, y < x]) ++ 
              [x] ++ 
              (sort [y | y <- xs, y >= x])
