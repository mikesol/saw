#(set-global-staff-size 15.87)

%%%%%% ending with E major
%%%%%% then D major
%%%%%% then B major (if happy)
%%%%%% then D major (why oh why)
%%%%%% C-major happy going down

\version "2.17.0"
\include "defs-devel.ly"

#(load "swing.scm")

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)

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
  max-systems-per-page = #2
}

\header {
  title = "Finale: Sit Ozfårs Wndrföl Wysr"
  subtitle = \markup { for Marie Perbost \super 1}
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

prefatoryMatter = {
  \autoBeamOff
}

marksChoraleBad = {
  \tempo "Adagio" 4=68
  \time 4/4
  \partial 4
  s4 |
  s1*27 |
}

sopranoChoraleBad = \relative c'' {
  \key aes \major
  bes4 |
  c aes ees f |
  aes c2 c4 |
  c bes8 aes g4 aes8 bes |
  aes2 r4 e |
  f aes c aes |
  g4 aes8 g f4 g |
  g aes8 bes bes4 g |
  c4 aes bes g |
  aes aes8 g f4 f8 g |
  aes4 bes c g |
  aes bes ges bes |
  aes ges f g |
  aes f aes bes |
  c bes aes des |
  aes1 ~ |
  aes2 r4 bes |
  bes4 bes8 bes bes4 bes8 bes |
  ees4 bes bes4. r8 |
  des4 c8 bes aes4 bes8 bes |
  bes2 bes |
  c4 aes ees f |
  g4 aes2 des4 |
  c4 c8 c bes4 c8 bes |
  aes2.
}

sopranoChoraleBadWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there
  wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard %{of%} Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause of the won -- der -- ful things he does.
  Won -- der -- ful things that he does.
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
}

mezzoChoraleBad = \relative c' {
  \key aes \major
  r4 |
  R1*24 |
}

mezzoChoraleBadWords = \lyricmode {
}

altoChoraleBad = \relative c' {
  \key aes \major
  des4 |
  c c c des |
  ees f2 ees4 |
  des4 ees8 f ees4 ees8 des |
  c4 des c c |
  c f aes ees |
  ees4 ees8 ees c4 f |
  ees ees8 f ees4 ees |
  f2 ( ees4 ) ees |
  f4 f8 ees des4 bes |
  c4 ees c ees |
  des des8 c bes4 des |
  des4 bes des c |
  c c c c |
  f g g ges |
  f ges f ees |
  f ges aes aes |
  g4 f g aes |
  bes aes g ( aes ) |
  bes4 aes8 g f4 g8 f |
  g2 g |
  ees4 c c des |
  ees c des f |
  aes4 aes8 aes g4 aes8 g |
  f2 ( ees4 )
}

altoChoraleBadWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er %{a%} wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause be -- cause be -- cause
  be -- cause of won -- der things he does.
  Won -- der -- ful things that he does.
  We're off to see the Wi -- Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
}

tenorChoraleBad = \relative c' {
  \clef "treble_8"
  \key aes \major
  g4 |
  aes aes aes aes |
  aes aes2 ges4 |
  f aes8 c bes4 c8 g |
  aes2 r4 c |
  aes c ees aes, |
  bes4 c8 bes aes4 b |
  bes aes8 g c4 c |
  des2 ( g,4 ) g |
  f aes8 bes aes4 g |
  aes4 g aes g |
  bes f ges ges |
  f ges aes bes |
  aes aes aes aes |
  des c c bes |
  c bes des bes |
  des ees f f |
  ees d ees f |
  g ees ees ( f ) |
  e4 f8 des ees4 ees8 d |
  ees8 bes g bes g4 g |
  aes4 aes aes aes |
  bes aes2 bes4 |
  ees4 ees8 ees des4 ees8 des |
  des4 ( bes c )
}

tenorChoraleBadWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er %{a%} wiz there was,
  The Wi -- zard %{of%} Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause be -- cause be -- cause
  be -- cause of won -- der things he does.
  Won -- der -- ful things that he does.
  We're
  off to see. We're
  off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
}

bassChoraleBad = \relative c {
  \clef "bass"
  \key aes \major
  ees4 |
  aes,4 c ees des |
  c f f, a |
  bes c8 des ees4 ees,8 ees |
  f4 g aes g |
  f f' ees c |
  bes ees d g |
  c,4 c8 c f4 a, |
  bes2 ( ees4 ) ees |
  des4 c8 c bes4 ees |
  c4 bes aes ees' |
  ges bes, ees aes, |
  des ees f e |
  f f e e |
  ees e f aes, |
  des ees f ges |
  aes bes c d, |
  ees aes g f |
  ees c' bes ( aes ) |
  g4 aes8 bes c4 bes8 bes, |
  ees2 des8 c bes ees |
  aes,4 c ees des |
  c f e des |
  ees4 ees8 ees ees4 ees8 ees |
  f4 ( g aes )
}

bassChoraleBadWords = \lyricmode {
  We're off to see the Wi -- zard.
  Wiz
  The Won -- der -- ful Wi -- zard of Oz.
  of Oz.
  We hear he is a whiz of
  wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er %{a%} wiz there was,
  The Wi -- zard %{of%} Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause be -- cause be -- cause
  be -- cause of won -- der things he does.
  Won -- der -- ful things that he does.
  does. We're off to
  off to see the Wi -- Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
}

marksChorale = {
  \tempo "Adagio" 4=68
  \time 4/4
  \partial 4
  s4 |
  s1*24 |
}

sopranoChorale = \relative c' {
  \key aes \major
  \key aes \major
  ees4 |
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
  aes1 |
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

mezzoChorale = \relative c' {
  \key aes \major
  r4 |
  R1*24 |
}

mezzoChoraleWords = \lyricmode {
}

altoChorale = \relative c {
  \clef "treble_8"
  \key aes \major
  r4 |
  R1 |
  ees2\startGroup ees\stopGroup |
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
  f4\stopGroup ees2 f4 |
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
  r4 |
  c4\startGroup des8 bes aes4\stopGroup bes\startGroup |
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
  c4\startGroup des8 bes\stopGroup c4 b |
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
  r4 |
  R1*8 |
  des4\startGroup c8 bes aes4 g8 f |
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
  f\startGroup f8 g aes4\stopGroup d4 |
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
  \tempo "Adagio" 4=68
  \time 4/4
  s1*5 |
  \time 3/4
  s2.*8 |
  \time 4/4
  s1*8 |
  \time 3/4
  s2.*4 |
  \time 4/4
  s1*4 |
  \time 3/4
  s2.*4 |
  \time 4/4
  s1*2 |
}

sopranoCinqVoix = \relative c'' {
  \key c \major
  s2. g4 |
  c g e f |
  g c ~ c g |
  a g8 f e4 f8 d |
  c8 [ d e f g a ] b [ c ] |
  d4 ( c ) a |
  c2 c4 |
  b4 b b |
  a2 a4 |
  d d d |
  d2 b4 |
  g2. ~ |
  g2 g4 |
  a2 a4 a |
  a2 a4 b |
  \key a \major
  cis2 a |
  e g4 cis |
  d2 d4 cis |
  b2 d |
  \key fis \major
  cis2. b4 |
  ais2 ais |
  \key d \major
  fis2 fis4 |
  fis'2 fis4 |
  eis2 eis4 |
  e2 e4 |
  \key g \major
  a2. r4 |
  r d, ~ d8 r a'4 |
  a a8 a a4 a8 a |
  a4 fis d r8 ees |
  \key bes \major
  bes'2 ~ \times 2/3 { bes8 a bes } |
  a2 ~ \times 2/3 { a8 gis a } |
  gis2. |
  g |
  \key c \major
  b4 g e f |
  g b ~ b ees, |
}

sopranoCinqVoixWords = \lyricmode {
  We're off to see the Wi -- zard
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a wiz of a wiz.
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  Oh the Wi -- zard of Oz is one be -- cause.
  Be -- cause be -- cause be -- cause be -- cause be -- cause.
  ful
  Be -- cause of the won -- der -- ful things he does.
  The Won -- der -- ful things that he does.
  We're off to see the Wi -- zard of
}

mezzoCinqVoix = \relative c'' {
  \key c \major
  s1 |
  g4 e e d |
  e g ~ g e |
  f4 e8 d c4 d8 c |
  a [ b c d e f ] g [ a ] |
  g2 ges4 |
  b4 g a |
  fis fis f |
  gis ( fis ) f |
  bes bes c |
  bes ( a ) g |
  f4 e d |
  f e ees |
  f2 g4 ges |
  f ( e ) fis gis |
  \key a \major
  gis ( g ) fis ( f ) |
  cis2 e4 ais |
  a ( gis ) b a |
  gis ( a ) ais ( b ) |
  \key fis \major
  ais2 a4 fisis |
  gis2 fisis4 ( fis ) |
  \key d \major
  e2 e4 |
  cis'4 ( c ) b |
  ais ( b ) c |
  b ( bes ) a |
  \key g \major
  e'4 d8 e d4 gis, |
  c8 b a g fis a d e |
  ees d c b a eis' cis c |
  e d c b a gis g c |
  \key bes \major
  d2. |
  ees4 e f |
  ees e f |
  e4 bes ees |
  \key c \major
  g4 e c b |
  cis f8 e ees d cis c |
}

mezzoCinqVoixWords = \lyricmode {
  off to see the Wi -- zard
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he Wi -- zard a wiz of a wiz.
  If ev -- er a wiz there
  ev -- er, oh ev -- er.
  If ev -- er, oh ev -- er a wiz there was,
  Oh the Wi -- zard of Oz is one, one be -- cause.
  Be -- cause be -- cause be -- cause be -- cause be -- cause.
  ful the Won be
  Ma -- gi -- cal re -- mar -- ka -- ble
  In -- cre -- di -- ble as -- to -- nish -- ing
  Sen -- sa -- tion -- al mi -- ra -- cu -- lous the
  Won things that he
  Won -- der -- ful
  Wi -- zard.
  We're off to see the Wi -- zard the won -- der -- ful of
}

altoCinqVoix = \relative c' {
  \key c \major
  s1 |
  e4 e c c |
  c e ~ e c |
  e d8 c b4 c8 a |
  g [ a b c d e ] f [ g ] |
  e2 ees4 |
  g4 d ees |
  e d d |
  e2 ees4 |
  a4 g aes |
  g2 e4 |
  c4 c b |
  d d des |
  e4 ( ees ) e ees |
  d ( cis ) d f |
  \key a \major
  f ( e ) ees ( d ) |
  b ( a )  d gis |
  fis ( eis ) g f |
  f ( fis ) g ( gis ) |
  \key fis \major
  eis e g eis |
  dis ( eis ) eis ( e ) |
  \key d \major
  cis2 ais4 |
  ais' ( a )  gis |
  fisis ( gis ) a |
  gis ( g ) fis |
  \key g \major
  fis2 ~ fis8 e d c |
  gis a c b a4 fis' |
  fis4. e8 e gis g a |
  b a a gis fis e ees a |
  \key bes \major
  a4 aes b |
  c cis d |
  c2 b4 ~ |
  b4 g b |
  \key c \major
  c8 [ b ] bes [ a ] aes [ a ] dis, [ e ] |
  f [ a ] aes bes a gis a bes |
}

altoCinqVoixWords = \lyricmode {
  off to see the Wi -- zard
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he Wi -- zard a wiz of a wiz.
  If ev -- er a wiz there
  ev -- er, oh ev -- er.
  If ev -- er, oh ev -- er a wiz there was,
  Oh the Wi -- zard of Oz is one, is one be -- cause.
  Be -- cause be -- cause be -- cause be -- cause be -- cause.
  der -- ful the
  Ma -- gi -- cal re -- mar
  Be -- cause
  as -- to -- nish -- ing
  Sen -- sa -- tion -- al mi -- ra -- cu -- lous the
  Won -- der -- ful things that he
  Won ful zard. We're
  off to see the Wi -- zard the won -- der -- ful of
}

tenorCinqVoix = \relative c' {
  \clef "treble_8"
  \key c \major
  s1 |
  e4 c c g |
  a g f e |
  c' b8 a b4 a8 f |
  e [ f g a b c ] d [ e ] |
  c2 c4 |
  d4 b ees |
  c a b |
  c2 c4 |
  f f f |
  ees2 cis4 |
  a g f |
  c' b a |
  c2 c4 c |
  b4 ( ais ) cis d |
  \key a \major
  d ( b ) cis ( bes ) |
  gis ( fis ) bes e |
  cis2 e4 ees |
  d4 ( dis ) e ( f ) |
  \key fis \major
  dis4 b d cis |
  bis ( cis ) dis ( c ) |
  \key d \major
  ais ( a ) g |
  d'2 dis4 |
  e4 ( dis ) d |
  cis ( d ) dis |
  \key g \major
  c8 b a g fis2 ~ |
  fis2. b8 [ bes ] |
  a4. b8 c cis ais dis |
  gis fis e d c b bes ges' |
  \key bes \major
  f8 d bes f g' d |
  bes ges gis' fis d b |
  a' fis d bes a gis |
  cis d dis fis \times 2/3 { f8 e cis } |
  \key c \major
  e [ ees ] d [ cis ] c [ fis, ] g [ gis ] |
  a [ c ] d cis f e fis g |
}

tenorCinqVoixWords = \lyricmode {
  off to see the
  off to see the
  Won -- der -- ful Wi -- zard of Oz.
  We hear he Wi -- zard a wiz of a wiz.
  If ev -- er a wiz there, ev -- er oh ev -- er.
  If ev -- er, oh ev -- er a wiz there was,
  Oh the Wi -- zard of Oz is one, is one be -- cause.
  Be -- cause be -- cause be -- cause be -- cause be -- cause.
  Be -- cause the won
  Be -- cause as -- to -- nish -- ing
  Sen -- sa -- tion -- al
  mi -- ra -- cu -- lous the
  Won -- der -- ful, the
  Won -- der -- ful, the
  Won -- der -- ful, the
  Won -- der -- ful, Won -- der -- ful
  Wiz, the Wi -- zard Wi -- zard We're
  off to see the Wi -- zard the won -- der -- ful of 
}

bassCinqVoix = \relative c {
  \clef "bass"
  \key c \major
  s1 |
  c4 b' a g f e d c |
  d e8 f g4 g, |
  c2 b |
  a2 a4 |
  e'2 ees4 |
  d4 e gis |
  a2 a,4 |
  f' d bes |
  ees2 a,4 |
  d2. |
  g,2 ees'4 |
  d2 d4 d |
  g,2 b4 e, |
  \key a \major
  a1 ~ |
  a4 a c fis, |
  b2 f'4 bes, |
  e2 e, |
  \key fis \major |
  fis4 cis' dis disis |
  eis ( fis ) cis ( a ) |
  \key d \major
  d2 cis4 |
  b2 b4 |
  cis ( c ) b |
  e2 bes4 |
  \key g \major
  d1 |
  d,2. cis'4 |
  c8 b a g fis2 ~ |
  fis4 d' ~ d4. f,8 |
  \key bes \major
  bes2. ~ |
  bes ~ |
  bes |
  d2 g,4 |
  \key c \major
  c1 ~ |
  c |
}

bassCinqVoixWords = \lyricmode {
  off to see the
  off to see the
  Won -- der -- ful Wi -- zard
  Oz.
  We hear he is a wiz of a wiz.
  If ev -- er a wiz there was.
  ev
  If ev -- er, oh ev -- er a wiz, the
  Oh the Wi -- zard of Oz is one, is one be -- cause.
  Be -- cause be -- cause be -- cause be -- cause be -- cause.
  cause. Be
  cre -- di -- ble be -- cause.
  Won the
  Won
  Wiz We're
  off
}

marksFinalRepeat = {
  \tempo "Andante" 4=76
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  << { \unfoldChange #76 #56 #40 } { s1 \rall } >>
  \time 6/4
  \moltorall
  \unfoldChange #56 #36 #10
  \unfoldChange #70 #84 #2
}

sopranoFinalRepeat = \relative c''' {
  \key b \major
  \mFM c1 ~ |
  \mFM c2. \mFY d,4 |
  \mFR dis1 ~ |
  \mFR dis8 \mFB cis4. ~ \mFB cis8 \mFO b4 g8 ~ |
  \times 2/3 { g4 \mFG e'8 ~ } \mFG e4 ~ \mFG e2 |
  ais,8 \mFM b4 \mFY cis8 ~ \mFY cis4 ~ cis4. bis8 r4 |  
}

sopranoFinalRepeatWords = \lyricmode {
}

tasteless = \markup \justify {
 Tasteless : (ˈtāst - lis) considered to be lacking in aesthetic
 judgment or to offend against what is regarded as appropriate behavior.
}

mezzoFinalRepeat = \relative c''' {
  \key b \major
  \mFM g1 ~ |
  \mFM g2. \mFY ais,4 |
  %\mFR \times 2/3 {  b4 b'8 ~ } \times 6/7 { b [ ais8 gis8 ] fis4 dis8 [ \mFR b ] } |
  \mFR \times 2/3 {  b4 b'8 ~ } \times 6/7 { b [ ais8 gis8 ] fis [ e ] dis8 [ cis ] } |
  %\times 2/3 { \mFR ais8 \mFB a4 ~ } \mFB a4 \mFO fis2 |
  \times 2/3 { %{\mFR%} b8 [ \mFB a8. \footnote #'(1 . 1) \tasteless NoteHead c'16 ] } \times 2/3 { g16 [ bes e,8 dis ] } \times 2/3 { d'16 [ gis, b f a d, ~ ] } d [ \mFO eis8. ] |
  % c' g bes e, dis      d' gis, b f a
  %\mFG b,4  g16 dis''8. ~ dis8 \mFM b,8 ~ \mFM \times 2/3 { b8 cis4 ~ } |
  \mFG fis4  g,8 [ dis''8 ~ ] dis16 [ cis b8 ] ais16 [ gis fis8 ] | 
  e8 [ \mFM dis8 ~ ] \mFM dis4 ~ dis8 gis8 ~ gis8 \mFY g4. r4 |
  %b16 [ b' ais gis ] fis [ e dis cis ] \times 4/5 { b8. [ ais'16 fis16 ] } \times 4/5 { a16 [  cis,8. c16 ~ ] } |
  %c8 [ \times 2/3 { gis'16 eis g ] } ais,8  [ \times 2/3 { fis'16 cis e ] }  \times 2/3 { dis8 [ b f ~ ] } f16 [ d' e,8 ] |
  %\times 2/3 { gis d' g ~ } g16 cis,8. ~ cis4 fis, |
}

mezzoFinalRepeatWords = \lyricmode {
  Oz.
}

altoFinalRepeat = \relative c'' {
  \key b \major
  \mFM dis1 ~ |
  \mFM dis4 d, gis, \mFY gis' |
  \mFR gis2 ~ \times 2/3 { gis8 [ g,8 g' ~ ] } \times 2/3 { g8 [ a b ] } |
  %\mFB fis2 \mFO d2 |
  \mFB \times 2/3 { fis4 g2 } gis4 ~ gis16 \mFO a8. ~ | %a8 \mFO d,8 |
  \mFG a4. %{\mFG a'4.%} a,8 \mFM gis'4 fis8 b8 |
  \times 2/3 { cis,4 a'16 [ cis, ] } \times 2/3 { g' [ a, ] fis'4 } \mFY e2 dis4 r4 |
  %gis2 %~ gis16 [ ais gis fis ] e [ dis cis b ] |
  %\times 2/3 { a'4    f8 }  c16  [ c' b a ] g [ f e d ]
}

altoFinalRepeatWords = \lyricmode {
  Oz
}

tenorFinalRepeat = \relative c'' {
  \clef "treble_8"
  \key b \major
  \mFM a2. b,4 |
  f2. \mFY f'4 |
  \mFR e8 [ fis, ] fis' [ eis ] cis [ %{\mFR%} e ] \times 2/3 { dis [ b d ] } |
  \times 4/5 { ais8 [ b ] \mFB e4 d8 } \times 4/5 { eis,8 [ fis ] cis'8. [ \mFO bis ] } %cis'~ \times 2/3 { cis [ e, f ] } } |
  %\mFO bis8 [ fis8 ] \mFG \times 2/3 { eis'8 [ bis8 dis ] } \mFM cis4 ~ \times 2/3 { \mFM cis8 [ ais8 b8 ] } |
  b8 [ ais8 ] \mFG eis'4 ~ \times 2/3 { \mFG eis4 \mFM cis8 ~ } \times 2/3 { \mFM cis8 [ ais8 b8 ] } |
  gis'8 [ fis8 ] e8 [ d8 ] c4 \mFY ais2 r4 |

  %\times 2/3 { g,8 [ e' c ] } \times 2/3 { dis [ eis, d' ] } \times 2/3 { e, [ cis' g ] } \times 2/3 { b [ eis, ais ] } |
  %\times 4/5 { cis,8. [ gis''16 eis16 ] } \times 4/5 { g16 [  a,8. b'16 ] } \times 4/5 { g16 [  ais16 fis16. f16. ] } a16 b,8 ais16 ~ |
  %\times 4/5 { ais [ bis' g ais fis ] ~ } fis [ f e8 ] b'16 [ cis,8. ] ais'16 [ bis,8. ] |
}

tenorFinalRepeatWords = \lyricmode {
  Oz.
}

bassFinalRepeat = \relative c' {
  \clef bass
  \key b \major
  r4 gis4 \mFM d2 ~ |
  \mFM d2 ~ \mFM d8 \mFY g,4. |
  \mFR fis1 |
  \mFB d'2 \mFO gis, |
  \mFG g ~ \mFG g8 \mFM e'4. ~ | 
  \mFM e4 \mFY fis,4 ~ \mFY fis2. r4 |
  %~ |
  %fis2.. f8 ~ |
  %f1 |
}

bassFinalRepeatWords = \lyricmode {
  Oz.
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
  \unfoldChange #88 #60 #48 \bar "|."
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
  \tempo "Largo"
  \unfoldChange #112 #40 #16
  s1 \bar "|."
}

sopranoLastNoteDraftTwo = \relative c''' {
  %\key b \major
  b1 ~ |
  b1 ~ |
  b1 ~ |
  b1 |
  R1 |
  b1 ~ |
  b1 ~ |
  b4 r r2^\fermata |
}

sopranoLastNoteDraftTwoWords = \lyricmode {
  Oz.
}

mezzoLastNoteDraftTwo = \relative c'' {
  %\key b \major
  r2 fis4 e |
  g dis a' e |
  ais f e d |
  cis d b e |
  R1 |
  dis1 ~ |
  dis ~ |
  dis4 r4 r2^\fermata |
}

mezzoLastNoteDraftTwoWords = \lyricmode {
  Oz.
}

altoLastNoteDraftTwo = \relative c'' {
  %\key b \major
  b2. c4 |
  ees b c b |
  e c ais b |
  a ais g c |
  R1 |
  b1 ~ |
  b ~ |
  b4 r r2^\fermata |
}

altoLastNoteDraftTwoWords = \lyricmode {
  Oz
}

tenorLastNoteDraftTwo = \relative c'' {
  \clef "treble_8"
  %\key b \major
  r2 a4 g bes f fis g |
  gis a fis g |
  f fis d fis |
  R1 |
  fis1 ~ |
  fis ~ |
  fis4 r4 r2^\fermata |
}

tenorLastNoteDraftTwoWords = \lyricmode {
  Oz.
}

bassLastNoteDraftTwo = \relative c' {
  \clef bass
  %\key b \major
  b1 ~ |
  b1 ~ |
  b1 ~ |
  b1 |
  R1 |
  b,1 ~ |
  b1 ~ |
  b4 r r2^\fermata |
}

bassLastNoteDraftTwoWords = \lyricmode {
  of Oz.
  The Won
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

