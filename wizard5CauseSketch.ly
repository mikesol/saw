#(set-global-staff-size 15)

vOne = \relative c' {
  R1 |
  e16-.^\p^\< e-. e-. e-. e4^\mf s2 |
  s1 |
  s1 |
  s1 |
  s2. ais'16-. ais-. ais-. ais-. |
  ais4 ~ ais8 a gis16 ais a8 gis8 g |
  fis4 s2. |
  s2. r16 cis dis e |
  eis16 eis eis eis eis4 ~ eis8 e dis16 eis e8 |
}

vTwo = \relative c' {
  R1 |
  r4 dis16-. dis-. dis-. dis-. dis4 r |
  r16 d e eis fis-. fis-. fis-. fis-. fis4. r8 |
  r16 cis dis e f-. f-. f-. f-. f4. e8 |
  ees16 f e8 ees d cis c gis'16-. gis-. gis-. gis-. |
  gis4 ~ gis8 g fis16 gis g8 fis8 f |
  e8 f16 fis g4 ~ g4 s4 |
  b16-. b-. b-. b-. b8 ais8 a16 b ais8 a gis16 ais |
  a8 gis g16 a gis8 g fis eis fis |
  g4. r8 r2 |
  
}

vThree = \relative c' {
  \tempo 4=52
  c16-.^\p^\< c-. c-. c-. c4^\mf^\> ~ c8 b-. bes16^\mp c b8-. |
  bes-. a-. gis8 a16 ais b8 c16 cis d8 cis |
  c8 cis d cis c16-. c-. c-. c-. c4 ~ |
  c8 b8
}

vFour = \relative c' {
  r4 a16-.^\p^\< a-. a-. a-. a4.^\mf^\> gis8 |
  g fis f8^\mp fis16 g gis8 a16 ais b16-. b-. b-. b-. |
  b8 bes8 a16 b bes8 a8 gis g16 a gis8 |
  g fis g8 gis16 a ais8 b16 c cis-. cis-. cis-. cis-. |
  cis4. c8 b16 cis c8 b bes |
  a8 ais16 b c8 cis16 d dis
}

vFive = \relative c' {
}


\score {
  <<
    \new Staff \with { midiInstrument = #"flute" } \vOne
    \new Staff \with { midiInstrument = #"oboe" } \vTwo
    \new Staff \with { midiInstrument = #"clarinet" } \vThree
    \new Staff \with { midiInstrument = #"french horn" } \vFour
    \new Staff \with { midiInstrument = #"bassoon" } \vFive
  >>
  \layout{}
  \midi{}
}