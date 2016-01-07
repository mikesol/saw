\version "2.17.0"
\include "defs-devel.ly"
\include "stylesheet.ly"

%{
  one idea for the piece is that all the accompaniment is restricted to
  just the material in the beginning.
  i can't believe i've worked on this for two years without results and had
  this random idea on a TER to Saint-Omer at 8:12AM on Monday, December 14th.

  intro as planned
  C major wizard
  fugue on bass theme

  -intro
  .coy [maybe with slow]]
  .fugue
  .pedagogical
  .scat
  .montée
  -coda
%}


% oh the wiz is 5 halves in the space of three { x4 oh2 the4 wiz4 }

straight = \markup \italic "straight"
swung = \markup \italic "swung"
bouncy = \markup \italic "bouncy"
scat = \markup \italic "scat"
crooner = \markup \italic "crooner"
delicate = \markup \italic "delicate"
descant = \markup \italic "descant"

MyRed = \Red
MyBlack = \Black
myred = \once \override NoteHead.color = #red
myblack = \revert NoteHead.color
%MyRed = \revert NoteHead.color
%MyBlack = \revert NoteHead.color
%myred = \revert NoteHead.color
%myblack = \revert NoteHead.color

\header {
  title = "The Wonderful Wizard of Oz" %(1)"
  subtitle = \markup { for Art Tatum and The Bird }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 2/2
  \tempo "Allegro" 2=110
  \partial 4
  s4 |
  s1*132 |
  s2 \mark \markup \italic "accel." 
  \unfoldChange #220 #260 #12 |
  \mark \markup \italic "a tempo"
  \set Score.tempoWholesPerMinute = #(ly:make-moment 220 4 0 0)
  s1*34 |
  \break
  s1*31 \bar "|."
}

prefatoryMatter = {
  \key aes \major
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c'' { \autoBeamOff
  \prefatoryMatter
  r4 |
  r4 ees2^\descant^\f des4 |
  c4 \lo r8 \sh c ~ \lod c4. \sh bes8 ~ |
  \lo bes \sh aes ~ \lo aes \sh r aes2 |
  g4 f ~ \lo f8 \sh r8 r4 |
  r4 f ( ees ) des4 |
  c4 r4 ges' ( f ) |
  ees4 d4 g4 aes |
  bes g ees c^\fp^\< |
  des-_\mf-_ r \lo r8 \sh beses^\fp^\< ~ beses4 |
  aes-_\mf-_ r \lo c'8-- \sh c,8 ^\fp^\<~  c4 |
  aes\mf-_ r \lo r8 \sh a8^\fp^\< ~  a4 |
  bes4\mf-_ r \lo r8 \sh ees8^\fp^\< ~  ees4 |
  \times 2/3 { des4^\f r2 } \times 2/3 { r4 aes' f } |
  des4-. r \lo r8 \sh ges^\f ~ ges4 |
  g4 \lo f8 \sh f8 \lo ees8 \sh ees d4 |
  ees4 \lo ees8 \sh ees8 \lo r \sh ees--^\> ~ ees4 |
  ees4 \lo ees8 \sh ees \lo ees \sh ees ees4 |
  ees4 \lo ees8 \sh ees^\mf r2 |
  R1 |
  r4 fis4^\p \lo g8-. \sh fis^\mf--^\< ~ fis4 |
  g4-.^\f r r2 |
  r2 \lo r8 \sh a8^\sfz ~ a4 |
  f4^\f aes g g |
  \lo aes8 ( f4 ) \sh ges8 ~ \lo ges8 \sh ees8^\> ~ ees4 |
  \times 2/3 { d4 d d } \times 2/3 { d d d } |
  \times 2/3 { ees4 ees ees } \times 2/3 { d d d } |
  \times 2/3 { e e dis } \times 2/3 { d des bes^\p } |
  R1*3 |
  r2 g'8^\< [ b g b ] |
  g1^\>-\bendAfter #-3 |
  R1\! |
  r2 g^\fp ~ |
  g4 ges ~ ges^\< ges4 |
  \lo aes8^\f \sh aes8 r4 \lod r4. \sh bes8^\> ~ |
  \lo bes \sh bes \lo aes \sh aes \lo g \sh g \lo f \sh f^\mf |
  r4 d' ~ d c |
  \times 2/3 { bes2 bes bes } |
  bes4-. aes8 bes16 aes g4 f |
  ees d c d |
  bes8^\straight aes' g f ees r r4 |
  r8 ees^\p^\< d ees d ees d des |
  c4^\f^\swung ees c bes |
  \lo a8 ( ges'4 ) \sh f8 ~ \lo f \sh ees-> ~ ees4 |
  d4 f d c |
  \lo b8 ( aes'4 ) \sh g8 ~ \lo g  \sh f-> ~ f4 |
  g2.^\subPd^\< e4^\> |
  \lo f8-.^\mp \sh f-. r4 r2 |
  f2.^\p^\< dis4^\> |
  \lo e8-.^\mp \sh e-. r4 r2 |
  g2.^\p^\< gis4^\> |
  \lo a8-.^\mp \sh a-. r4 r2 |
  a2.^\p^\< ais4 |
  \lo b8-.^\mp \sh b-. r4 r2 |
  a2.^\p^\< aes4^\> |
  \lo g8-.^\mp \sh g-. r4 r2 |
  f2.^\p^\< fis4^\> |
  \lo g8-.^\mp \sh g-. r4 r2 |
  e2.^\p^\< e4 |
  \lo f8-. \sh f-. r4 fis4 \lo fis8 \sh e8^\f ~ ( |
  e2 a4 b |
  c2 a4^\> ) a |
  g4^\p^\< g aes \lo aes8 \sh aes | %<cis e g b>
  \lo g8 \sh g g4 \lo aes8 fis4 \sh g8^\f |
  \lo r8 d4 \sh g,8 \lo r8 d'4 \sh g,8 |
  \lo r8 d'4 \sh g,8 r2 |
  R1*8 |
  R1*3 |
  r4 c d g ~ |
  g4 r r4 f^\p^\<  |
  g a f4^\mp f4 | 
  e ees d cis |
  c2 d4 e |
  \lo fis8 \sh fis r4 r2 |
  \lodd r2.. \sh d8^\mp |
  a'4 \lo bes8 \sh bes8 \lo c \sh c d4 |
  \lo ees8 bes4 \sh g8 r4 \lo c8 \sh d |
  \lo c \sh bes r4 \lo bes8 \sh c \lo bes \sh aes |
  \lo r \sh f \times 2/3 { g aes a } \lo bes \sh a \lo aes \sh g ~ |
  \lo g f4 \sh bes ~ bes4 r |
  R1 |
  f2. d4 |
  \lo ees8 \sh ees r4 r2 |
  ees2. c4 |
  \lo d8 \sh d r4 r4 bes |
  ees4^\dim \lo f8 \sh f \lo g \sh g aes4 |
  bes4 \lo aes \sh g r4 \lo g \sh aes |
  \lo g \sh f r4 \lo f8 \sh g \lo f \sh ees |
  \lo r8 \sh bes \times 2/3 { ees f fis } \lo g \sh aes \lo g \sh f ~ |
  \lo f bes4 \sh ees,8^\p ~ ees2 |
  R1 |
  r2 \lo r8 \sh d^\mf^\cresc \lo ees \sh e |
  f4-. f-. g-. g-. |
  \lo g8 aes4 \sh bes  ~ \lo bes \sh ees^\ff \lo ees \sh ees |
  \lo ees \sh ees \lo ees \sh ees \lo ees \sh ees \lo ees \sh ees |
  \lo ees \sh ees \lo ees \sh ees \lo ees \sh r r4 |
  R1*7 |
  \lod r4. \sh b^\f \lo r \sh bes \lo r \sh a ~ |
  \lodd a2..^\>-\bendAfter #-2 \sh r8\! |
  \lo r8 \sh a^\mf \lo a \sh gis \lo r \sh gis \times 2/3 { gis gis gis } |
  \lo g8 \sh r r4 r2 |
  \lo r8 \sh c^\< \lo c \sh bes \lo r \sh bes \lo r \sh c ~ |
  \lo c^\f \sh c r4 r2 |
  \lo r8 \sh ces^\mp \lo ces \sh ces \lo bes \sh r r4 |
  \lo r8 \sh c^\mf \lo c \sh c \lo c \sh r r4 |
  \lo r8 \sh c^\mp^\< \times 2/3 { c c c } \lo bes \sh aes \lo g \sh f |
  g4^\f^\> \times 2/3 { g8 g g } \lo bes \sh bes \lo bes \sh aes^\mp ~ |
  \lo aes \sh r \times 2/3 { aes aes aes } \lo c \sh c \lo c \sh c |
  \lo bes^\< \sh bes \lo bes \sh bes \lo d \sh d \lo d \sh c^\!^\> ~ |
  \lo c-. \sh c \lo c \sh c \lo ces \sh ces \lo ces \sh ces |
  \lo bes^\mp \sh bes \lo bes \sh bes \lo beses \sh beses \lo beses \sh beses |
  \lo aes \sh aes \lo aes \sh f-. \lo r f4 \sh f8 |
  \lo g \sh g \times 2/3 { g g g } \lo aes \sh aes \lo f \sh g ~ |
  \lo g8 \sh bes8^\f \lo r \sh bes \lo r \sh bes \lo r \sh bes |
  R1 |
  \times 2/3 { d,4^\mp d d } \times 2/3 { e e e } |
  \times 2/3 { ees d ees } d des |
    c^\< d ees f |
    g2^\f (  ges ) |
    f4 g aes bes |
    c1^\> ~ |
    c2^\mp r |
    R1*2 |
    g,2^\< c |
    d^\> c |
    \times 2/3 { bes2^\mp bes'^\mf aes } \times 2/3 { g g f } |
    ees1^\> ~ |
    ees2 eeses^\< |
    ees fes^\> ~ |
    fes1^\mp |
    \times 2/3 { r2 eeses'^\mf deses } \times 2/3 { ces ces beses } |
    aeses1^\> ~ |
    aeses2 ges^\mp ~ |
    \times 2/3 { ges ges'^\f fes } |
    \times 2/3 { eeses deses ces } |
    \times 2/3 { beses aeses ges } |
    fes4 ges^\subPd \lo aeses8 \sh b^\sfz ~ b4 |
    c-. r4 r2 |
    r2 \lo r8 \sh c-. \lo r \sh ces-. |
    R1 |
    r2 \lo r8 \sh ces-. \lo r \sh bes-. |
    R1 |
    r2 \lo r8 \sh bes-. \lo r \sh bes-. |
    r4 ees2 des4 |
    c4 \lo r8 \sh c ~ \lod c4. \sh bes8 ~ |
    \lo bes \sh aes ~ \lo aes \sh r aes2 |
    g4 f ~ \lo f8 \sh r8 r4 |
    r4 f ( ees ) des4 |
    c4 r4 r2 |
}

sopranoWords = \lyricmode {
  \repeat unfold 5 { Oh, the Wiz }
  I could while a -- way
  If ev
  oh ev -- ver oh ev oh ev Be ev er oh ev
  Be -- cause of the Won -- der -- ful things he does.
  Be -- cause of the Won -- der -- ful things he does.
  My Wiz
  Be -- cause
  We're off to see the Wi -- zard
  the
  Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard of
  Wi -- zard
  no no dat bli -- zard
  ne -- ver would I ev -- er say the
  oh the Wiz oh the
  nign gen -- tle and ten -- der things he does the Wiz
  oh what a Wiz
  you know I'm say -- in' that
  We're off to see the Wi -- zard
  We're off to see the Wi -- zard
  We're
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  Wiz be -- cause
  be -- cause
  be -- cause of the Won -- der -- ful things he does
  be -- cause be -- cause be -- cause
  The Wi -- zard
  He is my Wiz, He is my Wiz, my Wi -- zard, my Wi -- zard
  be -- cause of the Won -- der -- ful things he does
  Won -- der -- ful things
  Won -- der -- ful things
  be -- cause of the Won -- der -- ful things he does
  He's my Wi -- zard
  He's my Wi -- zard
  Be -- cause of the Won -- der -- ful things he does
  Won -- der -- ful things
  Won -- der -- ful things
  Be -- cause of the Won -- der -- ful things he does
  and with his pimp -- led sows he's sing -- in' Biz, Oh what a Wiz,
  a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz
  cut -- ting Tom
  ter he left and ev -- 'ry -- one doubt
  ru -- lent fact that he a
  ka -- ble in -- cin
  ces for -- cing malls
  cles be -- co -- ning child -- ren to the door
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- at -- or out
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
  Hey! Hey! Hey! Hey!
  ev -- er oh ev -- er the Wi -- zard of Oz is one be -- cause be -- cause cause be -- cause be -- cause
  He's my Wi -- zard, Wiz
  Oh the Wiz, Oh the Wiz
  my Wi -- zard
  Oh the Wiz, Oh the Wi -- zard
  Oh the Wiz, Oh the Wiz, Oh the Wiz, my Wiz the Won
  the Won
  the Won
  the Won
  Oh the Wiz, Oh the Wiz, Oh the Wiz, Oh the Wiz
}

mezzo = \relative c'' { \autoBeamOff
  \prefatoryMatter
  r4 |
  g2.^\p^\delicate ees4 |
  \lo f8-. \sh f8-. r4 r2 |
  f2. des4 |
  \lo ees8-. \sh ees8-. r4 r2 |
  ees2. ees4 |
  \lo f8-. \sh f8-. r4 r2 |
  f2. fis4 |
  \lo g8-. \sh g8-. r4 r4 ges4^\fp^\< |
  f-.^\mf r \lo r8 \sh des^\fp^\< ~ des4 |
  c4-.^\mf r \lo r8 \sh ees^\fp^\< ~ ees4 |
  d4-.^\mf r \lo d'8 \sh d,^\fp^\< ~ d4|
  ees-.^\mf r \lo r8 \sh ges^\fp^\< ~ ges4 |
  \times 2/3 { f4^\f aes f } \times 2/3 { des des des } |
  \lo f8 ees4 \sh des8 \lo r8 \sh ees^\f ~ ees4 |
  d4 \lo c8 \sh c8 \lo bes8 \sh bes ces4 |
  bes4 \lo bes8 \sh bes8 r2 |
  R1 |
  R |
  aes'2.^\p^\< fis4^\> |
  \lo g8-.^\p \sh g-. r4 r2 |
  \times 2/3 { r4 ees' r } \times 2/3 { ees r ees } |
  r4 \lo ees8 \sh ees,8 \lo r \sh ges8^\sfz ~ ges4 |
  des4^\f ees ees ees |
  \lo ees8 ( des4 ) \sh c8 ~ \lo c \sh c8^\> ~ c4 |
  \times 2/3 { bes bes bes } \times 2/3 { c c c } |
  \times 2/3 { des des des } \times 2/3 { c c c } |
  \times 2/3 { cis d cis } \times 2/3 { c bes aes^\p } |
  R1*3 |
  r2 ees'8^\< [ g ees g ] |
  ees1^\>-\bendAfter #-3 |
  R1\! |
  r2. ees4^\fp ~ |
  << { ees2. ees4 } { s2 s2^\< } >> |
  \lo ees8^\f \sh ees8 r4 \lod r4. \sh f8^\> ~ |
  \lo f8 \sh f \lo ees \sh ees \lo d \sh d \lo c \sh c |
  \lo bes8^\mf \sh bes \lo r \sh ees ~ \times 2/3 { ees f ees } \lo d \sh cis |
  d4 \lo ees8 \sh ees \lo f8 \sh f \lo ees8 \sh ees |
  ees4 bes' ~ bes aes |
  \times 2/3  { g2 g f } |
  %ees4 r r2 |
  ees8 r r4 r8 aes^\straight g f |
  ees ees^\p^\< d ees d ees d ees |
  ees4^\f^\swung ees c bes |
  \lo a8 ( bes4 ) \sh  c8 ~ \lo c \sh c-> ~ c4 |
  bes4 f' d c |
  \lo b8 ( c4 ) \sh d8 ~ \lo d  \sh d-> ~ d4 |
  r4 e^\pp^\< ~ e2 ~ |
  e4^\> cis \lo d8-.^\mp \sh d-. r4 |
  r c ^\pp^\< ~ c2 ~ |
  << { c2. cis4 } { s4^\> s2^\pp s4^\< } >> |
  \lo d8-.^\mp \sh d-. r4 d2^\p^\< ~ |
  d4 dis^\> \lo e8-.^\mp \sh e-. r4 |
  r4 e^\pp^\< ~ e2 ~ |
  e4^\> f \lo fis8^\mp \sh fis r4 |
  r4 f^\pp^\< ~ f2 ~ |
  << { f2. e4 } { s4^\> s2^\pp s4^\< } >>  |
  \lo d8-.^\mp \sh d-. r4 d2^\p^\< ~ |
  << { d2. c4 } { s4^\> s2^\pp s4^\< } >> |
  \lo b8-.^\mp \sh b-. r4 b2^\p^\< ~ |
  b4 b c \lo ees8 \sh d8^\f ~ |
  d2 ( f |
  e g4^\> ) g |
  e4^\p^\< e f \lo f8 \sh f |
  \lo ees \sh ees ees4 \lo e8 ees4 \sh d8^\f |
  \lo r8 b4 \sh g8 \lo r8 b4 \sh g8 |
  \lo r8 b4 \sh g8 r2 |
  R1*8 |
  r4 \lo d''8^\mp \sh ees \lo d \sh c r4 |
  \lo c8 \sh d \lo c \sh bes \lo r8 \sh d, \times 2/3 { g gis a } |
  \lo bes \sh c \lo bes8 \sh a ~ \lo a d4 \sh g,8 |
  r8 bes \times 2/3 { g bes d } g4 \times 2/3 { g,8 bes d } |
  \lo g \sh aes \lo g \sh f \lo r \sh ees d4 |
  \lo ees8 c4 \sh d ~ \lod d4. \sh r8 |
  r4 bes^\pp^\< ~  bes2 ~ |
  bes2. gis4 |
  \lo a8-.^\mf \sh a-. \lo r \sh a,8^\mp d4 \lo e8 \sh e |
  \lo fis \sh fis g4 \lo a8 g4 \sh fis8 ~ |
  fis4 r r2 |
  \lodd r2.. \sh g,8 |
  c4 \lo d \sh d \lo ees \sh ees f4 |
  \lodd r2.. \sh bes,8 |
  g4 \lo aes \sh aes \lo bes \sh bes c4 |
  d4 \lo ees8 \sh d \lo r8 d4 \sh ees |
  r4 d ~ d r |
  r2. ees4 |
  c4 \lo d8 \sh d \lo ees \sh ees f4 |
  \lo g8 ges4 \sh f8 \lo r8 f4 \sh fis8 |
  g4 r r2 |
  ees4^\dim \lo f8 \sh f \lo g \sh g aes4 |
  \lo bes8 aes4 \sh g8 \lo r \sh f ~ f4 |
  ees1^\p |
  \lo ees8^\cresc ees4 \sh ees8 ~ \lo ees \sh ees8 \lo ees \sh ees |
  ees4 \lo f8 \sh f \lo g \sh g aes4 |
  \lo g8 f4 \sh ees r4 \lo g \sh aes |
  \lo g \sh f r4 \lo f8 \sh g \lo f \sh g ~ |
  g4 \times 2/3 { ees8 f fis } \lo g \sh g^\ff \lo g \sh g |
  \lo g \sh g  \lo g \sh g  \lo g \sh g \lo g \sh g |
  \lo g \sh g \lo g \sh g \lo g \sh r r4 |
  R1*7 |
    \lod r4. \sh fis^\f \lo r \sh f \lo r \sh e ~ |
    \lodd e2..^\>-\bendAfter #-2 \sh r8\! |
    \lo r8 \sh e^\mf \lo e \sh dis \lo r \sh dis \times 2/3 { dis dis dis } |
    \lo d8 \sh r r4 r2 |
    \lo r8 \sh ees^\< \lo ees \sh des \lo r \sh c \lo r \sh ees^\f ~ |
    \lo ees \sh ees r4 r2 |
    \lo r8 \sh f^\mp \lo f \sh f \lo e \sh r r4 |
    \lo r8 \sh ges^\mf \lo ges \sh ges \lo f \sh r r4 |
    \lo r8 \sh f^\mp^\< \times 2/3 { f f f } \lo e \sh e \lo e \sh f |
    ees4^\f^\> \times 2/3 { ees8 ees ees } \lo g \sh g \lo g \sh f^\mp ~ |
    \lo f \sh r \times 2/3 { f f f } \lo aes \sh aes \lo aes \sh aes |
    \lo g^\< \sh g \lo g \sh g \lo bes \sh bes \lo bes \sh aes^\!^\> ~ |
    \lo aes-. \sh aes \lo aes \sh aes \lo f \sh f \lo f \sh f |
    \lo g^\mp \sh g \lo g \sh g \lo ges \sh ges \lo ges \sh ges |
    \lo f \sh f \lo f \sh c-. \lo r c4 \sh c8 |
    \lo ees \sh ees \times 2/3 { ees ees ees } \lo d \sh d \lo d \sh bes ~ |
    \lo bes8 \sh ees8^\f \lo r \sh ees \lo r \sh ees \lo r \sh ees |
    R1 |
    r2 \times 2/3 { des4^\mp des c } |
    \times 2/3 { c c c } c4 b |
    bes^\< a aes cis |
     \times 2/3 { d2^\f^\> c e2 } |
    \times 2/3 { f2 fis g  }
    \times 2/3 { d2 f^\mf ees } \times 2/3 { d d c } |
    b2^\> c | d b^\mp ~ |
    \times 2/3 { b aes'^\mf g } \times 2/3 { f f ees } |
    d1^\> ~ |
    d1 ~ |
    d1 |
    r2 fes^\mp |
    \times 2/3 { r2 des'^\mf ces } \times 2/3 { beses beses aeses } |
    ges1^\> ~ |
    ges |
    \times 2/3 { f2^\mp fes'^\mf eeses } \times 2/3 { deses deses ces } |
    \times 2/3 { beses aeses aes } |
    \times 2/3 { ges aeses'1^\p^\< ~ } |
    << { aeses ~ } { s2 s2^\f^\> } >> |
    aeses4-. deses,,^\p \lo des8 \sh ges^\sfz ~ ges4 |
    f4-. r r2 |
    r2 \lo r8 \sh f \lo r8 \sh ges |
    eeses4^\mf \lo fes8 \sh fes \lo ges \sh ges aeses4 |
    \lo beses8 aeses4 \sh ges8 \lo r8 \sh ges-> \lo r8 \sh f^\p^\< ~ |
    f2. des4^\< |
    \lo ees8-.^\mp \sh ees-. r4 \lo r8 \sh d-.-> \lo r8 \sh ees^\mf ~ |
    ees4 \lo f \sh f \lo g \sh g aes |
    \lo bes8 aes4 \sh g r4 \lo g8 \sh aes |
    g2.^\p^\< ees4 |
  \lo f8-.^\mf \sh f8-. r4 r2 |
  f2.^\< des4 |
   ees4-.^\f r r2 |
}

mezzoWords = \lyricmode {
  \repeat unfold 4 { He's my Wi -- zard }
  If ev
  oh ev
  oh ev -- er oh ev Be ev -- er oh ev -- er oh things he does
  Be -- cause of the Won -- der -- ful things he does.
  He's my Wi -- zard.
  of Won ful
  he does.
  We're off to see the Wi -- zard the Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard of
  Wi -- zard
  no dat bli -- zard
  ne -- ver would I ev -- er say be --
  lie -- ver hi -- de -- ous -- ly a -- brupt
  would -- n't help with your re -- gre
  Oh the Wiz Oh the Wiz
  and what a Wiz
  you know I'm say -- in' that
  We're off to see the Wi -- zard
  We're off to see the Wi -- zard
  We're
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wiz be -- cause 
  be -- cause be -- cause of the Won -- der -- ful things he does
  be -- cause be -- cause be -- cause
  Won -- der -- ful things Won -- der -- ful things
  be -- cause of the Won -- der -- ful things he does
  Be -- cause of the Won
  cause of the Won -- der -- ful things oh the things he does
  He's my Wi -- zard
  Be -- cause of the Won -- der -- ful things he does
  Be -- cause of the Won -- der -- ful
  Be -- cause of the Won -- der -- ful things he does
  What a Wiz
  Be -- cause of the Won -- der -- ful things he does
  What a Wiz
  cause of the Won -- der -- ful things he does my Wiz
  swing -- in' Wiz
  he's tak -- in'
  cause of the Won -- der -- ful things he does
  Won -- der -- ful things
  Won -- der -- ful things
  cause of the Won and what a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz
    cut -- ting Tom
  ter he left and ev -- 'ry -- one doubt
  ru -- lent fact that he a
  ka -- ble in -- cin
  ces for -- cing malls
  cles be -- co -- ning child -- ren to the door
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- at -- or out
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
  Hey! Hey! Hey! Hey!
  ev -- er the Wi -- zard of Oz is one be -- cause be -- cause Oh 
  the Wiz, Oh the Wiz
  Oh the Wiz, Oh the Wiz my Wi -- zard
  Oh the Wiz, Oh the Wiz my
  Oh the Wiz, Oh the Wi -- zard
  Oh the Wiz, Oh the Wiz Oh the Wi -- zard,
  my Wiz the
  Won the be -- cause of the Won -- der -- ful things he does the He's
  my Wi -- zard the Won
  of the Won -- der -- ful things he does
  Wi -- zard
  He's my Wi -- zard
  He's my Wiz
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  %\clef alto 
  ees4^\crooner^\mf |
  aes4 ees c bes |
  \lo a8 ( ges'4 ) \sh f8 ~ \lo f \sh ees ~ ees4 |
  \times 2/3 { des f aes } \times 2/3 { c aes bes } |
  g-. r aes-. r |
  aes, aes aes' bes |
  \lo g8 \sh ees \lo g \sh f \lo r8 \sh f ~ ( \times 2/3 { f [ g aes ) ] } |
  \times 2/3 { bes4 c bes } \times 2/3 { aes ( f ) g } |
  \clef alto
  \times 2/3 { ees ( bes g } ees ) ees' |
  \times 2/3 { f des bes } \times 2/3 { g g' ees } |
  \times 2/3 { aes ees c } \times 2/3 { a a' f } |
  \times 2/3 { bes f d } \times 2/3 { bes b' g } |
  \times 2/3 { c aes ees } \times 2/3 { c c' aes } |
  \times 2/3 { des aes f } \times 2/3 { des aes f } |
  des-. r \clef treble \lo r8 \sh aes''8 ~ aes4 |
  bes4 \lo aes8 \sh aes g g f4 |
  \lo g8 bes4 \sh ees8  \lo r \sh c--^\> ~ c4 |
  des4 \lo c8 \sh c \lo bes \sh bes aes4 |
  \lo g8 f4 \sh ees8 ~ \lo ees8 \clef "treble_8" \sh d--^\mf ~ d4 |
  d4 \lo c8 \sh c \lo bes \sh bes aes4
  \lo g8 bes4 \sh ees8 ~ \lo ees8 \sh ees--^\< ~ ees4 |
  \clef "treble"
  \times 2/3 { ees4^\f ees' ees, } \times 2/3 { ees' ees, ees' } |
  ees,4-.\lo ees'8 \sh ees,8 \lo r \sh ees'8^\sfz ~ ees4 |
  des4^\f c bes ees |
  \lo c8 ( bes4 ) \sh aes8 ~ \lo aes8 \sh f8^\> ~ f4 |
  \times 2/3 { e4 e e } \times 2/3 { f f f } |
  \times 2/3 { fis fis fis } \times 2/3 { g g g } |
  \times 2/3 { gis g fis } \times 2/3 { f e d^\p } | 
  R1*3 |
  r2 bes' 8^\< [ ees bes ees ] |
  bes1^\>-\bendAfter #-3 |
  R1\! |
  R1 |
  bes2^\< d4 c |
  \lo bes8^\f \sh bes r4 \lod r4. \sh d8^\> ~ |
  \lo d8 \sh d \lo c \sh c \lo bes \sh bes \lo aes \sh aes |
  \lo g^\mf \sh ees \lo f \sh g \lo aes \sh f \lo g \sh aes |
  \lo bes ees4 \sh ees8 ~ \lo ees \sh bes \times 2/3 { ees, g bes } |
  des4 c8 des16 c \lo bes8 \sh fis \lo g \sh aes |
  \lo g \sh ees \lo f \sh ees ~ ees aes^\straight g f |
  ees r r4 r8 aes g f |
  ees ees^\p^\< d ees e f fis g |
  aes4^\f^\swung ees c bes |
  \lo a8 ( ges'4 ) \sh  f8 ~ \lo f \sh f-> ~ f4 |
  bes4 f d c |
  \lo b8 ( aes'4 ) \sh g8 ~ \lo g  \sh g-> ~ g4 |
  c4^\mp b a g |
  \lo f8(  e4 ) \sh d8 \lo r \sh c ~ c4 |
  \clef "treble_8"
  \times 2/3 { b4 a g } \lo r f4 \sh e8 ~ |
  e2 r4 \clef treble g |
  a b c d |
  \lo e8 f4 \sh g8 \lo r \sh a ~ a4 |
  f4 e d c |
  b2 r4 a |
  f'4 d b d |
  c a g g |
  a b c c |
  b' a f d |
  c c^\< c' c |
  b b a \lo a8 \sh gis^\f ~ ( |
%  c4 b a g |
%  \lo f8 e4 \sh d8 ~ \lo d \sh f ~ f4 |
%  \times 2/3 { e e e } \times 2/3 { f f fis } |
%  g4 r a r |
%  f a b a |
%  \lo g8 \sh e \lo g8 \sh a ~ \lo a \sh fis ~ fis4 |
 % \times 2/3 { g g g } a ais |
%  b2 g |
%  c4 \lo d8 \sh c \lo bes \sh a g4 |
%  \lo a8 c4 \sh f,8 ~ \lo f fis4 \sh g ~ |
%  \lo g \sh f \lo e \sh d ~ \lo d ais'4 \sh b ~ |
%  \lo b8 a4 f d \sh c ~ |
%  \lo c c4 c' c \sh b8 ~ |
 % \lo b b4 a a \sh gis8 ~ |
  gis4 e e' d |
  c a d^\> ) c |
  b4^\p^\< b c \lo c8 \sh c |
  \lo cis \sh cis cis4 \lo d8 b4 \sh g^\f |
  \lo r8 g4 \sh g,8 \lo r g'4 \sh g,8 |
  \lo r8 g'4 \sh g,8 \lo r \sh g'^\sfz^\> ~ g4 |
  ees4^\mp \lo f8 \sh f \lo g \sh g aes4 |
  \lo bes8 aes4 \sh g ~ \lo g \sh r \lo g \sh aes |
  \lo g \sh f r4 \lo f8 \sh g \lo f \sh ees8 |
  \lo r \sh g, \times 2/3 { c cis d } \lo ees \sh e \lo f \sh d ~ |
  \lo d8 g4 \sh c,8 \lo r8 \sh ees \times 2/3 { c ees g } |
  c4 \times 2/3 { c,8 ees g } \lo c \sh des \lo c \sh bes |
  r4 \lo bes8 \sh c \lo bes \sh aes \lo r \sh c, |
  f4 \lo g \sh g \lo aes \sh aes \lo bes8 \sh g ~ |
  \lo g8 aes4 \sh f8 ~ \lo f8 \sh r \lo ees8 \sh f |
  \lo ees \sh d r4 r d4^\mf |
  g d bes c |
  d g ~ g d |
  \times 2/3 { ees d c } \times 2/3 { bes c a } |
  g2 r4 a |
  g g g' g |
  \lo fis8 \sh fis \lo fis \sh e ~ \sh e \lo e ~ e4 |
  \lo a8 \sh a \lo a \sh a ~ \lo a \sh fis ~ fis4 |
  d2 r4 d |
  \times 2/3 { ees ees ees } \times 2/3 { fis fis fis } |
  g4 \lo g8 \sh bes ~ \lo bes \sh g ~ g4 |
  \lo aes8 \sh aes \lo aes \sh c ~ \lo c c4 \sh bes8 ~ |
  \lo bes aes4 g f \sh ees8 ~ |
  ees4 ees ees' ees |
  d d c c |
  b2. r4 |
  R1 |
  \clef "treble_8"
  r4 f, ~ f a |
  aes2 g4 c |
  d1^\dim |
  des1 ~ |
  des4 c4 ~ c4 ces^\p |
  r4 bes^\cresc r ces |
  r c r d |
  r c r ces |
  r bes r g |
  r ees' r ees |
  r ees \lo r8 \sh d^\ff \lo d \sh d |
  \lo d \sh d \lo d \sh d \lo d \sh d \lo d \sh d |
  \lo d \sh d \lo d \sh d \lo d \sh \sh a^\f \times 2/3 { b d e } |
  \clef "treble_8"
  \lo fis8 \sh e \lo r \sh g ~ \times 2/3 { g8 a g } \lo e \sh c |
  dis4 \lo b8 \sh fis'8 \lo e \sh c \lo bes \sh g |
  \lo cis b4 \sh fis8 \times 2/3 { g b d } \lo fis \sh e |
  \lo r \sh a, \times 2/3 { b d fis } a4 \times 2/3 { g8 a g } |
  \lo fis \sh d \lo c \sh aes8 ~ \lo aes gis'4 \sh dis8 |
  \lo e \sh c \lo r \sh g \lo a \sh fis' \lo f \sh c |
  dis4 \lo b8 \sh f'8 \lo cis \sh a \lo r \sh g |
  \lo a \sh c \lo d \sh fis \lo r \sh g \lo r \sh a8 ~ |
  a4 \times 2/3 { g8 gis a } \lo fis \sh cis \lo bes \sh g |
  \lo a \sh b \times 2/3 { d ( e ) f } \lo r \sh bes, \times 2/3 { c d e } |
  \lo fis ais4 \sh gis8 \times 2/3 { a f ees } \lo c \sh g |
  \lo bes \sh c \lo ees \sh f \lo r ees4 \sh g ~ |
  \lo g \sh bes \lo g \sh f \lo e \sh cis \lo b \sh g |
  \lo aes \sh c \lo ees \sh c \lo ges' \sh ees \lo ces \sh g |
  \lo aes \sh c \lo f \sh ees \lo g \sh aes \lo g \sh ges |
  \lo f8 \sh b \times 2/3 { bes ges d } \lo ces \sh g \lo ges \sh f |
  g4 \glissando \times 2/3 { ees8 g bes } \lo d \sh ees, \lo des' \sh c ~ |
    \lo c \sh r \times 2/3 { aes8 c ees } \lo g \sh g \lo f \sh ees |
    \lo g \sh bes \lo g \sh cis, \lo d \sh bes \lo des \sh c ~ |
    \lo c-. \sh g' \lo f \sh ees \lo c \sh aes \lo  g \sh f |
    \lo g \sh bes \lo f' \sh ees \lo d \sh c \lo bes \sh g |
    \lo aes \sh c \lo ees \sh bes' \lo r aes4 \sh bes8 |
    \lo g \sh ees \times 2/3 { c ees f } \lo g \sh ees \lo f \sh ees ~ |
    \lo ees8 \sh des8^\f \lo r \sh des \lo r \sh des \lo r \sh des |
    r2 \times 2/3 { aes4^\mp aes aes } |
    \times 2/3 { g g g } \times 2/3 { ges ges ges }
    \times 2/3 { f4 f g } aes4 a |
    c2 b |
   \times 2/3 { bes2 ees^\mf d } \times 2/3 { c c bes }
    \times 2/3 { aes2 g bes^\> } |
    \times 2/3 { c2 f^\mp ees } |
    \times 2/3 { d2 g^\mf f } \times 2/3 { ees ees d^\> ~ } |
    \times 2/3 { d2 c2 bes } |
    a2 g^\mp ~ |
    g aes |
    bes1 |
    \times 2/3 { c2 \clef "treble" ces'^\mf beses } \times 2/3 { aes aes ges }  |
    geses2^\>  fes |
    aes,2^\mp^\< a |
    bes^\> ces ~ |
    ces1^\mp ~ |
    ces2 deses  |
    ees1^\< ~ |
    ees2 bes' |
    \times 2/3 { beses aes^\f aeses } |
    \times 2/3 { ges ees eeses } |
    des4 eeses^\subPd \lo ees8 \sh aes^\sfz ~ aes4 |
    \lo aes8-. \sh g,^\mf \times 2/3 { aes ces des } \lo ges fes4 \sh aeses8 ~ |
    \times 2/3 { aeses8 beses aeses } \lo fes \sh ces \lo ees \sh bes \lo des \sh d |
    \lo r8 \sh aes \lo beses \sh ges' \times 2/3 { geses fes feses } eeses des |
    \lo deses \sh des \lo eeses \sh fes \lo eeses \sh fes-. \lo r \sh des ~  |
    \lo des \sh ees \lo des \sh c r4 \lo c \sh des |
    \lo c \sh bes \lo r \sh ees g4 \lo g \sh g |
    \lo r8 \sh aes \lo g \sh f \lo ees \sh c \lo bes \sh aes |
    \lo g f4 \sh aes8 \times 2/3 { c des d } ees4^\< |
    aes4^\f ees c bes |
    \lo a8 ( ges'4 ) \sh f8 ~ \lo f \sh ees ~ ees4 |
     \times 2/3 { des f aes } \times 2/3 { c ces bes^\> ~ } |
    bes ~ \times 2/3 { bes4 ees,8 } e16 fis16 ais cis \times 2/3 { a4 dis,8 } | %1
  \times 2/3 { e4 fis8 } \times 2/3 { r4 cis8^\pp^\dim } d16 e fis a c8 c | %2
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
  \times 2/3 { des4 ces8 ~ } ces8 r8 \times 4/7 { ees,8 e g b d4 c8 } | % 18
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
  %d bes g f d c e g ~ g fis a ees ~ \times 4/5 { ees fis a ees g ~  } |
  \times 2/3 { d4 b8 } \times 2/3 { c4 d8 } \times 2/3 { aes8 g ges8 } \times 2/3 { e4 ees8^\ppppp }
}

altoWords = \lyricmode {
  We're off to see the Wi -- zard
  The Won -- der -- ful Wi -- zard of Oz
  We hear he is a Wiz of a Wiz if ev -- er a wiz there was.
  If ev -- er oh ev -- er oh ev -- er oh ev -- er oh ev -- er oh ev -- er oh ev -- er oh ev -- er oh ev -- er oh
  ev -- er oh ev
  Be -- cause of the Won -- der -- ful things he does.
  Be -- cause of the Won -- der -- ful things he does.
  Be -- cause of the Won -- der -- ful things he does.
  Be -- cause of the Won -- der -- ful things he does.
  We're off to see the Wi -- zard the
  Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard of
  Wi -- zard
  no no dat bli -- zard
  ne -- ver would I ev -- er say the
  Wi -- zard is a Wi -- zard if a Wiz there was
  he was a be -- nign, gen -- tle and ten -- der man if ev -- er a Wiz
  he was a Wiz
  and what a Wiz you know I'm say -- in' that
  We're off to see the Wi -- zard
  We're off to see the Wi -- zard
  We're
  off to see the Wi -- zard the Won -- der Wiz of Oz
  We hear he is a Wiz of Wiz if ev -- er Wiz there was.
  If ev, oh ev a Wiz there was
  the Wiz of Oz is one be -- cause be -- cause
  be -- cause be -- cause  be -- cause be -- cause be -- cause  be -- cause of the Won -- der -- ful things he does
  be -- cause be -- cause be -- cause
  be -- cause of the Won -- der -- ful things he does
  Won -- der -- ful things, Won -- der -- ful things
  be -- cause of the Won -- der -- ful things he does
  Be -- cause of the Won
  cause of the Won -- der -- ful things
  Won -- der -- ful things
  Be -- cause of the Won -- der -- ful things he does
  Won -- der -- ful things
  We're off to see the Wi -- zard
  The Won -- der -- ful Wi -- zard of Oz
  We hear he is a Wiz of a Wiz if ev -- er a Wiz there was
  If ev -- er oh ev -- er a Wiz there was the Wi -- zard of Oz is one be -- casue be -- cause
  be -- cause be -- cause be -- cause be -- cause
  He's my Wiz, Wiz be -- cause
  cause he's my
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wiz and what a Wiz,  a Wiz,  a Wiz,  a Wiz,  a Wiz,  a Wiz,  a Wiz
  He was a be -- lie -- ver
    Hi -- de -- ous -- ly ab -- rupt
  Would -- n't help with your re -- gres -- sion
  Ne -- fa -- ri -- ous ar -- tist,
  Ma -- le -- vo -- lent tramp,
  Con -- jur -- ing i -- ma -- ges
  A shrewd en -- chan -- ter
  Un -- can -- ny, wic -- ked gent
  Vile im -- pos -- ter
  No more than a cut -- ting Tom
  Fe -- lo -- ny was re -- por -- ted
  af -- ter he left
  And ev -- ry -- one doubt -- ed 
  er -- ro -- ne -- ous -- ly
  The vi -- ru -- lent fact that he a --
  lone would tra -- vel to re -- mar -- ka -- ble in -- cin -- di -- a -- ry
  spa -- ces for -- cing malls to close and un -- cles be -- ckon -- ing child -- ren to the door
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- at -- or out 
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
  \repeat unfold 4 Hey!
  ev -- er oh, ev -- er oh ev -- er the Wi -- zard of Oz is one cause cause Oh the Wiz, Oh the Wiz
  Oh the wiz
  Oh the Wiz, Oh the Wiz, oh the what a Wi -- zard
  my Wi -- zard
  Oh the Wiz, Oh the Wi -- zard
  He's my Wi -- zard
  my Wi -- zard
  Wiz, Oh the Wiz, Oh the Wiz, my Wiz the Won
  He was a be -- lie -- ver
  Pas -- sion -- ate -- ly re -- mar -- ka -- ble Won
  You know the Wi -- zard of Oz is sing -- in' out of key
  the Won -- der -- ful things Won -- der -- ful things
  Be -- cause of the
  So un -- for -- ge -- ta -- ble, the Wi -- ard, I tel -- lin' you We're
  off to see the Wi -- zard, the Won -- der -- ful Wi -- zard Joy
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
  Fear en -- er -- gi -- zing sen -- ti -- men -- tal moods and
    tap -- ping on my fore -- arm
  Un -- like the kil -- ling of a dol -- phin
  This dream is eu -- pho -- ric
  Smear -- ing all the co -- lors of my bright spi -- rit
  A gen -- u -- ine re sha -- ping of my lungs
  And of my feet
  Ec -- sta -- sy si -- phon -- ing the nec -- tar of my spine
  Such ge -- ne -- ro -- si -- ty
  Such o -- ver -- whel -- ming hope
  Ra -- di -- ate, shine, and flic -- ker like a bur -- ning wad of
  flesh
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
  %%%%Win -- some is how I'd ca -- te -- go -- rize this mer -- ry e -- ner -- gized state
  Win -- some is how I'd ca -- te -- go -- rize it.
}

tenor = \relative c {
  \autoBeamOff
  \prefatoryMatter
  \clef "treble_8"
  \times 2/3 { aes8^\scat^\mp c ees } |
  \lo g8 \sh f \lo r \sh aes ~ \times 2/3 { aes bes aes } \lo g \sh des |
  f4 \lo ees8 \sh g \lo f \sh ees \lo des \sh aes |
  \lo ees' des4 \sh ees8 \times 2/3 { aes,8 c ees } \lo g \sh f ~ |
  \lo f \sh aes, \times 2/3 { bes des f } bes4 \times 2/3 { aes8 bes aes } |
  \lo g \sh ees \lo c \sh aes ~ \lo aes g'4 \sh c,8 |
  \lo ees8 des4 \sh c8 \lo des \sh aes' \lo ees \sh c |
  g'4 \lo f8 \sh g \lo d f4 \sh d8 |
  \lo f \sh fis \lo f \sh g \lo r \sh bes a4^\fp^\< |
  aes4-.^\mf r \lo r8 \sh f ~ f4^\fp^\< |
  ges4-.^\mf r \lo r8 \sh ges ~ ges4^\fp^\< |
  f-.^\mf r \lo r8 \sh f^\fp^\< ~ f4 |
  ges-.^\mf r \lo ees'8 \sh a,^\fp^\< ~ a4 |
  aes4 \lo aes8 \sh aes8 \lo aes8 \sh aes8 bes4 |
  \lo c8^\mf^\> bes4 \sh aes8^\p \lo r8 \sh beses^\f ~ beses4 |
  aes4 \lo aes8 \sh aes \lo aes \sh aes aes4 |
  g4 \lo g8 \sh g8 \lo r \sh c--^\> ~ c4 |
  bes4 \lo aes8 \sh aes \lo g \sh g f4 |
  ees4 \lo f8 \sh g ~ \lo g \sh a--^\mf ~ a4 |
  aes4 \lo ees8 \sh ees8 \lo d \sh d c4 |
  \lo bes8 ees4 \sh g8 ~ \lo g \sh aes--^\< ~ aes4 |
  \times 2/3 { g4^\f r ees' } \times 2/3 { r ees r } |
  ees4-. \lo r8 \sh ees8 \lo r \sh c^\sfz ~ c4 |
  bes4^\f aes bes bes |
  \lo aes8 ( bes4^\> ) \sh c8 ~ \lo c8 \sh aes8 ~ aes4 |
  \times 2/3 { g g g } \times 2/3 { aes aes aes } |
  \times 2/3 { a a a } \times 2/3 { aes aes aes } |
  \times 2/3 { a bes a } \times 2/3 { aes g e^\p } |
  R1*3 |
  r2 ces'8^\< [ ees ces ees ] |
  ces1^\>-\bendAfter #-3 |
  R1\! |
  r4 ces^\fp ~ ces2 ~ |
  << { ces2. c4 } { s2 s2^\< } >> |
  \lo c8^\f \sh c8 r4 r2 |
  R1 |
  \lo r8 \sh aes^\p^\< ~ aes4 ~ aes fis4 |
  \lo g8^\mf \sh g r4 r fis^\mp |
  g4^\< \lo g8 \sh g \lo g \sh g fis4 |
  g4 \lo g8 \sh g ~ \lo g \sh c-- ~ c4 |
  g8^\mf^\straight aes g f ees aes g f |
  ees ees^\< d ees e f fis g |
  aes4^\f^\swung ees c bes |
   \lo a8 ( ges'4 ) \sh f8 ~ \lo f \sh a-> ~ a4 |
   bes4 f d c |
  \lo b8 ( aes'4 ) \sh g8 ~ \lo g  \sh b-> ~ b4 |
  r2 c4^\p b |
  a2.^\p^\< ais4^\> |
  \lo b8-.^\mp \sh b-. r4 aes2^\p^\< ~ |
  aes4 a^\> \lo b8-.^\mp \sh b-. r4 |
  r4 b^\pp^\< ~ b2 ~ |
  << { b2. ais4 } { s4^\> s2^\pp s4^\< } >> ||
  \lo b8-.^\mp \sh b-. r4 d2^\p^\< ~ |
  << { d2. cis4 } { s4^\> s2^\pp s4^\< } >> | |
  \lo c8^\mp-. \sh c-. r4 c2^\p^\< ~ |
  c4 c^\> \lo b8^\mp-. \sh b8-. r4 |
  r4 b^\p^\< ~ b2 ~ |
  b4 bes \lo a8^\mp-. \sh a8-. r4 |
  r4 g^\pp^\< ~ g gis4 |
  a4 a c \lo c8 \sh b8^\f ~ ( |
  b2 cis |
  gis f'4^\> ) f |
  cis4^\p^\< cis bes \lo bes8 \sh bes |
  \lo a \sh a ais4 \lo b8 c4 \sh b8^\f |
  \lo r8 g4 \sh g8 \lo r8 g4 \sh g8 
  \lo r8 g4 \sh g8 r2 |
  R1*5 |
  \lodd r2.. \sh c,8^\mp |
  f4 \lo g8 \sh g \lo aes \sh aes bes4 |
  c4 \lo des8 \sh c r4 \lo c8 \sh des |
  \lo c \sh bes r4 \lo bes \sh c \lo bes \sh a |
  \lo r8 a4 \sh aes8 g4 fis |
  \lod g4. \sh fis ~ fis4 r |
  R1*2 |
  \lod r4. \sh f8 bes4 \lo c8 \sh c |
  \lo d \sh d ees4 \lo f8 ees4 \sh d8 ~ |
  \lo d \sh ees \lo d \sh c r4 \lo c8 \sh d |
  c2 r |
  \lod r4. \sh d,8 a'4 \lo bes8 \sh bes8 |
  \lo c \sh c d4 \lo ees8 d4 \sh c8 |
  r4 \lo c8 \sh d \lo c \sh bes r4 |
  \lo bes8 \sh c \lo bes \sh aes \lo r \sh c, \times 2/3 { d dis e } |
  \lo f \sh g \lo f \sh ees ~ \lo ees g4 \sh bes ~ |
  \times 2/3 { bes4 r d2 c } |
  \times 2/3 { bes bes aes }
  g2  aes2 ~ |
  aes4 fis \lo g8 \sh g r4 |
  r2 c2 ~ |
  c4 b \lo bes8 \sh bes r4 |
  bes1^\dim ~ |
  << { bes1  }{ s2. s4^\p } >> |
  R1 |
  g2 g4-.^\cresc g-. |
  \lo g8 g4 \sh g8 ~ \lo g \sh g \lo g \sh g |
  g4-. g-. fes-. fes-.
  \lo ees8 ees4 \sh ees8 ~ \lo ees \sh a \lo bes \sh b |
  c4-. c-. c-. c-. |
   \lo c8 b4 \sh bes8 ~ \lo bes \sh c^\ff \lo c \sh c |
   \lo c \sh ces \lo bes \sh bes \lo bes \sh bes \lo bes \sh bes |
   \lo bes \sh bes \lo bes \sh bes \lo bes \sh r r4 |
   \lod r4. \sh g^\f ~ \times 2/3 { g8 a g } \lo e \sh c |
  dis4 \lo b8 \sh fis'8 \lo e \sh c \lo bes \sh g |
  \lo cis b4 \sh fis8 \times 2/3 { g b d } \lo fis \sh e |
  \lo r \sh a, \times 2/3 { b d fis } a4 \times 2/3 { g8 a g } |
  \lo fis \sh d \lo c \sh aes8 ~ \lo aes gis'4 \sh dis8 |
  \lo e \sh c \lo r \sh g \lo a \sh fis' \lo f \sh c |
  dis4 \lo b8 \sh f'8 \lo cis \sh a \lo r \sh g |
  \lo a \sh c \lo d \sh fis \lo r \sh g \lo r \sh a8 ~ |
  a4 \times 2/3 { g8 gis a } \lo fis \sh cis \lo bes \sh g |
  \lo a \sh b \times 2/3 { d ( e ) f } \lo r \sh bes, \times 2/3 { c d e } |
  \lo fis ais4 \sh gis8 \times 2/3 { a f ees } \lo c \sh g |
  \lo bes \sh c \lo ees \sh f \lo r ees4 \sh g ~ |
  \lo g \sh bes \lo g \sh f \lo e \sh cis \lo b \sh g |
  \lo aes \sh c \lo ees \sh c \lo ges' \sh ees \lo ces \sh g |
  \lo aes \sh c \lo f \sh ees \lo g \sh aes \lo g \sh ges |
  \lo f8 \sh b \times 2/3 { bes ges d } \lo ces \sh r8 bes'4^\mf |
  ees bes g aes |
  bes ees ~ ees bes |
  \times 2/3 { c bes aes } \times 2/3 { g aes f } |
  ees2. g4 |
  ees4 ees ees' ees |
  \lo d8 \sh d \lo d \sh c ~ \lo c \sh c ~ c4 |
  \lo f \sh f \lo f \sh f ~ \lo f d4 \sh bes ~  |
  bes2. bes4 |
  \times 2/3 { c4^\mf c c } \times 2/3 { c c d } |
  ees4 bes a bes |
  \times 2/3 { aes4 aes g } f4 fis4 |
  g4 ges f g |
  ees^\< ees ees' ees |
  d d c c |
  f1^\f^\> ~ |
  f1 ~ |
  f2^\mp aes,2 |
  g f |
  ees1 ~ |
  ees2 c |
  d f ~ |
  f f |
  \times 2/3 { g2^\< aes a } |
  bes2 ces |
  c des^\> ~ |
  des1 ~ |
  des2^\mp d |
  ees fes |
  beses,1 ~ |
  beses^\< |
  \times 2/3 { ceses2 des^\f eeses } |
  \times 2/3 { des ceses beses } |
  \times 2/3 { ceses beses ceses } |
  ces4 ceses^\subPd \lo beses8 \sh d8^\sfz ~ d4 |
  \lo ees8 \sh g,,^\mf \times 2/3 { aes ces des } \lo ges fes4 \sh aeses8 ~ |
  \times 2/3 { aeses8 beses aeses } \lo fes \sh ces \lo ees \sh bes \lo des \sh beses'  |
      r2 eeses,4 \lo fes8 \sh fes |
    \lo ges \sh ges aeses4 \lo beses8 aeses4 \sh aes8 ~ |
    \lo aes \sh ees \lo c \sh bes8  \lo aes aes'4 \sh ees8 |
  \lo fes \sh ces \lo r \sh bes \lo ces \sh ees \lo f \sh des' |
  r4 g,^\p^\< ~ g2 ~ |
  g4 aes \lo bes8^\mf bes4 \sh ees,8 |
  \lo g8 \sh f \lo r \sh aes ~ \times 2/3 { aes bes aes } \lo g \sh des |
  f4 \lo ees8 \sh g \lo f \sh ees \lo des \sh aes |
  \lo ees' des4 \sh ees8 \times 2/3 { aes,8 c ees } \lo g \sh f |
  ees4-. r r2 |
}

tenorWords = \lyricmode {
  was a be -- lie -- ver
  hi -- de -- ous -- ly a -- brupt
  would -- n't help with your re -- gres -- sion
  ne -- fa -- ri -- ous ar -- tist
  ma -- le -- vo -- lent tramp
  con -- ju -- ring i -- ma -- ges
  a shrewd en -- chan -- ter
  un -- can -- ny wic -- ked gent vile im -- pos -- ter
  no more than a cut -- ting if ev
  oh ev
  oh ev
  oh ev -- ver
  Be -- cause of the won -- der -- ful things he does.
  Be -- cause of the Won -- der -- ful things he does.
  Be -- cause of the Won -- der -- ful things he does.
  Be -- cause of the Won -- der -- ful things he does.
  Be -- cause the der things does.
  We're off to see the Wi -- zard the
  Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard of
  Wi -- zard
  no dat bli -- zard
  he's my Wi -- zard
  be -- cause of the Won -- der -- ful things he does
  be -- cause
  oh what a Wiz
  and what a Wiz
  you know I'm say -- in' that
  We're off to see the Wi -- zard
  We're off to see the Wi -- zard
  We're
  He's my
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wiz my Wiz be -- cause be -- cause be -- cause of the Won -- der -- ful things he does
  be -- cause be -- cause be -- cause
  Be -- cause of the Won -- der -- ful things he does
  Won -- der -- ful things Won -- der -- ful things cause the things he does, Won
  Be -- cause of the Won -- der -- ful things he
  Won -- der -- ful things Won -- der -- ful
  Be -- cause of the Won -- der -- ful things he does
  Won -- der -- ful things
  Won -- der -- ful things
  Be -- cause of the Won -- der -- ful things he does
  Oh the Wiz, Oh the Wiz
  He's my Wi -- zard
  He's my Wi -- ard
  cause
  Oz lou -- sy swing -- in' Wiz
  he's tak -- in' dimp -- led bows, he's fling -- in' rizz
  and with his pimp -- led sows he's sing -- in' Biz, 
  Oh what a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz
    Hi -- de -- ous -- ly ab -- rupt
  Would -- n't help with your re -- gres -- sion
  Ne -- fa -- ri -- ous ar -- tist,
  Ma -- le -- vo -- lent tramp,
  Con -- jur -- ing i -- ma -- ges
  A shrewd en -- chan -- ter
  Un -- can -- ny, wic -- ked gent
  Vile im -- pos -- ter
  No more than a cut -- ting Tom
  Fe -- lo -- ny was re -- por -- ted
  af -- ter he left
  And ev -- ry -- one doubt -- ed 
  er -- ro -- ne -- ous -- ly
  The vi -- ru -- lent fact that he a --
  lone would tra -- vel to re -- mar -- ka -- ble in -- cin -- di -- a -- ry
  spa -- ces for -- cing malls to close and un -- cles be -- ckon -- ing child
  We're off to see the Wi -- zard
  The Won -- der -- ful Wi -- zard of Oz
  We hear he is a Wiz of a Wiz if ev -- er a Wiz there was
  If ev -- er, oh ev -- er a Wiz there was the Wi -- zard of Oz is one be -- cause
  Be -- cause be -- cause be -- cause be -- cause be -- cause
  my Wiz my Wiz
  my Wi -- zard my Wiz Oh the Wiz, my Wi -- zard
  the Wiz of Oz
  Wiz Oh the Wiz, Oh the Wiz, Oh the Wiz, my Wiz the
  Won He was a be -- lie -- ver Pas -- sion -- ate -- ly re -- mar -- ka -- ble Won
  cause of the Won -- der -- ful thigns the Won -- der -- ful, the lies, he's a cheat -- ter
  Un -- can -- ny wi -- cked
  He's my Wi -- zard 
  be -- lie -- ver
  hi -- de -- ous -- ly a -- brupt
  would -- n't help with your re -- gres -- sion
  ne -- fa -- ri -- ous ar -- tist Oz
}

bass = \relative c { \autoBeamOff
  \prefatoryMatter
  \clef bass
  ees4^\bouncy^\mf |
  aes,4 \lo bes8 \sh bes \lo c \sh c des4 |
  ees \lo f \sh ees r4 ees |
  bes4 \lo bes8 \sh bes \lo ees \sh ees ees4 |
  aes, \lo ees \sh aes \lo r8 \sh aes8 ~ aes4 |
  aes4 \lo aes8 \sh aes \lo g \sh g g4 |
  f4 \lo f8 \sh a \lo r \sh a ~ a4 |
  bes4 \lo bes8 \sh c \lo d \sh c bes4 |
  ees4 \lo bes8 \sh ees, r4 ees'^\fp^\< |
  des4-.^\mf r \lo r8 \sh b^\fp^\< ~ b4 |
  c4-.^\mf r \lo r8 \sh a^\fp^\< ~ a4 |
  bes4-.^\mf r \lo r8 \sh g^\fp^\< ~ g4 |
  aes4-.^\mf r \lo r8 \sh c^\fp^\< ~ c4 |
  des4 \lo ees8 \sh ees \lo f \sh f ges4 |
  \lo aes8^\mf^\> ges4 \sh f8^\p \lo r \sh ces^\f ~ ces4 |
  bes4 \lo bes8 \sh bes \lo bes \sh bes bes4 |
  ees4 \lo c8 \sh bes \lo r \sh aes--^\> ~ aes4 |
  g4 \lo g8 \sh g \lo aes \sh aes aes4 |
  a4 \lo a8 \sh bes ~ \lo bes8 \sh ges--^\mf ~ ges4 |
  f g aes f |
  g aes bes ces^\< |
  \times 2/3 { bes4^\f r ees } \times 2/3 { r ees r } |
  ees4 \lo ees8 \sh ees \lo r8 \sh a,^\sfz ~ a4 |
  bes4^\f c des bes |
  c des ees c |
  b4.^\> r8 bes4. r8 |
  a4. r8 bes4. r8 |
  b4. r8 c4. r8 |
  aes4^\mp r ces r |
  bes4 \lo r8 \sh ees,8 r4 aes4 |
  r4 aes \lo r8 \sh ces r4 |
  bes4 \lo r8 \sh ees, r2 |
  aes4 r ces r |
  bes4 \lo r8 \sh ees,8 r4 aes4 |
  r4 aes \lo r8 \sh ces r4 |
  bes4^\< f g a |
   bes4-.^\f r \lo bes8-. \sh bes-. r4 |
   r2. bes4^\mf |
   ees bes g aes |
   bes c^\>  bes aes |
   g^\mp^\< \lo aes8 \sh aes \lo bes \sh bes c4 |
   des \lo c8 \sh bes ~ \lo bes8 \sh aes-- ~ aes4 |
   g^\mf r bes r |
   bes8^\straight ees^\< d des c b bes a |
   aes4^\f^\swung r r2 |
   r2 \lo r8 \sh f-> ~ f4 |
   bes4 r r2 |
   r2 \lo r8 \sh g-> ~ g4 |
   R1 |
   R1 |
   r4 d'^\mp r g, |
   r c r g |
   r c r b |
   r a r cis |
   r d r fis, |
   r g r cis |
   r d r g, |
   r c r a |
   r f r aes |
   r g r f |
   r e r f |
   r fis4^\< \lo g8 \sh d' \lo dis8 \sh e ~ |
   e4^\f e^\mf r bes |
   r a r ees'^\> |
   d^\p^\< d d \lo d8 \sh d8 |
   \lo d \sh d d4 \lo d8 aes4 \sh g8^\f |
   \lod r4. \sh g8  \lod r4. \sh g8  |
    \lod r4. \sh g8  \lo r \sh g8-- ~ g4 |
    R1*8 |
    %R1 |
    r2. d'4^\mp |
    g,4 \lo a8 \sh a \lo bes \sh bes c4 |
    d4 \lo ees \sh d ~ \lo d \sh r \lo d \sh ees |
    \lo d \sh c r4 \lo c \sh d \lo c \sh bes |
    \lo r8 \sh fis \times 2/3 { g gis a } \lo bes \sh c \lo bes \sh a ~ |
    \lo a8 f'4 \sh bes,8 r8 d \times 2/3 { bes d f } |
    bes4 \times 2/3 { bes,8 d f } \lo bes \sh c \lo bes \sh a |
    %r4 a4 ~ \lo a8 \sh bes \lo a \sh a,8 |
    r4 \lo a8 \sh bes \lo a \sh aes \lo r \sh a, |
    d4 \lo e8 \sh e \lo fis \sh fis g4 |
    a4 \lo bes8 \sh a r2 |
    r2. bes,4 |
    ees4 \lo d8 \sh d8 \lo c \sh c bes4 |
    \lo aes8 g4 \sh f8 ~ \lo f bes4 \sh c8 |
    ees4 \lo f8 \sh f \lo g \sh g aes4 |
    bes4 \lo aes8 \sh g r4 \lo g8 \sh aes |
    \lo g \sh f r4 \lo f8 \sh g \lo f \sh ees |
    r4 \lo ees8 \sh f \lo ees d4 \sh g8 ~ |
    \lo g8 c,4 \sh ees8 \times 2/3 { c ees g } \lo c \sh des |
    \lo c \sh bes \lo a \sh g \lo f8 a,4 \sh f' |
    bes,4 c bes aes |
    g bes ees \lo f8 \sh f |
    \lo g8 \sh g aes4 \lo bes8 aes4 \sh g ~ |
    \lo g bes4 \sh g  \lo ees8 \sh g,^\p^\cresc \lo g \sh g |
    aes4-. aes-. a-. a-. |
    \lo bes8 bes4 \sh c ~ \lo c \sh g \lo g \sh ges |
    f4 f ces' ces |
    \lo bes8 g4 \sh bes ~ \lo bes \sh f \lo fis \sh g |
    aes4-. aes-. a-. a-. |
    \lo bes8 b4 \sh c ~ \lo c \sh ees^\ff \lo ees \sh ees |
    \lo ees \sh ees \lo ees \sh ees \lo ees \sh ees \lo ees \sh ees |
    \lo ees \sh ees \lo ees \sh ees \lo ees \sh r8 r4 |
    R1*8 |
    r4 g,^\f gis a |
    bes r \lo r8 \sh g ~ g4 |
    \lo b \sh b r4 r2 |
    \lo r8 \sh c \lo r \sh bes \lo r \sh aes \lo r \sh g8 ~ |
    \lo g \sh g \lo r \sh g \lo bes \sh bes \lo r \sh bes |
    \lo aes \sh aes \lo r \sh aes \lo r \sh c \lo r \sh aes |
    r2 \lo r8 \sh c \lo r \sh bes |
    \lo r8 \sh bes^\> aes4 g bes |
    %ees,4^\mp \lo f8 \sh f \lo g \sh g aes4 |
    %f4 \lo g8 \sh g \lo aes \sh aes bes4 |
    %g4 \lo aes8 \sh aes \lo bes \sh bes c4 |
    %aes4 \lo bes \sh bes \lo c \sh c d4 |
    %ees4 \lo bes8 \sh g \lo r \sh ees ~ ees4 |
    %f4 \lo f8 \sh g \lo aes \sh g f4 |
    %aes4 \lo aes8 \sh bes ~ \lo bes \sh bes ~ bes4 |
    ees,^\mp bes' g ees |
    f c' aes f |
    g d' bes g |
    f4 \lo g8 \sh g \lo aes \sh aes bes4 |
    g4 aes4 bes4 c4 |
    aes4 \lo bes \sh bes \lo c \sh c ges4 |
    f4 g aes f |
    \lo g8 \sh aes8^\f \lo r \sh a \lo r \sh bes \lo r \sh aes |
    R1 |
    R1 |
    R1 |
    r2 bes4^\mf aes |
    g bes ees f |
    g ees c a |
    bes1 ~ |
    bes2^\> fis |
    g1^\mp ~ |
    g2 b |
    c1 |
    f,2 a |
    bes1 |
    ees,2 g |
    aes2 ges |
    fes^\< aes |
    beses1 |
    eeses |
    aeses, |
    deses |
    \times 2/3 { ges,2 beses bes } |
    \times 2/3 { ces eeses ees } |
    fes1^\f ~  |
    fes ~ |
    fes ~ |
    fes4-. r \lo r8 \sh fes^\sfz ~ fes4 |
    ees-. r r2 |
    r2 \lo r8 \sh ees-. \lo r \sh eeses-. |
    R1 |
    r2 \lo r8 \sh eeses-. \lo r \sh bes-. |
    r4 c'^\p^\< ~ c2 ~ |
    c4 a^\> \lo bes8-.^\mp \sh bes-. \lo r \sh ees,-.  |
    \lo r8 \sh bes^\< beses4 aes a |
    \lo bes \sh bes aes4 g ees |
    aes4^\f \lo bes8 \sh bes \lo c \sh c des4 |
    ees \lo f \sh ees r4 ees |
    bes4 \lo bes8 \sh bes \lo ees \sh ees ees4 |
    aes, \lo ees8 \sh aes-. \lo r8  f4^\p^\> \sh fis8 |
    a4 gis e^\pp^\dim c' |
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
    d c bes ces\!^\ppppp |
}

bassWords = \lyricmode {
  \repeat unfold 4 { Be -- cause of the won -- der -- ful things he does }
  If ev
  \repeat unfold 3 { oh ev }
  Be -- cause of the Won -- der -- ful things he does
  Be -- cause of the Won -- der -- ful things he does.
  Be -- cause of the Won -- der -- ful things he does.
  Be \repeat unfold 8 ○
  cause the der things he does.
  We're off to see We're off to see the Won -- der Won -- der Wiz of
  Oz the Wi -- zard Oh what a Wi -- zard
  Oz the Wi -- zard Oh what a Wi -- zard he's the Wiz.
  Wi -- zard
  We're off to see the Wiz, he is
  be -- cause of the Won -- der -- ful things he does
  be -- cause
  Wiz
  Wiz you know I'm say --in' that We're off
  We're off
  We're
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my Wi -- zard
  He's my, my Wiz no be -- cause
  He's my Wiz be -- cause be cause of the Won -- der -- ful things he does cause cause cause be
  Be -- cause of the Won -- der -- ful thigns he does.
  Won -- der -- ful things
  Won -- der -- ful things be -- cause of the Won -- der -- ful things he does.
  Be -- cause of the Won cause of the Won -- der -- ful things Won -- der -- ful things
  Be -- cause of the Won -- der -- ful things he does
  Be -- cause of the Won -- der -- ful things he does
  No, Be -- cause of the Won -- der -- ful things he does
  Won -- der -- ful things
  Won -- der -- ful things
  Won -- der -- ful things he does
  Be -- cause of the Won -- der -- ful the Wi -- zard o' Oz, be -- cause
  my Wiz
  of Oz be -- cause of the Won -- der -- ful things he does
  things he does
  he is a sim -- ple, lou -- sy swing -- in' Wiz
  he's tak -- in' dimp -- led bows, he's fling -- in' rizz
  and with his pimp -- led sows he's sing -- in' Biz,
  Oh what a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz
  a' -- ter he left
  And doub -- ted
  lent fact that he a
  would tra -- vel re -- mark -- a Wiz of Oz
  \repeat unfold 17 ○ 
  be -- cause of the Won -- der -- ful things he does be
  cause of the Won -- der -- ful
  Won -- der
  Wiz of Oz Hey! Hey! Hey! Hey!
  cause
  Be -- cause be -- cause be -- cause be -- cause be -- cause
  my Wiz
  my Wiz
  He's my Wiz
  He's my Wiz -- ard
  He's my Wiz -- ard
  Wi -- zard
  Oz Oh the Wiz, Oh the Wiz
  the Won
  the Won
  the Won He's my Wi -- zard
  Won of the Won -- der, Won -- der -- ful things
  Be -- cause of the Won -- der -- ful things he does
  Be -- cause of the Won -- der -- ful things he does
  \repeat unfold 126 ○
}

%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      }  {
        \nothing
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
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
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \alto
      } { \marks } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
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
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}

%{
%%% piano redux

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
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << {  \numericTimeSignature
        \soprano
      } {
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)"  instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
