{-def. una fincion que reciba dos fechas
y devuelva verdad si la primera es mayor 
que la segunda
-}

type Dia = Int
type Mes = Int
type Anio = Int
type Fecha = (Dia, Mes, Anio)

esFechaMayor::Fecha -> Fecha -> Bool
esFechaMayor (d1,m1,a1) (d2,m2,a2)
    |a1 > a2 = True
    |a1 < a2 = False
    |m1 > m2 = True
    |m1 < m2 = False
    |d1 > d2 = True
    |d1 <= d2 = False

{- ejer:
definir una funcion que reciba un carnet ci y una lista 
de carnets cs y devuelva la posiion en la que ci aparece en cs.Si el
ci no esta en cs que devuelva -1
-}
type Carnet = String
posicionCarnet::Carnet -> [Carnet] -> Int
posicionCarnet ci cs = posCarnet ci cs 0
posCarnet ci [] pos = -1
posCarnet ci (c:cs) pos
    |ci == c = pos
    |otherwise = posCarnet ci cs (pos + 1)


type ListaCarnets = [Carnet]
type Posicion = Int
buscar :: Carnet -> ListaCarnets -> Posicion
buscar ci cs =buscarAux ci cs 0
buscarAux ci [] pos = -1
buscarAux ci (c:cs) pos
    |ci == c = pos
    |otherwise = buscarAux ci cs (pos + 1)

{-1. Definir una funcion que reciba los datos de una persona
(carnet, nombre, apellido paterno, apellido materno) y 
devuelva se sexo
-}
{-2. definir una funcion que reciba los datos de una persona
(carnet, nombre, apellido paterno, apellido materno) y 
devuelva su nombre
-}

datosPersona :: (Carnet, String, String, String) -> String
datosPersona (c,n,ap,am) = n




{-3. Definir una funcion que reciba los datos de una persona
(carnet, nombre, apellido paterno, apellido materno) y 
devuelva su edad aproximada
-}