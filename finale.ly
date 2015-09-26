#(set-global-staff-size 15.87)

%%%%%% e fis b, cis ais'

%{
  generally, it is too stacky and is just using tactuses to change propulsion
  rely more on suspensions
  %%xxxxxxx
  keep tenor at original octave
  slightly slower at wonderful in chorale?
  ?????????? cinq voix
  keep as Wi -- zard in m. 27
  test articulating each syllable m. 29
  cesure between 2 & 3 ? m. 30
  "ever oh ever" in 36 is bad in alto
  alto e ees m. 38
  start qnote triplets m. 40
  suspension over bar into 41, otherwise it deflates (this can even be soprano - this is a dangerous moment, sois jusqu'au-boutiste!)
  clearly indicate breating all over!
  f-sharp in tenor is ugly m. 42
  alto x4 x x x ~ | x x x ( x ~ | x ) x x8 [ x ] |  (similar tenor) m. 44-46
  alto 8th on 1st beat m. 47
  bring tenor along m. 48
  tenor x4. x8 x x x | m. 49
  d in mezzo needs to stay over bar, c not important, too heavy m. 50
  bass can pick up the slack, low D is too lourdingue
  bass sucks m. 51
  bass can be on "ra cu lous" m. 53
  make sure to get changes from recording and handwriting on score m. 53
  bass needs to telescope down m. 56
  bass needs to follow recording m. 58
  save m. 63
%}

\version "2.17.0"
\include "defs-devel.ly"

#(load "swing.scm")

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)
#(set-accidental-style 'modern-cautionary)

rall = \mark \markup \italic "rall."
moltorall = \mark \markup \italic "molto rall."

myred = \once \override NoteHead #'color = #red
myblue = \once \override NoteHead #'color = #blue
myorange = \once \override NoteHead #'color = #(x11-color 'orange)
mydarkgreen = \once \override NoteHead #'color = #darkgreen
mydarkmagenta = \once \override NoteHead #'color = #darkmagenta
mydarkyellow = \once \override NoteHead #'color = #darkyellow

myfinalred = \myred
myfinalblue = \myblue
myfinalorange = \myorange
myfinalgreen = \mydarkgreen
myfinaldarkmagenta = \mydarkmagenta
myfinaldarkyellow = \mydarkyellow

%mFR = \myfinalred
%mFB = \myfinalblue 
%mFO = \myfinalorange
%mFG = \myfinalgreen 
%mFM = \myfinaldarkmagenta
%mFY = \myfinaldarkyellow

mFR = {}
mFB = {}
mFO = {}
mFG = {}
mFM = {}
mFY = {}



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

\header {
  title = "Finale: Sit Ozfårs Wndrföl Wysr"
  subtitle = \markup \center-column { "for Marie Perbost" \normal-text \small "tu veux une finale ? voilà ta finale. t'es contente ?? t'es contente ?!?!? " }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

prefatoryMatter = {
  \autoBeamOff
}

marksChorale = {
  \tempo "Moderato" 4=68
  \time 4/4
  %\partial 4
  %s4 |
  s1 |
  s1*24 |
}

sopranoChorale = \relative c' {
  \key aes \major
  s2. ees4^\mp |
  aes ees c des |
  ees aes ~ aes ees |
  f ees8 des c4 des8 bes |
  aes2. c4 |
  aes aes aes' aes |
  g4 g8 g f4 f |
  bes bes8 bes bes4 g |
  ees2 r4 ees |
  f4 f8 f f4 f8 g |
  aes4 ees c ees |
  des4 des8 c bes4 des |
  c bes aes aes |
  aes aes aes' aes |
  g g f f |
  bes1 ~ |
  bes2 r4 aes4 |
  bes bes8 bes bes4 bes8 bes |
  bes4 g ees2 |
  des'4 c8 bes aes4 g8 f |
  ees2 ees |
  aes4 ees c des |
  ees aes ~ aes bes |
  c c8 c bes4 c8 bes |
  aes2. \breathe g4^\mf |
}

sopranoChoraleWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there
  was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause of the won -- der -- ful things he does.
  Won -- der -- ful things that he does.
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
}

mezzoChorale = \relative c'' {
  \key aes \major
  s2. r4 |
  R1*23 |
  r2. \breathe g4^\mf |
}

mezzoChoraleWords = \lyricmode {
  We're
}

altoChorale = \relative c {
  \clef "treble_8"
  \key aes \major
  s2. r4 |
  R1 |
  ees2^\mp\startGroup ees\stopGroup |
  aes1 |
  \clef treble
  c4\startGroup des ees aes\stopGroup |
  c,4\startGroup c8 c\stopGroup f4\startGroup f\stopGroup |
  ees2. r4 |
  f4\startGroup f8 f\stopGroup des4\startGroup ees\stopGroup |
  r ees\startGroup aes ees |
  c\stopGroup r des\startGroup ees\stopGroup |
  c'4\startGroup c8 c bes4 c8 bes |
  aes4\stopGroup aes\startGroup g g\stopGroup |
  ees2\startGroup ees\stopGroup |
  aes4\startGroup ees c des |
  ees aes ~ aes ees\stopGroup |
  des4\startGroup c8 bes\stopGroup f'4\startGroup ees8 des\stopGroup |
  aes'4\startGroup g g f\stopGroup |
  f8\startGroup f f4 f8 g aes4\stopGroup |
  g4\startGroup ees2.\stopGroup |
  f4\startGroup f8 f f4\stopGroup bes,4\startGroup
  bes bes8 bes bes4 bes8 bes\stopGroup |
  g4\startGroup g8 g f4 f\stopGroup |
  ees'\startGroup c\stopGroup f4\startGroup f8 g |
  aes4\stopGroup des,\startGroup ees\stopGroup g8\startGroup g |
  f4\stopGroup ees2 \breathe f4^\mf |
}

altoChoraleWords = \lyricmode {
  does. We're Oz
  see the Wi -- zard
  won -- der -- ful wiz if
  was
  ev -- er oh the wiz
  We're off to see
  the wiz
  Won -- der -- ful Wi -- zard of Oz
  be cause be
  does. We're
  off to see the Wi -- zard the
  won -- der -- ful
  won -- der -- ful
  be -- cause be -- cause
  ver oh ev -- er a wiz
  there was
  ev -- er oh ev
  be -- cause of the won -- der -- ful
  wiz of a wiz if
  to see
  ev -- er a wiz
  the wiz
  of a wiz
  does We're
}

tenorChorale = \relative c' {
  \clef "treble_8"
  \key aes \major
  s2. r4 |
  c4^\mp\startGroup des8 bes aes4\stopGroup bes\startGroup |
  des c bes aes\stopGroup |
  des4\startGroup c8 bes aes4\stopGroup f8\startGroup g |
  aes4 ees c ees\stopGroup |
  f4\startGroup f8 f f4\stopGroup f\startGroup |
  bes1\stopGroup |
  des4\startGroup des8 c bes4 des |
  c bes\stopGroup f\startGroup f |
  bes4 bes8 bes\stopGroup bes4\startGroup bes8 bes\stopGroup |
  c4\startGroup des ees aes\stopGroup |
  f4\startGroup f bes4 bes8 bes |
  bes4 g ees\stopGroup c\startGroup |
  des ees\stopGroup f4\startGroup f\stopGroup |
  bes,4\startGroup des c\stopGroup aes\startGroup |
  bes4 bes8 bes\stopGroup des4\startGroup c8 bes\stopGroup |
  f'4\startGroup ees8 des c4 des8 bes\stopGroup |
  des4\startGroup des8 c bes4 des4 |
  c bes\stopGroup g\startGroup ees\stopGroup |
  des'8\startGroup bes aes2.\stopGroup |
  g4\startGroup g8 g f4\stopGroup des'4\startGroup |
  c4 bes aes aes |
  aes aes aes'\stopGroup f4\startGroup |
  f4 f8 f\stopGroup des4\startGroup ees\stopGroup |
  c4\startGroup des8 bes\stopGroup c4 \breathe b^\mf |
}

tenorChoraleWords = \lyricmode {
  Wi -- zard of Oz Oz
  is one be -- cause
  Won -- der -- ful things ver a
  Wiz there was the
  ev -- er, oh ev
  be -- cause
  Wi -- zard of Oz is one be
  wiz if e -- ver the
  won -- der -- ful
  see the Wi -- zard
  wiz if ev -- er a wiz there was
  see the wiz wiz if
  Oz is one be -- cause of the
  won  -- der -- ful
  won -- der -- ful Wi -- zard of
  Wi -- zard of Oz is one be
  there was
  wiz of Oz
  wiz of a wiz
  is one be -- cause be -- cause be -- cause
  if ev -- er oh the wiz
  Wi -- zard of Oz We're
}

bassChorale = \relative c' {
  \clef "bass"
  \key aes \major
  s2. r4 |
  R1*8 |
  des4^\mp\startGroup c8 bes aes4 g8 f |
  ees2 ees\stopGroup |
  bes4\startGroup bes8 bes\stopGroup ees2\startGroup |
  aes4 ees c\stopGroup g'8\startGroup g |
  f4 f\stopGroup des4\startGroup des8 c |
  bes4\stopGroup ees\startGroup f f8 f\stopGroup |
  f4\startGroup f\stopGroup bes,2 ~ |
  bes ees4\startGroup f\stopGroup |
  f8\startGroup g aes4\stopGroup des,8\startGroup c bes4\stopGroup |
  ees2 des'4\startGroup c8 bes |
  aes4\stopGroup des,\startGroup c bes\stopGroup |
  ees2.\startGroup ees4\stopGroup |
  aes,1 |
  c4\startGroup ees des des8 c |
  bes4\stopGroup bes\startGroup g ees\stopGroup |
  f\startGroup f8 g aes4\stopGroup \breathe d4^\mf |
}

bassChoraleWords = \lyricmode {
  Won -- der -- ful things that he does we're
  cause of the
  We're
  Off to see
  of a wiz If
  Wi -- zard of Oz
  If ev -- er oh
  wiz if
  cause
  if ev
  ver the wiz
  ard of Oz
  We're
  Won -- der -- ful things
  is one be
  was
  if 
  Oz
  was the Wi -- zard of Oz
  wiz there was
  ev -- er a wiz
  We're
}

marksCinqVoix = {
  %\time 4/4
  s1*3 |
  \rall
  \unfoldChange #68 #62 #8 |
  \time 3/4
  \tempo "Adagio" 4=62
  s2.*8 |
  \time 4/4
  \rall
  \unfoldChange #62 #58 #16
  \tempo "Lento" 4=58
  s1*5 |
  \rall
  \unfoldChange #58 #54 #8
  \time 3/4
  \tempo "Larghetto" 4=54
  s2.*3 |
  \rall
  \unfoldChange #54 #48 #6
  \time 4/4
  \tempo "Largo" 4=48
  s1*2 |
  \rall
  \unfoldChange #48 #36 #16
  \time 3/4
  \tempo "Larghissimo" 4=42
  s2.*4 |
  \tempo "Grave" 4=36
  \time 4/4
  s1*2 |
}

sopranoCinqVoix = \relative c'' {
  \key c \major
  c4 g e f |
  g c ~ c g |
  a g8 f e4 f8 d |
  c8 d e f g a b c |
  d4 ( c ) b |
  c r c4 |
  b4 b b |
  a2 a4 |
  d d d |
  d ( c ) b4 |
  g2. |
  a4 g g4 |
  a2^\< a4 a |
  a2 a4 b |
  \key a \major
  cis2^\f a ~ |
  a4 e g4 cis |
  d2 d4 cis |
  b2 d |
  \key fis \major
  cis2.^\< b4 |
  ais2 ais |
  \key d \major
  fis2^\ff fis4 \glissando |
  fis'2 fis4 |
  eis2 eis4 |
  e2 e4 |
  \key g \major
  a2.^\< r4 |
  r d, ~ d8 r a'4 |
  a a8 a a4 a8 a |
  a4 fis d r8 ees |
  \key bes \major
  bes'2^\fff ~ \times 2/3 { bes8 a bes } |
  a2 ~ \times 2/3 { a8 gis a } |
  gis2. |
  g^\< |
  \key c \major
  b4^\ffff g e f |
  g b ~ b ees, |
}

sopranoCinqVoixWords = \lyricmode {
  We're off to see the Wi -- zard,
  The Won -- der -- ful Wi -- zard of Oz.
  He is the Won -- der -- ful
  We hear he is a wiz of a wiz.
  If ev -- er a wiz there was
  ev -- er.
  If ev -- er, oh ev -- er a wiz there was,
  Oh the Wi -- zard of Oz is one be -- cause
  Be -- cause, be -- cause be -- cause be -- cause be -- cause.
  ful
  Be -- cause of the won -- der -- ful things he does.
  The Won -- der -- ful things that he does.
  We're off to see the Wi -- zard of
}

mezzoCinqVoix = \relative c'' {
  \key c \major
  g4 e e d |
  \times 2/3 { e4 g'8 } \times 2/3 { g e g } c4 e,, |
  f4 e8 d c4 d8 c |
  a b c d e f f gis |
  gis4 ( a ) f4 |
  gis4 r g |
  fis f gis |
  gis ( fis ) a |
  bes bes c |
  bes ( a ) gis |
  f4 e d |
  f e ees |
  f2^\< g4 ges |
  f ( e ) fis gis |
  \key a \major
  \times 2/3 { gis^\f ( g fis ) } \times 2/3 {  fis ( f ees } |
  d4 ) cis e4 ais |
  a ( gis ) b ais |
  a2 ais |
  \key fis \major
  ais2^\< ( a4 ) gis |
  gis2 g2 |
  \key d \major
  e2^\ff e4 \glissando |
  d' ( cis4 ) d |
  cis ( b ) c |
  cis ( c ) b4 |
  \key g \major
  c8^\< b a g fis4 gis4 ~ |
  gis8 a c b e d c b |
  ees d c b a eis' cis c |
  e d c b a gis g c |
  \key bes \major
  d2.^\fff |
  ees4 e f |
  ees e f |
  e4^\< bes ees |
  \key c \major
  \times 2/3 { g8^\ffff ges f } \times 2/3 { e ees d } d [ cis ] ees [ d ] |
  \times 2/3 { cis d ees } \times 2/3 { d ees f } \times 2/3 { e ees d } \times 2/3 { fis f e }
}

mezzoCinqVoixWords = \lyricmode {
  off to see the Wiz, The Wi -- zard of Oz!
  The Won -- der -- ful Wi -- zard of Oz.
  He is the Won -- der -- ful,
  We hear he is a wiz of a wiz.
  If ev -- er a wiz there
  ev -- er, oh ev -- er.
  If ev -- er, oh ev -- er a wiz there was,
  Oh the Wi -- zard of Oz is one be -- cause
  Be -- cause, be -- cause be -- cause be -- cause be -- cause
  be -- cause 
  the Won
  Ma -- gi -- cal re -- mar -- ka -- ble
  In -- cre -- di -- ble as -- to -- nish -- ing
  Sen -- sa -- tion -- al mi -- ra -- cu -- lous the
  Won things that he
  Won -- der -- ful
  Wi -- zard.
  We're %off to see the Wi -- zard the won -- der -- ful of
  won -- er -- ful mar -- ve -- lous see the
  won -- der -- ful ma -- gi -- cal won -- der -- ful my -- sti -- cal
}

altoCinqVoix = \relative c' {
  \key c \major
  e4 e d d |
  \times 2/3 { c4 e'8 } \times 2/3 { e c e } g4 cis,, |
  e d8 c b4 c8 a |
  g a b c d e d dis |
  e2 dis4 |
  e4 r dis |
  d d d |
  d ( e ) a4 |
  a4 g aes |
  g2 e4 |
  c4 c b |
  d d cis |
  e4^\< ( ees ) %{ e2^\< %} e4 ees |
  d ( cis ) d f |
  \key a \major
  \times 2/3 { f^\f ( e ees ) } d4 ( cis |
  b ) b  d gis |
  fis2 g4 fis |
  \times 2/3 { f ( fis g ) } \times 2/3 { gis ( g fis ) } |
  \key fis \major
  eis2.^\< fis4 |
  dis ( d ) d ( f ) |
  \key d \major
  c4^\ff ( cis4 ) d4 \glissando |
  gis4 ( g ) a ~ |
  a8 fisis ( gis4. ) a8 |
  gis8 ( [ g ] fis4 ) g |
  \key g \major
  fis2^\< ~ fis8 e d c |
  b a e' d g8 fis e fis ~ |
  fis fis4 d8 e gis fis g |
  b a gis fis f e ees a |
  \key bes \major
  a4^\fff aes b |
  c cis d |
  c2 b4 ~ |
  b4^\< g b |
  \key c \major
  c8^\ffff [ b ] bes [ a ] \times 2/3 { aes a bes } \times 2/3 { b c bes } |
  \times 2/3 { a gis g } \times 2/3 { fis g gis } \times 2/3 { g a fis } \times 2/3 { a aes g } |
}

altoCinqVoixWords = \lyricmode {
  off to see the Wiz, The Wi -- zard of Oz!
  The Won -- der -- ful Wi -- zard of Oz.
  He is the Won -- der -- ful,
  We hear he is a wiz of a wiz.
  If ev -- er a wiz there
  ev -- er, oh ev -- er.
  If ev -- er, oh ev -- er a wiz there was,
  Oh the Wi -- zard of Oz is one be -- cause
  Be -- cause, be -- cause be -- cause be -- cause be -- cause.
  der -- ful the
  Ma -- gi -- cal re -- mar -- ka -- ble
  Be -- cause
  as -- to -- nish -- ing
  Sen -- sa -- tion -- al mi -- ra -- cu -- lous the
  Won -- der -- ful things that he
  Won ful zard. We're
  off to won -- der -- ful my -- thi -- cal
  won -- der -- ful ma -- gi -- cal won -- der -- ful mys -- ti -- cal
}

tenorCinqVoix = \relative c' {
  \clef "treble_8"
  \key c \major
  e4 c c b |
  \times 2/3 { c4 c8 } \times 2/3 { c g c } e4 b |  
  c b8 a b4 a8 f |
  e f g a b c b a |
  b4 ( a ) a4 |
  bes4 r a |
  gis a b |
  b4 ( c ) a4 |
  f' f f |
  f2 cis4 |
  a g f |
  c' b a |
  c2^\< c4 c |
  b4 ( ais ) cis d |
  \key a \major
  d^\f ( b ) \times 2/3 { cis ( gis a } |
  f ) gis bes e |
  cis4 ( c ) ees4. e8 |
  d4 ( dis ) \times 2/3 { e ( dis d ) } |
  \key fis \major
  dis4^\< b ~ b d |
  c2 b4 ( cis ) |
  \key d \major
  gis4^\ff ( a ) ais ~ |
  ais b c |
  e ( dis ) d |
  f8 ( e4 ) dis8 d cis |
  \key g \major
  e8^\< d c b a2 ~ |
  a8 fis4 g8 ~ g gis4 a8 ~ |
  a ais4 b8 c d c dis |
  gis fis e ees d cis c ges' |
  \key bes \major
  f8^\fff d bes f g' d |
  bes ges gis' fis c b |
  a' fis d bes a gis |
  cis^\< d dis fis \times 2/3 { f8 e cis } |
  \key c \major
  e^\ffff [ ees ] d [ cis ] \times 2/3 { c f, fis } g gis |
  \times 2/3 { b bes a } \times 2/3 { gis a d } cis bes \times 2/3 { c b bes } | 
}

tenorCinqVoixWords = \lyricmode {
  off to see the Wiz, The Wi -- zard of Oz!
  The Won -- der -- ful Wi -- zard of Oz.
  He is the Won -- der -- ful,
  We hear he is a wiz of a wiz.
  If ev -- er a wiz there, ev -- er, oh ev -- er.
  If ev -- er, oh ev -- er a wiz there was,
  Oh the Wi -- zard of Oz is one, one be -- cause
  Be -- cause, be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause the won
  cause -- be -- cause
  Be -- cause as -- to -- nish -- ing
  Sen -- sa -- tion -- al
  mi -- ra -- cu -- lous the
  Won -- der -- ful, the
  Won -- der -- ful, the
  Won -- der -- ful, the
  Won -- der -- ful, Won -- der -- ful
  Wiz, the Wi -- zard Wi -- zard We're
  off to won -- der -- ful mys -- tic
  won -- der -- ful ma -- gi -- cal won -- der mys -- ti -- cal
}

bassCinqVoix = \relative c {
  \clef "bass"
  \key c \major
  c4 b' a g |
  c b a g |
  d e8 f g4 g, |
  c2 r4 gis8 e |
  a2 g4 |
  fis4 r b |
  e4 b e, |
  a2 a'4 |
  f d bes |
  ees2 a,4 |
  d2. |
  g,2 b4 |
  d2^\< d4 d |
  g,2 b4 e, |
  \key a \major
  a1^\f ~ |
  a4 r c fis, |
  b2 f'4 gis, |
  %{ e'4 a, c e, | %}
  g4 e' ~ e e, |
  \key fis \major |
  fis4^\< cis' dis disis |
  eis ( fis ) cis ( a ) |
  \key d \major
  d2^\ff fis,4 |
  b2 b4 |
  cis ( c ) b |
  bes4 e2 |
  \key g \major
  d1^\< |
  d,2. cis'4 |
  c8 b a g fis2 ~ |
  fis8 d'4 a8 c b d f, |
  \key bes \major
  bes2^\fff f4 ~ |
  f bes2 |
  f4 bes cis |
  d2^\< g,4 |
  \key c \major
  c1^\ffff ~ |
  c |
}

bassCinqVoixWords = \lyricmode {
  off to see, We're off to see,
  The Won -- der -- ful Wi -- zard
  Oz. ful
  We hear he is a wiz of a wiz.
  If ev -- er a wiz there was.
  ev
  If ev -- er, oh ev -- er a wiz,
  Oh the Wi -- zard of Oz, wiz is one, is one be -- cause
  Be -- cause, be -- cause be -- cause be -- cause be -- cause.
  cause. Be
  cre -- di -- ble be -- cause.
  Won mi -- cra -- cu -- lous the
  Won -- der Won -- der Won -- der
  Wiz We're
  off
}

marksFinalRepeat = {
  \tempo "Incedendo" 2=30
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  s1 |
  << { \unfoldChange #60 #44 #8 } { s2 \rall s2 } >>
  \tempo "Seriamente?" 2=22
  s1*3 |
  \time 6/4
  \moltorall
  \unfoldChange #40 #36 #10
  \unfoldChange #70 #84 #2
}

sopranoFinalRepeat = \relative c''' {
  \key b \major
  \mFM c1^\fffffuckd ~ |
  \mFM c2. \mFY d,4^\ff |
  \mFR dis1 ~ |
  \mFR dis8 \mFB cis4. \mFO b4. g8 ~ |
  \times 2/3 { g4 \mFG e'8 ~ } \mFG e4 ~ \mFG e2 |
  ais,8 \mFM b4 \mFY cis8 ~ ( \mFY cis4 ~ cis4. bis8 ) r4 |  
}

sopranoFinalRepeatWords = \lyricmode {
  Oz.
  The Won -- der -- ful
  The Wiz
  Wi -- zard of
}

tasteless = \markup \justify {
 Tasteless : (ˈtāst - lis) considered to be lacking in aesthetic
 judgment or to offend against what is regarded as appropriate behavior.
}

mezzoFinalRepeat = \relative c''' {
  \key b \major
  \mFM g1^\fffffuckd ~ |
  \mFM g2. \mFY ais,4^\ff |
  %\mFR \times 2/3 {  b4 b'8 ~ } \times 6/7 { b [ ais8 gis8 ] fis4 dis8 \mFR b } |
  \mFR \times 2/3 {  b4 b'8 ~ } \times 6/7 { b ais8 gis8 fis e dis8 cis } |
  %\times 2/3 { \mFR ais8 \mFB a4 ~ } \mFB a4 \mFO fis2 |
  \times 2/3 { %{\mFR%} b8 \mFB a8. \footnote #'(1 . 1) \tasteless NoteHead c'16 } \times 2/3 { g16 bes e,8 [ dis ] } \times 2/3 { d'16 gis, b f a d, ~ } d \mFO eis8. |
  % c' g bes e, dis      d' gis, b f a
  %\mFG b,4  g16 dis''8. ~ dis8 \mFM b,8 ~ \mFM \times 2/3 { b8 cis4 ~ } |
  \mFG fis4  d8 dis'8 ~ dis16 cis b8 ais16 gis fis8 | 
  e8 \mFM dis8 ~ \mFM dis4 ~ dis8 gis8 ~ gis8 \mFY g4. r4 |
  %b16 [ b' ais gis ] fis [ e dis cis ] \times 4/5 { b8. [ ais'16 fis16 ] } \times 4/5 { a16 [  cis,8. c16 ~ ] } |
  %c8 [ \times 2/3 { gis'16 eis g ] } ais,8  [ \times 2/3 { fis'16 cis e ] }  \times 2/3 { dis8 [ b f ~ ] } f16 [ d' e,8 ] |
  %\times 2/3 { gis d' g ~ } g16 cis,8. ~ cis4 fis, |
}

mezzoFinalRepeatWords = \lyricmode {
  Oz.
  The Won, Won -- der -- ful, Won -- der -- ful the Wiz -- ard
  Wi -- zard of Oz
  Won -- der -- ful the Won -- der -- ful
  Wiz the Wi -- zard Won -- der -- ful Won -- der -- ful
  Wi -- zard
}

altoFinalRepeat = \relative c'' {
  \key b \major
  \mFM dis1^\fffffuckd ~ |
  \mFM dis4 d, gis, \mFY gis'^\ff |
  \mFR gis2 ~ \times 2/3 { gis8 g,8 g' ~ } \times 2/3 { g8 a b } |
  %\mFB fis2 \mFO d2 |
  \mFB \times 2/3 { fis4 g2 } \times 2/3 { f8 g a8 } c8 b |
  \mFG ais8 a4 %{\mFG a'4.%} a,8 \mFM gis'4 fis8 b8 |
  \times 2/3 { cis,4 a'16 cis, } \times 2/3 { g' a, fis'4 } \mFY e2 dis4 r4 |
  %gis2 %~ gis16 ais gis fis e dis cis b |
  %\times 2/3 { a'4    f8 }  c16  c' b a g f e d ]
}

altoFinalRepeatWords = \lyricmode {
  Oz.
  of Oz. The Won
  The Won -- der -- ful
  Wi -- zard
  Won -- der -- ful Wi -- zard
  Wiz -- ard the
  Won -- der -- ful
  Wiz, Wi -- zard of Oz
  Won -- der -- ful
}

tenorFinalRepeat = \relative c'' {
  \clef "treble_8"
  \key b \major
  \mFM a2.^\fffffuckd b,4 |
  f2. \mFY f'4^\ff |
  \mFR e8 fis, fis' eis cis %{\mFR%} e \times 2/3 { dis b cis } |
  %%%\times 4/5 { ais8 b \mFB e4 d8 } \times 4/5 { eis,8 fis cis'8. \mFO bis } %cis'~ \times 2/3 { cis e, f } } |
  gis16 a e'8 ~ e16 d eis, fis \times 2/3 { cis'8 b d,16 e } \times 2/3 { ais8 a gis }
  %\mFO bis8 fis8 \mFG \times 2/3 { eis'8 bis8 dis } \mFM cis4 ~ \times 2/3 { \mFM cis8 ais8 b8 } |
  cis8 c8 \mFG eis fis \times 2/3 { \mFG eis4 \mFM cis8 ~ } \times 2/3 { \mFM cis8 ais8 b8 } |
  gis'8 fis8 e8 d8 c4 \mFY ais2 r4 |

  %\times 2/3 { g,8 [ e' c ] } \times 2/3 { dis [ eis, d' ] } \times 2/3 { e, [ cis' g ] } \times 2/3 { b [ eis, ais ] } |
  %\times 4/5 { cis,8. [ gis''16 eis16 ] } \times 4/5 { g16 [  a,8. b'16 ] } \times 4/5 { g16 [  ais16 fis16. f16. ] } a16 b,8 ais16 ~ |
  %\times 4/5 { ais [ bis' g ais fis ] ~ } fis [ f e8 ] b'16 [ cis,8. ] ais'16 [ bis,8. ] |
}

tenorFinalRepeatWords = \lyricmode {
  Oz.
  of Oz.
  The Won
  The won -- der -- ful the ma -- gi -- cal
  He's the Wi -- zard, He's the Wi -- zard
  He's the Won -- der -- ful Wiz, the Wi -- zard
  Won -- der He's my Won -- der -- ful my Wi -- zard

}

bassFinalRepeat = \relative c' {
  \clef bass
  \key b \major
  r4^\fffffuckd gis4 \mFM d2 ~ |
  \mFM d2 ~ \mFM d8 \mFY g,4.^\ff |
  \mFR fis1 |
  \mFB d'2 \mFO gis, |
  \mFG g ~ \mFG g8 \mFM e'4. ~ | 
  \mFM e4 \mFY fis,4 ~ \mFY fis2. r4 |
  %~ |
  %fis2.. f8 ~ |
  %f1 |
}

bassFinalRepeatWords = \lyricmode {
  of Oz.
  Thw Won -- der -- ful Wi -- zard of
}

marksLastNote = {
  \tempo "Maestoso" 4=44
  \time 4/4
  s1 |
  \time 11/12 
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \rall
  << { s1*11/12 } { \unfoldChange #44 #29 #7 } >> |
  \time 4/4
  \tempo "Andante con moto" 4=88
  s1 |
  \rall
  \unfoldChange #88 #40 #16
  \tempo "Largo" 4=40
  s1*4
  \bar "|."
}

sopranoLastNote = \relative c''' {
  %\key b \major
  b1 ~ |
  b2. ~ \times 2/3 { b4 ~ } |
  b1 ~ |
  b2 r4 fis4 ~ |
  fis1 ~ |
  fis4 d a2 ~ |
  a4 gis'2 g4 ~ |
  g2. r4 |
  b1^\longfermata |
}

sopranoLastNoteWords = \lyricmode {
  Oz.
}

mezzoLastNote = \relative c'' {
  %\key b \major
  r4 fis8 [ eis ] cis [ e ] \times 2/3 { dis [ b d ] } |
  \times 2/3 { b [ ais fis ] }  \times 2/3 { a [ gis ais ] } \times 2/3 { f [ a dis, ] } \times 2/3 { fisis [ ais ] } |
  cis,1 ~ |
  cis4 dis ais2 ~ |
  ais2. b'4 |
  g2. eis'4 |
  c2 d ~ |
  d4 cis2 r4 |
  dis1^\longfermata | 
}

mezzoLastNoteWords = \lyricmode {
  Oz.
}

altoLastNote = \relative c'' {
  %\key b \major
  b2 ~ b8 [ ais8 ] \times 2/3 { a [ eis gis ] }  |
  \times 2/3 { f [ g d ] } \times 2/3 { g [ e eis ] } \times 2/3 { d [ e cis ] } \times 2/3 { dis [ eis ] } |
  fis,2. cis'4 |
  g2. cis'4 ~ |
  cis4 a e2 ~ |
  e2. dis4 ~ |
  dis1 |
  a'2. r4 |
  b'1^\longfermata |
}

altoLastNoteWords = \lyricmode {
  Oz
}

tenorLastNote = \relative c'' {
  \clef "treble_8"
  %\key b \major
  r4 a8 [ gis ] e [ g ] \times 2/3 { fis [ cis e ] } |
  b2. ~ \times 2/3 { b4 ~ } |
  b gis d2 ~ |
  d2. g'4 |
  d1 ~ |
  d4 ais2. ~ |
  ais4 c2. ~ |
  c2. r4 |
  fis1^\longfermata | 
}

tenorLastNoteWords = \lyricmode {
  Oz.
}

bassLastNote = \relative c' {
  \clef bass
  %\key b \major
  b1 |
  \times 2/3 { g8 [ e' c ] } \times 2/3 { dis [ eis, d' ] } \times 2/3 { e, [ cis' g ] } \times 2/3 { a [ gis ] } |
  c,1 ~ |
  c1 |
  f,1 ~ |
  f ~ |
  f ~ |
  f2. r4 |
  b1^\longfermata |
}

bassLastNoteWords = \lyricmode {
  Oz.
}
marksLastNoteDraftTwo = {
  \tempo "Maestoso" 4=88
  \time 4/4
  << { \unfoldChange #80 #68 #24  } { s1 \rall } >> 
  \unfoldChange #72 #40 #8
  \unfoldChange #112 #112 #8
  %\tempo "Largo"
  \unfoldChange #112 #40 #16
  s1 \bar "|."
}

sopranoLastNoteDraftTwo = \relative c''' {
  %\key b \major
  b1^\ffp ~ |
  b1 ~ |
  b1^\< ~ |
  b1^\> |
  R1\!^\fermataMarkup |
  b1^\ppp^\< ~ |
  b1 ~ |
  b2^\fff r2^\longfermata |
}

sopranoLastNoteDraftTwoWords = \lyricmode {
  Oz.
  Oz.
}

mezzoLastNoteDraftTwo = \relative c'' {
  %\key b \major
  r2 fis4^\mf e |
  g^\< dis a' e |
  ais^\ff f e d |
  cis^\> d b e |
  R1\!^\fermataMarkup |
  dis1^\ppp^\< ~ |
  dis ~ |
  dis2^\fff r2^\longfermata |
}

mezzoLastNoteDraftTwoWords = \lyricmode {
  off to see the Wi -- zard
  Won -- der -- ful
  To see the Wi -- zard
  Oz.
}

altoLastNoteDraftTwo = \relative c'' {
  %\key b \major
  b2.^\ffp c4^\mf |
  ees^\< b c b |
  e^\ff c ais b |
  a^\> ais g c |
  R1\!^\fermataMarkup |
  b1^\ppp^\< ~ |
  b ~ |
  b2^\fff r2^\longfermata |
}

altoLastNoteDraftTwoWords = \lyricmode {
  Oz
  to see the Wi -- zard
  Won -- der -- ful
  To see the Wi -- zard
  Oz.
}

tenorLastNoteDraftTwo = \relative c'' {
  \clef "treble_8"
  %\key b \major
  r2 a4^\mf g |
  bes^\< f fis gis |
  g a fis g |
  f^\> e dis fis |
  R1\!^\fermataMarkup |
  fis1^\ppp^\< ~ |
  fis ~ |
  fis2^\fff r2^\longfermata |
}

tenorLastNoteDraftTwoWords = \lyricmode {
  off to see the Wi -- zard
  Won -- der -- ful
  To see the Wi -- zard
  Oz.
}

bassLastNoteDraftTwo = \relative c' {
  \clef bass
  %\key b \major
  b1^\ffp ~ |
  b1 ~ |
  b1^\< ~ |
  b1^\> |
  R1\!^\fermataMarkup |
  b,1^\ppp^\< ~ |
  b1 ~ |
  b2^\fff r2^\longfermata |
}

bassLastNoteDraftTwoWords = \lyricmode {
  Oz.
  Oz.
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" } <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\prefatoryMatter
        \sopranoChorale
	\sopranoCinqVoix
	\sopranoFinalRepeat
        \sopranoLastNoteDraftTwo
      } {
        \marksChorale
	\marksCinqVoix
	\marksFinalRepeat
        \marksLastNoteDraftTwo
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoChoraleWords
	\sopranoCinqVoixWords
	\sopranoFinalRepeatWords
        \sopranoLastNoteDraftTwoWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" } <<
      \new Voice = "mezzo" { \numericTimeSignature
	\prefatoryMatter
        \mezzoChorale
	\mezzoCinqVoix
	\mezzoFinalRepeat
        \mezzoLastNoteDraftTwo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoChoraleWords
	\mezzoCinqVoixWords
	\mezzoFinalRepeatWords
        \mezzoLastNoteDraftTwoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" } <<
      \new Voice = "alto" { \numericTimeSignature
	\prefatoryMatter
        \altoChorale
	\altoCinqVoix
	\altoFinalRepeat
        \altoLastNoteDraftTwo
      }
      \new Lyrics \lyricsto "alto" {
        \altoChoraleWords
	\altoCinqVoixWords
	\altoFinalRepeatWords
        \altoLastNoteDraftTwoWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" } <<
      \new Voice = "tenor" { \numericTimeSignature
	\prefatoryMatter
        \tenorChorale
	\tenorCinqVoix
	\tenorFinalRepeat
        \tenorLastNoteDraftTwo
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorChoraleWords
	\tenorCinqVoixWords
	\tenorFinalRepeatWords
        \tenorLastNoteDraftTwoWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" } <<
      \new Voice = "bass" { \numericTimeSignature
	\prefatoryMatter
        \bassChorale
	\bassCinqVoix
	\bassFinalRepeat
        \bassLastNoteDraftTwo
      }
      \new Lyrics \lyricsto "bass" {
        \bassChoraleWords
	\bassCinqVoixWords
	\bassFinalRepeatWords
        \bassLastNoteDraftTwoWords
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override HorizontalBracket.direction = #UP
      \consists "Horizontal_bracket_engraver"
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      %\consists "Metronome_mark_engraver"
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
      %\remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
  \midi {}
}
%{
\pageBreak

\score {
  \new PianoStaff <<
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
        \prefatoryMatter
        \sopranoChorale
        \sopranoCinqVoix
        \sopranoFinalRepeat
        \sopranoLastNoteDraftTwo
      } \\ {         \prefatoryMatter
        \mezzoChorale
        \mezzoCinqVoix
        \mezzoFinalRepeat
        \mezzoLastNoteDraftTwo } \\ {         \prefatoryMatter
        \altoChorale
        \altoCinqVoix
        \altoFinalRepeat
        \altoLastNoteDraftTwo } {
        \marksChorale
        \marksCinqVoix
        \marksFinalRepeat
        \marksLastNoteDraftTwo
      } >> }
    }
    \new Staff  {
      \new Voice = "tenor" { << { \numericTimeSignature
        \prefatoryMatter
        \tenorChorale
        \tenorCinqVoix
        \tenorFinalRepeat
        \tenorLastNoteDraftTwo
      } \\ \\ {         \prefatoryMatter
        \bassChorale
        \bassCinqVoix
        \bassFinalRepeat
        \bassLastNoteDraftTwo } {
      } >> }
    }
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
      %\consists "Metronome_mark_engraver"
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
      %\remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}
%}