
# Heaviside (Unit Step) Function Visualization with $\LaTeX$

This repository contains a $\LaTeX$ code example that visualizes the Heaviside (or unit step) function and its corresponding Laplace transform. The Heaviside function, denoted as $u(t)$, is a key function in control theory, signal processing, and mathematics. This $\LaTeX$ code also shows the Laplace transform of the unit step function.

## Heaviside Function

The Heaviside (unit step) function, $u(t)$, is defined as:

```math
u(t) =
\begin{cases}
0, & t < 0 \\
1, & t \geq 0
\end{cases}
```

This function represents a step change from 0 to 1 at $t = 0$, making it ideal for modeling systems that switch on at a specific time.

### Laplace Transform of the Heaviside Function

The Laplace transform of the shifted Heaviside function $u(t - t_0)$ is given by the formula:

```math
\mathcal{L}\left\{u(t - t_0)\right\} = \frac{e^{-s t_0}}{s}
```

For the non-shifted Heaviside function, the Laplace transform simplifies to:

```math
u(t) \Leftrightarrow \frac{1}{s}
```

### Visualization Using TikZ

The provided $\LaTeX$ code uses the `TikZ` package to visualize the Heaviside function. The graph shows a horizontal line at $u(t) = 0$ for $t < 0$, a jump to $u(t) = 1$ at $t = 0$, and a horizontal line at $u(t) = 1$ for $t > 0$. The visualization includes filled and unfilled circles to indicate the jump discontinuity.

Here is a breakdown of the code:

```latex
\documentclass{standalone}
\usepackage{tikz}

\begin{document}

\begin{tikzpicture}[scale=1.0]
    % Ejes
    \draw[->, gray!70] (-3, 0) -- (3, 0) node[right] {$t$};  % Eje x
    \draw[->, gray!70] (0, -0.5) -- (0, 2) node[above] {$f(t)$};  % Eje y
    
    % Función escalón unitario
    \draw[thick, black!70] (-2.5, 0) -- (0, 0);   % Parte negativa de la función
    \draw[thick, black!70] (0, 0) -- (0, 1);     % Salto en x = 0
    \draw[thick, black!70] (0, 1) -- (2.5, 1);   % Parte positiva de la función

    % Etiquetas
    \node[gray!85,] at (-0.5, 1) {$u(t)$};
    
    % Punto de salto
    \filldraw[black!70] (0, 1) circle (2pt);   % Círculo relleno en (0, 1)
    \filldraw[white] (0, 0) circle (2pt);      % Círculo vacío en (0, 0)
    \draw[black!70] (0, 0) circle (2pt);       % Borde gris para el círculo vacío

    \node[%
        anchor = south west,
        align = left,
        font = \large,
        gray!85,
    ] (inversorEquation) at 
        (-3.7, -2.5) 
        {$\mathcal{L}\left\{u(t-t_0)\right\} = \int\limits_{0}^{\infty}e^{-st}u(t-t_0)dt = \frac{e^{-s t_0}}{s}$ \\
        \hspace{1.7cm}$u(t-t_0) \Leftrightarrow \frac{e^{-s t_0}}{s}$ \\
        \hspace{2.55cm}$u(t) \Leftrightarrow \frac{1}{s}$};
\end{tikzpicture}

\end{document}
```

### Preview of the Heaviside Function Plot

Here is a preview of the Heaviside function plot:

<p align="center">
  <img src="https://github.com/Almanza-Conejo/classroomCode/blob/main/Laplace%20transform/heavisideFunction/heaviside.png" alt="Heaviside Function Plot" width="500"/>
</p>

### How to Use

To compile this code and view the visualization, follow these steps:
1. Ensure you have a $\LaTeX$ distribution installed, such as [TeX Live](https://www.tug.org/texlive/) or [MiKTeX](https://miktex.org/).
2. Use a $\LaTeX$ editor like [TeXworks](https://www.tug.org/texworks/) or an online editor like [Overleaf](https://www.overleaf.com/).
3. Paste the code in a `.tex` file and compile it to generate the output.

The output will be a standalone PDF image of the Heaviside function $u(t)$ and its Laplace transform.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/Almanza-Conejo/classroomCode/tree/main?tab=MIT-1-ov-file) file for details.
