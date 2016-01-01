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
  s1*47 |
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
  \times 2/3 { bes2 bes aes } |
  bes4-. aes8 bes16 aes g4 f |
  ees d c d |
  bes8 aes' g f ees r r4 |
  r8 ees^\p^\< d ees d ees d des |
  c4^\f ees c bes |
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
  R1*6 |
  R1 |
  R1 |
  R1 |
  \lodd r2.. \sh d'8^\mp |
  a'4 \lo bes8 \sh bes8 \lo c \sh c d4 |
  \lo ees8 d4 \sh c8 r4 \lo c8 \sh d |
  \lo c \sh bes r4 \lo bes8 \sh c \lo bes \sh aes |
  \lo r \sh c, \times 2/3 { d dis e } \lo f \sh g \lo f \sh ees ~ |
  \lo ees g4 \sh bes ~ bes4 r |
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
  r2 \lo r8 \sh g^\mf^\cresc \lo g \sh g |
  g4-. aes-. aes-. bes-. |
  \lo c8 ces4 \sh bes  ~ \lo bes \sh ees^\ff \lo ees \sh ees |
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
  g8 r16 bes8.^\f bes bes bes4-. |
      r2 g4-. \lo r8 \sh ees |
    \times 2/3 { g gis a } \lo bes \sh g \lo ees \sh c \lo bes \sh g |
    \lo g' \sh f ~ f4 \lo r8 \sh c \times 2/3 { aes c ees } |
    \lo bes'8 \sh c, \lo aes' \sh bes \lo g \sh ees \lo c \sh aes |
    \lo g ees'4 \sh cis8 \lo d \sh bes \lo g \sh f |
    \lo b8 c4 \sh bes8 \times 2/3 { aes c ees } \lo bes' \sh aes |
    \lo g \sh bes \lo g \sh ees \lo c \sh d \lo e \sh c |
    f4-. r r2 |
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
  and with his pimp -- led sows he's sing -- in' Bli -- zard what a Wiz,
  a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz
  cut -- ting Tom
  ter her left and ev -- 'ry -- one doubt
  ru -- lent fact that he a
  ka -- ble in -- cin
  ces for -- cing malls
  cles be -- co -- ning child -- ren to the door
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- a -- teur out
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
  Hey! Hey! Hey! Hey!
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
  ees8 r r4 r8 aes g f |
  ees ees^\p^\< d ees d ees d ees |
  ees4^\f ees c bes |
  \lo a8 ( bes4 ) \sh  c8 ~ \lo c \sh c-> ~ c4 |
  bes4 f' d c |
  \lo b8 ( c4 ) \sh d8 ~ \lo d  \sh d-> ~ d4 |
  r4 e^\p^\< ~ e2 ~ |
  e4^\> cis \lo d8-.^\mp \sh d-. r4 |
  r c ^\p^\< ~ c2 ~ |
  c2.^\> cis4 |
  \lo d8-.^\mp \sh d-. r4 d2^\p^\< ~ |
  d4 dis^\> \lo e8-.^\mp \sh e-. r4 |
  r4 e^\p^\< ~ e2 ~ |
  e4 f^\> \lo fis8^\mp \sh fis r4 |
  r4 f^\p^\< ~ f2 ~ |
  f2.^\> e4 |
  \lo d8-.^\mp \sh d-. r4 d2^\p^\< ~ |
  d2.^\> c4 |
  \lo b8-.^\mp \sh b-. r4 b2^\p^\< ~ |
  b4 b c \lo ees8 \sh d8^\f ~ |
  d2 ( f |
  e g4^\> ) g |
  e4^\p^\< e f \lo f8 \sh f |
  \lo ees \sh ees ees4 \lo e8 ees4 \sh d8^\f |
  \lo r8 b4 \sh g8 \lo r8 b4 \sh g8 
  \lo r8 b4 \sh g8 r2 |
  R1*8 |
  r4 \lo d''8^\mp \sh ees \lo d \sh c r4 |
  \lo c8 \sh d \lo c \sh bes \lo r8 \sh d, \times 2/3 { g gis a } |
  \lo bes \sh c \lo bes8 \sh a ~ \lo a d4 \sh g,8 |
  r8 bes \times 2/3 { g bes d } g4 \times 2/3 { g,8 bes d } |
  \lo g \sh aes \lo g \sh f \lo r \sh d ~ d4 |
  \lo ees c4 \sh d r2 |
  R1*2 |
  \lod r4. \sh a,8 d4 \lo e8 \sh e |
  \lo fis \sh fis g4 \lo a8 g4 \sh fis8 ~ |
  fis4 r r2 |
  \lodd r2.. \sh g,8 |
  c4 \lo d \sh d \lo ees \sh ees f4 |
  \lodd r2.. \sh bes,8 |
  g4 \lo aes \sh aes \lo bes \sh bes c4 |
  d4 \lo ees8 \sh d \lo r8 d4 \sh ees |
  d2 r2 |
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
    bes r16 ees8.^\f ees ees ees4-. |
    aes2. fis4 |
    \lo g8 \sh g r4 r2 |
    g2. e4 |
    \lo f8 \sh f r4 r2 |
    ees2. bes4 |
    \lo b \sh b r4 r2 |
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
  cause of the Won -- der -- ful things he does we're off 
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
  ter her left and ev -- 'ry -- one doubt
  ru -- lent fact that he a
  ka -- ble in -- cin
  ces for -- cing malls
  cles be -- co -- ning child -- ren to the door
  Have -- n't we heard it be -- fore
  Oh what a bore
  When you've a wi -- zard that is hard to ig -- nore
  I took his ra -- di -- a -- teur out
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
  Hey! Hey! Hey! Hey!
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
  e2 r4 g |
  \clef treble
  a b c d |
  \lo e8 f4 \sh g8 \lo r \sh a ~ a4 |
  f4 e d c |
  b2 r4 a |
  f'4 d b d |
  c a g g |
  b c d c |
  a' g f e |
  d c^\< c' c |
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
  f4 \lo g \sh g \lo aes \sh aes bes8. g16 ~|
  g8 aes f r r2 |
  r2. d4^\mf |
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
  r4 f, ~ f g |
  aes2 g4 c |
  d1^\dim ~ |
  d4 des ~ des2 ~ |
  des4 c4 ~ c ces^\p |
  r4 bes^\cresc r ces |
  r c r d |
  r c r ces |
  r bes r g |
  r c r e |
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
    ees8. des des des des4-. |
    r2 ees4-. \lo r8 \sh bes |
    \times 2/3 { ees f fis } \lo g \sh ees \lo c \sh bes \lo g \sh ees |
    \lo ees' \sh d ~ d4 \lo r8 \sh g, \times 2/3 { aes c ees } |
    \lo g8 \sh c, \lo f \sh g \lo ees \sh c \lo bes \sh aes |
    \lo g ees'4 \sh cis8 \lo d \sh bes \lo g \sh f |
    \lo g8 aes4 \sh bes8 \times 2/3 { aes c ees } \lo bes' \sh aes |
    \lo g \sh bes \lo g \sh ees \lo c \sh d \lo e \sh c |
    f4-. r r2 |
    R1 |
    \times 2/3 { r2 g f} |
    \times 2/3 { ees ees d } |
    c1 |
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
  I took his ra -- di -- a -- teur out 
  He did -- n't know it was a -- bout to ex -- plode
  It would scat -- ter o -- ver the yel -- low brick road
  \repeat unfold 4 Hey! No?
  The Wi -- zard of Oz, he was an a -- ca -- de -- mic
  Al -- ler -- gic to work -- in' if it meant he'd lift a fin -- ger
  The Wi -- zard was a swin -- ger 
  That ten -- ded to lin -- ger
  In his of -- fice mul -- ling o -- ver books
  He had all of the keys
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
  aes2.^\p^\< fis4 |
  \lo g8^\mf \sh g r4 r fis^\mp |
  g4^\< \lo g8 \sh g \lo g \sh g fis4 |
  g4 \lo g8 \sh g ~ \lo g \sh c-- ~ c4 |
  g8^\mf^\straight aes g f ees aes g f |
  ees ees^\< d ees e f fis g |
  aes4^\f ees c bes |
   \lo a8 ( ges'4 ) \sh f8 ~ \lo f \sh a-> ~ a4 |
   bes4 f d c |
  \lo b8 ( aes'4 ) \sh g8 ~ \lo g  \sh b-> ~ b4 |
  r2 c4^\p b |
  a2.^\p^\< ais4^\> |
  \lo b8-.^\mp \sh b-. r4 aes2^\p^\< ~ |
  aes4 a^\> \lo b8-.^\mp \sh b-. r4 |
  r4 b^\p^\< ~ b2 ~ |
  b2.^\> bes4 |
  \lo a8-.^\mp \sh a-. r4 d2^\p^\< ~ |
  d2.^\> cis4 |
  \lo c8^\mp-. \sh c-. r4 c2^\p^\< ~ |
  c4 c^\> \lo b8^\mp-. \sh b8-. r4 |
  r4 b^\p^\< ~ b bes^\> |
  \lo a8^\mp-. \sh a8-. r4 \lo ais8-.^\p \sh ais-. r4 |
  r4 g^\< ~ g gis4 |
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
  \lo c \sh bes r4 \lo bes \sh c \lo bes \sh aes |
  \lo r8 \sh c, \times 2/3 { f8 fis g } \lo aes \sh a \lo bes \sh g ~ |
  \lo g c4 \sh f, r2 |
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
  bes4 r r2 |
  R1 |
  r4 aes4 ~ aes2 ~ |
  aes4 fis \lo g8 \sh g r4 |
  r2 c2 ~ |
  c4 b \lo bes8 \sh bes r4 |
  bes1^\dim ~ |
  << { bes1  }{ s2. s4^\p } >> |
  R1 |
  g2 g4-.^\cresc g-. |
  \lo g8 g4 \sh g8 ~ \lo g \sh g \lo g \sh g |
  g4-. g-. fes-. fes-.
  \lo ees8 ees4 \sh ees8 ~ \lo ees \sh ees \lo ees \sh ees |
  f4-. f-. fis-. fis-. |
   \lo g8 aes4 \sh bes8 ~ \lo bes \sh c^\ff \lo c \sh c |
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
  \lo f8 \sh b \times 2/3 { bes ges d } \lo ces \sh r8 bes'4 |
  ees bes g aes |
  bes ees ~ ees bes |
  \times 2/3 { c bes aes } \times 2/3 { g aes f } |
  ees2. g4 |
  ees4 ees ees' ees |
  \lo d8 \sh d \lo d \sh c ~ \lo c \sh c ~ c4 |
  \lo f \sh f \lo f \sh f ~ \lo f d4 \sh bes ~  |
  bes2. bes4 |
  \lo c8 \sh c \lo c \sh c ~ \lo c \sh c \lo d \sh ees ~ |
  \lo ees bes4 \sh g8 ~ \lo g bes4 \sh aes8 ~ |
  \lo aes aes4 \sh g8 ~ \lo g8 f4 \sh aes8 |
  g4 f ees ees |
  ees ees ees' ees |
  d d c c |
  \times 2/3 { f2 f ees } |
  \times 2/3 { d d c } |
  b1 |
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
  Wi -- zard
  He's my Wiz my Wiz be -- cause be -- cause be -- cause of the Won -- der -- ful things he does
  be -- cause be -- cause be -- cause
  Be -- cause of the Won -- der -- ful things he does
  Won -- der -- ful things Won -- der -- ful things be -- cause of the Won -- der -- ful things he does
  Be -- cause of the Won -- der -- ful things he does
  der -- ful things Won -- der -- ful
  Be -- cause of the Won -- der -- ful things he does
  Won -- der -- ful things
  Won -- der -- ful things
  Be -- cause of the Won -- der -- ful things he does
  He's my Wi -- zard
  He's my Wi -- ard
  cause
  Oz lou -- sy swing -- in' Wiz
  he's tak -- in' dimp -- led bows, he's fling -- in' rizz
  and with his pimp -- led sows he's sing -- in' Bliz -- 
  ard what a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz
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
   bes ees^\> ~ ees bes |
   g^\mp^\< \lo aes8 \sh aes \lo bes \sh bes c4 |
   des \lo c8 \sh bes ~ \lo bes8 \sh aes-- ~ aes4 |
   g^\mf r bes r |
   bes8 ees^\< d des c b bes a |
   aes4^\f r r2 |
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
   r d r aes |
   r g r d' |
   r c r g |
   r c^\< d \lo dis \sh e ~ |
   e^\f e^\mf r bes |
   r a r ees'^\> |
   d^\p^\< d d \lo d8 \sh d8 |
   \lo d \sh d d4 \lo d8 aes4 \sh g8^\f |
   \lod r4. \sh g8  \lod r4. \sh g8  |
    \lod r4. \sh g8  \lo r \sh g8-- ~ g4 |
    R1*8 |
    r2. d'4^\mf |
    g,4 \lo a8 \sh a \lo bes \sh bes c4 |
    d4 \lo ees \sh d ~ \lo d \sh r \lo d \sh ees |
    \lo d \sh c r4 \lo c \sh d \lo c \sh bes |
    \lo r8 \sh fis \times 2/3 { g gis a } \lo bes \sh c bes8. a16 ~ |
    a8 f' ~ \lo f8 \sh bes,8 r8 d \times 2/3 { bes d f } |
    bes4 \times 2/3 { bes,8 d f } \lo bes \sh c \lo bes \sh a |
    r4 a4 ~ \lo a8 \sh bes \lo a \sh a,8 |
    d4 \lo e8 \sh e \lo fis \sh fis g4 |
    a4 \lo bes8 \sh a r2 |
    r2. bes,4 |
    ees4 \lo d8 \sh d8 \lo c \sh c bes4 |
    \lo aes8 g4 \sh f8 ~ \lo f \sh bes ~ bes4 |
    ees4 \lo f8 \sh f \lo g \sh g aes4 |
    bes4 \lo aes8 \sh g r4 \lo g8 \sh aes |
    \lo g \sh f r4 \lo f8 \sh g \lo f \sh ees |
    r4 \lo ees8 \sh f \lo ees d4 \sh g8 ~ |
    \lo g8 c,4 \sh ees8 \times 2/3 { c ees g } \lo c \sh des |
    \lo c \sh bes \lo a \sh g f4 a,4 |
    bes4 c bes aes |
    g bes ees \lo f8 \sh f |
    \lo g8 \sh g aes4 \lo bes8 aes4 \sh g ~ |
    \lo g bes4 \sh g  \lo ees8 \sh g,^\p^\cresc \lo g \sh g |
    aes4-. aes-. a-. a-. |
    \lo bes8 bes4 \sh c ~ \lo c \sh g \lo g \sh ges |
    f4 f ces' ces |
    \lo bes8 g4 \sh aes ~ \lo aes \sh g \lo g \sh g |
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
    \lo g8 aes4 \sh bes8 ~ \lo bes \sh c8 ~ c4 |
    aes4 \lo bes \sh bes \lo c \sh c d4 |
   \lo  ees8  \sh c \lo aes \sh f \lo r f4 \sh f8 |
    g8 r16 aes8.^\f a bes aes4-. |
}

bassWords = \lyricmode {
  \repeat unfold 4 { Be -- cause of the won -- der -- ful things he does }
  \repeat unfold 4 { Be -- cause }
  Be -- cause of the Won -- der -- ful things he does
  Be -- cause of the Won -- der -- ful things he does.
  Be -- cause of the Won -- der -- ful things he does.
  Be \repeat unfold 8 ○
  cause the der things he does.
  We're off to see We're off to see the Won -- der Won -- der Wiz of
  Oz the Wi -- zard Oh what a Wi -- zard
  Oz the Wi -- zard Oh what a Wi -- zard he's the Wiz.
  Wi -- zard
  We're off to see the Wi -- zard
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
  He's my, my Wiz be -- cause
  He's my Wiz be -- cause be cause of the Won -- der -- ful things he does cause cause cause be
  Be -- cause of the Won -- der -- ful thigns he does.
  Won -- der -- ful things
  Won -- der -- ful things be -- cause of the Won -- der -- ful things he does.
  Be -- cause of the Won cause of the Won -- der -- ful things Won -- der -- ful
  Be -- cause of the Won -- der -- ful things he does
  Be -- cause of the Won -- der -- ful things he does
  Be -- cause of the Won -- der -- ful things he does
  Won -- der -- ful things
  Won -- der -- ful things
  Won -- der -- ful things he does
  Be -- cause of the Won -- der -- ful the Won -- der -- ful
  my Wiz
  be -- cause the Won be -- cause of the Won -- der -- ful things he does
  things he does
  he is a sim -- ple, lou -- sy swing -- in' Wiz
  he's tak -- in' dimp -- led bows, he's fling -- in' rizz
  and with his pimp -- led sows he's sing -- in' Bliz -- 
  ard what a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz, a Wiz
  a' -- ter he left
  And doub -- ted
  lent fact that he a
  would tra -- vel re -- mark -- a Wiz of Oz
  \repeat unfold 18 ○ 
  cause of the Won -- der -- ful things he does be
  cause of the Won -- der -- ful
  Won -- der -- ful things
  Wiz of Oz Hey! Hey! Hey! Hey!
}

%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
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
      } {
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
