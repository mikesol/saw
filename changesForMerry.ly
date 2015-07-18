%{
Saponification
Prestidigitation
Demobilisation
Personification
Desertification
Collectivization
Identification
Initialization
Acclimatisation
Tintinnabulation
Authentification
Medicamentation
Detoxification
Internalization
Misrepresentation
Depolarization
Syllabification
Prenotification
Experimentation
Commercialization
Dehumanization
Disqualification
Concentralization
Pharyngealization
Computerization
Humidification
Disorganisation


....   not procrastination

Destigmatization
Diversification
Democratization
Delocalisation
Objectification
Reharmonisation (!)
Dichotomisation
Nongratification
Mythologization

% Parsimoniousness
% Anticholinergic
% fundamentalism
% demisemiquaver
% are you for -- 
  | get -- ting chemiluminescence
%}

\version "2.19"
\include "defs-devel.ly"

unfolds = {
  \repeat unfold 73 { \repeat unfold 4 { \unfoldSwing #200 } }
  \repeat unfold 2 { \repeat unfold 3 { \unfoldSwing #200 } }
  \repeat unfold 34 { \repeat unfold 4 { \unfoldSwing #200 } }
  \mark "unswung"
  \set Score.tempoWholesPerMinute = #(ly:make-moment 100 2 0 0)
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
  ees8 bes'8 r bes r bes r bes8 ~ | %bes r c bes aes g f |
  
  bes4. r8 g4 r8 ees |
  \times 2/3 { g8 aes a } bes g ees c bes g |
  g' f4 r8 r aes, \times 2/3 { c ees f } |
  bes bes, aes' bes g ees bes aes |
  
  g ees'4 b8 d c aes ees |
  b'8 c4 bes8 \times 2/3 { aes c ees } bes' aes |
  g bes g e c d e c |

    %pickupz
      f4 r c'4. bes8 |

  aes8 g f d ~ d4 r4 |
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
  ees8 r ees r ees r r4 |
  ees8 f4 ges8 ~ ges f8^\mordent ees c |
  ees ees c g bes ees f, g |
  aes f c' bes r c bes aes |
  g ees4 g8 bes ees4 c8 |
  r d4 ees8 ~ ees bes bes aes |
  g ees aes a bes ees, g f ~ |
  f ees^\mordent d ees e f ges g  |
  aes aes ges f ees f b, c |
  \time 6/8
  aes4. aes4. |
  c4. c4. |
  \time 4/4
  aes'8 aes ges f ees f b, c |
  aes4. aes8 ~ aes ees'8 d c |
  R1*31 |
  r2 r8 bes'4 bes8 ~ |
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
  R1*8 |
  <bes c ees g>2 <cis e g bes> |
  <ees g a d> <d fis gis a> |
  <ees g bes des> <g bes des e> |
  <aes c ees g> <a b dis fis> |
  <g bes d f> <d f g bes> |
  <c d fis a> <bes des e aes> |
  <aes c ees g> <g a cis e> |
  <aes bes d f> <aes c d fis> |
  <g b d f g> r |
  R1 |
  <e' g bes d>2 r |
  R1 |
  <ees g a c>2 r |
  R1 |
  <d f a cis>2 r |
  R1 |
  R1*17 | 
  R2.*2 |
  R1*26 |
  <bes c ees g>2 <a c ees ges> |
  <aes c ees f> <d f aes b> |
  <c ees g bes> <e aes bes d> |
  <ees f aes c> <aes c d g> |
  <g bes c ees> <ees g bes c> |
  <c ees aes> <g bes des e> |
  <aes c es g> <a c d f> |
  <des f g b> <b d e gis> |
  %%%
  <e gis ais d>1 |
  <dis g a cis> |
  <aes' c d g>2 <fis a b dis> |
  <g b d e> <e g a cis> |
  <d fis gis c>1 |
  <cis f g b>2 <g' bes des ees> |
  <b, dis fis a>1 |
  <c ees f aes> |
  %%%
  <d fis gis a>2 <c ees ges a> |
  <des f g bes> <f bes des ees> |
  <cis e fis a> <b d f aes> |
  <e fis a c> <bes d e aes> |
  <a cis dis g>1 |
  <aes c d fis>2 <d f g bes> |
  <g, b cis e>1 |
  <fis a c ees>2 <b dis fis a> |
  %%%%
  <ees, g aes c>1 |
  <f aes bes d>2 <a cis ees g> |
  <d fis gis cis> <c e fis a> |
  <d f aes b> <b d e g> |
  %%%
  <aes c d g>1 |
  <bes d e g>2 <d f g b> |
  <cis f g bes> <g a cis e> |
  <c ees ges a> <ges a c ees> |
  <bes d ees g> <c ees ges> |
  <aes ces des f> <d fis gis c> |
  <c ees g bes> <e aes bes d> |
  <ees f a c> <aes c d g> |
  <g bes c ees> <ees g bes c> |
  <c ees g> <g bes des e> |
  <aes c ees g> <f aes bes d> |
  <g bes des e> <e g bes c> |
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
  ees8 r ees r ees r r4 |
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
  << \new Staff \with {alignAboveContext="realBass" } { \clef bass \melTwoFullClean }
    \relative c, {
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
  in -- cin -- di -- a -- ry spa -- ces for -- cing malls to close and un -- cles be -- ckon -- ing child -- ren to the door.
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- a -- teur out
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
  %Betch -- ya mam -- ma told ya

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

  Hot! Hot! Hot!
  Ho dee ho
  He was a wi -- zard of a wiz and he was steal -- in' the show
  He's on the go
  Hea -- vens no, he starts to blow
  The la -- dies love it when he wags to and fro
  Oh how he gave it to me

  Wi -- zard ne -- ver o -- pens up on Sun -- day
  (Sun -- day)
  Cra -- zy how I'm meet -- ing him on Tues -- day, which rhymes with

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

\score {
<<
  \new Staff \with {midiInstrument=#"alto sax" } \new Voice = "mel" << { \melody } { \unfolds } >>
  \new Lyrics \lyricsto #"mel" { \mellyr }
  \new PianoStaff <<
    \new Staff \up
    \new Staff = "realBass" \down
  >>
>>
\midi{}
\layout{}
}