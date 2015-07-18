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
  s1*32 |
  \mark "reswung"
  \repeat unfold 16 { \repeat unfold 4 { \unfoldSwing #200 } }
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
In the mer -- ry old land of \tag #'oz { Oz }
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

fuckingCrazy = \relative c'' {
  bes4 bes8 ~ |
  bes4 ~ \times 2/3 { bes4 ees,8 } e16 fis16 ais cis \times 2/3 { a4 dis,8 } | %1
  \times 2/3 { e4 fis8 } \times 2/3 { r4 cis8 } d16 e fis a c8 c | %2
  c8. f,16    g bes g d    cis c g a   b c d dis | %3
  e8. a,16 \times 2/3 { bes8 d f } \times 2/3 { fis8 f8 e } \times 2/3 { r4 bes'8 } | % 4
  \times 8/9 { bes4 a16 c  bes f des c   a b d f   g8 g } | %5
  g8. b16    f e d b   \times 2/3 { g8 a cis }   e8 r16 b | %6
  \times 2/3 { fis'8 gis a } e16 d c a \times 2/3  { b8 c dis } \times 2/3 { e8 r8 fis } | % 7
  g16 gis e16 d    gis, b cis e   fis g d b   g a b dis | %8
  e16 r8. \times 2/3 { a4 fis8 } e16 d bes r \times 2/3 { r8 bes'8 g8 } | % 9
  f16 d c bes \times 2/3 { g8 r f } \times 4/5 { g16 bes d g8 g g r16 } | % 10
  r gis16 a fis16    e d b a     bes c d e    \times 2/3 { f8 fis8 g } | % 11
  \times 2/3 { r8 c,8 d } \times 2/3 { f g a, } \times 2/3 { bes c d } \times 2/3 { f g a, } | % 12
  bes16 c d f    \times 2/3 { b8 a e8 } f16 fis g e   c b bes d | % 13
  e8 r16 gis,16    a b cis e   \times 8/9 { a8 gis   e16 f e b a } | % 14
  d16 r cis16 g  \times 2/3 { a8 b cis } \times 2/3 { fis fis fis } \times 2/3 { r8 gis4 } | % 15
  fis16 c b dis   e b bes d   ees8. fis16    gis, ais b d | % 16
  \times 2/3 { dis8 cis r }   r16 g aes bes   c ees f aes   des4 ~ | % 17
  des4 ces8. r16 \times 4/7 { ees,8 e g b d4 c8 } | % 18
  bes16 g f ees    bes c ees f   a2 ~ | % 19
  a8 bes4. ~ bes4. aes8 ~ | % 20
  \times 8/9 { aes8. g16   aes16 c f, ees   c d dis e   f8 r16 c16 d f } | % 21
  fis16 r g8 g g   aes16 c g f   b, c d dis | % 22
  %%%%e8 r16 b   cis dis e fis     \times 4/5 { gis16 gis, a b   c cis d dis e r } | % 23
  e8 r16 b   cis dis e fis     gis16 gis, a b   cis dis e r | % 23
  r a, bes e    aes8. ges16   des16 c aes f   e fis gis b | % 25
  %%%%\times 8/9 { d8. c16 bes16 g f ees   e fis gis ais   c8 r16 f,16   a c } | % 26
  d8. c16    bes16 g f ees   e gis ais c   r16 f,16 a c   | % 26
  ees16 d bes aes   g aes bes ees   e8 r   r16 bes c e | % 26
  fis16 d bes c   e16 r bes'8   bes8.    d16  \times 4/5 { bes g e d c } | % 27
  \times 4/5 { a16 g a b d }   fis8 r16 c   bes'8 bes    \times 4/5 { bes  c16 d bes } | % 28
  f16 d c bes   g bes c ees    \times 2/3 { bes'8 r c } d16 bes g d | % 29
  c ees f g   bes8 r   a16 bes c16 d    bes a aes r | % 30
  r8 c16 d ~ d bes a c16 \times 2/3 { d8 bes bes } r16 c8 d16 ~ | % 31
  d bes g f d c e g ~ g fis a ees ~ \times 4/5 { ees fis a ees ees } |
}

alsoFundamentalism = \lyricmode {
  al -- so fun -- da -- men -- ta -- li -- sm
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
\alsoFundamentalism
}

hotHotHotWords = \lyricmode {
  Hot! Hot! Hot!
  Ho dee ho
  He was a wi -- zard of a wiz and he was steal -- in' the show
  He's on the go
  Hea -- vens no, he starts to blow
  The la -- dies love it when he wags to and fro
  Oh how he gave it to me
  Wi -- zard don't take cus -- to -- mers on Sun -- day
}

yes = \lyricmode {
  Oh joy
  What ju -- bi -- la -- tion we are show -- ing
  What pau -- ci -- ty of doubt and glee
    that's flow -- ing in our mar -- row
    with a ter -- ri -- fy -- ing rage
    that mag -- ni -- fies hap -- pi -- ness
  What great cor -- nu -- co -- pi -- a of plea -- sance
    that es -- capes my veins
    and co -- vers me with
    ef -- ful -- gent light
  It pe -- ne -- trates ev -- ry hole that I've made in you
  And bur -- rows un -- re -- mit -- ting like a mag -- got through my wea -- ther bea -- ten skin
  What fe -- li -- ci -- ty
  What ex -- hi -- la -- ra -- ting cheer
  Un -- brid -- led re -- lent -- less mirth
  I ca -- te -- go -- ri -- cally en -- dorse this gay pre -- di -- ca -- ment
  This o -- ther way
  This ab -- sence of a self
  This hor -- ri -- ble in -- tru -- sion
  This pan -- de -- mo -- ni -- um that burns my face
  Ex -- traor -- di -- na -- ry  can -- dor strok -- ing my trem -- bling thighs
  Feel -- ing play -- ful -- ly quiz -- zi -- cal
  Love en -- er -- gi -- zing sen -- ti -- men -- tal moods and
    tap -- ping on my fore -- arm
  Un -- like the kil -- ling of a dol -- phin
  This dream is eu -- pho -- ric
  Smear -- ing all the co -- lors of my bright spi -- rit
  A gen -- u -- ine re sha -- ping of my lungs
  And of my feet
  Ec -- sta -- sy si -- phon -- ing the nec -- tar of my spine
  Such ge -- ne -- ro -- si -- ty
  Such o -- ver -- whel -- ming hope
  Ra -- di -- ate, shine, and flic -- ker like a bur -- ning wad of flesh
  Mur -- der me with in -- tran -- si -- gent verve
  Ren -- der me im -- po -- tent with ti -- til -- la -- ting lust
  Fon -- dle me rough -- ly like a buck
  Won -- der and cu -- ri -- os -- i -- ty
  Pour -- ing out of my mouth
  What sin -- gu -- lar mi -- ra -- cle
  Ra -- vag -- ing my se -- de -- ta -- ry lips
  De -- flo -- wer -- ing my an -- scil -- la -- ry hairs
  Ut -- ter -- ly in -- cre -- du -- lous
  Fes -- tive if not ex -- u -- ber -- ant
  Win -- some is how I'd ca -- te -- go -- rize this mer -- ry e -- ner -- gized state
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
  \relative c'' {
    R1*9
    g1 ( f aes g ges f )
    R1*3 |
    a8 a r4 r2 |
    R1*2 |
    g8 g r4 r2 |
  }
  R1*2
  \relative c'' {
    r2 ges |
    f b |
    bes d |
    c g' |
    ees c |
    g e |
    g f |
    b aes |
    d1-\bendAfter #3 |
    R1 |
    r4 e,4 ~ e2 ~ |
    e8 r r4 r2 |
    fis1 |
    r2. f4 ~ |
    f1 |
    r2. ees4 ~ |
    ees4. des8 ~ des2 |
    r2 e ~ |
    e1 |
    r4 cis4 ~ cis2 ~ |
    cis r |
    fis1 |
    r4. e8 ~ e2 |
    R1 |
    r8 g ~ g4 ~ g2 |
    R1 |
    r4 f2. |
    r2. d4 ~ |
    d2 r |
    r4 e2. |
    r2 fis ~ |
    fis4 r4 r4 g ~ |
    g2. r4 |
    r2 e2 ~ |
    e2 r |
    r4 c2. |
    r2 fis2 ~ |
    fis4 r r g ~ |
    g r4 r r8 g ~ |
    g2 ~ g8 aes4 bes8 |
  }
  \relative c'' {
    ees4. bes8 \times 2/3 { g aes bes } g ees |
    bes' aes4 f8 aes c bes aes |
    g bes f' ees d c bes g |
    aes c g' f r ees r d |
    r8 ees4 bes8 \times 2/3 { g aes bes } g ees |
    bes' aes8 f g aes bes c aes |
    g bes des c bes g f bes |
    g ees aes g ~ g des' c bes |
  }
  \relative c'' {
    bes1\startTrillSpan |
    bes |
    bes |
    bes |
    bes |
    bes |
    bes |
    bes |
  }
  \relative c'' {
    r8\stopTrillSpan d r b r f' r e |
    r c r aes r g'4 d8 |
  }
}

sopranoWords = \lyricmode {
  \badbadboy
  \antiphonal
  door
  \jazzOneChaser
  \jazzTwoWords
  \hotHotHotWords
  Cra -- zy how I'm meet -- ing him on Tues -- day, which rhymes with
  ooo
  Wi -- zard
  of Oz
  Think some -- thing's bur -- ning in my heart
  So strong I can't con -- tain it now
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
    g fis|
    f8 e r ees d des r4 |
    R1 |
    r8 a aes g r2 |
    R1 |
    r2. r8 ees |
    d cis r4 r2 |
    R1 |
    R1 |
    \clef bass
    r2 r8 a gis g |
    R1 |
    R1 |
    R1 |
    R1 |
    r4. ees8 d des r4 |
    R1 |
    R1 |
    R1 |
    R1 |
    \clef treble
    r2 d'8 bes aes g |
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
  R1*9 |
  \relative c' {
    ees1 ( d f ees ~ ees d )
    R1*3 |
    e8 e r4 r2 |
    R1*2 |
    f8 f r4 r2 |
  }
  R1*2
  \relative c' {
    r2 e |
    ees aes |
    g bes |
    aes d |
    c bes |
    f des |
    ees d |
    g f |
    e1-\bendAfter #-3 |
    R1 |
    r4 c4 ~ c2 ~ |
    c8 r r4 r2 |
    bes1 |
    r2. a4 ~ |
    a1 |
    r2. g4 ~ |
    g4. f8 ~ f2 |
    r2 cis' ~ |
    cis1 |
    r4 a4 ~ a2 ~ |
    a r |
    d1 |
    r4. cis8 ~ cis2 |
    R1 |
    r8 ees ~ ees4 ~ ees2 |
    R1 |
    r4 d2. |
    r2. bes4 ~ |
    bes2 r |
    r4 c2. |
    r2 bes ~ |
    bes4 r4 r4 bes ~ |
    bes2. r4 |
    r2 c ~ |
    c2 r2 |
    r4 a2. |
    r2 d2 ~ |
    d4 r r ees ~ |
    ees r4 r r8 ees ~ |
    ees2 ~ ees8 f4 g8|
  }
  \relative c' {
    r8 fis8 r g r bes r c |
    r aes r ees' d c bes g |
    ees'4. bes8 \times 2/3 { g aes bes } g ees |
    bes' aes8 f g aes c bes aes |
    \times 2/3 { g4 ees bes' } \times 2/3 { g d' bes } |
    aes8 g f g aes bes c d |
    ees4. bes8 \times 2/3 { g aes bes } g ees |
    bes' ees, c' bes aes g f bes |
  }
  \transpose c c'' \removeWithTag #'long \theme
}

mezzoWords = \lyricmode {
  \badbadboy
  \antiphonal
  door
  \jazzOneChaser
  He loves words that end with ee like
  Bun -- gee %both
  and grun -- gy % marie
  %and spon -- gy % mike
  and lun -- gi % marie
  %and pun -- gy % mike
  and jun -- ji % marie
  %and dun -- gey % mike
  and fun -- gi % marie
  %it's fun -- "ghi" % mike
  you're stu -- pid % marie
  %I'm lea -- ving % mike
  lu -- mi -- nes -- cence
  \alsoFundamentalism
  \hotHotHotWords
  (Sun -- day)
  Cra -- zy how I'm meet -- ing him on Tues -- day
  ooo
  Wi -- zard
  of Oz
  Think some -- thing's bur -- ning in my heart
  So strong I can't con -- tain it now
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
    d8 des r4 r2 |
    r8 c b bes r2 |
    R1 |
    r4 r8 ges f e r4 |
    R1 |
    R1 |
    r2 r8 c b bes |
    R1 |
    R1 |
    R1 |
    \clef bass
    r2. r8 ges8 |
    f e r4 r2 |
    R1 |
    R1 |
    R1 |
    R1 |
    r8 c b bes r2 |
    R1 |
    r2. f'8 f8 |
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
  \relative c' {
    R1*9
    c1 ( ~ c  d ~ d c ~ c ) |
    R1*3 |
    d8 d r4 r2 |
    R1*2 |
    d8 d r4 r2 |
  }
  R1*2
  \relative c' {
    \clef treble
    r2 c |
    c f |
    ees aes |
    f c' |
    bes g |
    ees bes |
    c c |
    f d8
  }
  \fuckingCrazy
  \relative c'' {
    r8 bes8 r bes r g f ees |
    f c4 aes'8 g e f d |
    \clef "treble_8"
    des c bes g bes ees g, ees |
    ees'4. bes8 \times 2/3 { g aes bes } g ees |
    bes' g f ees f ees4 des8 |
    c8 aes \times 2/3 { c ees f } bes aes4 bes8 |
    g ees d bes bes' g4 ees'8 ~  |
    ees4. bes8 \times 2/3 { g aes bes } g ees |
  }
  \relative c' {
    r8 ees d c bes \Red c bes aes |
    g \Black f' ees d c \Red ees d c |
    bes \Black g' f ees d \Red bes aes g |
    f \Black ees' d c bes \Red c bes aes |
    g \Black g' f ees <\tweak color #red bes d > \rred aes \rred g <\tweak color #red f d'> |
    c' bes <\tweak color #red f aes> \rred ees \rred d <\tweak color #red c f'> ees' <\tweak color #red bes d> |
    \rred aes <g \tweak color #red  ees'> <\tweak color #red f d'> <\tweak color #red aes c> <\tweak color #red g bes> <\tweak color #red f aes'> <\tweak color #red ees g'> <\tweak color #red d' f>
    <\tweak color #red c ees> <\tweak color #red bes g'> <\tweak color #red aes f'> <\tweak color #red c ees> <\tweak color #red bes d> <\tweak color #red aes f'> <\tweak color #red g ees'> <\tweak color #red f d'>
  }
}

altoWords = \lyricmode {
  \jazzOneWords
  \jazzWordsStaggerOne
  \jazzOneChaser
  He loves words that end with ee like
  Bun -- gee %both
  %and grun -- gy % marie
  and spon -- gy % mike
  %and lun -- gi % marie
  and pun -- gy % mike
  %and jun -- ji % marie
  and dun -- gey % mike
  %and fun -- gi % marie
  it's fun -- "ghi" % mike
  %you're stu -- pid % marie
  I'm lea -- ving % mike
  nes -- cence
  \alsoFundamentalism
  \hotHotHotWords
  (Sun -- day)
  Cra -- zy how I'm meet -- ing him on Tues
  ooo
  Wi -- zard
  of Oz
  Think some -- thing's bur -- ning in my heart
  So strong I can't con -- tain it
  \yes
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
  \relative c' {
    R1*2
    aes1 ( bes ces bes a g )
    R1*3 |
    c8 c r4 r2 |
    R1*2 |
    bes8 bes r4 r2 |
  }
  R1*2
  \relative c' {
    r2 a |
    aes d |
    c e |
    ees aes |
    g ees |
    c g |
    aes a |
    des b8
  }
  \transpose c c, \fuckingCrazy
  \relative c' {
    r4 c bes g8 ees'8 ~ |
    ees4. bes8 \times 2/3 { g aes bes } g ees |
    bes' aes8 g f c' bes aes g |
    f' ees d c bes aes g' d |
    f8 ees4 bes8 des c bes g |
    ees'4. bes8 \times 2/3 { g aes bes } g ees |
    bes'8 aes f c' r bes r aes |
    g d' r bes r f r d |
  }
  \relative c' {
    r2 r8 c bes aes |
    g r8 r4 r8 ees d c |
    bes r8 r4 r8 bes aes g |
    f r8 r4 r8 c bes aes |
    g r r4 bes8 aes g f |
    r4 f8 ees d c r bes' |
    aes g f aes g f ees d' |
    c bes aes c bes aes g f |
  }
}

tenorWords = \lyricmode {
  \jazzOneWords
  \antiphonal
  \keepWithTag #'oz \themeWords
  \removeWithTag #'disqualification \jazzTwoWords
  \keepWithTag #'oz \themeWords
  he gave to me Wi -- zard
  Cra -- zy how I'm meet -- ing him on Tues -- day which
  \removeWithTag #'oz \themeWords
  ooo
  Wi -- zard
  of Oz
  Think some -- thing's bur -- ning in my heart
  So strong I can't con -- tain it
  \yes
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
  r8 g4 ees8 aes ees a bes |
  r ees, \times 2/3 { g aes bes } c8 bes aes f |
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
  \transpose c c, \removeWithTag #'short \theme
  \relative c { aes g f | }
  \relative c, {
    ees4 f g ees |
    f aes g f |
    g ees bes' g |
    f c' bes aes |
    g d' fis, c' |
    f, g aes c |
    bes c aes bes |
    g ees g bes |
  }
}

bassWords = \lyricmode {
\keepWithTag #'oz \themeWords
\badbadboy
\repeat unfold 90 ○
Liked to fash -- ion rhymes with ee like
bun -- gee grun -- gy spon -- gy
lun -- gi pun -- gy jun -- ji dun -- gey
cog -- ni -- tive -- ly
e -- so -- te -- ric
ab -- la -- tive -- ly
e -- pi -- me -- ric
cau -- sa -- tive -- ly
e -- xo -- sphe -- ric
op -- ta -- tive -- ly
i -- so -- mer -- ic
di -- a -- ste -- re -- oi  -- so -- me -- ric
at -- mo -- sphe -- ric
mas -- se -- te -- ric
me -- ta -- me -- ric
Hot! Hot!
Ho ho
Wiz wiz
Steal show
go no
starts blow
love it
gave it right to me wiz
cra -- zy how I'm meet -- ing him on
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
