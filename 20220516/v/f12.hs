a = 1
a = 2
c = let b = 2 in a + b
c

Anfang: []
Auswertung von a = 1: [(a, 1)]
Auswertung von a = 2: [(a,2),(a,1)]
Auswertung von c = let b = 2 in a + b:
    [(c, let b = 2 in a + b), (a, 2), (a, 1)]

Auswertung von c:
    Auswertung von let b = 2 in a + b
    [(b, 2), (c, let b = 2 in a + b), (a, 2), (a, 1)]
    Auswertung von a + b (liefert 4)
        [(c = let b = 2 in a + b), (a , 2), (a, 1)]
