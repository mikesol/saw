\version "2.19"

emj = { \tempo 2=80 \key e \major }

subdX = \relative c' {
  r4 a cis c |
  b bes a b |
  cis b bes a |
  gis d' cis gis |
  a b e b |
  dis cis b a |
  gis fis e fis
}

subdY = \relative c' {
  r4 a cis c |
  b bes a ais |
  b cis bes a |
  gis
}

tonX = \relative c' {
  r4 e gis g |
  fis f e fis |
  gis fis f e |
  dis a' gis dis |
  e fis b fis |
  a gis fis e |
}

tonY = \relative c' {
  r4 e gis g |
  fis f e f |
  fis
}

\score {
<<
%\new ChordNames \chordmode { e1 fis1 e1 a1 e1 a1 b1 e1 }
\new Staff { \clef "treble" \emj R1*5 \transpose c c' \subdX }
\new Staff { \clef "treble" \emj R1*4 \tonX }
\new Staff { \clef "treble_8" \emj R1*3 \subdX }
\new Staff { \clef "treble_8" \emj R1*2 \transpose c c, \tonX }
\new Staff { \clef bass \emj R1 \transpose c c, \subdX \set Score.skipTypesetting = ##t }
>>
\layout{}
\midi{}
}