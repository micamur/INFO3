% Chapitre 1 - Introduction et bases théoriques
% Denis pellerin (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Lundi 21 Janvier 2019

# 0 - Informations

TP en Python, 4 TD

Note finale : examen de 2H, compte-rendu (2 TP de 3h)

Mail : denis.pellerin@univ-grenoble-alpes.fr (GIPSA-lab)

Bibliographie : J.P. Delmas, Élément de théorie du signal (1995)

# 1 - Généralités

## Définitions

- **Signal** : représentation physique de l'information
- **Bruit** : tout phénomène perturbateur gênant l'interprétation du signal
- **Traitement du signal** : théorie permettant d'effectuer une description/modélisation et une analyse des signaux et des systèmes porteurs d'information

## Différentes représentations

- **Analogique** : continu
- **Numérique** : discret
- Signal 2D : temps et amplitude
- Analogique $\rightarrow$ numérique : discrétiser, échantillonner, quantifier
- **Échantillonner** : discrétiser le temps
- **Quantifier** : discrétiser l'amplitude

## Objectifs du TS

- Améliorer la qualité du signal
- Coder, compresser l'information
- Extraire l'information utile

## Énergie d'un signal

$$
W_x = \int_{-\infty}^{+\infty} |x(t)|^2 dt
$$

## Rapport signal/bruit (RSB = SNR in English)

$$
\begin{array}{lcl}
RSB & = & {W_s \over W_b}\\
RSB_{dB} & = & 10log_{10}RSB\\
& \simeq & 20log_{10}{\text{Amplitude}_s \over \text{Amplitude}_b}\\
\end{array}
$$

## Puissance moyenne d'un signal

$$
P_x = \lim\limits_{T \to +\infty} {1 \over T} \int_{-T/2}^{T/2} |x(t)|^2 dt
$$

# 2 - Classification des signaux

- **Déterministes** : signaux périodiques, de tests, d'étalonnage...
- **Aléatoires** : signaux d'origine physique...

- À **énergie finie** ($W_x < \infty$) : signaux transitoires
- À **puissance moyenne finie** ($P_x < \infty$) : signaux permanents

- **Pairs** ($cos(\omega t)$) et **impairs** ($sin(\omega t)$) : tout signal réel peut être décomposé en une partie paire et une partie impaire :

  $$
  \left\{\begin{array}{lcl}
  x(t) & = & x_p(t) + x_i(t)\\
  x(-t) & = & x_p(-t) + x_i(-t) = x_p(t) - x_i(t)\\
  \end{array}\right. \text{ et }
  \left\{\begin{array}{lcl}
  x_p(t) & = & {x(t) + x (-t) \over 2}\\
  x_i(t) & = & {x(t) - x (-t) \over 2}\\
  \end{array}\right.
  $$

- **Causaux** : $\forall t < 0,\; x(t) = 0$

.
