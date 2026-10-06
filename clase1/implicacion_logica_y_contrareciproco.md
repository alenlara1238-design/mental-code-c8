
# Conceptos Previos para la Implicación Lógica (p → q)

Esta primera parte del material introduce los conceptos básicos necesarios para entender la implicación lógica.

---

## 1. ¿Qué es una proposición?

Una **proposición** es un enunciado que puede ser evaluado como:

- Verdadero (V)
- Falso (F)

Es importante que una proposición no sea ambigua ni dependa de opiniones.

### Ejemplos en contexto de programación:

- "El usuario está autenticado" → puede ser V o F  
- "El saldo es mayor a 0" → puede ser V o F  
- "El pedido fue enviado" → puede ser V o F  

### No son proposiciones:

- "Inicia sesión" (es una orden)  
- "¿El usuario está activo?" (es una pregunta)  
- "El sistema es bueno" (es subjetivo)  

---

## 2. Variables proposicionales

En lógica, usamos letras para representar proposiciones. Estas letras se llaman **variables proposicionales**.

Generalmente se usan: `p`, `q`, `r`, etc.

### Ejemplo en reglas de negocio:

- `p`: "El usuario está autenticado"  
- `q`: "El usuario puede acceder al sistema"  

Esto permite abstraer la lógica y trabajar con reglas generales.

---

## 3. Conectores lógicos básicos

Los conectores lógicos permiten combinar proposiciones para formar expresiones más complejas.

---

### Negación (¬p) — "NO"

Niega el valor de una proposición.

| p | ¬p |
|---|----|
| V | F  |
| F | V  |

Ejemplo:

- `p`: "El usuario está autenticado"  
- `¬p`: "El usuario no está autenticado"  

---

### Conjunción (p ∧ q) — "Y"

Se cumple solo si ambas proposiciones son verdaderas.

| p | q | p ∧ q |
|---|---|-------|
| V | V | V     |
| V | F | F     |
| F | V | F     |
| F | F | F     |

Ejemplo:

- `p`: "El usuario está autenticado"  
- `q`: "Tiene rol de administrador"  

Regla de negocio:
El usuario puede acceder al panel de administración solo si está autenticado y es administrador.

---

### Disyunción (p ∨ q) — "O"

Se cumple si al menos una proposición es verdadera.

| p | q | p ∨ q |
|---|---|-------|
| V | V | V     |
| V | F | V     |
| F | V | V     |
| F | F | F     |

Ejemplo:

- `p`: "El usuario tiene membresía premium"  
- `q`: "El usuario tiene un cupón válido"  

Regla de negocio:
El usuario puede obtener descuento si tiene membresía premium o un cupón válido.

---

## 4. Interpretación del lenguaje natural

Antes de escribir lógica formal, es importante saber identificar estructuras lógicas en lenguaje cotidiano.

Muchas reglas de negocio están escritas en lenguaje natural, por ejemplo:

- "Si el usuario está autenticado, puede acceder al sistema"  
- "Si el saldo es suficiente, se procesa el pago"  
- "Si el producto está en stock, se puede comprar"  

Aquí aparece una estructura clave:

"Si ... entonces ..."

Esto corresponde a la implicación lógica (p → q) que se estudiará después.

---

### Ejemplo de traducción:

Lenguaje natural:
"Si el usuario está autenticado, puede realizar compras"

Traducción:

- `p`: "El usuario está autenticado"  
- `q`: "El usuario puede realizar compras"  

Expresión lógica:



# Implicación lógica y contrarecíproco en reglas de negocio

## 1. ¿Por qué estudiar implicación lógica en sistemas?

En programación y en los sistemas de información, casi todo funciona a
partir de **reglas de negocio**: *si ocurre algo, entonces el sistema
debe responder de cierta forma*.

Detrás de sentencias como `if`, validaciones, permisos y flujos de
decisión, existe una estructura lógica muy precisa llamada **implicación
lógica**.\
Comprenderla permite diseñar reglas claras, evitar ambigüedades y
construir sistemas confiables.

------------------------------------------------------------------------

## 2. La implicación lógica: `p → q`

Una proposición de la forma:

> **Si p, entonces q**

representa una **promesa o garantía** del sistema.

### Ejemplo

> **Si el usuario es administrador, entonces puede borrar datos**

-   **p**: El usuario es administrador
-   **q**: El usuario puede borrar datos

La regla **solo se rompe** cuando: 
- p es verdadera y q es falsa

Es decir, cuando se cumple la condición pero no la consecuencia.

------------------------------------------------------------------------

## 3. Casos que NO rompen la regla

-   El usuario no es administrador y no puede borrar datos.
-   El usuario no es administrador y puede borrar datos.

En ambos casos, la condición inicial no se cumple, por lo tanto la regla
no se viola.

------------------------------------------------------------------------

## 4. El contrarecíproco (contrapositiva)

Dada una proposición:

    p → q

Su **contrarecíproco** es:

    ¬q → ¬p

Se niega la consecuencia y se niega la condición, invirtiendo el
orden.

### Regla fundamental

> **Una proposición y su contrarecíproco son lógicamente equivalentes.**

------------------------------------------------------------------------

## 5. Ejemplo de contrarecíproco

### Regla original

> Si el usuario es administrador, entonces puede borrar datos.

### Contrarecíproco

> Si el usuario **no puede borrar datos**, entonces **no es
> administrador**.

Ambas expresan exactamente la misma regla de negocio desde la lógica.

------------------------------------------------------------------------

## 6. Importancia en programación

En sistemas reales, muchas validaciones se expresan naturalmente como
contrarecíprocos:

``` java
if (!puedeBorrarDatos) {
    throw new AccesoDenegadoException();
}
```

Esto es equivalente a verificar directamente la condición original.

------------------------------------------------------------------------

## 7. Ejercicios: identificar ruptura de reglas

### Instrucción

Dada cada regla, indique **qué afirmación rompe la regla de negocio**.

### Ejercicio 1

**Regla:** Si el usuario es administrador, entonces puede borrar datos.

a)  El usuario es administrador y puede borrar datos.\
b)  El usuario no es administrador y no puede borrar datos.\
c)  El usuario no es administrador y puede borrar datos.\
d)  El usuario es administrador y no puede borrar datos.

------------------------------------------------------------------------

### Ejercicio 2

**Regla:** Si el usuario está autenticado, entonces puede acceder al
sistema.

a)  Está autenticado y accede.\
b)  No está autenticado y no accede.\
c)  No está autenticado y accede.\
d)  Está autenticado y no accede.

------------------------------------------------------------------------

### Ejercicio 3

**Regla:** Si el código compila, entonces la aplicación puede
ejecutarse.

a)  Compila y se ejecuta.\
b)  No compila y no se ejecuta.\
c)  No compila y se ejecuta.\
d)  Compila y no se ejecuta.

------------------------------------------------------------------------

### Ejercicio 4

**Regla:** Si la base de datos está conectada, entonces se pueden hacer
consultas.

a)  Está conectada y hay consultas.\
b)  No está conectada y no hay consultas.\
c)  No está conectada y hay consultas.\
d)  Está conectada y no hay consultas.

------------------------------------------------------------------------

### Ejercicio 5

**Regla:** Si el servidor de correo está activo, entonces se pueden
enviar correos.

a)  Está activo y se envían correos.\
b)  No está activo y no se envían correos.\
c)  No está activo y se envían correos.\
d)  Está activo y no se envían correos.

------------------------------------------------------------------------

## 8. Ejercicios: construir el contrarecíproco

### Instrucción

Dada cada proposición, escriba su **contrarecíproco equivalente**.

1.  Si el usuario está autenticado, entonces puede acceder al sistema.
2.  Si el servidor está activo, entonces la aplicación responde.
3.  Si el código compila, entonces el programa se ejecuta.
4.  Si la base de datos está conectada, entonces se pueden hacer
    consultas.
5.  Si el usuario es administrador, entonces puede borrar datos.
6.  Si las pruebas pasan, entonces el sistema puede desplegarse.
7.  Si la contraseña es segura, entonces el acceso es permitido.
8.  Si la API responde con estado 200, entonces la solicitud fue
    exitosa.
9.  Si el archivo existe, entonces el sistema puede leerlo.
10. Si el servidor tiene suficiente memoria, entonces la aplicación
    funciona correctamente.

------------------------------------------------------------------------

## 9. Idea clave para recordar

> 🔹 La implicación lógica define garantías.\
> 🔹 Solo se rompe cuando la condición se cumple y la consecuencia no.\
> 🔹 El contrarecíproco mantiene exactamente el mismo significado
> lógico.

------------------------------------------------------------------------

