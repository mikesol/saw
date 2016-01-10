\paper {
  ragged-right = ##f
  two-sided = ##t
  inner-margin = 1.4\in
  outer-margin = 0.6\in
  ragged-last-bottom = ##f
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  top-system-spacing = #'((basic-distance . 20) (minimum-distance . 20) (padding . 20) (stretchability . 20))
  bottom-system-spacing = #'((basic-distance . 20) (minimum-distance . 20) (padding . 20) (stretchability . 20))
}
\header {
  tagline=""
}

#(set-global-staff-size 14.14)

#(set! paper-alist (cons '("oz" . (cons (* 200 mm) (* 250 mm))) paper-alist))
#(set-default-paper-size "oz")

myred = {}
