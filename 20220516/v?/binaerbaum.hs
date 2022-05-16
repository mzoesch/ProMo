-- binaerbaum.hs
data BB a = L | Knt a (BB a) (BB a)
             deriving (Show)

b :: BB Char
b = Knt 'd'
      (Knt 'b'
         (Knt 'a' L L)
         (Knt 'c' L L)
      )
      (Knt 'f'
         (Knt 'e' L L)
         (Knt 'g' L L)
      )
