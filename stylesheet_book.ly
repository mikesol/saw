\paper {
  ragged-right = ##f
  two-sided = ##t
  inner-margin = 1.2\in
  outer-margin = 0.8\in
  top-margin = 1.0\in
  bottom-margin = 1.0\in
  ragged-last-bottom = ##f
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  top-system-spacing = #'((basic-distance . 10) (minimum-distance . 10) (padding . 10) (stretchability . 10))
  bottom-system-spacing = #'((basic-distance . 10) (minimum-distance . 10) (padding . 10) (stretchability . 10))
}
\header {
  tagline=""
}

#(set-global-staff-size 14.14)
#(set-default-paper-size "letter")
#(set! paper-alist (cons '("oz" . (cons (* 200 mm) (* 250 mm))) paper-alist))
%#(set-default-paper-size "oz")

myred = {}
