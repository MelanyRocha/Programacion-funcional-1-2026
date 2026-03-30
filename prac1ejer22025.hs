--EJERCICIO 2 (Resolver usando Expresiones if)
--1. Definir una función que devuelva el mayor de 2 números
may2 a b = if a>b then a else b
--2. Definir una función que reciba 3 números y devuelva el mayor
may3 a b c = 
    if a>b && a>c then a
    else if b>a && b>c then b
    else c

mayor3 a b c = 
    if a>b 
        then a 
        else if b>c 
            then b
            else c
--3. Definir una función que reciba 4 números y devuelva el mayor
may4 a b c d = 
    if a>b && a>c && a>d then a
    else if b>a && b>c && b>d then b
    else if c>a && c>b && c>d then c
    else d

--10. Definir una función que reciba dos exámenes parciales, un final y una segunda
--instancia y devuelva el mensaje “Aprobado”, “Reprobado” o “Abandono” según el caso.
promedio p1 p2 final segunda =
    if (p1+p2)/2 == 0 && final==0 && segunda==0 then "Abandonado"
    else if (p1+p2)/2 >= 51 && (p1+p2)/2 <= 100 then "Aprobado"
    else if final >= 51 && final <= 100 then "Aprobado"
    else if segunda == 51 then "Aprobado"
    else "Reprobado"
--11. Definir una función que reciba 2 fechas y devuelva la fecha mayor
fecMay (d1,m1,a1) (d2,m2,a2)=
    if a1>a2 then (d1,m1,a1)
    else if a2>a1 then (d2,m2,a2)
    else if m1>m2 then (d1,m1,a1)
    else if m2>m1 then (d2,m2,a2)
    else if d1>d2 then (d1,m1,a1)
    else (d2,m2,a2)