
--1 definir una funcion que reciba 2 fechas y 
--devuelva la mayor
fecMay::(Int,Int,Int)->(Int,Int,Int)->(Int,Int,Int)
fecMay (d1, m1, a1) (d2, m2, a2)
    |a1>a2 = (d1,m1,a1)
    |a2>a1 = (d2,m2,a2)
    |m2>m1 = (d2,m2,a2)
    |m1>m2 = (d1,m1,a1)
    |d2>d1 = (d2,m2,a2)
    |otherwise = (d1,m1,a1)

fecMay1 f1@(d1, m1, a1) f2@(d2, m2, a2)
    |a1>a2 = f1
    |a2>a1 = f2
    |m2>m1 = f2
    |m1>m2 = f1
    |d2>d1 = f2
    |otherwise = f1

fecMy f1@(d1, m1, a1) f2@(d2, m2, a2) =
    if a1>a2
        then f1
        else if a2>a1
            then f2
            else if m2>m1
                then f2
                else if m1>m2
                    then f1
                    else if d2>d1
                        then f2
                        else f1

--definir una funcion que reciba 4 fechas y devuelva la mayor

fecMy4 :: (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int)
fecMy4 f1 f2 f3 f4 = fecMay1 (fecMay1 f1 f2) (fecMay1 f3 f4)
