# Ejercicio 1: Sistema de facturación de una oficina de ventas

## Enunciado

Una oficina de ventas necesita un programa que permita calcular el descuento aplicado a un producto y generar el resumen de la factura con el valor que debe pagar el cliente.

Desarrolla un algoritmo en **PSeInt** que utilice funciones y subprocesos para organizar las diferentes tareas del proceso de facturación.

El programa debe solicitar al usuario el precio de un producto, calcular un descuento del **10 % sobre su precio** y mostrar una factura con el precio original, el valor del descuento y el total a pagar.

## Ejemplo de ejecución

Si el usuario ingresa un precio de `200000`, el programa debe mostrar una factura similar a la siguiente:

```text
------FACTURA--------
Precio del producto: 200000
Descuento aplicado: 20000
Total a pagar: 180000
```

# Ejercicio 2: Sistema de autorización de préstamos en una biblioteca

## Enunciado

Una biblioteca desea implementar un programa que permita determinar si una persona está autorizada para prestar libros, teniendo en cuenta su edad.

Desarrolla un algoritmo en **PSeInt** que solicite la edad del usuario, evalúe si cumple con la edad mínima establecida y muestre un mensaje indicando si puede o no realizar préstamos de libros.

## Ejemplos de ejecución

**Caso 1: usuario de 15 años**

```text
Escriba su edad:
15
Usted está autorizado para prestar libros
```

**Caso 2: usuario de 10 años**

```text
Escriba su edad:
10
Usted No está autorizado para prestar libros
```


# Ejercicio 3: Sistema de verificación de contraseña con máximo de tres intentos

## Enunciado

Una aplicación necesita verificar la contraseña ingresada por un usuario antes de permitirle el acceso al sistema. Por seguridad, el sistema permitirá realizar **un máximo de tres intentos** para ingresar la contraseña correcta.

Desarrolla un algoritmo en **PSeInt** que solicite la contraseña al usuario, compruebe si coincide con la clave establecida y muestre un mensaje indicando si el acceso está permitido o denegado.

Si el usuario ingresa una contraseña incorrecta, el sistema debe permitirle intentarlo nuevamente, siempre que no haya agotado los tres intentos disponibles. Si ingresa la contraseña correcta, el sistema debe permitir el acceso y finalizar el proceso sin solicitar más intentos.

## Ejemplos de ejecución

### Caso 1: contraseña correcta en el primer intento

```text
Ingrese password:
1234
Acceso permitido
```

### Caso 2: contraseña correcta en el tercer intento

```text
Ingrese password:
1111
Ingrese password:
5678
Ingrese password:
1234
Acceso permitido
```

### Caso 3: se agotan los tres intentos

```text
Ingrese password:
1111
Ingrese password:
5678
Ingrese password:
9999
Acceso denegado
```
