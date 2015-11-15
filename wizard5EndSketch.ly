\paper { ragged-bottom = ##f ragged-last-bottom = ##f }
<<
\new Staff \new Voice \relative c' {
  \partial 4
  \key cis \major
  \time 2/4
  \clef "treble_8"
  gis4 |
  cis8 gis eis dis |
  cisis b' ais gis |
  \clef "treble"
  ais8 cis16 fis ais8-. a-. |
  gis8 eis cis b |
  ais ais bis4^\mordent |
  cis8 cis cisis4^\mordent |
  dis8 fis16 ais dis8 cis |
  bis16 cis ais bis gis8 gis |
  ais16 fis dis cis bis a'8 fisis16 |
  gis16 eis cis b ais b'8 ais16 ~ |
  ais fis ais cis eis8 dis16 cis |
  bis gis bisis gisis cisis ais dis bis |
  eis,16 gis'8 fis16 eis dis cisis b |
  ais16 gisis bis aisis cis bis cisis bisis |
  dis2 |
}
\new Staff { \key cis \major s4 s2*15 }
\new Staff { \key cis \major \clef bass s4 s2*15 }
>>