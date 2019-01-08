main = do print "All Good!"

manipulateStr :: String -> Int -> String
manipulateStr str x = if mod x 2 == 0 then str else reverse str

boustrophedon :: [String] -> [String]
boustrophedon strs = [manipulateStr str x | (str,x) <- zip strs [0,1..]]

split20 :: String -> [String]
split20 [] = []
split20 str = [(take 20 str)] ++ (split20 (drop 20 str))