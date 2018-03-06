main = do putStr $ format $ kuku [1..9]

kuku xs = [map (*x) xs | x <- xs]

format xs = formatD $ map (formatC . formatB) xs

formatA x = reverse $ take 3 $ reverse ("  " ++ show x)
formatB xs = map formatA xs
formatC xs = unwords xs ++ "\n"
formatD xs = foldl (++) [] xs