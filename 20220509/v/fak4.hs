-- fak4.hs
fak n = hfak n 1
        where hfak 0 akk = akk
              hfak n akk = hfak (n-1) (n*akk)
