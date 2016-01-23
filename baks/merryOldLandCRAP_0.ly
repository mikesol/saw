\version "2.17.0"
\include "defs-devel.ly"
\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
  %max-systems-per-page = #2
}
maybeStemUp =  { %{\stemUp%} }
maybeStemDown =  { %{\stemDown%} }
maybeStemNeutral = { %{\stemNeutral%} }
#(ly:set-option 'point-and-click #f)

MyRed = \Red
MyBlack = \Black
myred = \once \override NoteHead.color = #red
myblack = \revert NoteHead.color
%MyRed = \revert NoteHead.color
%MyBlack = \revert NoteHead.color
%myred = \revert NoteHead.color
%myblack = \revert NoteHead.color

\header {
  title = "The Merry Old Land of Oz" %(1)"
  subtitle = \markup { for The Bird }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 4/4
  \tempo "Sit swagrfårs bytn" 4=200
  %\partial 4
  \repeat unfold 73 { \repeat unfold 4 { \unfoldSwing #200 } }
  \time 6/8
  \repeat unfold 2 { \repeat unfold 3 { \unfoldSwing #200 } }
  \time 4/4
  \repeat unfold 34 { \repeat unfold 4 { \unfoldSwing #200 } }
  \mark "unswung"
  \set Score.tempoWholesPerMinute = #(ly:make-moment 100 2 0 0)
  
}

prefatoryMatter = {
  \key ees \major
  #(set-accidental-style 'modern-cautionary)
}

jazzOne = \relative c' {
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
  ees8  
}

jazzOneWords = \lyricmode {
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
  in -- cin -- di -- a -- ry spa -- ces for -- cing malls to close and un -- cles be -- ckon -- ing child -- ren to the door.
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- a -- teur out
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
}

jazzTwo = \relative c'' {
bes8 r bes r bes r bes8 ~ | %bes r c bes aes g f |
  
  bes4. r8 g4 r8 ees |
  \times 2/3 { g8 aes a } bes g ees c bes g |
  g' f4 r8 r aes, \times 2/3 { c ees f } |
  bes bes, aes' bes g ees bes aes |
  
  g ees'4 b8 d c aes ees |
  b'8 c4 bes8 \times 2/3 { aes c ees } bes' aes |
  g bes g e c d e c |

    %pickup
      f4 r c'4. bes8 |

  aes8 g f d ~ d4 r4 |
}

jazzTwoAlternate = \relative c' {
bes8 r bes r bes r bes8 ~ | %bes r c bes aes g f |
  
  bes4. r8 ees4 r8 bes |
  \times 2/3 { ees8 f fis } g ees c aes g ees |
  ees' d4 r8 r f, \times 2/3 { aes c d } |
  g g, f' g ees c aes f |
  
  ees c'4 g8 b aes f c |
  g'8 ees4 g8 \times 2/3 { f aes c } g' f |
  e g e c aes g f aes |
    %pickup
      d4 r aes'4. g8 |

  f8 ees d c ~ c4 r4 |
}

jazzThree = \relative c' {
    r8 b \times 2/3 { cis dis gis } c b4 d8 ~ |

  d c aes g ~ \times 2/3 { g4 d' c } |
    \times 2/3 { aes g4. b,8 } \times 2/3 { c ees g } c bes |

  aes g ees c ~ c aes \times 2/3 { c ees f } |
    bes aes4 f8   d ais \times 2/3 { b d f } |
  a8 g4 ais,8 \times 2/3 { b d f } a8 g ~ |
  g ais, \times 2/3 { b d f } a8 g4 ais,8 |
  \times 2/3 { b d f } a8 g8 ~ g8 ais,8 \times 2/3 { b d f } |
  a8 g4 ais,8 \times 2/3 { b d f } a8 g ~ |
  g ais, \times 2/3 { b d f } a8 g4 ais,8 |
  \times 2/3 { b d f } a8 g8 ~ g8 ais,8 \times 2/3 { b d f } |
  a8 g4 ais,8 \times 2/3 { b d f } a8 g ~ |
  g ais, \times 2/3 { b d f } a8 g4 ais,8 |
  \times 2/3 { b d f } a8 g8 ~ g8 ais,8 \times 2/3 { b d f } |
  a8 g4 r8 r2 |
  r2 r8 ais,8 \times 2/3 { b d f } |
  a8 g4 b,8 \times 2/3 { cis e fis } b8 a ~ |
  a ais, \times 2/3 { b d f } a8 g4 ais,8 |
  \times 2/3 { b d f } a8 g8 ~ g8 ais,8 \times 2/3 { b d f } |
  a8 g4 ais,8 \times 2/3 { b d f } a8 g ~ |
  g ais, \times 2/3 { b d f } a8 g4 ais,8 |
  c b ees g f d c bes |
  ees f g e f aes c d |
}

jazzTwoWords = \lyricmode {
  Hey hey hey hey, no,
  The Wi -- zard of Oz, he was an a -- ca -- de -- mic
  Al -- ler -- gic to wor -- king if it meant he'd lift a fin -- ger
  The Wi -- zard was a swin -- ger
  That ten -- ded to lin -- ger
  In his of -- fice mul -- ling o -- ver books

  He held all of the keys
  om -- ni -- vor -- ous -- ly read dic -- tion -- a -- ries,
  just to show off
  he liked to re -- cite six syl -- la -- ble nouns,
  es -- pe -- cial -- ly con -- cepts, you know,

De -- mo -- bi -- li -- sa -- tion
Per -- so -- ni -- fi -- ca -- tion
Col -- lec -- ti -- vi -- za -- tion
Hu -- mi -- di -- fi -- ca -- tion
I -- ni -- tia -- li -- za -- tion
Au -- then -- ti -- fi -- ca -- tion
Mis -- re -- pre -- sen -- ta -- tion
I -- den -- ti -- fi -- ca -- tion
Dis -- or -- ga -- ni -- sa -- tion
Trans -- mo -- gri -- fi -- ca -- tion
Pha -- ryn -- gea -- li -- za -- tion
Me -- di -- ca -- men -- ta -- tion
De -- ser -- ti -- fi -- ca -- tion
not pro -- cras -- ti -- na -- tion
Re -- har -- mo -- ni -- sa -- tion
Dis -- qua -- li -- fi -- ca -- tion
Ex -- pe -- ri -- men -- ta -- tion
Com -- mer -- cia -- li -- za -- tion
Syl -- la -- bi -- fi -- ca -- tion
De -- hu -- ma -- ni -- za -- tion


while ad -- ding che -- mi -- lu -- mi -- nes -- cence
al -- so fun -- da -- men -- ta -- li -- sm
}

hotHotHotWords = \lyricmode {
  Hot! Hot! Hot!
  Ho dee ho
  He was a wi -- zard of a wiz and he was steal -- in' the show
  He's on the go
  Hea -- vens no, he starts to blow
  The la -- dies love it when he wags to and fro
  Oh how he gave it to me
}

soprano = { %\autoBeamOff
  \prefatoryMatter
  R1*7 |
  \jazzOne
  \relative c' {
    aes8 r g r f r g |
    R1*8 |
    g'2 bes |
    d ais |
    des e |
    g fis |
    f b, |
    a aes |
    g e |
    f fis |
    d8 d4 r8 r2 |
    R1 |
    d'8 d4 r8 r2 |
    R1 |
    c8 c4 r8 r2 |
    R1 |
    cis8 cis4 r8 r2 |
    R1 |
    R1 |
    r2 f, ~ |
    f aes |
    g bes |
    aes g |
    f aes |
    g8 g r4 aes8 aes r4 |
    bes8 bes r4 aes8 aes8 r8 bes |
    bes8 r c r bes r r4 |
    c8 des4 ees8 ~ ees des c aes |
    bes bes aes g   g g f g |
    f f aes g r aes g f |
    ees8 ees4 g8 bes bes4 aes8 |
    r8 bes4 c8 ~ c f,8 f f |
    ees8 ees ees f g c, ees ees ~ |
    ees ees\mordent d ees e f ges g |
    aes aes ges f ees f b, c |
    aes4. aes4. |
    R2. |
    aes'8 aes ges f ees f b, c |
    aes4. aes8 ~ aes ees'8 d c |
  }
}

sopranoWords = \lyricmode {
  \jazzOneWords
  Hey hey hey hey
  ooo... \repeat unfold 15 \skip 1
  \repeat unfold 4 { da da }
  ooo... \repeat unfold 7 \skip 1
  \repeat unfold 4 { da da }
  da
  \hotHotHotWords
}

mezzo = {
  \relative c'' { %\autoBeamOff
    \prefatoryMatter
    R1*8 |
    g1 |
    b |
    f |
    e2 fis |
    dis'1 |
    b |
    cis2 a |
    b bes |
    f e |
    gis g |
    fis ees |
    d aes' |
    e fis |
    d f |
    e dis |
    g d |
    c ges' |
    f b |
    bes d |
    c g' |
    ees c |
    g e |
    g f |
    ees8
  }
  \jazzTwo
  \jazzThree
  \relative c'' {
    ees8 r ees r ees r r4 |
    ees8 f4 ges8 ~ ges f8^\mordent ees c |
    ees ees c g bes ees f, g |
    aes f c' bes r c bes aes |
    g ees4 g8 bes ees4 c8 |
    r d4 ees8 ~ ees bes bes aes |
    g ees aes a bes ees, g f ~ |
    f ees^\mordent d ees e f ges g  |
    aes aes ges f ees f b, c |
    aes4. aes4. |
    c4. c4. |
    R1 |
    R1 |
  }
}

mezzoWords = \lyricmode {
  ooo...
  \repeat unfold 41 \skip 1
  \jazzTwoWords
  \hotHotHotWords
}

alto = {
  \relative c' { %\autoBeamOff
    \prefatoryMatter
    R1*8 |
    a2 cis |
    fis1 |
    b, |
    bes2 c |
    gis'1 |
    fis |
    f2 e |
    fis ees |
    ces bes |
    e c |
    cis c |
    bes ces |
    bes a |
    bes aes |
    c cis |
    d bes |
    bes a |
    c d |
    c aes' |
    ees c' |
    bes g 
    ees des |
    c bes |
    bes8
  }
  \clef "treble_8"
  \jazzTwoAlternate \transpose c c, \jazzThree
  \relative c' {
    ees8 r ees r ees r r4 |
    \clef treble
    aes8 aes4 c8 ~ c aes8 g f |
    g g ees ees ees ees c ees |
    c c f c r ees c c |
    ees ees4 ees8 ees8 g4 f8 |
    r f4 aes8 ~ aes d,8 c c |
    aes c c c   ees aes, c bes ~ |
    bes c bes c des c bes b |
    \clef "treble_8"
    c c ees des c des g, ees |
    c4. c4. |
    aes'4. aes4. |
    R1 |
    R1 |
  }
}

altoWords = \lyricmode {
  ooo...
  \repeat unfold 42 \skip 1
  \jazzTwoWords
  \hotHotHotWords
}

tenor = \relative c {
  %\autoBeamOff
  \prefatoryMatter
  \clef "treble_8"
  R1*7 |
  \transpose c c, \jazzOne
  \relative c' {
    g8 r ees r d r ees |
    R1*8 |
    ees'2 e |
    g fis |
    bes g |
    c a |
    g f |
    fis des |
    c cis |
    d c |
    b8 b4 r8 r2 |
    R1 |
    e8 e4 r8 r2 |
    R1 |
    ees8 ees4 r8 r2 |
    R1 |
    f8 f4 r8 r2 |
    R1 |
    R1 |
    r2 c2 |
    d1 |
    ees2 fes |
    ees1 |
    d1 |
    ees8 ees r4 f8 f r4 |
    g8 g r4 f8 f r g |
    g8 r aes r g8 r r4 |
    ees8 ees4 ees8 ~ ees ees ees ees |
    ees ees bes bes bes bes aes bes |
    aes aes aes aes r aes bes c |
    bes bes4 bes8 bes8 ees4 c8 |
    r8 d4 ees8 ~ ees bes bes aes |
    g ees aes a bes ees, g f ~ |
    f ees\mordent d ees e f ges g |
    aes aes ges f ees f b, c |
    aes4. aes4. |
    R2. |
    aes'8 aes ges f ees f b, c |
    aes4. aes8 ~ aes ees'8 d c |
  }
}

tenorWords = \lyricmode {
  \jazzOneWords
  Hey hey hey hey
  ooo... \repeat unfold 15 \skip 1
  \repeat unfold 4 { da da }
  ooo... \repeat unfold 5 \skip 1
  \repeat unfold 4 { da da }
  da
  \hotHotHotWords
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
bass = \relative c, { %\autoBeamOff
  \prefatoryMatter
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
  ees,1 | % bes'4 c8 bes aes g f |
  ees4 r4 r2 |
  R1 |
  r4 g f aes |
  g b bes e, |
  a aes f aes |
  g d fis f |
  b fis f a |
  aes fes r2 |
  ees2 g |
  f aes |
  g bes |
  aes ces |
  bes d |
  c ges |
  f a |
  bes aes |
  g4 b d e |
  f e d b |
    c e g a |
    bes a g e |
  f a, c d |
  ees d c a |
    bes d f e |
    ees ces bes d |
  ees2 g, |
  aes a |
  bes b |
  c ges |
  f a |
  bes e, |
  ees4 g f aes |
  g bes aes f |
  ees8 r r4 r ees8 r |
  aes4 r8 aes ~ aes4 r4 |
  g4 r8 g ~ g4 r4 |
  aes4 r8 f ~ f4 r |
  g4 r8 g ~ g4 r4 |
  aes4 r8 f ~ f4 r |
  bes4. c8 bes aes g f |
  ees8 ees8 r ees f4 g |
  aes1 |
  R2. |
  R2. |
  aes2. r4 |  
  aes4 r8 aes ~ aes4. r8 |
  bes8 r bes r bes4 r |
  bes8 bes4 bes8 ~ bes bes bes bes |
  bes bes bes4 bes8 bes4 bes8 ~ |
  bes8 bes4 c8 bes aes4 r8 |
  r g4 g8 aes8 r4 aes8 |
  r4. a8 r a4 a8 |
  bes8 bes aes bes g ees c bes |
  R1 |
  r8 ees r ees' \times 2/3 { ees, g bes } ees g, |
  aes f c' bes ~ bes c bes aes |
  r8 g4 ees8 aes ees a bes ~ |
  bes ees, \times 2/3 { g aes bes } c8 bes aes f |
  \times 2/3 { g4 ees' g, } \times 2/3 { aes ees' aes, } |
  \times 2/3 { a ees' a, } \times 2/3 { bes ees c } |
  bes8 ees, g bes a aes g ges |
  f e r4 r2 |
  << \new Staff \with {alignAboveContext="realBass" } \new Voice = "tempBassVoice" { \clef bass \maybeStemDown \melTwoFullClean \maybeStemNeutral }
    \new Lyrics \with { alignAboveContext="realBass" }  \lyricsto "tempBassVoice" { \lyricmode {
  ha ha
  ho ho ho and a  ple of
  tra la las
  that's how we work the day a -- way
  in the mer -- ry old land of oz
  oh
  ha ha
  ho ho ho an a cou -- ple of tra la las
  that's how we work the day a -- way in the ry old land of
}}
    \relative c, {
      \maybeStemUp
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
  } >>
  \maybeStemNeutral
  b'4 f fis dis |
  a' gis e c' |
  b f a aes |
  g d' b bes |
  aes f' d c |
  e a, g e' |
  cis g fis ais |
  e a b aes |
  g c cis d |
  a aes f d' |
  e b bes d |
  c g fis ais |
  b g fis f |
  e bes' gis a |
  g dis' e ais, |
  c b f' bes, |
  g' fis c b |
  bes f' e a, |
  aes d e fis |
  c b fis a |
  aes g e ees |
  c' b aes g |
  ces aes g b |
  bes ges f aes |
  g d' a f' |
  bes, g' ees a, |
  g fis c' cis |
  d bes f' des |
  c g' fis bes, |
  a aes e' g, |
  f' g, ges ees' |
  d c bes aes |
}

bassWords = \lyricmode {
Ha ha ha
Ho ho ho
And a cou -- ple of tra la las
That's how we laugh the day a -- way
In the mer -- ry old land of Oz
ooo... \repeat unfold 41 \skip 1
hey
\repeat unfold 21 "()"
ooo...
\repeat unfold 15 \skip 1
\repeat unfold 32 "()"
\repeat unfold 20 "()"
Hot! Hot!
Ho ho
Wiz wiz
Steal show
go no
starts blow
love it \repeat unfold 9 "()"
ooo...
ooo...
"()" "()"
Ha ha ha
Ho ho ho de
And a cou -- ple of tra la las no we're sing -- in
How we laugh day way in the
Mer -- ry old __ _ land __ _ of __ _
Oz
\repeat unfold 49 \skip 1
Ha ha ha
Ho Ho ho
and a ple of tra las
that's how we work the
day a -- way in the mer old of Oz oh
Ha ha ha
Ho ho ho
And a cou tra la
That's how we laugh the day way
In the mer -- ry old land of Oz
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      } {
        \marks
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \mezzo
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \alto
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \tenor
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff = "realBass" \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \bass
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override TimeSignature #'whiteout = ##t
    }
    \context {
      \Lyrics
      %\override LyricText #'whiteout = ##t
      \override LyricText #'layer = #6
    }
    \context {
      \Score
      \remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}

%{
%%% piano redux
#(set-global-staff-size 20)

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \soprano \marks >> }
      \new Voice = "2" { \voiceTwo \mezzo }
      \new Voice = "3" { \voiceThree \alto }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenor }
      \new Voice = "5" { \voiceTwo \bass }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override TimeSignature #'whiteout = ##t
    }
    \context {
      \Lyrics
      %\override LyricText #'whiteout = ##t
      \override LyricText #'layer = #6
    }
    \context {
      \Score
      \remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}
%}
%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      } {
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \bass
      }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
  >>
  \midi {}
}
