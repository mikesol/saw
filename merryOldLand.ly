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
  \set Score.tempoWholesPerMinute = #(ly:make-moment 200 4 0 0)
  
}

prefatoryMatter = {
  \key ees \major
  #(set-accidental-style 'modern-cautionary)
}

jazzOne = \relative c' {
  r2 ees8 g, \times 2/3 { aes b cis } |
  fis e r8 g ~ g a16 g e8 b |
  d %{gis,%} r b fis' f d b g |
  cis b r g \times 2/3 { gis b cis } fis e |
  r8 a, \times 2/3 { cis e fis } a %{e%} r \times 2/3 { g a g } |
  fis dis cis %{ais%} r fis, gis'4 dis8 |
  e c %{a%} r e, g fis' eis cis |
  ees %{aes, %} r bes f' des bes %{g%} r ees, |
  g b d fis8 r g r a ~ |
  a e \times 2/3 { g gis a } fis d ais fis |
  a %{ c cis e r a, \times 2/3 { b d e } |
  fis8 %} r8 r4 r2 | r8 ais'4 fis8 \times 2/3 { a e d } c aes |
  a %{ b ees f8 r ees4 g8 ~ |
  g8 bes %} r8 r4 r2 | r4 g'8 ges f ees c g |
  aes %{ c d c f %} r8 r4 r8 d c g |
  aes %{ r8 r4 | r8 %} %{ ees f ees g %} r8 r4 r8 aes' g  ges8 |
  f %{ r8 r4 | r8 b \times 2/3 { g ges f } d %} r8 r4 r8 c bes ges |
  g r \times 2/3 { ees g bes } d ees, des' c ~ |
  c r \times 2/3 { f, aes c } g' c, f ees |
  g bes g ees d bes des c ~ |
  c g' f ees c aes g f |
  g bes f' ees d c bes g |
  aes c ees f r aes4 f8 |
  g g, \times 2/3 { aes c ees } g aes, f' ees ~ |
  ees8  
}

jazzOneAlt = \relative c'' {
  r2 g8 ees \times 2/3 { e g a } |
  d c r8 e ~ e fis16 e cis8 gis |
  a %{e%} r fis d' cis a g e |
  b' g r d \times 2/3 { e g b } d cis |
  r8 e, \times 2/3 { g b cis } fis %{cis%} r \times 2/3 { e fis e } |
  dis b gis %{e%} r dis e'4 b8 |
  c a %{fis%} r c e, dis' d ais |
  b %{f%} r g d' b g %{e%} r c, |
  e g b dis8 r e r fis ~ |
  fis1-\bendAfter #-3
}

theme = \relative c {
  ees4 g bes2 |
  aes8 bes4 g8 ~ g f4 f8 |
  ees ees ees4 g8 bes4 aes8 ~ |
  aes2 r4 bes |
  ees,4. g8 bes4 ees |
  c8 d4 ees8 ~ ees aes,4 aes8 |
  g g g4 aes f |
  \tag #'long { ees4 }
  \tag #'short { ees8 }
}

themeWords = \lyricmode {
Ha ha ha
Ho ho ho
And a cou -- ple of tra la las
That's how we laugh the day a -- way
In the mer -- ry old land of Oz
}

jazzOneWords = \lyricmode {
  Oz
  Oh what a de -- cei -- ver,
  Hi -- de -- ous -- ly un -- kind,
  Would -- n't help with your re -- gres -- sion
  Ne -- fa -- ri -- ous ar -- tist,
  Ma -- le -- vo -- lent tramp,
  Con -- jur -- ing i -- ma -- ges
  A shrewd en -- chan -- ter
  Un -- can -- ny, wic -- ked gent
  Vile im -- pos -- ter
  No more than a gut -- ter -- snipe
}
jazzWordsStaggerOne = \lyricmode {
  A fe -- lo -- ny was re -- por -- ted af
      %-- ter he left
         %And ev -- ry -- one doubt --
  ed er -- ro -- ne -- ous -- ly
  The vi
      %-- ru -- lent fac that he a --
  lone would tra -- vel to re -- mar
     %-- ka -- ble in -- cin --
  di -- a -- ry spa
     %--ces for -- cing hin
  ges closed and un
      %--cles be -- ckon -- ing child --
  ren to the door.
}
jazzOneChaser = \lyricmode {
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- a -- teur out
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
}
badbadboy = \lyricmode {
  Bad
  Bad
  Boy
  Ten -- der
  Down
  Deft
  Doub -- ting
  gut -- ter -- snipe
}
antiphonal = \lyricmode {
  ter -- he -- left and ev -- 'ry -- one doub
  lain -- ous fact that he a
  ka -- ble in -- cin
  ces for -- cing hin
  cles be -- con -- ing chil -- dren to the
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
    r8 b \times 2/3 { cis dis gis } c b4 d8 ~ |

  d c aes g ~ \times 2/3 { g4 d' c } |
    \times 2/3 { aes g4. b,8 } \times 2/3 { c ees g } c bes |

  aes g ees c ~ c aes \times 2/3 { c ees f } |
    bes aes4 f8   d ais 
    \times 2/3 { b d f } |
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
  a ais, \times 2/3 { b d f } a8 g4 \times 4/5 { ais,8 b32 ~ |
  b8.. \times 2/3 { d8 f a ~ a4 g8 ~ } g16 } ais,8 \times 2/3 { b d r } |
  f8 \times 2/3 { r8 a8-- g-- }  ais,8-. \times 2/3 { b-. d-. f-. } a8-. g-. |
  r8 g \times 2/3 { g g g } g8 g4 ais,8 |
  c b ees g f d c bes |
  ees f g e f aes c d |
}

jazzTwoAlt = \relative c' {
des8 r des r des r des8 ~ |
  
  des4. r8 ees4 r8 bes |
  \times 2/3 { ees8 f fis } g ees c aes g ees |
  ees' d4 r8 r f, \times 2/3 { aes c d } |
  g g, f' g ees c aes f |
  
  ees c'4 g8 b aes f c |
  g'8 ees4 g8 \times 2/3 { f aes c } g' f |
  e g e c aes g f aes |
    %pickup
      d4 r aes'4. g8 |

  f8 ees d c ~ c4 r4 |
      r8 g \times 2/3 { a c e } g fis4 a8 ~ |

  a fis e d ~ \times 2/3 { d4 bes' g } |
    \times 2/3 { fis d4. g,8 } \times 2/3 { a c ees } g f |

  ees d c aes ~ aes f \times 2/3 { aes c ees } |
    g f4 d8   c fis, \times 2/3 { g b d } |
  f8 e4 fis,8 \times 2/3 { g b d } fis e ~ |
  e fis, \times 2/3 { g b d } f8 e4 fis,8 |
  \times 2/3 { g b d } fis e8 ~ e8 fis,8 \times 2/3 { g b d } |
  f8 e4 fis,8 \times 2/3 { g b d } fis e ~ |
  e fis, \times 2/3 { g b d } f8 e4 fis,8 |
  \times 2/3 { g b d } fis e8 ~ e8 fis,8 \times 2/3 { g b d } |
  f8 e4 fis,8 \times 2/3 { g b d } fis e ~ |
  e fis, \times 2/3 { g b d } f8 e4 fis,8 |
  \times 2/3 { g b d } fis e8 ~ e8 fis,8 \times 2/3 { g b d } |
  f8 e4 r8 r2 |
  r2 r8 fis,8 \times 2/3 { g b d } |
  f8 e4 g,8 \times 2/3 { a cis dis } gis8 fis ~ |
  fis r8 r4 r4. \times 4/5 { fis,8 g32 ~ |
  g8.. \times 2/3 { b8 d fis ~ fis4 e8 ~ } e16 } fis,8 \times 2/3 { g b d } |
  f8 r e8-- fis,8-. \times 2/3 { g-. b-. d-. } fis-. e-. |
  r g, \times 2/3 { g g g } g8 g4 r8 |
  r4 c8 bes aes f ees d |
  c d ees fis d d ees d |
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
Com -- mer -- cia -- li -- za -- tion
Trans -- mo -- gri -- fi -- ca -- tion
Pha -- ryn -- gea -- li -- za -- tion
Me -- di -- ca -- men -- ta -- tion
De -- ser -- ti -- fi -- ca -- tion
not pro -- cras -- ti -- na -- tion
Re -- har -- mo -- ni -- sa -- tion
\tag #'disqualification { Dis -- qua -- li -- fi -- ca -- tion }
Ex -- pe -- ri -- men -- ta -- tion
%%%%
Dis -- or -- ga -- ni -- sa -- tion
Syl -- la -- bi -- fi -- ca -- tion
De -- hu -- ma -- ni -- za -- tion


\tag #'disqualification { while ad -- ding } che -- mi -- lu -- mi -- nes -- cence
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
  R1*8 |
  \relative c'' {
    r4 g4-^-. r2 |
    r8 b4-^-. r8 r2 |
    r4 f4-^-. r2 |
    e4-^-. r4 r8 a4-^-. r8 |
    r4. dis8-^-. r2 |
    r4 b4-^-. r2 |
    r8 cis4-^-. r8 r4 a4-^-. |
    r4. b8 r bes4 a8 ~ |
    a1-\bendAfter #-3 |
    r8 gis gis g r g \times 2/3 { g g g } |
    fis8 r8 r4 r2 |
    r8 c'8 c b r b4 c8 ~ |
    %%% undecided tie
    c8 c r4 r2 |
    r8 a8 a a aes r8 r4 |
    r8 c c c b r r4 |
    r8 b \times 2/3 { b b b } bes bes aes aes |
    g r \times 2/3 { g g g } bes bes bes aes ~ |
    aes r \times 2/3 { aes aes aes } c c c c |
    bes bes bes bes d d d c ~ |
    c c c c ces ces ces ces |
    bes bes bes bes beses beses beses beses |
    aes aes g f r f4 f8 |
    g g \times 2/3 { g g g } aes d, f g ~ |
    g 
  }
  \jazzTwo
  \relative c'' {
    ees8 r ees r ees r r4 |
    ees8 f ( ees ) ges8 ~ ges f8^\mordent ees c |
    ees ees c g bes ees f, g |
    aes f c' bes r c bes aes |
    g ees4 c8 bes' g4 c8 |
    r aes4 ees'8 ~ ees c bes aes |
    bes ees, c' b bes ees, d f ~ |
    f ees^\mordent d ees e f ges g  |
    aes aes ges f ees f b, c |
    %\time 6/8
    aes4. aes4. |
    R2. |
    %\time 4/4
    aes'8 aes ges f ees f b, c |
    aes4. aes8 ~ aes ees'8 d c |
  }
}

sopranoWords = \lyricmode {
  \badbadboy
  \antiphonal
  door
  \jazzOneChaser
  \jazzTwoWords
  \hothothot
}

mezzo = {
  \prefatoryMatter
  R1*8 |
  \relative c' {
    r4 a4-^-. r2 |
    r8 fis'4-^-. r8 r2 |
    r4 d4-^-. r2 |
    cis4-^-. r4 r8 fis4-^-. r8 |
    r4. gis8-^-. r2 |
    r4 c,4-^-. r2 |
    r8 d4-^-. r8 r4 e4-^-. |
    r4. e8 r ees4 cis8 ~ |
    cis1-\bendAfter #-3
    r8 e e dis r dis \times 2/3 { dis dis dis } |
    d8 r r4 r2 |
    r8 a' a gis r gis4 g8 ~ |
    %%%% undecided tie
    g g r4 r2 |
    r8 fis fis fis f r8 r4 |
    r8 aes aes aes g r r4 |
    r8 aes \times 2/3 { aes aes aes } g g f d |
    ees r8 \times 2/3 { ees ees ees } ges ges ges f ~ |
    f r \times 2/3 { f f f } aes aes aes aes |
    g g g g ges ges ges f ~ |
    f f f f aes aes aes aes |
    g g g g ges ges ges ges |
    f f ees c r ees4 ees8 |
    ees ees \times 2/3 { ees ees ees } d bes d ees ~ |
    ees r8 r4 r2 |
    R1*8 |
    ees2 g |
    a fis |
    b e |
    g fis |
    f8 e r ees d des r4 |
    r8 c b bes r2 |
    r8 a aes g r2 |
    r4 r8 fis f e r4 |
    r2. r8 ees |
    d des r4 r2 |
    r2 r8 c b bes |
    R1 |
    r2 r8 a aes g |
    R1 |
    r2. r8 ges |
    f e r4 r2 |
    R1 |
    r4. f8 fis g r4 |
    R1 |
    R1 |
    r8 gis a bes r2 |
    R1 |
    r2 d8 bes aes g |
    bes bes ees ces bes f' g f |
  }
  \relative c'' {
    bes8 r c r bes r r4 |
    c8 des4 c8 ~ c c bes aes |
    g g ees ees g g d ees |
    c c aes' ees r aes g f |
    ees8 c4 g8 g' ees4 aes8 |
    r f4 c'8 ~ c aes g f |
    g g aes g g ees d d ~ |
    d c^\mordent b des c ees d des |
    c c ees des c des g, g |
    \time 6/8
    f4. f4. |
    c'4. c4. |
    \time 4/4
    r2 c8 c ges' f |
    ees f b, c aes4. aes8 |
  }
}

mezzoWords = \lyricmode {
  \badbadboy
  \antiphonal
  door
  \jazzOneChaser
  \hothothot
}

alto = {
  \prefatoryMatter
  R1*7
  \jazzOne
  \relative c' {
    r8 r4 r2 |
    R1*8 |
    c2 e |
    ees d |
    f g |
    c dis |
    d8 des r c b bes r4 |
    r8 a aes g r2 |
    r8 ges f e r2 |
    r4 r8 ees d des r4 |
    r2. r8 c |
    b bes r4 r2 |
    r2 r8 a aes g |
    \clef "treble_8"  
    R1 |
    r2 r8 ges f e |
    R1 |
    r2. r8 ees8 |
    d des r4 r2 |
    R1 |
    r4. d8 ees e r4 |
    R1 |
    R1 |
    r8 f fis g r2 |
    R1 |
    r2. f8 f8 |
    g g bes aes g bes bes aes |
    \clef treble |
    g'8 r aes r g r r4 |
    ges8 aes ( ges ) beses8 ~ beses aes8 ges f |
    ees ees \clef "treble_8" g, bes g g aes g |
    f f f aes r aes bes c |
    c g4 g8 ees g4 aes8 |
    r8 c4 aes8 ~ aes8 c8 d ees |
    d c ees ees ees c c bes ~ |
    bes a aes bes a c b bes |
    aes aes bes g aes aes ees ees |
    ees4. ees |
    ges ges |
    r2. aes8 aes |
    ges f ees f b c aes4 |
  }
}

altoWords = \lyricmode {
  \jazzOneWords
  \jazzWordsStaggerOne
  \jazzOneChaser
  \hothothot
}

tenor = \relative c {
  %\autoBeamOff
  \prefatoryMatter
  \clef "treble_8"
  R1*7 |
  \transpose c c, \jazzOneAlt
  \relative c' {
    r8 b b c r c \times 2/3 { c c c } |
    c r8 r4 r2 |
    r8 d d cis r cis4 d8 ~ |
    % undecided tie
    d d r4 r2 |
    r8 c d c c r8 r4 |
    r8 ees f ees e r8 r4 | 
    r8 d \times 2/3 { d d d } c ees c c |
  }
  \removeWithTag #'long \theme
  \jazzTwoAlt
  \removeWithTag #'long \theme
  \relative c {
    r8 f4 g aes8 bes |
    c ees r4 r2 |
    R2. R2.
    r4 ees,8 ees ges f ees f |
    b8 c aes4 ~ aes8 aes4 ees'8 |
  }
  \removeWithTag #'long { \removeWithTag #'short \theme }
}

tenorWords = \lyricmode {
  \jazzOneWords
  \antiphonal
  \themeWords
  \removeWithTag #'disqualification \jazzTwoWords
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
bass = {
  \clef bass
    \prefatoryMatter
  \transpose c c, \removeWithTag #'short \theme

  \relative c, { %\autoBeamOff
    r4 r2 |
    r4 b'4-^-. r2 |
    r8 d4-^-. r8 r2 |
    r4 g,4-^-. r2 |
    c4-^-. r4 r8 g4-^-. r8 |
    r4. fis8-^-. r2 |
    r4 d'4-^-. r2 |
    r8 g,4-^-. r8 r4 c4-^-. |
    r4. a8 r aes4 g8 ~ |
    g8 g8 fis'4 d bes |
    cis b g a |
    fis gis a fis |
    c' fis aes, b |
    g fis f d' |
    c g b fis |
    gis f'  d fis, |
    b a e aes |
    ees f g ees |
    f g aes f |
    g aes bes g |
    f c' aes f |
    g d' bes g |
    aes bes f aes |
    bes aes8 bes g ees' c bes |
    ees ees g,4 aes bes |
    ees r4 r2 |
    R1 |
    r4 g, f aes |
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
    c4 g aes ges |
    f a c a |
    bes g f aes |
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
  ees8 r r4 r4 ees8 r |
  aes4 r8 aes ~ aes4 r4 |
  g4 r8 g ~ g4 r4 |
  aes4 r8 f ~ f4 r |
  g4 r8 g ~ g4 r4 |
  aes4 r8 f ~ f4 r |
  bes4 r bes r
  ees8 ees8 r ees, f4 g |
  aes2. r4 |
  R2. |
  R2. |
  R1 |
  aes8 aes aes aes c ees d c |
  bes8 r bes r bes4 r |
  bes8 bes4 bes8 ~ bes bes bes bes |
  bes bes bes4 bes8 bes4 bes8 ~ |
  bes8 bes4 c8 bes aes4 r8 |
  r g4 g8 ees8 r4 aes8 |
  r4. a8 r f4 f8 |
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
}

bassWords = \lyricmode {
\themeWords
\badbadboy
\repeat unfold 16 "○"
%{
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
%}
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
  \transpose c c \new ChoirStaff <<
    \new Staff \with { midiInstrument = #"alto sax" instrumentName = #"Marie" %shortInstrumentName = #"M."
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
    \new Staff \with { midiInstrument = #"trumpet" instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { midiInstrument = #"tenor sax" instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { midiInstrument = #"baritone sax" instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)" instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
