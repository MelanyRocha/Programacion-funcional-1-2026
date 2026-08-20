--EJERCICIO 1
doble x = 2*x
suma x y = x+y
primero (x,y) = x
--1. Definir una función que reciba el lado de un cuadrado y devuelva su área.
areaCuadrado lado = lado*lado
--2. Definir una función que reciba la base y la altura de un rectángulo y devuelva su área y
--su perímetro.
areaYperimtrpRctangulo base altura = [(base*altura), (2*(altura+base))]
--4. Definir una función que reciba 2 números y devuelva verdad si el primero es mayor
--que el segundo.
esMayor n1 n2 = n1>n2
--5. Definir una función que reciba un número y retorne verdad si este es múltiplo de 2.
esMultiplo2 n = if ((n`mod`2)==0)  then True else False
--6. Definir una función que reciba un número y devuelva verdad si este es múltiplo de 2 y
--de 3 al mismo tiempo.
esMultiplo23 n = if ((n`mod`2)==0 && (n`mod`3)==0)  then True else False
--7. Definir una función que reciba un número y lo devuelva elevado a la potencia 3.
potencia3 n = n^3
--8. Definir funciones que reciban un número y lo devuelvan elevado a la potencia
--4,8,10,32.
potencia481032 n = [n^4, n^8, n^10, n^32]
--9. Definir una función que reciba dos números y una función de orden y devuelva verdad
--si los números obedecen a la función de orden, falso en otro caso.
--funcionOrden n1 n2 = n1 (_) n2
area lado = lado*lado
cumple f n1 n2 = f n1 n2
esDoble x y = x == 2*y



