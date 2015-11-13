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
  %indent = 1.9\in
}
widedin = \once \override DynamicText . extra-spacing-width = ##f
%#(ly:set-option 'point-and-click #f)

thought = \markup \italic \column { pensée "(pas chantée)" }
endessous = \markup \italic "(en dessous)"
ord = \markup \italic "ord"

\header {
  title = "The Wonderful Wizard of Oz" %(1)"
  %subtitle = \markup { for Carl Stalling, Raymond Scott, Дмитрий ШостаковичN and Béla Bartók }
  subtitle = \markup { for Karl King, Carl Stalling and Vadim Petrov }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

%{
  We're off to see the Wizard [1st theme] --- change 1st theme to "you know we're off to see..."
  The Wonderful Wizard of Oz [(germanic Ich bette eine mark...)]
  We hear he is a wiz of a wiz [.....    ..   ..]
  If ever a wiz there was [^_^_^_^_^_^_^]
  If ever oh ever a wiz there was [virtuoso]
  The Wizard of Oz is one because [12/8 --.-.-.-.-.-. (minor key, piano, like what there would have been in the sucky version of nerve)]
  Because because because because
  Because [lofy on music box]
  Because of the wonderful things he does
  Wonderful things that he does
  We're off to see the Wizard
  The Wonderful Wizard of Oz
%}

swing = \markup \italic "sit swng"
rall = \markup \italic "rall."
accel = \markup \italic "accel."
nothing = {}

%{
%}


secOne = { \once \override Score.RehearsalMark.self-alignment-X = #LEFT \mark \markup "L'entrée des clowns" }
secTwo = { \once \override Score.RehearsalMark.self-alignment-X = #LEFT \mark \markup "La contorsioniste" }
secThree = { \once \override Score.RehearsalMark.self-alignment-X = #LEFT \mark \markup "Le funambule" }
secFour = { \once \override Score.RehearsalMark.self-alignment-X = #LEFT \mark \markup "Le défilé des animaux (pour Maija)" }
secFive = { \once \override Score.RehearsalMark.self-alignment-X = #LEFT \mark \markup "La danseuse" }
secSix = { \once \override Score.RehearsalMark.self-alignment-X = #LEFT \mark \markup "L'homme-canon" }

marks = {
  \time 4/4
  \partial 4.
  \tempo "Presto" 4=216
  \secOne
  s4. |
  s1*30 |
  s2 \mark \rall \unfoldChange #216 #140 #12 |
  \mark \accel
  \unfoldChange #140 #216 #16 |
  \set Score.tempoWholesPerMinute = #(ly:make-moment 160 4 0 0)
  s1 |
  \set Score.tempoWholesPerMinute = #(ly:make-moment 200 4 0 0)
  s1 |
  \tempo "Adagio" 4=68
  \secTwo
  \time 2/4
  s1*9 |
  \tempo "Andante" 4=92
  \secThree
  s1*4 |
  \time 4/4
  \tempo "Cadenza"
  s1*4 |
  \tempo "Lento" 4=48
  s1*4 |
  \tempo "Allegro" 4.=152
  \time 12/8
  \secFour
  s1.*4 |
  \mark \rall
  s1.*2 |
  \tempo "Moderato" 4.=112 |
  s1. |
}
prefatoryMatter = {
  \key cis \major
  #(set-accidental-style 'modern-cautionary)
}


soprano = \relative c'' { \autoBeamOff
  \prefatoryMatter
  r4. |
  R1*5 |
  r2 r8 gis8^\pp^\< gisis ais |
  b4^\p^\> ais a gis |
  g fis eis^\pp e |
  dis4 r4 r2 |
  r8 a'-.^\p dis-. gis-. f-. b,-. r4 | %d gis, bis |
  R1 |
  r8 bes-.^\mp e-. a-. fis-. c-. r4 |
  R1 |
  r2 r8 e8^\mp^\< f fis |
  g4--^\f fis eis e |
  g4-- fis eis e |
  g4-- fis eis e |
  g4-- fis eis8 r r4 |
  R1*5 |
  r2. aisis,4--^\mf |
  r2.. bis,8^\f |
  cis16^\p^\< cisis dis disis eis8 fisis gis4-.^\f r |
  g8^\mp cis16 fis, eis8 b'16 e, dis8 d cis4 |
  fis8-. b-. e,-. dis-. d-. cis-. c4 |
  \lo d--^\p^\swing \sh cis \lo d \sh fis-- \lo eis \sh fis \lo a-- \sh gis |
  \lo a \sh d-- \lo cis \sh d fis4-. r |
  R1 |
  R1 |
  R1 |
  r2 r8 eis,^\p^\< fis fisis |
  << { \afterGrace \pitchedTrill gis1\startTrillSpan a { fisis32 [ gis ] } |
  cis4\stopTrillSpan-. } { s2.^\fp s4^\< s4^\f } >> r r2 |
  R1 |
  e,16-.^\p e-. e-. e-. << { e4 ~ e4 } { s4^\< s4^\> } >> r4\parend^\p |
  bis16-.-^\mf^\> bis-. bis-. bis-. bis4 r\parend^\p d8^\< dis  |
  e16-.^\mp e-. e-. e-. e8.^\> dis16 d16^\p^\< e fis g gis-.-^^\mf gis-. gis-. gis-. |
  gis4. g8 fis16 gis g8 fis eis ~ |
  eis16-. eis-.^\p^\< eis-. eis-. eis8^\> e ~ e ees16 d cis-.^\p cis-. cis-. cis-. |
  cis8 c b16 cis c8 b bes a16 b bes8 |
  a^\> gis r4\parend^\pp r2 |
  ais4^\p^\< a cis16-.^\mp cis-. cis-. cis-. bis8-. r |
  dis16^\mf cisis dis cisis dis cisis dis cisis dis cisis dis cisis dis cis^\mp bis b |
  ais-. r r8 r4 r4 c8-. r |
  dis16^\mf cisis dis cisis dis dis^\mp d cis bis r r8 r4 |
  r8.. bis'32^\f bis8. r16 r8.. dis32 dis8. r16 |
  r8 b' b4 ~ b8 [ ais ] gis16 [ fis eis fis ] |
  gis [ fis eis dis cisis bis cisis dis eis dis cisis bis ais^\> gisis ais b ] |
  ais-.^\p [ cisis-. eis-. gis-. ] cisis,-.^\< [ eis-. gis-. b-. ] eis,-. [ gis-. b-. d-. ] gis,-. [ b-. d-. ees-. ] |
  d4^\f^\trill d32.^\> [ cis c b bes a ais b ais a aes g fis f ] e [ eis ] |
  fis2^\mp r8 g^\p fis f |
  e2 r8 f^\pp e dis |
  cisis2. r4 |
  r16 dis^\mf [disis eis fis fisis gis ] r16 r4^\fermata a16-.^\thought r8.^\fermata |
  R1. |
  r2. b,,8^\p b b r4. |
  R1. |
  r2. fis'8 fis fis r4. |
  r4. ais8 ais ais dis4 eis8 fis4 gis8 |
  fis4 eis8 dis4 bis8 gis8 r4 r4. |
  r2. gis8 gis gis gis4 ais8 |
  b4 cis8 b4 ais8 gis4 fis8 eis4 fis8 |
  gis8 gis gis gis4 ais8 b4 ais8 b4 ais8 |
  b4 ais8 gis4 fis8 eis4. cis |
  %b8 b b b4 cis8 d4 e8 d4 cis8 |
  %b4 a8 gis4 a8 b4 cis8 d4 e8 |
  %fis4 gis8 a4 gis8 fis4 e8 dis4 cis8
  gis'8 gis gis gis4 ais8 b4 cis8 d4 eis8 |
  fis4 gis8 fis4 eis8 dis4 cis8 bis4 cis8 |
  dis4 cis8 bis4 ais8 bis4 cis8 bis4 ais8 |
  gis4 fis8 gis4 ais8 b8 b b ais8. gis |
  fis fis gis gisis ais cis, cisis dis |
  e
}

sopranoWords = \lyricmode {
  he is the
  \repeat unfold 9 wiz
  \repeat unfold 2 { He is the Wi -- zard }
  he is the \repeat unfold 15 wiz
  cause
  The won -- der -- ful, the wiz of Oz
  cause of the won -- der -- ful things he does
  off to see the wiz of Oz
  won -- der -- ful the Wi -- zard won -- der -- ful the wiz of Oz
  he is the Wi -- zard
  cause of all the won
  cause of all the won
  Wi -- zard cause of all the won -- der ful
  the Wiz of cause of all the won -- der won -- der -- ful Wiz -- ard
  of all the won -- der won -- der cause of all the won -- der won -- der -- ful
  all the won -- der -- ful Wi -- zard
  Wiz o Oz the Wiz of Oz
  Off to see the Won -- der -- ful the Won -- der Wiz of Oz
  you know we hear cause
  Off to see the Wiz you know we hear
  Wi -- zard Wi -- zard Wi -- zard __ _ _ _ _ _ _ _ _ of Oz
  We're off to see
  The Wiz of Oz
  Oz Oz
  Won -- der -- ful Won -- der -- ful Won -- der -- ful
  Off to see the Wiz the Wiz of Oz
}

mezzo = \relative c' { \autoBeamOff
  \prefatoryMatter
  r4. |
  R1 |
  r2 r8 eis8^\pp^\< fis fisis |
  gis4^\p^\> g fis eis |
  e dis d^\pp cis |
  r2 r8 cisis^\< dis disis |
  eis4^\p^\> e dis d |
  cis8^\pp bis4 b ais a8 ~ |
  a gis4 g fis f8 ~ |
  f r r4 r8 b'^\< c cis |
  d4^\mp^\> cis c^\p b |
  ais a gis8 bis^\< cis cisis |
  dis4^\mf^\> d cis^\mp c |
  b ais a gis |
  g8 c^\< cis d dis4 d |
  cis c b--^\f ais |
  a gis b-- ais |
  a gis b-- ais |
  a gis b8-- r r4 |
  R1*5 |
  r4 eis,4-_^\mp r fisis--^\mf |
  r2.. bis,8^\f |
  cis16^\p^\< bis cis bis cis8 dis cisis4-.^\f r |
  R1 |
  R1 |
  \lod r4. \sh d8 \lo cis \sh d \lo fis \sh eis |
  \lo fis \sh a \lo gis \sh a d4-. r |
  R1 |
  %r8 eis,^\p^\< fis fisis gis4-.^\mf r |
  r8 disis,^\p^\< eis fis fisis4-.^\mf fis-. |
  r2 r8 cisis^\p^\< dis disis |
  eis4^\mf e dis d^\< |
  << { \pitchedTrill eis1\startTrillSpan fis
  eis4\stopTrillSpan-. } { s2.^\fp s4^\< s4^\f } >> r r2 |
  R1 |
  R1 |
  r4 r16 d^\mp^\< e eis fis-.^\mf fis-. fis-. fis-. fis4 ~ |
  fis8 f^\mp e16 fis f8^\> e dis4^\p d16 cis |
  bis-. bis-. bis-. bis-. bis8^\> b ais a^\pp b'16-.^\mf b-. b-. b-. |
  b4. ais8^\< a16^\> b ais8 a-.^\mf gis16 ais |
  a8 gis g16 a gis8 g^\> fis eis8 fis |
  g4^\p r8 d ~ d8 cis bis d |
  cis4^\p^\< bis eis16-.^\mp eis-. eis-. eis-. eis8-. r |
  fis16 eis fis eis fis eis fis eis fis eis fis eis fis r16 r8 |
  r2. fis8-. r |
  fis16 eis fis eis fis r16 r8 r16 dis disis eis fis dis d cis |
  bis4-. r r2 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  r4.. eis32-^ eis32-^ r2^\longfermata |
  r2. ais8 ais ais gis ais gis |
  ais8 ais ais gis ais gis ais8 ais ais gis ais gis |
  %ais8 ais ais gis ais gis ais8 ais ais gis ais gis |
  ais8 a gis fisis gis fisis fis4 gis8 ais4 ais8 |
  dis4 ais8 dis4 ais8 dis4 ais8 fis4 gis8 |
  ais4 b8 ais4 gis8 fis4 eis8 dis4 eis8 |
  fis4 gis8 fis4 eis8 dis4 cis8 bis4 r8 |
  r4. eis8 eis eis eis4 fis8 gis4 fis8 |
  gis4 fis8 gis4 fis8 eis4 dis8 eis4. |
  cis8. cis' b ais gis4 fis8 eis4 fis8 |
  eis4. \glissando cis'8 r4 cis,8 r4 eis8 eis eis |
  eis4 fis8 gis4 fis8 gis4 fis8 eis4 ais8 |
  gis4 eis8 dis4 eis8 gis gis gis gis4 ais8 |
  b4 ais8 gis4 fis8 eis4. \glissando cis'8-. r4 |
  cis,8 r4 fisis8 fisis fisis cis'8 cis cis cis8. dis |
  e8. fis, gis fis eis cis cisis bis cis
}

mezzoWords = \lyricmode {
  he is the
  \repeat unfold 8 wiz
  he is the
  \repeat unfold 5 wiz
  \repeat unfold 8 cau
  he is the \repeat unfold 7 wiz
  he is the \repeat unfold 9 wiz
  he is the \repeat unfold 17 wiz
  cause cause
  The won -- der -- ful, the wiz of Oz
  the Wi -- zard won -- der -- ful the wiz of Oz
  be -- cause be -- cause, is
  he is the \repeat unfold 4 wiz
  Wi -- zard
  the Wiz of cause of all the won -- der won -- der -- ful Wiz of
  won -- der cause of all the won -- der Wiz of
  cause of all the won -- der won -- der -- ful things all the won -- der things that he does
  the wiz of Oz
  won -- der -- ful the Wiz of Oz the Wiz of Oz
  Off to see the Won -- der -- ful the Won -- der Wiz of Oz
  cause
  Off to see the Wiz he is a Wi -- zard of a Wiz
  of Oz
  Won -- der -- ful Wi -- zard of
  Won -- der -- ful Wi -- zard of Won -- der -- ful Wi -- zard of
  Won -- der -- ful Wi -- zard is one be -- cause We're
  off to see We're off to see the Wiz the Wiz of Oz the Wiz of Oz
  the Won -- der -- ful the Wiz
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  \clef "treble_8"
  r4. |
  r2 r8 dis^\pp^\< disis eis |
  fis4^\p^\> eis e\pp dis |
  d cis bis b |
  ais a gis g |
  fis8 bis^\< cis d dis4^\p^\> d |
  cis^\pp bis b ais |
  a gis g fis |
  eis e dis d |
  cis8 \clef treble  e'^\< f fis g4^\mp^\> fis |
  f8\! g^\< gis a ais4^\mp^\> a |
  gis g\! fis f |
  e4^\< dis d cis |
  bis^\mp b ais8 ais'^\< b c |
  cis4^\mf^\< c b ais |
  a^\f gis g fis |
  eis e dis d |
  cis c b ais |
  a gis g8 r r4 |
  R1 |
  R1 |
  R1 |
  R1 |
  r2. cisis4-_^\p |
  r4 cisis4-_^\mp r eis-_^\mf |
  R1 |
  b8^\p^\< ais gisis ais ais4-.^\f r |
  dis4^\p d cis c |
  b ais a gis |
  \lod a4.-- \sh r8 r2 |
  R1 |
  cis8^\mp^\< eis16 cisis bis8 e16 c b8-.^\mf bis-.^\< cis-. cisis-. |
  dis2^\fp^\< ~ dis8-.^\mf ais-.^\p^\< aisis-. bis-. |
  cis4^\mf^\> bis b^\mp ais |
  b^\< c cis^\mf d |
  dis4^\f-. r r2 |
  cis4^\f-. r r2 |
  R1 |
  r4 d16-.^\p^\< d-. d-. d-. d4^\> r\parend^\p |
  R1 |
  r4 d16-.^\mp^\endessous d-. d-. d-. d8 cis c16 d cis8 |
  c b ais16 c b8 bes a gis a ~ |
  a4. r8 c4.^\espressivo r8 |
  c4.^\espressivo b8 bes r r16 cis^\mp^\<^\ord dis disis |
  eis-.^\mf eis-. eis-. eis-. eis4 ~ eis8^\> e dis16 eis e8 |
  dis^\mp^\< d16 eis e eis fis fisis gis-.^\> gis-. gis-. gis-. b8-.^\mp r |
  ais16 gisis ais16 gisis ais16 gisis ais16 gisis ais16 gisis ais16 gisis ais16 cis, dis eis |
  fis fis e dis cis dis gisis, ais fis fis ais cis ais'8-. r |
  gis16 fisis gis fisis gis gis ais aisis bis b ais a gis fis f e |
  dis4-. r a-. r |
  gis4-. r r2 |
  R1 |
  R1 |
  R1 |
  r8.. dis'32 dis8..-. dis32 dis8..-. r32 r4 |
  r8.. cis32 cis8..-. cis32 cis8..-. r32 r4 |
  r8. eis16 eis8.-. eis16 eis4 r4 |
  r4.. b32-^ b32-^ r2^\longfermata |
  fis'8 fis fis eis fis eis fis fis fis eis fis eis |
  fis fis fis eis fis eis fis fis fis eis fis eis |
  fis fis fis eis fis eis fis fis fis eis fis eis |
  fis fis fis eis fis eis fis fis fis eis fis eis |
  fis fis fis eis fis eis fis fis fis eis fis eis |
  fis bis, cis cisis dis disis eis r4 r4. |
  \clef "treble_8" r4. \acciaccatura { fisis,8 } gis4. ~ gis2. ~ |
  gis2. ~ gis4. fisis8 fisis fisis |
  fisis4 gis8 ais4 gis8 fisis4 eis8 dis4. \glissando |
  ais'8 r4
  \clef treble
  dis8 dis dis dis4 eis8 fis4 eis8 |
  fis4 eis8 fis4 eis8 dis4 cis8 dis4. |
  bis dis8 dis dis dis4 eis8 fis4 gis8 |
  fis4 eis8 dis4. \glissando gis8-. r4 bis,8-. r4 |
  r4. cis8 cis cis r4. cis4 b8 |
  ais8. e' eis fis dis cis cisis gisis |
  ais
}

altoWords = \lyricmode {
  he is the
  \repeat unfold 13 wiz
  he is the
  \repeat unfold 15 wiz
  he is the
  \repeat unfold 3 wiz
  he is the
  \repeat unfold 13 wiz
  he is the
  \repeat unfold 19 wiz
  Oz cause cause
  one be -- cause be -- cause
  \repeat unfold 8 wiz
  won
  Wi -- zard of Oz, he is one be -- cause be -- cause
  he is the \repeat unfold 8 wiz
  Wi -- zard
  cause of all the won
  cause of all the won -- der won -- der -- ful things the won -- der -- ful
  Wi -- zard of Oz
  Wiz
  Wiz of Oz
  the wiz of
  cause of all the won -- der won -- der -- ful things that he does
  the Wiz of Oz the Wiz of Oz
  Off to see the Won -- der -- ful the Won -- der Wiz of Oz
  you know we hear he is a Wiz -- ard of a Wiz be -- casue be -- cause
  Off to see the Wiz you know we hear he is a Wi -- zard of a
  Wiz
  Wiz
  Wiz
  be -- cause be -- cause 
  be -- cause be -- cause 
  The Wiz of Oz
  of Oz
  Won -- der -- ful Wi -- zard the Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard the Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard the Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard the Won -- der -- ful Wi -- zard the
  Won -- der -- ful Wi -- zard the Won -- der -- ful Wi -- zard of
  Oz What a Won -- der -- ful Wiz
}

tenor = \relative c' { \autoBeamOff
  \clef "treble_8"
  \prefatoryMatter
  ais8^\pp^\< aisis bis |
  cis4^\p^\> bis b\pp ais |
  a gis g fis |
  eis e dis d |
  cis c b8^\< gis' gisis ais |
  b4^\p^\> ais a^\pp gis |
  g fis eis e |
  dis d cis bis |
  b ais a8 bis'^\< cis cisis |
  dis4^\mp^\> d cis^\p c |
  b ais a8 cis^\< d dis |
  e4^\mf^\> dis d^\mp cis |
  c b ais a |
  gis8 fis'^\< fisis gis a4^\mf^\> gis |
  g\!^\< fis f e |
  f^\f fis, g gis |
  a ais b c |
  cis d dis e |
  eis fis g8 r r4 |
  %eis \glissando ais, \glissando eis %{pushes down oct%} \glissando ais, \glissando |
  %eis' \glissando ais, \glissando eis' \glissando ais, \glissando |
  %eis' \glissando ais, \glissando eis' \glissando ais, \glissando |
  %eis' \glissando ais, \glissando eis'8 r r4 |
  R1 |
  R1 |
  R1 |
  R1 |
  r4 cisis,,4-_^\pp r eis-_^\p |
  r4 gisis4-_^\mp r e8^\mf fisis16 gisis |
  ais8 ais16 ais ais8-. cisis-. cis-. bis-. ais-. a^\f^\> |
  gis g fis^\!^\< f e4^\f-. r4 |
  r8 eis r b r eis r b |
  r eis r b r eis r b |
  fis'4-. r4 r2 |
  R1 |
  a4^\p^\< gis g4.^\> r8\! |
  ais4^\< a gis8-.^\mf r r4 |
  r8 eis-.^\mp r eis-. r eis-. r eis-. |
  r8 eis-. r eis-. r eis4^\< gisis8 |
  b4-.^\f r r2 |
  R1 |
  bis16-.-^^\> bis-. bis-. bis-. bis4 ~ bis8-.^\p b-.^\mp ais16 bis b8-. |
  ais8-.^\> a-. gis8^\p^\< a16 ais b16-. b--^\> bis16 cis d8^\mf^\< cis |
  bis16 d cis8^\> bis b ais aisis bis16-.^\p bis-. bis-. bis-. |
  bis d cis8-. c8 b ais4 gisis8 ais ~ |
  ais8 r d16-. d-. d-. d-. d8 cis c16^\< d cis8 |
  c^\mp b d16-.^\< d-. d-. d-. d4^\mf r8 dis^\p ~ |
  dis16-. dis-.^\< dis-. dis-. dis8^\> d cis16 dis d8 cis c |
  b4^\p b16-.^\< b-. b-. b-. ais2^\> |
  fisis4^\p^\< fis4 ais16-.^\mp ais-. ais-. ais-. a8-. r |
  cis16 bis cis bis cis bis cis bis cis bis cis bis cis r16 r8 |
  r16 ais16 aisis bis cis-. r r8 r4 r8 fis,-. |
  bis16 ais bis ais bis r r8 r2 |
  r2 fis4-. r |
  fis4-. r r2 |
  R1 |
  R1 |
  R1 |
  r8.. cis'32 bis8..-. aisis32 bis8..-. r32 r4 |
  r8.. b32 ais8..-. gisis32 ais8..-. r32 r4 |
  r8. b16 c8.-. b16 ais4 r4 |
  r4.. gis32-^ gis32-^ r2^\longfermata |
  r2. r4. cis8 cis cis |
  r2. r4. ais8 ais ais |
  cisis8 cis bis cis bis b ais8-. r4 dis8 dis dis  |
  cisis8 cis bis cis bis b ais8-. r4 cisis8 cis bis |
  cis bis b ais8-. r4 cisis8 cis bis b ais gisis |
  ais bis cisis dis bis a gis8 gis gis gis4 ais8 |
  b4 ais8 b4 ais8 b4 ais8 gis4 fis8 |
  eis4. cis gis'8 gis gis gis8. cis |
  b ais gis fis eis4. \glissando cis'8-. r4 |
  cis,8-. r4 r4. gis'8 gis gis gis4 ais8 |
  b4 cis8 b4 ais8 gis4 ais8 gis4 fis8 |
  eis4 cis8 dis4 disis8 eis8 fis fisis gis4 cis8 |
  b4 ais8 gis4 fis8 eis4. \glissando cis'8-. r4 |
  cis8-. cis-. cis-. cis4 dis8 e4 dis8 e8. dis |
  cis8. cis c d cis 
  
  
}

tenorWords = \lyricmode {
  he is the
  \repeat unfold 15 wiz
  he is the
  \repeat unfold 15 wiz
  he is the
  \repeat unfold 7 wiz
  he is the
  \repeat unfold 9 wiz
  he is the
  \repeat unfold 21 wiz
  zard Oz cause cause
  Oh the Wi -- zard of Oz is one be -- cause
  is one be -- cause be -- cause
  \repeat unfold 4 { Wi -- zard }
  won
  \repeat unfold 6 wiz
  \repeat unfold 6 wiz
  Wi -- zard wiz
  cause of all the won -- der -- ful of the
  won -- der -- ful won -- der -- ful the won -- der -- ful the
  won -- der -- ful Wi -- zard won -- der cause of all the
  won -- der -- ful wiz of Oz. Wi -- zard
  cause of all the won -- der won -- der -- ful Wiz of
  cause of all the won
  cause of all the won -- der -- ful of the Wiz of
  Oz cause of all the won
  Wiz of Oz the Wiz of Oz
  Off to see the Won -- der -- ful the Won -- der Wiz of Oz
  he is a Wiz cause
  Off to see the Wiz
  Wiz
  Wiz
  be -- cause be -- cause 
  be -- cause be -- cause 
  The Wiz of Oz
  of Oz
  Won -- der -- ful Won -- der -- ful
  Won -- der -- ful Wi -- zard of Oz
  Won -- der -- ful Won -- der -- ful Wi -- zard of Oz
  Won -- der -- ful Wi -- zard of Oz
  Won -- der -- ful Wi -- zard of Oz
  We're off to see the
  Ev -- er the Wiz he is a wiz the Won -- der -- ful the Wi -- zard
  Ev -- er the Wiz he is a wiz the Wiz of Oz
}

bass = \relative c { \autoBeamOff
  \prefatoryMatter
  \clef bass
  r4. |
  R1*7 |
  %R1
  %r8 ais^\pp^\< r4 r8 aisis4 aisis8 |
  %r8 bis8 r4 cis8 r cis r |
  %r8 cisis r4 r8 dis4 dis8 |
  %r8 disis8 r4 eis8 d' dis e |
  %r8 ais^\pp^\< r4 r2 |
  %r8 aisis8 r4 r2 |
  %r8 bis r4 r2 |
  %r8 cis8 r4 r8 d' dis e |
  r2. gis4^\pp |
  r8 gisis4^\p r8 r4. ais8 ~ |
  ais r8 r4 r8 aisis4^\mp r8 |
  r4. bis8 ~ bis r8 r4 |
  r8 cis4^\mf r8 r8 cisis^\mp^\< dis e |
  f4^\mf^\> e dis d |
  cis\!^\< c b ais \glissando |
  dis,1^\f ~ |
  dis ~ |
  dis ~ |
  dis2 \lo r8^\swing^\mf \sh eis8 \lo fisis \sh gisis |
  \repeat unfold 4 { \lo ais8 \sh ais } |
  \lo ais8 \sh ais \lo ais \sh cisis \lo r \sh ais \lo gisis \sh fisis |
  \lo eis8 \sh eis \lo eis \sh eis \times 2/3 { eis eis eis } \lo eis \sh eis |
  \times 2/3 { eis eis eis } \lo fisis8 \sh gisis ais4-. r |
  dis,4--^\mp \lo ais'8 \sh dis, \lo dis-- \sh r \lo ais' \sh dis,--^\mf |
  \lo r \sh dis \lo ais' \sh dis, dis4-- r4 |
  R1 |
  r2. eis4-.^\mf |
  R1*3 |
  r2. ais4^\mp |
  R1*4 |
  gis'4-.^\f r r2 |
  r2 cis,32 cis8..-_ r4 |
  r4 a'16-.-^^\> a-. a-. a-. a4^\p^\< ~ a8-.^\mp gis-. |
  g-.^\> fis eis8^\p^\< fis16 fisis gis16-. gis--^\> gisis ais b16-.^\mf b-. b-. b-. |
  b8 ais a gis fisis gis a4^\> ~ |
  a4. gis8^\p g fis f e ~ |
  e^\< eis fis16-. eis-- fis fisis gis-.-^^\mf^\> gis-. gis-. gis-. gis8^\p g |
  fis8 fisis gis^\< gisis16 ais b16-.^\mp b-. b-. b-. b8^\< bes |
  a16^\mf b bes8^\> a gis16 ais a8 gis g4^\p |
  R1 |
  r4 gis,^\mp cis16-. cis cis cis-. cis8-. r |
  fis16 cis fis cis fis16 cis fis cis fis cis fis cis fis r r8 |
  r4 r16 cis16 bis cis ais dis d cis fis,8-. r |
  gis'16 dis gis dis gis r r8 r4 r16 eis fis fisis |
  gis4-. r bis,-. r |
  cisis-. r ais-. r4 |
  R1 |
  R1 |
  R1 |
  r8.. a'32 a8..-. a32 ais8..-. r32 r4 |
  r8.. g32 g8..-. g32 g8..-. r32 r4 |
  r8. gis16 gis8.-. gis16 gis4 r4 |
  r4.. ais,32-^ ais32-^ r2^\longfermata |
  R1. |
  dis4 ais8 dis4 ais8 dis4 ais8 fis4 ais8 |
  dis,4 eis8 fis4 eis8 dis4 eis8 fis4 gis8 |
  ais4 b8 ais4 gis8 fis4 gis8 ais4 ais8 |
  dis4 cisis8 dis4 eis8 fis4 eis8 dis4 cisis8 |
  dis4 cis8 bis4 bis8 bis4 r8 r4. |
  r4. \acciaccatura { bis8 } cis4. ~ cis2. ~ |
  cis1. ~ |
  cis1. |
  gis4.-. cis-. r cis ~ |
  cis1. ~ |
  cis1. ~ |
  cis1. ~ |
  cis4. gis cis fis, ~ |
  fis8.-. cis'' c b ais
}

bassWords = \lyricmode {
  %wi Wi -- zard
  %wi Wi -- zard
  %wi Wi -- zard
  %wi wiz
  %%%
  %Wi -- zard of Oz
  The Wi -- zard of Oz is
  He is the \repeat unfold 9 wiz
  You know we're off to see the wi -- zard, he's the wi -- zard of Oz
  You know we hear he is a wiz of a wiz if ev -- er a wiz there was.
  Wi -- zard of Oz is one be -- cause be -- cause
  cause
  Oz
  wiz
  of Oz
  cause of all the won the
  won -- der -- ful won -- der -- ful the won -- der cause of all the won ful Wi -- zard
  won -- der cause
  the won -- der Wiz -- ard of Oz the Wiz of
  cause of all the won -- der -- ful the Wiz, Wiz -- ard
  cause of all the Won -- der Won -- der -- ful Wiz of the won -- der -- ful
  of Oz the Wiz of Oz
  Off to see the Won -- der -- ful the Won -- der Wiz of Oz
  ard of a Wiz be -- cause be -- cause
  Off to see the Wiz
  zard of a Wiz
  Wiz Wiz Oz
  be -- cause be -- cause
  be -- cause be -- cause
  the Wiz of Oz
  of Oz
  Off to see We're off to see the 
  Won -- der -- ful we hear he is a Wi -- zard of a Wiz of Oz We're
  off to see the won -- der -- ful the 
  won -- der wiz of Oz
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
    \new Staff = "tenorstaff" \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
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
      \override Script #'direction = #UP
      \override DynamicLineSpanner #'direction = #UP
      %\override Slur #'direction = #UP
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
      \override InstrumentName.self-alignment-X = #RIGHT
      \override InstrumentName.padding = #1.0
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
      \override Hairpin.stencil = ##f
      \override DynamicText.stencil = ##f
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
      \remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}
%}
%%% MIDI

\score {
  \new ChoirStaff <<
%{
    \new Staff \with { instrumentName = #"Glockenspiel" %shortInstrumentName = #"M."
} <<
      \new Voice = "glock" { << { \numericTimeSignature
        \glock
      } {
        \nothing
      } {
        \nothing
      }>> }
    >>
%}
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
