
# Damped Ramp Function Visualization with $\LaTeX$

This repository contains a $\LaTeX$ code example that visualizes a damped ramp function and its corresponding Laplace transform. The function used is of the form `t e^{-at}`, where `a` is a constant. The Laplace transform of the damped ramp function is also illustrated.

## Damped Ramp Function

The damped ramp function is a mathematical function of the form:

```math
f(t) = t e^{-at}
```

where:
- `e` is Euler's number, approximately equal to 2.71828,
- `a` is a constant that defines the decay rate,
- `t` is the independent variable, often representing time.

### Laplace Transform of the Damped Ramp Function

The Laplace transform of the damped ramp function $t e^{-at}$ is given by the formula:

```math
\mathcal{L}\left\{t e^{-at}\right\} = \int\limits_{0}^{\infty}t e^{-t(s+a)} \, dt = \frac{1}{(s+a)^2}
```

This shows that in the Laplace domain, the damped ramp function maps to a rational function $ \frac{1}{(s + a)^2} $.

### Visualization Using TikZ

The provided $\LaTeX$ code uses the `TikZ` package to visualize several instances of the damped ramp function for different values of `a`, and it plots them in different shades of gray. The graph of $t e^{-at}$ for various values of `a` (e.g., 0.2, -0.2, -0.6, -0.9) is shown, and the Laplace transform formula is displayed at the bottom of the figure.

Here is a breakdown of the code:

```latex
\documentclass{standalone}
\usepackage{tikz}
\usetikzlibrary{math}

\begin{document}

\begin{tikzpicture}[scale=1.0]
    % Axes
    \draw[->, gray!70] (-3, 0) -- (3, 0) node[right] {$t$};  % Time axis (t)
    \draw[->, gray!70] (0, -0.5) -- (0, 2.5) node[above] {$f(t)$};  % Function axis (f(t))
    
    % Damped ramp function t e^{-at}
    \foreach \d [count = \i from 1] in {0.2, -0.2, -0.6, -0.9}{
        \pgfmathsetmacro{\clr}{100 - (20*\i)}  % Color varying with index
        \draw[thick, black!\clr] plot[domain=-1:2, samples=100] (\x, {\x*exp(\d*\x)}) node[right] {$t e^{\d t}$};   % Plot of t e^{-at} with a=0.2
    }

    % Laplace transform formula
    \node[anchor=south west, align=left, font=\large, gray!85] at (-5, 0.25) 
        {$\mathcal{L}\left\{t e^{-at}\right\} = \int\limits_{0}^{\infty}t e^{-t(s+a)} \, dt $ \\ 
        \hspace{1.75cm}$ = \frac{1}{(s+a)^2}$ \\ 
        \hspace{0.75cm}$t e^{-at} \Leftrightarrow \frac{1}{(s+a)^2}$};
\end{tikzpicture}

\end{document}
```
Here is a preview of the exponential function plot:

<p align="center">
  <img src="https://github.com/Almanza-Conejo/classroomCode/blob/main/Laplace%20transform/dampedRampFunction/dammedramp.png" alt="Exponential Function Plot" width="500"/>
</p>

### How to Use

To compile this code and view the visualization, follow these steps:
1. Ensure you have a $\LaTeX$ distribution installed, such as [TeX Live](https://www.tug.org/texlive/) or [MiKTeX](https://miktex.org/).
2. Use a $\LaTeX$ editor like [TeXworks](https://www.tug.org/texworks/) or an online editor like [Overleaf](https://www.overleaf.com/).
3. Paste the code in a `.tex` file and compile it to generate the output.

The output will be a standalone PDF image of the damped ramp function $t e^{-at}$ for several values of `a` and its Laplace transform formula.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
