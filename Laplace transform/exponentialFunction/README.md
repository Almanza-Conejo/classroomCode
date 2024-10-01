
# Exponential Function Visualization with LaTeX

This repository contains a LaTeX code example that visualizes an exponential function and its corresponding Laplace transform. The function used is of the form `e^{at}`, where `a` is a constant, and the Laplace transform of the exponential function is also illustrated.

## Exponential Function

The exponential function is a mathematical function of the form:

```math
f(t) = e^{at}
```

where:
- `e` is Euler's number, approximately equal to 2.71828,
- `a` is a constant, which defines the growth or decay rate,
- `t` is the independent variable, often representing time.

### Laplace Transform of the Exponential Function

The Laplace transform of the exponential function $e^{at}$ is given by the formula:

```math
\mathcal{L}\left\{e^{at}\right\} = \int\limits_{0}^{\infty} e^{-st} e^{at} dt = \frac{1}{s-a}
```

This shows that in the Laplace domain, the exponential function maps to a rational function $ \frac{1}{s - a} $.

### Visualization Using TikZ

The provided LaTeX code uses the `TikZ` package to visualize the exponential function and mark the axes ($t$ for time and $f(t)$ for the function value). The graph of $e^{at}$ is drawn with a specified value for $a$, and the Laplace transform formula is shown at the bottom of the figure.

Here is a breakdown of the code:

```latex
\documentclass{standalone}
\usepackage{tikz}

\begin{document}

\begin{tikzpicture}[scale=1.0]
    % Axes
    \draw[->, gray!70] (-3, 0) -- (3, 0) node[right] {$t$};  % Time axis (t)
    \draw[->, gray!70] (0, -0.5) -- (0, 2.5) node[above] {$f(t)$};  % Function axis (f(t))
    
    % Exponential function e^{at}
    \draw[thick, black!70] plot[domain=-2.5:2, samples=100] (\x, {exp(0.45*\x)}) node[right] {$e^{at}$};   % Plot of e^{at} with a=0.8

    \node[%
        anchor = south west,
        align = left,
        font = \large,
    ] (inversorEquation) at 
        (-2.5, -2.5) 
        {$\mathcal{L}\left\{e^{at}\right\} = \int\limits_{0}^{\infty}e^{-st}e^{at}dt = \frac{1}{s-a}$ \\ 
        \hspace{1.6cm}$e^{at} \Leftrightarrow \frac{1}{s-a}$};
\end{tikzpicture}

\end{document}
```

Here is a preview of the exponential function plot:

<p align="center">
  <img src="https://github.com/Almanza-Conejo/classroomCode/blob/main/Laplace%20transform/exponentialFunction/exponential.png" alt="Exponential Function Plot" width="500"/>
</p>

### How to Use

To compile this code and view the visualization, you can follow these steps:
1. Ensure you have a LaTeX distribution installed, such as [TeX Live](https://www.tug.org/texlive/) or [MiKTeX](https://miktex.org/).
2. Use a LaTeX editor like [TeXworks](https://www.tug.org/texworks/) or an online editor like [Overleaf](https://www.overleaf.com/).
3. Paste the code in a `.tex` file and compile it to generate the output.

The output will be a standalone PDF image of the exponential function $e^{at}$ and its Laplace transform formula.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/Almanza-Conejo/classroomCode/tree/main?tab=MIT-1-ov-file) file for details.
