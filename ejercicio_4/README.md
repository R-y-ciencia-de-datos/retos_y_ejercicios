# EJERCICIO #4: Anatomía de los Datos

## Introducción:

<p align="justify">
En proyectos de análisis y visualización, combinar múltiples fuentes de datos es una tarea frecuente. Sin embargo, hacerlo sin verificar previamente la compatibilidad puede generar errores silenciosos y resultados engañosos. La calidad del análisis depende de que los archivos compartan la misma estructura: columnas con nombres idénticos, tipos de datos consistentes y la misma cantidad de campos. Ser meticuloso en esta etapa es lo que diferencia un trabajo improvisado de uno profesional y confiable.
</p>

## Reto:

<p align="justify">
El junior ha reunido varios archivos de datos (CSV o Excel) para alimentar un dashboard, pero no verificó si son compatibles entre sí. El programador senior propone un enfoque sistemático: escribir un script que analice los archivos y determine cuáles pueden combinarse sin problemas.
<p>

El reto consiste en:

- Recorrer los archivos de una carpeta principal.
- Detectar las columnas de cada archivo.
- Verificar que todos tengan la misma cantidad de columnas.
- Confirmar que los nombres de las columnas coincidan exactamente.
- Validar que los tipos de datos de cada columna sean consistentes.
- Imprimir por consola un reporte donde:
    - La primera columna muestre los nombres de los archivos analizados.
    - El resto de columnas correspondan a las columnas de datos detectadas en cada archivo.
    - En cada celda se muestre el tipo de dato encontrado.

## Consideraciones:

-   Preferiblemente utilice las funciones base del lenguaje (**SQL**, **Python**, **R**, **Julia**, **etc**.), evitando librerías externas cuando sea posible.
-   Al nombra el archivo en el que se encuentra su solución deberá seguir la siguiente estructura: *ejercicio_4_[usuario_github].[ext]*
