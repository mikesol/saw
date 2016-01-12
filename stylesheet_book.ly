\paper {
  ragged-right = ##f
  two-sided = ##t
  inner-margin = 1.1\in
  outer-margin = 0.9\in
  top-margin = 1.0\in
  min-systems-per-page = #3
  bottom-margin = 1.0\in
  ragged-last-bottom = ##f
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  score-markup-spacing = #'((basic-distance . 12) (minimum-distance . 5) (padding . 0.5) (stretchability . 60))
  system-system-spacing = #'((basic-distance . 12) (minimum-distance . 7) (padding . 5) (stretchability . 60))
  markup-system-spacing = #'((basic-distance . 5) (minimum-distance . 5) (padding . 2.5) (stretchability . 30))
  top-system-spacing = #'((basic-distance . 10) (minimum-distance . 10) (padding . 10) (stretchability . 10))
  bottom-system-spacing = #'((basic-distance . 10) (minimum-distance . 10) (padding . 10) (stretchability . 10))
}
\header {
  tagline=""
}

% GOOD
%#(set-global-staff-size 14.2)
%#(set-default-paper-size "a4")

% CURRENT
#(set-global-staff-size 14.45)
#(set-default-paper-size "a4")

myred = {}
