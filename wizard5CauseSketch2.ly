#(set-global-staff-size 15)

vOne = \relative c' {
  R1 |
  e16-.^\p^\< e-. e-. e-. e4^\mf r2 |
  r2. d8 dis |
  e16-. e-. e-. e-. e4 r16 eis fis fisis gis-. gis-. gis-. gis-. |
  gis4. g8 fis16 gis g8 fis eis ~ |
  eis16-. eis-. eis-. eis-. eis8 e ees d ees r |
  s2. r16 cis dis e |
  eis16 eis eis eis eis4 ~ eis8 e dis16 eis e8 |
}

vTwo = \relative c' {
  R1 |
  r4 dis16-. dis-. dis-. dis-. dis4 r |
  r4 r16 d e eis fis-. fis-. fis-. fis-. fis4 ~ |
  fis8 f e16 fis f8 e ees8 ~ ees4 |
  d16 d d d d4 ~ d8 r b'16-. b-. b-. b-. |
  b4. ais8 a16 b ais8 a gis16 ais |
  a8 gis g16 a gis8 g fis eis fis |
  g4. r8 r2 |
  
}

vThree = \relative c' {
  \tempo 4=52
  c16-.^\p^\< c-. c-. c-. c4^\mf^\> ~ c8 b-. bes16^\mp c b8-. |
  bes-. a-. gis8 a16 ais b8 c16 cis d8 cis |
  c16 d cis8 c b ais8 b c16 c c c |
  c4. b8 bes2 |
  r4 cis16-. cis-. cis-. cis-. cis4. r8 |
  r8 dis16-. dis-. dis8 d cis4 r |
}

vFour = \relative c' {
  R1 |
  r2 d16-. d-. d-. d-. d4 ~ |
  d8 r8 r4 r2 |
  eis4 dis16-. dis-. dis-. dis-. dis4. r8 |
  r2 c16-. c-. c-. c-. c4 |
  r2 c16-. c-. c-. c-. c4 ~ |
  c8 b bes a ais b c b |
  bes4
}

vFive = \relative c' {
  r4 a16-.^\p^\< a-. a-. a-. a4.^\mf^\> gis8 |
  g fis f8^\mp fis16 g gis8 a16 ais b16-. b-. b-. b-. |
  b8 bes8 a8 aes g8 gis a4 ~ |
  a8
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