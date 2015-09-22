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
subdXA = {  a4 cis' c' | }
subdXB = {  b ais b bis | }
subdXC = {  cis' b bes a | }
subdXD = {  gis bis cis' bes | }
subdXE = {  a cis' d' dis' | }
subdXF = {  fis' d' cis' g | }
subdXG = {  fis b e b | }

subdX = {
  \subdXA
  \subdXB
  \subdXC
  \subdXD
  \subdXE
  \subdXF
  \subdXG
}

tonXA = { e4 gis g | }
tonXB = { fis eis fis fisis | }
tonXC = { gis fis f e | }
tonXD = { dis g gis f | }
tonXE = { e gis a ais | }
tonXF = { cis' a gis d | }

tonX = {
  \tonXA
  \tonXB
  \tonXC
  \tonXD
  \tonXE
  \tonXF
}

%{
\score {
<<
%\new ChordNames \chordmode { e1 fis1 e1 a1 e1 a1 b1 e1 }
\new Staff { \clef "treble" \emj R1*5 r4 \transpose c c' \subdX }
\new Staff { \clef "treble" \emj R1*4 r4 \transpose c c' \tonX }
\new Staff { \clef "treble_8" \emj R1*3 r4 \subdX }
\new Staff { \clef "treble_8" \emj R1*2 r4 \tonX }
\new Staff { \clef bass \emj R1 r4 \transpose c c, \subdX \set Score.skipTypesetting = ##t }
>>
\layout{}
\midi{}
}
%}