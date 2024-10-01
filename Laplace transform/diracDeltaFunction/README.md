
# Dirac's Delta Function Visualization with $\LaTeX$

This repository contains a $\LaTeX$ code example that visualizes Dirac's delta function and its corresponding Laplace transform. The Dirac delta function, denoted as $\delta(t)$, is a key function in signal processing and control theory. This $\LaTeX$ code also shows the Laplace transform of the delta function.

## Dirac's Delta Function

Dirac's delta function, $\delta(t)$, is a generalized function defined as zero everywhere except at $t = 0$, where it is infinite. It satisfies the following property:

```math
\int\limits_{-\infty}^{\infty} \delta(t) \, dt = 1
```

This function is used to model idealized impulses or point masses.

### Laplace Transform of Dirac's Delta Function

The Laplace transform of the shifted Dirac delta function $\delta(t - t_0)$ is given by the formula:

```math
\mathcal{L}\left\{\delta(t - t_0)\right\} = \int\limits_{0}^{\infty} e^{-st} \delta(t - t_0) \, dt = e^{-s t_0}
```

For the non-shifted Dirac delta function, the Laplace transform simplifies to:

```math
\delta(t) \Leftrightarrow 1
```

### Visualization Using TikZ

The provided $\LaTeX$ code uses the `TikZ` package to visualize Dirac's delta function. The graph shows a vertical arrow at $t = 0$ representing the delta function, with a point at the tip to indicate the impulse at that point.

Here is a breakdown of the code:

```latex
\documentclass{standalone}
\usepackage{tikz}

\begin{document}

\begin{tikzpicture}[scale=1.0]
    % Ejes
    \draw[->, gray!70] (-3, 0) -- (3, 0) node[right] {$t$};  % Eje x
    \draw[->, gray!70] (0, -0.5) -- (0, 2) node[above] {$f(t)$};  % Eje y
    
    % Función delta de Dirac
    \draw[thick, black!70] (0, 0) -- (0, 1.5);   % Línea vertical de la delta en x = 0
    \filldraw[gray!90!black!50] (0, 1.5) circle (2pt);   % Punto en el extremo de la delta

    % Etiquetas
    \node[gray!85,] at (0.5, 1.45) {$\delta(t)$};

    % Punto de la delta
    \filldraw[black!70] (0, 1.5) circle (2pt);   % Círculo relleno en (0, 1.5)

    \node[%
	    anchor = south west,
	    align = left,
	    font = \large,
            gray!85,
	] (inversorEquation) at 
        (-3.7, -2.5) 
        {$\mathcal{L}\left\{\delta(t-t_0)\right\} = \int\limits_{0}^{\infty}e^{-st}\delta(t-t_0)dt = e^{-s t_0}$ \\
        \hspace{1.7cm}$\delta(t-t_0) \Leftrightarrow e^{-s t_0}$ \\
        \hspace{2.55cm}$\delta(t) \Leftrightarrow 1$};
\end{tikzpicture}

\end{document}
```

Here is a preview of the exponential function plot:

<p align="center">
  <img src="" alt="Dirac's delta Function Plot" width="500"/>
</p>

### How to Use

To compile this code and view the visualization, follow these steps:
1. Ensure you have a $\LaTeX$ distribution installed, such as [TeX Live](https://www.tug.org/texlive/) or [MiKTeX](https://miktex.org/).
2. Use a $\LaTeX$ editor like [TeXworks](https://www.tug.org/texworks/) or an online editor like [Overleaf](https://www.overleaf.com/).
3. Paste the code in a `.tex` file and compile it to generate the output.

The output will be a standalone PDF image of the Dirac delta function $\delta(t)$ and its Laplace transform.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/Almanza-Conejo/classroomCode/tree/main?tab=MIT-1-ov-file) file for details.
