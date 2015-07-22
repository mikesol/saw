\version "2.19"

melOne = \relative c, {
  \clef "bass"
  \tempo 2=100
  \times 2/3 { f4 r a } \times 2/3 { r c r } |
  \times 2/3 { bes4 r c } \times 2/3 { r a r } |
  \times 2/3 { g4 r g } \times 2/3 { r f r } |
  \times 2/3 { f4 r a } \times 2/3 { r c r } |
  \times 2/3 { bes4 r c } \times 2/3 { r f, r } |
  \times 2/3 { a4 r c } \times 2/3 { r f r } |
  \times 2/3 { d4 r e } \times 2/3 { r f r } |
  \times 2/3 { bes,4 r a } \times 2/3 { r a r } |
  \times 2/3 { bes4 r g } \times 2/3 { r f r }  |
}

melOneLonger = \relative c, { 
  \clef "bass"
  \tempo 2=100
  \times 2/3 { f4 r a } \times 2/3 { r c r } |
  r2 \times 2/3 { r4 bes r } |
  \times 2/3 { c4 r a } \times 2/3 { r g g } |
  \times 2/3 { f4 f f } \times 2/3 { r a r } |
  \times 2/3 { c r bes } r2 |
  \times 2/3 { r2 c4 } \times 2/3 { r f, r } |
  \times 2/3 { r a c } \times 2/3 { r f r } |
  \times 2/3 { d r e } \times 2/3 { r f r } |
  \times 2/3 { bes,4 bes a } \times 2/3 { a a r }  |
  \times 2/3 { bes4 r g } \times 2/3 { r f r }  |
  R1 |
  \times 2/3 { ees,8 r g r bes r } \times 2/3 { r4 aes8 r bes r } |
  \times 2/3 { g8 r f f ees ees } \times 2/3 { ees8 r g8 r bes r } |
  \times 2/3 { aes8 r r2 } \times 2/3 { bes8 r ees,8 r r g } |
  \times 2/3 { bes r ees r c r } \times 2/3 { d r ees r aes, aes }  |
  \times 2/3 { g g g r aes r} \times 2/3 { f r ees2 } |
}

melOneLongerClean = \relative c, { 
  \clef "bass"
  \tempo 2=100
  \times 2/3 { f4^\f r a } \times 2/3 { r c r } |
  r2 \times 2/3 { r4 bes r } |
  \times 2/3 { c4 r a } \times 2/3 { r g g } |
  \times 2/3 { r4 f f } \times 2/3 { r a r } |
  \times 2/3 { r2 bes4 } r2 |
  \times 2/3 { r2 c4 } \times 2/3 { r f, r } |
  \times 2/3 { r a c } \times 2/3 { r f r } |
  \times 2/3 { d r e } \times 2/3 { r f r } |
  \times 2/3 { bes,4 bes a } \times 2/3 { r a r }  |
  \times 2/3 { r4 r g } \times 2/3 { r f r }  |
  \times 2/3 { r2 bes4^\p } r2 |
  \times 2/3 { ees,8 r g r bes r } \times 2/3 { r4 aes8 r bes r } |
  \times 2/3 { g8 r f f ees r } \times 2/3 { r4 g8 r bes r } |
  r2 \times 2/3 { bes8 r ees,8 r r g } |
  \times 2/3 { bes r ees r c r } \times 2/3 { r4 ees8 r aes, aes }  |
  \times 2/3 { g g g r aes r} \times 2/3 { f r ees2 } |
}

melTwo = \relative c {
  r4 a c r |
  r c a g8 g |
  r8 f f r a4 c |
  r8 bes4 r8 r4 c |
  r a c f |
  r e f bes,8 bes |
  r8 a a4 bes g |
  r f r bes |
  r4 g4 bes r4 |
  aes8 bes4 g8 ~ g f4 f8 |
  ees8 ees ees4 g8 bes4 aes8 |
  r2. bes4 |
  ees,4. g8 bes4 ees |
  c8 d4 ees8 r aes,4 aes8 |
  g g g4 aes f |
  ees1 |
}

melTwoFull = \relative c, {
  f4 a c r |
  bes c a g8 g |
  f8 f f r a4 c |
  bes2. c4 |
  f,4. a8 c4 f |
  d e f bes,8 bes |
  a8 a a4 bes g |
  f r bes r |
  ees,4 g4 bes r4 |
  aes8 bes4 g8 ~ g f4 f8 |
  ees8 ees ees4 g8 bes4 aes8 ~ |
  aes2. bes4 |
  ees,4. g8 bes4 ees |
  c8 d4 ees8 r aes,4 aes8 |
  g g g4 aes f |
  ees1 |
}

melTwoFullClean = \relative c {
  r4 a^\p c r |
  bes c a g8 g |
  r8 f f r a4 c |
  bes4 r r c4 |
  f,4. a8 c4 f |
  d e f bes,8 bes |
  a8 a a4 bes g |
  r8 f4 r8 bes4 r |
  r4 g4 bes r4 |
  aes8 bes4 g8 ~ g f4 f8 |
  ees8^\f ees ees4 g8 bes4 aes8 |
  r2. bes4 |
  ees,4. g8 bes4 ees |
  c8 d4 ees8 r aes,4 aes8 |
  r g g4 aes f |
  R1 |
}

%%%%%%%
%first draft
\score {
<<
  \new Staff << \new Voice { \voiceOne \transpose c c' \melOne } \\ \new Voice { \voiceTwo \melTwo } >>
>>
  \midi{}
  \layout{}
}

\score {
<<
  \new Staff << \new Voice { \voiceOne \melOne } \\ \new Voice { \voiceTwo \melTwo } >>
>>
  \layout{}
  \midi{}
}

%%%%%%%
% full
\score {
<<
  \new Staff << \new Voice { \voiceOne \transpose c c' \melOneLonger } \\ \new Voice { \voiceTwo \melTwoFull } >>
>>
  \midi{}
  \layout{}
}

\score {
<<
  \new Staff << \new Voice { \voiceOne \melOneLonger } \\ \new Voice { \voiceTwo \melTwoFull } >>
>>
  \layout{}
  \midi{}
}


\score {
<<
  \new Staff \new Voice { \clef bass \voiceTwo \melTwoFullClean }
  \new Staff \new Voice { \voiceOne \melOneLongerClean }
>>
  \layout{}
  \midi{}
}

