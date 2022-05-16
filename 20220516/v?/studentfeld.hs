-- studentfeld.hs
data Student = Student { vorname :: String
               , nachname :: String
               , matrikelnummer :: Int
               } deriving (Eq, Show)

anna = Student { vorname = "Anna"
       , nachname = "Schmidt"
       , matrikelnummer = 1234
       }

basti = Student { nachname = "Bayer"
        , vorname = "Basti"
        , matrikelnummer = 5678
        }
