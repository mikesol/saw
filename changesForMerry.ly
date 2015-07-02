\version "2.19"
\include "defs-devel.ly"

unfolds = {
  \repeat unfold 256 { \unfoldSwing #200 }
}

melody = \relative c' {
  %r2 ees8 aes,8 \times 2/3 { c d ees } |
  %ges^\markup { b,a,cis,dis,fisis } fes8 r g ~ g a16 g e8 b |
  %ees bes ces f des bes aes f |
  %d' c r g \times 2/3 { aes bes c } ees des |
  %r8 bes \times 2/3 { c ees f } aes f \times 2/3 { ges aes ges } |
  %f d c bes a fis'4\trill e8 |
  %ees c aes e' ~ e d cis b |
  %cis a g d' b gis fis dis |
  %e gis b d r cis4 b8 |

  R1*7 |
  r2 ees8 g, \times 2/3 { aes b d } |
  fis e r8 g ~ g a16 g e8 b |
  d gis, a fis' f d c aes |
  d c r gis \times 2/3 { a c d } fis e |
  r8 b \times 2/3 { c e fis } a e \times 2/3 { g a g } |
  fis dis cis ais fis gis'4 dis8 |
  e c a e g fis' eis c |
  dis gis, ais eis' cis a fis e |
  a c e fis8 r g r a ~ |
  a e \times 2/3 { g gis a } fis dis cis fis, |
  a b cis e r a, \times 2/3 { b d e } |
  fis8 ais4 fis8 \times 2/3 { a f d } c g |
  a c ees f8 r ees4 g8 ~ |
  g8 bes g ges f ees c g |
  aes c d c f d c g |
  aes ees' f ees g aes g ges |
  f b \times 2/3 { g ges f } d c bes ges |
  g r \times 2/3 { ees g bes } d ees, des' c ~ |
  c r \times 2/3 { f, aes c } g' c, f ees |
  g bes g ees e c des c ~ |
  c g' f ees c aes g f |
  g bes f' ees d c bes g |
  aes c ees bes' r aes4 bes8 |
  g g, \times 2/3 { aes c ees } g aes, f' ees ~ |
  ees4 r2. | %bes r c bes aes g f |

  %aes fes ces des d f e d |
  %ees
}

melodyHotHotHot = \relative c' {
  ees4 ees ees r |
  ees8 f4 ges8 ~ ges f8^\mordent ees c |
  ees ees c g bes ees f, g |
  aes f c' bes r c bes aes |
  g ees4 g8 bes ees4 c8 |
  r d4 ees8 ~ ees bes' bes aes |
  g ees aes a bes ees, g f ~ |
  f ees^\mordent d ees e f ges g  |
  aes
}



up = \relative c' {
  \tempo 2=100
  \clef treble
  R1*8 |
  <a cis dis g>1
  <c e fis b>1
  <g b cis f>1
  <g bes c e>2 <c ees fis a> |
  <e gis ais dis>1 |
  <c e fis b> |
  <d f a cis>2 <bes d e a> |
  <c e fis b> <c ees g bes> |
  <ces des f a> <bes c e gis> |
  <cis e gis b> <a c ees g> |
  <cis e fis ais> <c ees ges a> |
  <g bes d f> <ces ees f aes> |
  <aes bes e g> <beses des fes ges> |
  <g bes d> <aes ces des f> |
  <g bes c e> <a cis dis g> |
  <c d g b> <bes d fis> |
  <bes c ees g> <a c ees ges> |
  <aes c ees f> <d f aes b> |
  <c ees g bes> <e aes bes d> |
  <ees f aes c> <aes c d g> |
  <g bes c ees> <ees g bes c> |
  <c ees g> <g bes des e> |
  <aes c ees g> <aes bes d f> |
  <g bes c ees>1
}

upHotHotHot = \relative c' {
}

down = \relative c, {
  \clef bass
  ees4 g bes2 |
  aes8 bes4 g8 ~ g f4 f8 |
  ees ees ees4 g8 bes4 aes8 ~ |
  aes2 r4 bes |
  ees,4. g8 bes4 ees |
  c8 d4 ees8 ~ ees aes,4 aes8 |
  g g g4 aes f |
  ees4 r4 r2 |
  b'1 |
  d |
  g, |
  c2 g |
  fis1 |
  d' |
  g,2 c |
  a aes |
  g c |
  ges f |
  d' aes |
  g des' |
  c ges |
  f b |
  bes a |
  e aes |
  ees g |
  f aes |
  g ges |
  f aes |
  g bes |
  aes c |
  f, bes |
  ees,4 r2. | % bes'4 c8 bes aes g f |
}

downHotHotHot = \relative c' {
}

mellyr = \lyricmode {
  Oz
  He was a be -- lie -- ver
  Hi -- de -- ous -- ly ro -- man -- tic that would help with your re -- gres -- sion
  Or give you a ses -- sion
  Oh what a pro -- fes -- sion
  Con -- jur -- ing i -- ma -- ges and lies
  Send in -- no -- cu -- ous re -- plies
  With a -- li -- bis that put him in the cas -- tle
  Snoo -- zing a -- way at ten
  A fe -- lo -- ny was re -- por -- ted af -- ter he left
  And ev -- ry -- one doubt -- ed er -- ro -- ne -- ous -- ly
  The vi -- ru -- lent fac that he a -- lone would tra -- vel to re -- mar -- ka -- ble
  In -- cin -- di -- a -- ry spa -- ces for -- cing malls to close and un -- cles be -- ckon -- ing child -- ren to the door
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- a -- teur out
  He did -- n't know it waas a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
  %Betch -- ya mam -- ma told ya
}

hotlyr = \lyricmode {
  Hot! Hot! Hot!
  Ho dee ho
  He was a wi -- zard of a wiz and he was steal -- in' the show
  He's on the go
  Hea -- vens no, he starts to blow
  The la -- dies love it when he wags to and fro
  The wi -- zard gave it to me
}

\score {
<<
  \new Staff \with {midiInstrument=#"alto sax" } \new Voice = "mel" << { \melody \melodyHotHotHot } { \unfolds } >>
  \new Lyrics \lyricsto #"mel" { \mellyr \hotlyr }
  \new PianoStaff <<
    \new Staff \up
    \new Staff \down
  >>
>>
\layout{}
\midi{}
}