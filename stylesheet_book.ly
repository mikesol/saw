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
  system-system-spacing = #'((basic-distance . 12) (minimum-distance . 12) (padding . 10) (stretchability . 60))
  top-system-spacing = #'((basic-distance . 10) (minimum-distance . 10) (padding . 10) (stretchability . 10))
  bottom-system-spacing = #'((basic-distance . 10) (minimum-distance . 10) (padding . 10) (stretchability . 10))
}
\header {
  tagline=""
}

#(set-global-staff-size 14.3)
#(set-default-paper-size "a4")
#(set! paper-alist (cons '("oz" . (cons (* 200 mm) (* 250 mm))) paper-alist))
#(set! paper-alist (cons '("psg" . (cons (* 178 mm) (* 229 mm))) paper-alist))
%#(set-default-paper-size "psg" 'landscape)

myred = {}
