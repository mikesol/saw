
#(define-markup-command (smart-flat layout props text) (markup?)
  "nice looking flat"
  (interpret-markup layout props
    (markup #:normal-text #:concat (#:general-align Y UP text #:hspace 0.2 #:general-align Y UP #:smaller #:smaller #:smaller #:smaller #:flat))))
#(define (position-hack grob)
     (let* ((pos (ly:tuplet-bracket::calc-positions grob))
            (mx (max (car pos) (cdr pos))))
       (cons mx mx)))
\relative c'' {
<< {
  \time 2/2
  \tempo "Allegro" 2=108
  \override TupletBracket.direction = #UP
  \override TupletBracket.bracket-flare = #'(0.5 . 0.5)
  \override TupletBracket.positions = #position-hack
  \override TupletBracket.bracket-visibility = ##t
  \set tupletFullLength = ##t
  \override TupletNumber.text = \markup \smart-flat "E"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "E"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "F"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "G"
  \times 1/1 { s2. }
}
{
 #(set-accidental-style 'modern-cautionary)
  r4 ees^\f d8 ees dis4 |
  e e %{f%} e8 f e4 |
  f %{ges%} ges f8 ges ees4 %{g%} |
  %d2. %{aes%} r4 |
  %%%
  %r4 aes' %{a%} gis8 a gis4 |
  %a4 %{bes%} bes a8 bes g4 %{ces%} |
  %ges2. %{c%} r4 |
  %r4 c, %{des%} ( des ) d | 
} >>
}
\addlyrics {
  You're out of the woods
  You're out of the dark
  You're out of the night
  Step in -- to the sun
  Step in -- to the light
}