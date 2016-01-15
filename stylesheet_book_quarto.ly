\include "stylesheet_hf.ly"
\paper {
  ragged-right = ##f
  two-sided = ##t
  inner-margin = 3\cm
  outer-margin = 2\cm
  bottom-margin = 2.3\cm
  top-margin = 2.3\cm
  %min-systems-per-page = #3
  min-systems-per-page = #2
  ragged-last-bottom = ##f
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  score-markup-spacing = #'((basic-distance . 12) (minimum-distance . 5) (padding . 0.5) (stretchability . 60))
  system-system-spacing = #'((basic-distance . 16) (minimum-distance . 7) (padding . 5) (stretchability . 15))
  markup-system-spacing = #'((basic-distance . 5) (minimum-distance . 5) (padding . 2.5) (stretchability . 30))
  top-system-spacing = #'((basic-distance . 45) (minimum-distance . 10) (padding . 8) (stretchability . 120))
  bottom-system-spacing = #'((basic-distance . 45) (minimum-distance . 10) (padding . 8) (stretchability . 120))
}
\header {
  tagline=""
}

% GOOD
%#(set-global-staff-size 14.2)
%#(set-default-paper-size "a4")

% CURRENT
#(set-global-staff-size 15.0)
#(set-default-paper-size "a4")
#(set! paper-alist (cons '("cq" . (cons (* 189 mm) (* 246 mm))) paper-alist))
#(set-default-paper-size "cq")
myred = {}
