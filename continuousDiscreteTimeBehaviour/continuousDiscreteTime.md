<p align="center">
  <a href="https://example.com/">
    <img src="https://www.ugto.mx/images/escudo-guia-imagen.png" width=88 height=70 alt="linkedin"> <img src="https://github.com/Almanza-Conejo/imagesRepo/blob/main/almCon.png" alt="Almanza-Conejo" width=300 height=70>
  </a>
  <p align="center">
    <br>
    M.E. Almanza-Conejo</h2>
    <br>
    <a href="https://www.linkedin.com/in/oalmanzaconejo/" rel="nofollow noreferrer">
    <img src="https://i.sstatic.net/gVE0j.png" alt="linkedIn"> LinkedIn
    </a> &nbsp; 
    <a href="https://www.researchgate.net/profile/Oscar-Almanza-Conejo" rel="nofollow noreferrer">
    <img src="https://user-images.githubusercontent.com/54937357/126514422-ba0e7de1-cbc2-4186-94d9-39e8a22c1c78.png" width="14" height="14" alt="ResearchGate"> ResearchGate
    </a> &nbsp;
    <a href="https://medium.com/@almanzaConejo" rel="nofollow noreferrer">
    <img src="https://raw.githubusercontent.com/Medium/medium-logos/master/03_Symbol/01_Black/PNG/RGB/Medium-Symbol-Black-RGB%401x.png" width="17" height="17" alt="Medium"> Medium
  </a>
  </p>
</p>

# Tiempo y Tiempo Discreto de una Función

## Introducción

El análisis de señales en los sistemas dinámicos se puede llevar a cabo tanto en **tiempo continuo** como en **tiempo discreto**. La representación de una función en estos dos dominios depende del tipo de variable independiente que se esté utilizando. A continuación, se explica la diferencia entre el tiempo continuo y el tiempo discreto.

## Tiempo Continuo

En el **tiempo continuo**, la variable independiente (generalmente denotada como \( t \)) puede tomar cualquier valor dentro de un rango continuo. Las señales en tiempo continuo se definen para todos los valores posibles de \( t \), lo que implica que el tiempo es una cantidad continua.

Por ejemplo, una función en tiempo continuo puede representarse como:

```math
x(t), \quad t \in \mathbb{R}
```

Ejemplos de señales en tiempo continuo incluyen:

- Señales de audio analógicas
- Variaciones de voltaje en un circuito

### Ejemplo de Función en Tiempo Continuo:

Una señal sinusoidal en tiempo continuo puede expresarse como:

```math
x(t) = A \sin(2 \pi f t + \phi)
```

donde:
- $A$ es la amplitud
- $f$ es la frecuencia
- $\phi$ es la fase
- $t$ es el tiempo continuo

## Tiempo Discreto

En el **tiempo discreto**, la variable independiente solo toma valores en un conjunto discreto de puntos en el tiempo. Estos puntos son típicamente muestras equiespaciadas en el tiempo, lo que significa que las señales en tiempo discreto solo están definidas en instantes específicos.

La notación común para una señal en tiempo discreto es:

```math
x[n], \quad n \in \mathbb{Z}
```

donde $\( n \)$ es un número entero que representa el índice de la muestra.

### Ejemplo de Función en Tiempo Discreto:

Una señal sinusoidal en tiempo discreto puede representarse como:

```math
x[n] = A \sin(2 \pi f n T + \phi)
```

donde:
- $A$ es la amplitud
- $f$ es la frecuencia
- $T$ es el intervalo de muestreo
- $\phi$ es la fase
- $n$ es el índice de tiempo discreto

## Relación entre Tiempo Continuo y Tiempo Discreto

Una señal en tiempo continuo puede ser convertida en una señal en tiempo discreto mediante el proceso de **muestreo**, donde se seleccionan puntos específicos de la señal continua a intervalos regulares de tiempo. La relación entre el tiempo continuo y el tiempo discreto está dada por:

```math
x[n] = x(nT)
```

donde $T$ es el período de muestreo. Este proceso es fundamental en aplicaciones como la digitalización de señales de audio o video.

## Conclusión

El entendimiento del tiempo continuo y discreto es esencial en diversas áreas de la ingeniería, como el procesamiento de señales y sistemas de control. El tiempo continuo es adecuado para representar fenómenos naturales, mientras que el tiempo discreto es útil para sistemas digitales y de procesamiento de datos.

## Representación gráfica

