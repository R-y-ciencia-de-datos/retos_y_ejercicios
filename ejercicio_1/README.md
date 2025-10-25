# EJERCICIO #1: Estructura Jerárquica de Quipu en Teoría de Grafos

## Introducción:

<p style="text-align: justify">El sistema de conteo Quipu, desarrollado en el altiplano andino, puede interpretarse como una estructura de datos basada en teoría de grafos. Cada cuerda y nudo representa nodos y conexiones que codifican información numérica y jerárquica. Esta perspectiva permite aplicar herramientas modernas de análisis de redes para estudiar su organización y significado. En el contexto del análisis de datos, el Quipu ofrece un modelo ancestral de codificación modular, relacional y comprimida, útil para explorar estructuras no tabulares. Su estudio aporta valor tanto histórico como metodológico, inspirando nuevas formas de representar y analizar datos complejos.</p>


## Reto:

<p style="text-align: justify">Dado un conjunto de **vértices V** que representan nudos, y un conjunto de **aristas E** que representan las conexiones entre cuerdas en un Quipu andino, se plantea el siguiente desafío:</p>


-   Construir la matriz de adyacencia que represente las relaciones entre los elementos del Quipu.
-   Elabore un gráfico en donde se visualice el grafo resultante.

**V** = {'Q0', 'Q1', 'Q2', 'Q3', 'Q1a', 'Q1b', 'Q2a', 'Q3a', 'Q3b', 'Q3c'}

**E** = {
 ('Q0', 'Q1'), ('Q0', 'Q2'), ('Q0', 'Q3'),
 ('Q1', 'Q1a'), ('Q1', 'Q1b'),
 ('Q2', 'Q2a'),
 ('Q3', 'Q3a'), ('Q3', 'Q3b'), ('Q3', 'Q3c')
}


**Ejemplo de salida:**

```
                   Q0 
            (nudo principal) 
             /      |     \
            /       |      \
           Q1      Q2       Q3
          /  \      |      / | \
        Q1a   Q1b  Q2a   Q3a Q3b Q3c
```



## Consideraciones:

-   Preferiblemente utilice las funciones base del lenguaje (**SQL**, **Python**, **R**, **Julia**, **etc**.), evitando librerías externas cuando sea posible.
-   Al nombra el archivo en el que se encuentra su solución deberá seguir la siguiente estructura: *ejercicio_1_[usuario_github].[ext]*


