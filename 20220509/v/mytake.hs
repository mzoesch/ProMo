-- mytake.hs
mytake :: Integer -> [a] -> [a]
mytake 1 (h:_) = [h]
mytake n (h:t) = h : (mytake (n-1) t)
