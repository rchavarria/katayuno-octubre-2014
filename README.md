katayuno-octubre-2014
=====================

Código de dos soluciones al problema resuelto en el [Katayuno de octubre] de
2014 propuesto por [Aprendiendo TDD](http://aprendiendotdd.com) celebrado
en [MateriaGris Coworking](http://www.materiagriscoworking.com).

El problema es el siguiente:

Dados dos números enteros `a` y `b`, tales que `a <= b`, obtener una lista
de números que contenta el valor de los números impares entre `a` y `b`
(incluídos) multiplicados por 2. Es decir, para `a = 1` y `b = 6`, la lista
resultante sería `[2, 6, 10]`, porque son los dobles de los impares entre
1 y 6, es decir, de 1, 3 y 5.

## Iteración 1

En la [iteración 1] he seguido unos pasos muy típicos, he ido desde los
casos más sencillos hasta los más complejos, intentando avanzar poco a poco
en cada paso, pero haciendo que cada paso me obligara a implementar algo
nuevo.

## Iteración 2

En la [iteración 2] he seguido otra aproximación. Tomando como referencia los
comentarios de los compañeros de katayuno en la retrospectiva de la primera
iteración, en lugar de ir de casos más sencillos a más complejos, lo que he
hecho ha sido ir solucionando pasos intermedios para llegar a la solución
completa. 

Estos pasos intermedios son: detectar si un número es impar, generar una lista
de números entre `a` y `b`, eliminar los números pares de una lista de números,
este tipo de cosas.

Al final, el código de este iteración me gusta más, pero le veo un problema, y
es que los métodos que resuelven los pasos intermedios quedan como métodos
públicos, cuando estarían mejor encapsulados como privados. Pero es un
mal menor. Al menos he aprendido algo.

[Katayuno de octubre]: http://aprendiendotdd.com/2014/10/katayuno-de-octubre
[iteración 1]: ./iteration-1
[iteración 2]: ./iteration-2

