

--EJERCICIO 3 (Resolver usando Distinción de casos)
--1. Definir una función que reciba 4 número y devuelva el mayor.
--POR COMBINACION.
mayor :: (Ord a) => a -> a -> a
mayor x y = if x > y then x else y
mayorDeCuatro :: (Ord a) => a -> a -> a -> a -> a
mayorDeCuatro a b c d = mayor (mayor a b) (mayor c d)
--POR DISTINCION DE CASOS.
may4 a b c d
    | a>b && a>c && a>d = a
    | b>a && b>c && b>d = b
    | c>a && c>b && c>d = c
    | otherwise = d
--2. Definir una función que reciba una nota y devuelva el mensaje “Aprobado” o
-- “Reprobado”.
materia nota
    | nota >= 51 && nota <= 100 = "Aprobado"
    | otherwise = "Reprobado"
--3. Definir una función que reciba una nota y devuelva el mensaje “Excelente“ si la nota
--esta entre 90-100, “Bien” si esta entre 70-89, “Regular” si esta entre 51-69 y mal si esta
--entre 0-50.
materia2 nota
    | nota >= 90 && nota <= 100 = "Excelente"
    | nota >= 70 && nota < 90 = "Bien"
    | nota >= 51 && nota < 70 = "Regular"
    | otherwise = "Mal"
--4. Definir una función que reciba como argumentos las notas de primer parcial, segundo
--parcial, final y segunda instancia y retorne el mensaje aprobado o reprobado, según el caso.
materia3 p1 p2 final segunda
    | (p1+p2)/2 >= 51 || final >= 51 || segunda >= 51 = "Aprobado"
    | otherwise = "Reprobado"
--5. Definir una función que reciba 16 números y retorne el mayor
mayor16 a b c d e f g h i j k l m n o p
    | a > b && a > c && a > d && a > e && a > f && a > g && a > h && a > i && a > j && a > k && a > l && a > m && a > n && a > o && a > p = a
    | b > a && b > c && b > d && b > e && b > f && b > g && b > h && b > i && b > j && b > k && b > l && b > m && b > n && b > o && b > p = b
    | c > a && c > b && c > d && c > e && c > f && c > g && c > h && c > i && c > j && c > k && c > l && c > m && c > n && c > o && c > p = c
    | d > a && d > b && d > c && d > e && d > f && d > g && d > h && d > i && d > j && d > k && d > l && d > m && d > n && d > o && d > p = d
    | e > a && e > b && e > c && e > d && e > f && e > g && e > h && e > i && e > j && e > k && e > l && e > m && e > n && e > o && e > p = e
    | f > a && f > b && f > c && f > d && f > e && f > g && f > h && f > i && f > j && f > k && f > l && f > m && f > n && f > o && f > p = f
    | g > a && g > b && g > c && g > d && g > e && g > f && g > h && g > i && g > j && g > k && g > l && g > m && g > n && g > o && g > p = g
    | h > a && h > b && h > c && h > d && h > e && h > f && h > g && h > i && h > j && h > k && h > l && h > m && h > n && h > o && h > p = h
    | i > a && i > b && i > c && i > d && i > e && i > f && i > g && i > h && i > j && i > k && i > l && i > m && i > n && i > o && i > p = i
    | j > a && j > b && j > c && j > d && j > e && j > f && j > g && j > h && j > i && j > k && j > l && j > m && j > n && j > o && j > p = j
    | k > a && k > b && k > c && k > d && k > e && k > f && k > g && k > h && k > i && k > j && k > l && k > m && k > n && k > o && k > p = k
    | l > a && l > b && l > c && l > d && l > e && l > f && l > g && l > h && l > i && l > j && l > k && l > m && l > n && l > o && l > p = l
    | m > a && m > b && m > c && m > d && m > e && m > f && m > g && m > h && m > i && m > j && m > k && m > l && m > n && m > o && m > p = m
    | n > a && n > b && n > c && n > d && n > e && n > f && n > g && n > h && n > i && n > j && n > k && n > l && n > m && n > o && n > p = n
    | o > a && o > b && o > c && o > d && o > e && o > f && o > g && o > h && o > i && o > j && o > k && o > l && o > m && o > n && o > p = o
    | otherwise = p

--6. Definir una función que reciba un quebrado y devuelva verdad si este es mayor que 1
--y falso en otro caso
quebradoMayor1 (a,b) = a/b > 1
--7. Definir una función que reciba 2 fechas y devuelva la fecha mayor
fecMay :: (Ord a1, Ord a2, Ord a3) => (a3, a2, a1) -> (a3, a2, a1) -> (a3, a2, a1)
fecMay (d1,m1,a1) (d2,m2,a2)
    | a1 > a2 = (d1,m1,a1)
    | a2 > a1 = (d2,m2,a2)
    | m1 > m2 = (d1,m1,a1)
    | m2 > m1 = (d2,m2,a2)
    | d1 > d2 = (d1,m1,a1)
    | otherwise = (d2,m2,a2)
--8. Definir una función que reciba 2 fechas y devuelva los años transcurridos
aniosTranscurridos (d1,m1,a1) (d2,m2,a2)
    | a1 > a2 = a1 - a2
    | otherwise = a2 - a1
--9. Definir una función que reciba 2 fechas y devuelva los meses transcurridos
mesesTranscurridos :: (Ord a1, Num a1) => (a2, a1, a1) -> (a3, a1, a1) -> a1
mesesTranscurridos (d1,m1,a1) (d2,m2,a2)
    | a1 > a2 = (a1 - a2) * 12 + (m1 - m2)
    | otherwise = (a2 - a1) * 12 + (m2 - m1)
--10. Definir una función que reciba 2 fechas y devuelva los días transcurridos
diasTranscurridos (d1,m1,a1) (d2,m2,a2)
    | a1 > a2 = (a1 - a2) * 365 + (m1 - m2) * 30 + (d1 - d2)
    | otherwise = (a2 - a1) * 365 + (m2 - m1) * 30 + (d2 - d1)
--11. Definir una función que reciba 2 fechas y devuelva los días, meses y años transcurridos
transcurrido (d1,m1,a1) (d2,m2,a2)  
    | a1 > a2 = (d1 - d2, (m1 - m2), (a1 - a2))
    | otherwise = (d2 - d1, (m2 - m1), (a2 - a1))
--12. Definir una función que reciba un instante (fecha, hora) e incremente el instante en 1 segundo.
instante (d,m,a,hora,minuto,segundo) = (d,m,a,hora,minuto,segundo+1)