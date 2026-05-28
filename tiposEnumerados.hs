data Day = Lun | Mar | Mie | Jue | Vie | Sab | Dom deriving Show

diaSgte :: Day -> Day
diaSgte Lun = Mar   
diaSgte Mar = Mie
diaSgte Mie = Jue
diaSgte Jue = Vie
diaSgte Vie = Sab
diaSgte Sab = Dom
diaSgte Dom = Lun

esDescanso :: Day -> Bool
esDescanso Dom = True
esDescanso _ = False

{-Definir una funcion que reciba dos personas y devuelva True si se 
puede casar. Modelar una persona como tupla que 
contenga(carnet, nombre, genero, estadoCivil).
Utilice tipos definidos por el usuario para 
el genero y el estado civil y tipos sinonimos para lo demas 

type Carnet = String
type Nombre = String
data Genero = Masculino | Femenino deriving Show
data EstadoCivil = Soltero | Casado deriving Show
type Persona = (Carnet, Nombre, Genero, EstadoCivil)
puedenCasar :: Persona -> Persona -> Bool
puedenCasar ( _, _, Soltero, Femenino) ( _, _, Soltero, Masculino) = True
puedenCasar ( _, _, Soltero, Masculino) ( _, _, Soltero, Femenino) = True
puedenCasar _ _ = False-}


{-Definir una fucion que reciba una nota y retorne True
 si la nota es de reprobacion, False en otro caso. La nota
 puede ser Numeral( un numero entre 0 y  100) 
 o literal (A, B, C, D).

 Aclaracio 
 *una nota numeral es de aprobacion si es superior a 50
 *una nota literal es de aprobacion si es A, B o C 
-}

data Nota = Numeral Int | Literal Char deriving Show
esReprobacion :: Nota -> Bool
esReprobacion (Numeral n) = n <= 50
esReprobacion (Literal l) = l == 'D'

{-*Main> esReprobacion (Numeral 80)
False
*Main> esReprobacion (Literal 'D')
True
*Main> -}