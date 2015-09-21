\version "2.19"

subd = \relative c' {
  r4 a cis c |
  b bes a b |
  cis
}

ton = \relative c' {
  r4 e gis g |
  fis
}

<<
\new ChordNames \chordmode { e1 fis1 e1 a1 e1 a1 b1 e1 }
\new Staff { \clef "treble" R1*5 \transpose c c' \subd }
\new Staff { \clef "treble" R1*4 \ton }
\new Staff { \clef "treble_8" R1*3 \subd }
\new Staff { \clef "treble_8" R1*2 \transpose c c, \ton }
\new Staff { \clef bass R1 \transpose c c, \subd }
>>