
# Ramp Function Visualization with $\LaTeX$

This repository contains a $\LaTeX$ code example that visualizes the ramp function and its corresponding Laplace transform. The ramp function, denoted as $t \cdot u(t)$, is a key function in control theory, signal processing, and mathematics. This $\LaTeX$ code also shows the Laplace transform of the ramp function.

## Ramp Function

The ramp function, $t \cdot u(t)$, is defined as:

```math
t \cdot u(t) =
\begin{cases}
0, & t < 0 \\
t, & t \geq 0
\end{cases}
```

This function represents a linearly increasing function that starts at $t = 0$. It is widely used in modeling systems with linearly increasing inputs.

### Laplace Transform of the Ramp Function

The Laplace transform of the ramp function $t \cdot u(t)$ is given by the formula:

```math
\mathcal{L}\left\{t \cdot u(t)\right\} = \frac{1}{s^2}
```

### Visualization Using TikZ

The provided $\LaTeX$ code uses the `TikZ` package to visualize the ramp function. The graph shows a horizontal line at $f(t) = 0$ for $t < 0$, and a linearly increasing function for $t > 0$. The visualization includes the corresponding Laplace transform formula.

Here is a breakdown of the code:

```latex
\documentclass{standalone}
\usepackage{tikz}

\begin{document}

\begin{tikzpicture}[]
    % Ejes
    \draw[->, gray!70] (-3, 0) -- (3, 0) node[right] {$t$};  % Eje t
    \draw[->, gray!70] (0, -0.5) -- (0, 3) node[above] {$f(t)$};  % Eje f(t)
    
    % Función rampa t*u(t)
    \draw[thick, black!70] (-2.5, 0) -- (0, 0);   % Parte negativa de la función
    \draw[thick, black!70] (0, 0) -- (2.5, 2.5) node[left, gray!85,] {$t \cdot u(t)$};   % Parte positiva de la función
    
    % Etiquetas
    \node[anchor=south west, 
        align=left, 
        font=\large,
        gray!85,] at (-2.35, -2.5) 
        {$\mathcal{L}\left\{t \cdot u(t)\right\} = \int\limits_{0}^{\infty}e^{-st}t \, dt = \frac{1}{s^2}$ \\
        \hspace{0.75cm}$t \cdot u(t) \Leftrightarrow \frac{1}{s^2}$};
\end{tikzpicture}

\end{document}
```

### Preview of the Ramp Function Plot

Here is a preview of the ramp function plot:

<p align="center">
  <img src="https://github.com/Almanza-Conejo/classroomCode/blob/main/Laplace%20transform/rampFunction/ramp.png" alt="Ramp Function Plot" width="500"/>
</p>

### How to Use

To compile this code and view the visualization, follow these steps:
1. Ensure you have a $\LaTeX$ distribution installed, such as [TeX Live](https://www.tug.org/texlive/) or [MiKTeX](https://miktex.org/).
2. Use a $\LaTeX$ editor like [TeXworks](https://www.tug.org/texworks/) or an online editor like [Overleaf](https://www.overleaf.com/).
3. Paste the code in a `.tex` file and compile it to generate the output.

The output will be a standalone PDF image of the ramp function $t \cdot u(t)$ and its Laplace transform.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/Almanza-Conejo/classroomCode/tree/main?tab=MIT-1-ov-file) file for details.
