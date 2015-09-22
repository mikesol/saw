\version "2.19"

emj = { \tempo 2=80 \key e \major }

subdZ = \relative c' {
  r4 a cis c |
  b bes a b |
  cis b bes a |
  gis d' cis gis |
  a b dis b |
  fis gis cis b |
  gis fis e fis
}

subdY = \relative c' {
  r4 a cis c |
  b bes a ais |
  b cis bes a |
  gis
}

tonZ = \relative c' {
  r4 e gis g |
  fis f e fis |
  gis fis f e |
  dis a' gis dis |
  e fis a fis
  cis dis gis fis |
}

tonY = \relative c' {
  r4 e gis g |
  fis f e f |
  fis
}


%%%%
subdX = \relative c' {
  r4 a cis c |
  b bes a bis |
  cis b bes a |
  gis bis cis d |
  a cis d dis |
  b gis g fis |
  b f e fis |
}

tonX = \relative c' {
  r4 e gis g |
  fis f e fisis |
  gis fis f e |
  dis g gis a |
  e gis a ais |
  fis dis d cis
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