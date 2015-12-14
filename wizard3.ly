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

%{
  one idea for the piece is that all the accompaniment is restricted to
  just the material in the beginning.
  i can't believe i've worked on this for two years without results and had
  this random idea on a TER to Saint-Omer at 8:12AM on Monday, December 14th.

  intro as planned
  C major wizard
  fugue on bass theme
%}

%#(ly:set-option 'point-and-click #f)

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
  subtitle = \markup { for Art Tatum }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 2/2
  \tempo "Allegro" 2=120
  \partial 4
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
  a4\mf-_ r \lo r8 \sh ees'8^\fp^\< ~  ees4 |
  \times 2/3 { des4^\f r2 } \times 2/3 { r4 aes' f } |
  des4-. r \lo r8 \sh ges^\fp^\> ~ ges4 |
  g4 \lo f8 \sh f8 \lo ees8 \sh ees d4 |
  ees4^\mp \lo ees8 \sh ees8 \lo r \sh ees ~ ees4 |
  ees4 \lo ees8 \sh ees \lo ees \sh ees ees4 |
  ees4 \lo ees8 \sh ees r2 |
  R1 |
  r2 \lo r8 \sh fis ~ fis4 |
  g4-. r r2 |
  r2 \lo r8 \sh a8 ~ a4 |
  f4 aes g g |
  \lo aes8 ( f4 ) \sh ges8 ~ \lo ges8 \sh ees8 ~ ees4 |
  \times 2/3 { d4 d d } \times 2/3 { d d d } |
  \times 2/3 { ees4 ees ees } \times 2/3 { d d d } |
  \times 2/3 { e e dis } \times 2/3 { d des bes } |
  R1*3 |
  r2 \times 4/5 { r8 g' b g b } |
  g1-\bendAfter #-3 |
  R1 |
  r2 g ~ |
  g4 ges ~ ges ges4 |
  \lo aes8 \sh aes8 r4 \lod r4. \sh bes8 ~ |
  \lo bes \sh bes \lo aes \sh aes \lo g \sh g \lo f \sh f |
  \lo ees \sh ees \lo r \sh ees  \lo ees \sh ees \lo r \sh ees |
  \lo g bes4 \sh bes ~ \lo bes \sh g ees4 |
  bes'4-. aes8 bes16 aes g4 f |
  ees d c ces |
  bes8 aes' g f ees r r4 |
  r8 ees d ees d ees d des |
  c4 ees c bes |
  \lo a8 ges'4 \sh f8 ~ \lo f \sh ees ~ ees4 |
  d4 f d c |
  \lo b8 aes'4 \sh g8 ~ \lo g  \sh f ~ f4 |
  \times 2/3 { r4 g f } \lo e d4 \sh c ~ |
  \lo c g'4 \sh c ~ \lo c \sh a ~ a4 |
  \times 2/3 { c, c c } \times 2/3 { d d dis } |
  e4 r f r |
  f e d g |
  e d \lo cis8 \sh c8 ~ c4 |
  \times 2/3 { c c b } c cis |
  \times 2/3 { d d dis } e g |
  \times 2/3 { f4 f4 f } \times 2/3 { f f f } |
  e4 a c, d |
  \times 2/3 { dis dis e } f4 r |
  \times 2/3 { f f e } d r |
  \lod r4. a'4 a \sh r8 |
  \lod r4. fis4 fis \sh e8 ~ |
  e2 a4 b |
  c2 a |
  g4 g aes aes | %<cis e g b>
  g g \lo aes8 ges4 \sh g8 |
  \lo r8 d4 \sh g,8 \lo r8 d'4 \sh g,8 |
  \lo r8 d'4 \sh g,8 r2 |
  R1*8 |
  r4 \lo d''8 \sh ees \lo d \sh c r4 |
  \lo c8 \sh d \lo c \sh bes
}

sopranoWords = \lyricmode {
  \repeat unfold 5 { Oh, the Wiz }
  I could while a -- way
  If ev
  oh ev -- ver oh ev oh ev Be ev er oh ev
  Be -- cause of the Won -- der -- ful things he does.
  Be -- cause of the Won -- der -- ful things he does.
  Be -- cause
  We're off to see the Wi -- zard
  the
  Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard of
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
  \lo g8-. \sh g8-. r4 r4 ges4 |
  f-. r \lo r8 \sh des ~ des4 |
  c4-. r \lo r8 \sh ees ~ ees4 |
  d4-. r \lo d'8 \sh d, ~ d4 |
  ees-. r \lo r8 \sh ges ~ ges4 |
  \times 2/3 { f4 aes f } \times 2/3 { des des des } |
  \lo f8 ees4 \sh des8 \lo r8 \sh ees ~ ees4 |
  d4 \lo c8 \sh c8 \lo bes8 \sh bes ces4 |
  bes4 \lo bes8 \sh bes8 r2 |
  R1 |
  R |
  R |
  R1 |
  \times 2/3 { r4 ees' r } \times 2/3 { ees r ees } |
  r4 \lo ees8 \sh ees,8 \lo r \sh ges8 ~ ges4 |
  des4 ees ees ees |
  \lo ees8 ( des4 ) \sh c8 ~ \lo c \sh c8 ~ c4 |
  \times 2/3 { bes bes bes } \times 2/3 { c c c } |
  \times 2/3 { des des des } \times 2/3 { c c c } |
  \times 2/3 { cis d cis } \times 2/3 { c bes aes } |
  R1*3 |
  r2 \times 4/5 { r8 ees' g ees g } |
  ees1-\bendAfter #-3 |
  R1 |
  r2. ees4 ~ |
  ees2. ees4 |
  \lo ees8 \sh ees8 r4 \lod r4. \sh f8 ~ |
  \lo f8 \sh f \lo ees \sh ees \lo d \sh d \lo c \sh c |
  \lo bes8 \sh bes \lo r \sh bes \lo ces \sh ces \lo r \sh ces |
  \lo d f4 \sh g ~ \lo g \sh ees ees4 |
  \lo ees8 \sh ees \lo ees \sh ees \lo ees \sh ees \lo ees \sh ees |
  ees4 r r2 |
  ees8 r r4 r8 aes g f |
  ees ees d ees d ees d ees |
  ees4 ees c bes |
  \lo a8 bes4 \sh  c8 ~ \lo c \sh c ~ c4 |
  bes4 f' d c |
  \lo b8 c4 \sh d8 ~ \lo d  \sh d ~ d4 |
  e4 r c''2 ~ |
  c2 \lo r8 \sh bes,,8 ~ bes4 |
  \times 2/3 { a4 a a } \times 2/3 { b b b } |
  b4-. r des r |
  c2. r4 |
  \lo d8 \sh d8 r4 \lo g8 \sh g8 r4 |
  \lo f8 \sh f8 r4 f fis |
  g r c, r |
  \times 2/3 { a'4 a aes } \times 2/3 { g g g } |
  g4 fis d c |
  \times 2/3 { cis4 cis cis } cis r |
  \times 2/3 { c c c } b r |
  \lod r4. g'4 g \sh r8 |
  \lod r4. ees4 ees4 \sh d8 ~ |
  d2 f |
  e g |
  e4 e f f |
  ees ees \lo e8 ees4 \sh d8 |
  \lo r8 b4 \sh g8 \lo r8 b4 \sh g8 
  \lo r8 b4 \sh g8 r2 |
}

mezzoWords = \lyricmode {
  \repeat unfold 4 { He's my Wi -- zard }
  If ev
  oh ev
  oh ev -- er oh ev Be ev -- er oh ev -- er oh things he does
  Be -- cause of the Won -- der -- ful things he does.
  of Won ful
  he does.
  We're off to see the Wi -- zard the Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard of
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
  \lo g8 bes4 \sh ees8  \lo r \sh c ~ c4 |
  des4 \lo c8 \sh c \lo bes \sh bes aes4 |
  \lo g8 f4 \sh ees8 ~ \lo ees8 \clef "treble_8" \sh d ~ d4 |
  d4 \lo c8 \sh c \lo bes \sh bes aes4
  \lo g8 bes4 \sh ees8 ~ \lo ees8 \sh ees ~ ees4 |
  \clef "treble"
  \times 2/3 { ees4 ees' ees, } \times 2/3 { ees' ees, ees' } |
  ees,4-.\lo ees'8 \sh ees,8 \lo r \sh ees'8 ~ ees4 |
  des4 c bes ees |
  \lo c8 ( bes4 ) \sh aes8 ~ \lo aes8 \sh f8 ~ f4 |
  \times 2/3 { e4 e e } \times 2/3 { f f f } |
  \times 2/3 { fis fis fis } \times 2/3 { g g g } |
  \times 2/3 { gis g fis } \times 2/3 { f e d } | 
  R1*3 |
    r2 \times 4/5 { r8 bes' ees bes ees } |
  bes1-\bendAfter #-3 |
  R1 |
  R1 |
  bes2 d4 c |
  \lo bes8 \sh bes r4 \lod r4. \sh d8 ~ |
  \lo d8 \sh d \lo c \sh c \lo bes \sh bes \lo aes \sh aes |
  \lo g \sh ees \lo f \sh g \lo aes \sh f \lo g \sh aes |
  \lo bes ees4 \sh ees8 ~ \lo ees \sh bes \times 2/3 { ees, g bes } |
  des4 c8 des16 c \lo bes8 \sh fis \lo g \sh aes |
  \lo g \sh ees \lo f \sh ees ~ ees aes^\straight g f |
  ees r r4 r8 aes g f |
  ees ees d ees e f fis g |
  aes4^\swung ees c bes |
  \lo a8 ges'4 \sh  f8 ~ \lo f \sh f ~ f4 |
  bes4 f d c |
  \lo b8 aes'4 \sh g8 ~ \lo g  \sh g ~ g4 |
  c4 b a g |
  \lo f8 e4 \sh d8 ~ \lo d \sh f ~ f4 |
  \times 2/3 { e e e } \times 2/3 { f f fis } |
  g4 r a r |
  f a b a |
  \lo g8 \sh e \lo g8 \sh a ~ \lo a \sh fis ~ fis4 |
  \times 2/3 { g g g } a ais |
  b2 g |
  c4 \lo d8 \sh c \lo bes \sh a g4 |
  \lo a8 c4 \sh f,8 ~ \lo f fis4 \sh g ~ |
  \lo g \sh f \lo e \sh d ~ \lo d ais'4 \sh b ~ |
  \lo b8 a4 f d \sh c ~ |
  \lo c c4 c' c \sh b8 ~ |
  \lo b b4 a a \sh gis8 ~ |
  gis4 e e' d |
  c a d c |
  b4 b c \lo c8 \sh c |
  \lo cis \sh cis cis4 \lo d8 b4 \sh g |
  \lo r8 g4 \sh g,8 \lo r g'4 \sh g,8 |
  \lo r8 g'4 \sh g,8 \lo r \sh g' ~ g4 |
  ees4 \lo f8 \sh f \lo g \sh g aes4 |
  bes4 \lo aes8 \sh g ~ \lo g \sh r \lo g \sh aes |
  \lo g \sh f r4 \lo f8 \sh g \lo f \sh ees8 |
  \lo r \sh g, \times 2/3 { c cis d } \lo ees \sh e f8. d16 ~ |
  d8 g ~ \lo g8 \sh c,8 r8 ees \times 2/3 { c ees g } |
  c4 \times 2/3 { c,8 ees g } \lo c \sh des \lo c \sh bes |
  r4 \lo bes8 \sh c \lo bes \sh aes \lo r \sh c, |
  f4 \lo g \sh g \lo aes \sh aes bes8. g16 ~|
  g8 c f,
  
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
  \lo f \sh fis \lo f \sh g \lo r \sh bes \lo r \sh a |
  aes4-. r \lo r8 \sh f ~ f4 |
  ges4-. r \lo r8 \sh ges ~ ges4 |
  f-. r \lo r8 \sh f ~ f4 |
  ges-. r \lo ees'8 \sh a, ~ a4 |
  aes4 \lo aes8 \sh aes8 \lo aes8 \sh aes8 bes4 |
  \lo c8 bes4 \sh aes8 \lo r8 \sh beses ~ beses4 |
  aes4 \lo aes8 \sh aes \lo aes \sh aes aes4 |
  g4 \lo g8 \sh g8 \lo r \sh c ~ c4 |
  bes4 \lo aes8 \sh aes \lo g \sh g f4 |
  ees4 \lo f8 \sh g ~ \lo g \sh a ~ a4 |
  aes4 \lo ees8 \sh ees8 \lo d \sh d c4 |
  \lo bes8 ees4 \sh g8 ~ \lo g \sh aes ~ aes4 |
  \times 2/3 { g4 r ees' } \times 2/3 { r ees r } |
  ees4-. \lo r8 \sh ees8 \lo r \sh c ~ c4 |
  bes4 aes bes bes |
  \lo aes8 ( bes4 ) \sh c8 ~ \lo c8 \sh aes8 ~ aes4 |
  \times 2/3 { g g g } \times 2/3 { aes aes aes } |
  \times 2/3 { a a a } \times 2/3 { aes aes aes } |
  \times 2/3 { a bes a } \times 2/3 { aes g e } |
  R1*3 |
  r2 \times 4/5 { r8 ces' ees ces ees } |
  ces1-\bendAfter #-3 |
  R1 |
  r4 ces ~ ces2 ~ |
  ces2. c4 |
  \lo c8 \sh c8 r4 r2 |
  R1 |
  r4 g r f |
  r4 fis r \times 2/3 { c'8 bes aes } |
  \lo g8 \sh g \lo g \sh g \lo g \sh g \lo g \sh g |
    \lo g8 \sh g \lo g \sh g \lo g \sh g \lo g \sh g |
  g8^\straight aes g f ees aes g f |
  ees ees d ees e f fis g |
  aes4 ees c bes |
   \lo a8 ges'4 \sh f8 ~ \lo f \sh a ~ a4 |
   bes4 f d c |
  \lo b8 aes'4 \sh g8 ~ \lo g  \sh b ~ b4 |
  c4 c4 c c |
  \lod c4. \sh c8 ~ \lo c8 \sh g ~ g4 |
  \times 2/3 { f4 f f } \times 2/3 { aes4 aes aes } |
  g4 r bes r |
  a2. r4 |
  \lo b8 \sh b r4 \lo d \sh d r4 |
  \lo a8 \sh a r4 d dis |
  f4 r bes, cis4 |
  \times 2/3 { d d d } \times 2/3 { d d des }
  c4 ees a, b |
  \times 2/3 { a a a } a r |
  \times 2/3 { a a a } aes r |
  \lod r4. e'4 e \sh d8 ~ |
  \lo d d4 c c \sh b8 ~ |
  b2 cis |
  gis f' |
  cis4 cis bes bes |
  a ais \lo b8 c4 \sh b8 |
  \lo r8 g4 \sh g8 \lo r8 g4 \sh g8 
  \lo r8 g4 \sh g8 r2 |
  R1*5 |
  \lodd r2.. \sh c,8 |
  f4 \lo g8 \sh g \lo aes \sh aes bes4 |
  c4 \lo des8 \sh c r4 \lo c8 \sh des |
  \lo c \sh bes r4 \lo bes \sh c \lo bes \sh aes |
  \lo r \sh c, \lo f \sh g \lo aes \sh a \lo bes
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
  ees4 \lo bes8 \sh ees, r4 ees' |
  des4-. r \lo r8 \sh b ~ b4 |
  c4-. r \lo r8 \sh a ~ a4 |
  bes4-. r \lo r8 \sh g ~ g4 |
  aes4-. r \lo r8 \sh c ~ c4 |
  des4 \lo ees8 \sh ees \lo f \sh f ges4 |
  \lo aes8 ges4 \sh f8 \lo r \sh ces ~ ces4 |
  bes4 \lo bes8 \sh bes \lo bes \sh bes bes4 |
  ees4 \lo c8 \sh bes \lo r \sh aes ~ aes4 |
  g4 \lo g8 \sh g \lo aes \sh aes aes4 |
  a4 \lo a8 \sh bes ~ \lo bes8 \sh ges ~ ges4 |
  f g aes f |
  g aes bes ces |
  \times 2/3 { bes4 r ees } \times 2/3 { r ees r } |
  ees4 \lo ees8 \sh ees \lo r8 \sh a, ~ a4 |
  bes4 c des bes |
  c des ees c |
  b2 bes |
  a bes |
  b c |
  aes4 r ces r |
  bes4 \lo r8 \sh ees,8 \lod r4. \sh aes8 |
  \lod r4. \sh aes r4 ces |
  bes4 r ees, r |
  aes4 r ces r |
  bes4 \lo r8 \sh ees,8 \lod r4. \sh aes8 |
   \lod r4. \sh aes r4 ces |
   bes f g a |
   bes4-. r \lo bes8-. \sh bes-. r4 |
   r2. bes4 |
   g bes aes ces |
   bes aes g f |
   g aes bes ces |
   bes b c f, |
   bes r bes r |
   bes8 ees d des c b bes a |
   aes4 r r2 |
   r2 \lo r8 \sh f ~ f4 |
   bes4 r r2 |
   r2 \lo r8 \sh g ~ g4 |
   c r g r |
   c r \lo a8 \sh cis ~ cis4 |
   \times 2/3 { d d d } \times 2/3 { g, g g } |
   c4-. r ges-. r | %<ges bes' des f a>
   f4 r d' dis |
   e bes a ees' |
   d4 r a aes |
   g4 r g r |
   f r bes b |
   c bes a aes |
   g r ees r |
   d r g r |
   e' r r c |
   d d dis dis |
   e r bes r |
   a r ees' r |
   d d d d |
   d d \lo d8 aes4 \sh g8 |
   \lod r4. \sh g8  \lod r4. \sh g8  |
    \lod r4. \sh g8  \lo r g4 \sh r8 |
    R1*8 |
    r2. d'4 |
    g, \lo a8 \sh a \lo bes \sh bes c4 |
    d4 \lo ees \sh d ~ \lo d \sh r \lo d \sh ees |
    \lo d \sh c r4 \lo c \sh d \lo c \sh bes |
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
  Oz the Wi -- zard Won -- der -- ful Wi -- zard
  Oz the Wi -- zard Won -- der -- ful Wi -- zard Wiz of Oz.
}

%%% SCORE
#(set-global-staff-size 16)

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
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
