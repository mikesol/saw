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
scat = \markup \italic "scat"
jazzjazzjazz = \markup \italic "jazz jazz jazz"
legato = \markup \italic "legato"

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
  s1.*16 |
  \tempo "Andante" 4=92
  \secFive
  \time 2/4
  s2*38 |
  \mark \rall
  s2*2 |
  \tempo "Presto" 2=100
  \time 2/2
  \secSix
  s1 |
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
  r16 dis^\p^\< [disis eis fis fisis gis ] r16\parend^\f r4^\fermata a16-.^\thought r8.^\fermata |
  R1. |
  r2. b,,8--^\p b-- b-- r4. |
  R1. |
  r2. fis'8 fis fis r4. |
  r4. ais8 ais ais dis4^\< eis8 fis4 gis8 |
  fis4 eis8 dis4 bis8 gis8^\f r4 r4. |
  r2. gis8-.^\f gis-. gis-. gis4-. ais8 |
  b4-. cis8 b4-. ais8 gis4-. fis8 eis4-. fis8 |
  gis8-. gis-. gis-. gis4-. ais8 b4-. ais8 b4-. ais8 |
  b4-. ais8 gis4-. fis8 eis4. cis-. |
  %b8 b b b4 cis8 d4 e8 d4 cis8 |
  %b4 a8 gis4 a8 b4 cis8 d4 e8 |
  %fis4 gis8 a4 gis8 fis4 e8 dis4 cis8
  gis'8-. gis-. gis-. gis4-. ais8 b4-. cis8 d4-. eis8 |
  fis4-. gis8 fis4-. eis8 dis4-. cis8 bis4-. cis8 |
  dis4-. cis8 bis4-. ais8 bis4-. cis8 bis4-. ais8 |
  gis4-. fis8 gis4-. ais8 b8-. b-. b-. ais8.-_ gis-_ |
  fis-. fis-_^\subPd^\< gis-_ gisis-_ ais-.^\mf cis,-_^\p^\< cisis-_ dis-_ |
  e-.^\mf r r4. r8. ais-_^\p^\< aisis-_ bis-_ |
  cis-.^\mf r r4. r2. |
  r2. r4. ais8-. ais-. ais-. |
  ais4-. b8 cis4-. b8 cis4-. b8 cis4-. b8 |
  ais4-. gis8 ais4. fis-. ais8-. ais-. ais-. |
  ais4-. b8 cis4-. b8 ais4-. a8 gis4. |
  fis-. eis-. r4. ais4.->^\> ~ |
  ais8^\mp^\legato gis ais fis |
  b fis bis fis |
  cis'4^\< dis8 eis |
  gis^\> fis eis dis |
  cis^\mp fis cis ais |
  gis dis' cis16 b ais gis |
  fis8 eis16 fis ais8 gis |
  fis4. r8 |
  gis4.^\p^\< ais8 |
  b8^\mf dis cis16 b ais gis |
  fis4^\> eis8 fis |
  gis4^\mp ais8 b |
  cis4^\< ~ cis16 b ais gis |
  fisis8^\mf e' dis ais |
  cis4^\> b8 ais |
  b4^\mp b8 cis |
  dis4^\< ~ dis16 cis b ais |
  gisis8^\mf fis' eis bis |
  dis4 cisis8 dis |
  eis2^\> |
  fis2^\< ~ |
  fis^\> |
  R2\parend^\p |
  R2 |
  R2 |
  R2 |
  R2 |
  R2 |
  dis2^\p^\< |
  eis8 fis16 eis dis8 eis |
  fis^\mf fis,^\< ais cis |
  e^\> dis cis b |
  ais4^\mf r8 fis'8 |
  e dis cis b |
  ais4 r8 ais'^\f^\> |
  gis8 fis eis dis16 d |
  cis2^\p ~ |
  cis4.^\> cis16-.^\pp^\< cis-. |
  cis8-. cis16-. cis-. cis8-. cis16-. cis-. |
  cis8-. cis16-. cis-. cis8-. cis16-. cis-. |
  r8\! ais16^\subPPd ais ais8-. ais-. r8 ais16 ais ais8-. ais8-. |
  r8 ais16 ais-. ais8-. ais8-. r8 ais16 ais ais8-. ais8-. |
  r8 b16 b b8-. b-. r4 fis'-> |
  r8 b,16 b b8-. b-. r4 c,-> |
  r8\! ais'16^\subPPd ais ais8-. ais-. r8 ais16 ais ais8-. ais8-. |
  ais-. a-. gis-. g-. fis-. eis-. e-. dis-. |
  r8 b'16 b b8-. b-. r4 c,-> |
  r8 b'16 b b8-. b-. r4 dis,8.-> dis32 eis |
  fis8-. fis-. r fis-. fisis-. fisis-. r fisis-. |
  gis-. gis-. r gis-. gisis-. gisis-. r gisis-. |
  ais-. ais-. r ais-. aisis-. aisis-. r aisis-. |
  bis-. bis-. r bis-. cis-. cis-. r cis-. |
  d4 cis bis b |
  ais a gis g |
  fis eis e dis |
  d4 cis bis8 b ais8 a |
  gis2. r4 |
  r2 r8 gis' gis gis |
  gis4-. r r2 |
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
  Cause of the Wiz he is a Wiz we're off to see the
  Cause of the Wiz he is a Wiz we're off to see the Wi -- zard
  Cause of the Wiz he is a Wiz the Won -- der -- ful, the Won -- der -- ful we're
  Off to see we're Off to see the Won -- der -- ful the Cause of the Wiz of Oz
  He is a wiz, Oh what a wiz
  We're off to see
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
  fis16^\mf eis fis eis fis eis fis eis fis eis fis eis fis r16 r8 |
  r2. fis8-.^\mp r |
  fis16^\mf eis fis eis fis r16 r8 r16 dis^\mp disis eis fis dis d cis |
  bis4-. r r2 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  r4.. eis32-^^\f eis32-^ r2^\longfermata |
  r2. ais8^\pp ais ais gis ais gis |
  ais8 ais ais gis ais gis ais8 ais ais gis ais gis |
  %ais8 ais ais gis ais gis ais8 ais ais gis ais gis |
  ais8 a gis fisis gis fisis fis4^\< gis8 ais4 ais8 |
  dis4^\f ais8 dis4 ais8 dis4^\> ais8 fis4 gis8 |
  ais4 b8 ais4 gis8 fis4^\mp^\< eis8 dis4 eis8 |
  fis4 gis8 fis4 eis8 dis4^\f cis8 bis4 r8 |
  r4. eis8-.^\f eis-. eis-. eis4-. fis8 gis4-. fis8 |
  gis4-. fis8 gis4-. fis8 eis4-. dis8 eis4. |
  cis8.-_ cis'-_ b-_ ais-_ gis4-. fis8 eis4-. fis8 |
  eis4. \glissando cis'8-. r4 cis,8-. r4 eis8-. eis-. eis-. |
  eis4-. fis8 gis4-. fis8 gis4-. fis8 eis4-. ais8 |
  gis4-. eis8 dis4-. cis8 bis4.-. gis'8-. gis-. gis-. |
  gis4-. ais8 b4-. ais8 gis4-. fis8 eis4. \glissando |
  cis'8-. r4 fisis,8-! fisis-! fisis-! cis'8-. cis-. cis-. cis8.-_ dis-_ |
  e8.-. fis,-_^\subPd^\< gis-_ fis-_ eis-.^\mf cis-_^\p^\< cisis-_ bis-_ |
  cis-.^\mf r r4. r8. fis-_^\p^\< fisis-_ gisis-_ |
  ais-.^\mf r r4. r2. |
  r2. cis,8-. cis-. cis-. cis4-. dis8 |
  e4-. dis8 e4-. dis8 e4-. dis8 cis4-. dis8 |
  e4. cis-. cis8-. cis-. cis-. cis8.-_ fis-_ |
  e-_ dis-_ cis-_ b-_ cis4. gis-. |
  cis-. r4. r2. |
  R2*19 |
  r4 eis4^\p^\<^\legato ~ |
  eis4 fis^\mf |
  fis ais |
  r ais |
  gis fis |
  r eis |
  eis gis |
  r gis |
  fis eis |
  fis dis ~ |
  dis r |
  R2 |
  R2 |
  r8 fis16-.^\mf fis-. fis8-. r |
  R2 |
  r8 fis16-. fis-. fis8-. r |
  R2 |
  r8 fis16-.^\> fis-. fis8-. fisis16-. fisis-. |
  fisis8-. fis16-. fis-. fis8-. fisis16-.^\pp^\< fisis-. |
  fisis8-. gis16-. gis-. gis8-. gis16-. gis-. |
  gis8-. gisis8-. gisis-. gisis-. |
  r8\! fis16^\subPPd fis fis8-. fis-. r8 fis16 fis fis8-. fis8-. |
  r8 fis16 fis fis8-. fis-. fis-. eis-. e-. dis-. |
  r4 gis\glissando d r |
  r gis\glissando d r |
  r8 fis16^\pp fis fis8-. fis-. r8 fis16 fis fis8-. fis-. |
  fis8-. eis-. e-. dis-. cisis-. dis-. e-. eis-. |
  gis8. g16 fis8-. eis-. e8. eis16 fis8-. g-. |
  gis8. g16 fis8-. eis-. e8. dis16 d8-. cis-. |
  r4 d8 cis r4 dis8 cisis |
  r4 e8 dis r4 eis8 disis |
  r4 fis8 eis r4 fisis8 eisis |
  r4 gis8 fisis r4 a8 gis |
  r2 e4 eis |
  fis fisis gis gisis |
  ais aisis bis cis |
  cisis dis disis eis
  fis2 r |
  r2 r8 dis, disis eis |
  fis4-. r4 r2 |
}
%06 01 28 57 38
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
  Cause of the Wiz he is a Wiz we're off to see the Wi -- zard.
  He is a wiz the Wi -- zard Wiz of Oz
  Cause of the Wiz he is a Wiz we're off to see the Wi -- zard
  Cause of the Wiz he is a a Wiz the Wiz of
  Cause of the Cause of the Wiz of Oz
  He is a wiz, Oh what a wiz, We're off to see
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
  ais16^\mf gisis ais16 gisis ais16 gisis ais16 gisis ais16 gisis ais16 gisis ais16 cis,^\mp dis eis |
  fis fis e dis cis dis gisis, ais fis fis ais cis ais'8-. r |
  gis16^\mf fisis gis fisis gis gis^\mp ais aisis bis b ais a gis fis f e |
  dis4-. r a-.^\mf r |
  gis4-.^\f r r2 |
  R1 |
  R1 |
  R1 |
  r8.. dis'32^\p dis8..-. dis32 dis8..-. r32 r4 |
  r8.. cis32^\pp cis8..-. cis32 cis8..-. r32 r4 |
  r8. eis16^\ppp eis8.-. eis16 eis4 r4 |
  r4.. b32-^^\f b32-^ r2^\longfermata |
  fis'8^\pp fis fis eis fis eis fis fis fis eis fis eis |
  fis fis fis eis fis eis fis fis fis eis fis eis |
  fis fis fis eis fis eis fis fis fis eis fis eis |
  fis fis fis eis fis eis fis^\< fis fis eis fis eis |
  fis fis fis eis fis eis fis fis fis eis fis eis |
  fis bis, cis cisis dis disis eis^\f r4 r4. |
  \clef "treble_8" r4. \acciaccatura { fisis,8 } gis4.^\ff ~ gis2.^\> ~ |
  gis2.^\mf ~ gis4. fisis8-.^\mf^\endessous fisis-. fisis-. |
  fisis4-. gis8 ais4-. gis8 fisis4-. eis8 dis4. \glissando |
  ais'8-. r4
  \clef treble
  dis8-.^\f dis-. dis-. dis4-. eis8 fis4-. eis8 |
  fis4-. eis8 fis4-. eis8 dis4-. cis8 dis4. |
  bis-. dis8-. dis-. dis-. dis4-. eis8 fis4-. gis8 |
  fis4-. eis8 dis4. \glissando gis8-. r4 bis,8-. r4 |
  \clef "treble_8" r4. cis8-. cis-. cis-. r4. cis4-. b8 |
  ais8.-. e'-_^\subPd^\< eis-_ fis-_ dis-.^\mf cis-_^\p^\< cisis-_ gisis-_ |
  ais-.^\mf r r4. r8. dis-_^\p^\< eis-_ fis-_ |
  fis8^\mf^\>^\scat [ eis16 ] fis8 [ eis16 ] e8^\mp [ dis16 ] cisis16 [ dis cisis ] cis8 [ cisis16 ] dis8 [ d16 ] cis8 [ c16 ] b [ cis c ] |
  b8 [ bis16 ] cis8 [ c16 ] b8 [ cis,16 ] dis8 [ eis16 ] fis4. r |
  eis8 eis eis eis4 fis8 gis4 fis8 gis4 fis8 |
  gis4 fis8 eis4 dis8 cis4. dis |
  eis8 eis eis eis8. disis eis fis eis dis |
  cis4.-. eis-. cis-. r |
  R2 |
  R2 |
  R2 |
  b'4.^\pp^\<^\legato bis8 |
  cis4^\mf e |
  dis2^\> |
  R2\parend^\p |
  R2 |
  r8 dis^\pp dis dis |
  R2 |
  R2 |
  r8 dis4^\mp^\> d8 |
  cis2^\p ~ |
  cis2 |
  r8 gis^\p^\< b dis |
  gis dis b ais |
  gisis2^\> ~ |
  gisis4^\p r |
  r8 ais^\< cisis eis |
  b'4^\mf ais ~ 
  ais2^\> |
  R2\parend^\p |
  R2*10 |
  r8 d,16-.^\mf d-. d8-. r |
  R2 |
  r8 dis16-. dis-. dis8-. r |
  R2 |
  r8 d16-.^\> d-. d8-. cis16-. cis-. |
  cis8-. bis16-. bis-. bis8-. cis16-.^\pp^\< cis-. |
  cis8-. cisis16-. cisis-. cisis8-. dis16-. disis-. |
  eis8-. cis-. dis-. eis-. |
  fis4^\subPd eis dis cis |
  dis cis b ais |
  gis8. ais16 b8-. dis-. d4.-^ r8 |
  gis,8. ais16 b8-. dis-. d4-_ cis8.-> dis32 eis |
  fis8^\subPd eis dis cis dis cis b ais |
  b ais gis fis gis fis eis dis |
  gis8. ais16 b8-. dis-. d4.-^ r8 |
  gis,8. ais16 b8-. dis-. d4-_ cis4-> |
  r4 fis,8-. fis-. r4 \times 2/3 { fis8-. fis-. fis-. } |
  r4. fis8-. r2 |
  r4 fis16 fis r8 r2 |
  r8 fis4.-^ r4 fis-. |
  R1 |
  r2 e4 eis |
  %fis fisis gis gisis |
  %ais aisis bis8 gis ais aisis |
  %bis4 b ais a |
  %gis4 g fis f8 e |
  %dis4-.
  fis fisis8 gis gisis4 ais8 aisis |
  bis8 b ais a gis gis ais aisis |
  bis4 b ais a |
  gis4 g fis f8 e |
  dis4-. r4 r2 |
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
  Wiz Cause of the Wiz he is a wiz the Wiz of
  Cause of the Wiz he is a Wiz we're off to see the Wi -- zard
  Cause of the Wiz he is a Wiz the Wiz of Oz
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
  cis16^\mf bis cis bis cis bis cis bis cis bis cis bis cis r16 r8 |
  r16 ais16^\mp aisis bis cis-. r r8 r4 r8 fis,-. |
  bis16^\mf ais bis ais bis r r8 r2 |
  r2 fis4-.^\mf r |
  fis4-.^\f r r2 |
  R1 |
  R1 |
  R1 |
  r8.. cis'32^\p bis8..-. aisis32 bis8..-. r32 r4 |
  r8.. b32^\pp ais8..-. gisis32 ais8..-. r32 r4 |
  r8. b16^\ppp c8.-. b16 ais4 r4 |
  r4.. gis32-^^\f gis32-^ r2^\longfermata |
  r2. r4. cis8--^\pp cis-- cis-- |
  r2. r4. ais8--^\p ais-- ais-- |
  cisis8 cis bis cis bis b ais8-. r4 dis8-- dis-- dis--  |
  cisis8 cis bis cis bis b ais8-. r4 cisis8^\mp cis bis |
  cis bis b ais8-. r4 cisis8^\< cis bis b ais gisis |
  ais bis cisis dis bis a gis8-.^\f gis-. gis-. gis4-. ais8 |
  b4-. ais8 b4-. ais8 b4-. ais8 gis4-. fis8 |
  eis4. cis-. gis'8-. gis-. gis-. gis8.-. cis-_ |
  b-_ ais-_ gis-_ fis eis4. \glissando cis'8-. r4 |
  cis,8-. r4 r4. gis'8-. gis-. gis-. gis4-. ais8 |
  b4-. cis8 b4-. ais8 gis4-. ais8 gis4-. fis8 |
  eis4-. cis8 dis4-. disis8 eis8-. fis-. fisis-. gis4-. cis8 |
  b4-. ais8 gis4-. fis8 eis4. \glissando cis'8-. r4 |
  cis8-. cis-. cis-. cis4-. dis8 e4-. dis8 e8.-_ dis-_ |
  cis8.-. cis-_^\subPd^\< c-_ d-_ cis-.^\mf ais-_^\p^\< b-_ gisis-_ |
  ais-.^\mf fis-_^\p^\< gis-_ gisis-_ ais-.^\mf cis-_^\p^\< cisis-_ dis-_ |
  e-.^\mf r r4. r2. |
  R1. |
  gis,8 gis gis gis4 ais8 b4 ais8 b4 ais8 |
  b4 ais8 gis4 fis8 eis4. cis |
  gis'8 gis gis gis4 cis8 b4 ais8 gis4 fis8 |
  eis4. \glissando cis'8-. r4 cis,8-. r4 r4. |
  fis2^\p^\legato |
  gis4^\< gisis |
  ais8^\> gis fis eis |
  dis4^\p gis8^\< gisis |
  ais2^\> |
  b4.^\< bis8 |
  cis4^\mp cisis |
  eis^\p^\< dis8 cis |
  r b^\pp b b |
  r4 gis4-_^\mf |
  cis2^\subPd^\< |
  b2^\mp^\> |
  ais^\p ~ |
  ais |
  R2 |
  R2 |
  r4 fis'^\< |
  eis bis |
  R2\parend^\f |
  cisis2^\p^\< ~ |
  cisis4^\mf cis |
  bis2^\> |
  b^\mp |
  bis |
  cis |
  b |
  ais4 fis |
  gis ais
  b2 |
  cis4 b |
  ais4-. r |
  R2 |
  r8 b16-.^\mf b-. b8-. r |
  R2 |
  r8 bis16-. bis-. bis8-. r |
  R2 |
  r8 b16-.^\> b-. b8-. ais16-. ais-. |
  ais8-. gisis16-. gisis-. gisis8-. ais16-.^\pp^\< ais-. |
  ais8-. aisis16-. aisis-. aisis8-. bis16-. bis-. |
  bis8-. bis-. bis-. bis-. |
  ais4^\subPd aisis bis cis |
  fis,4 gis gisis ais |
  gis8. g16 fis8-. eis-. e8. eis16 fis8-. g-. |
  gis8. g16 fis8-. eis-. e8. dis16 d8-. cis-. |
  ais'4^\subPd aisis bis cis |
  fis,4 gis gisis ais |
  e8. eis16 fis8-. fisis-. gis8. ais16 b8-. dis-. |
  d4-^ r8 ais8-. ais8-. ais-. ais-. ais-. |
  ais8-. ais-. ais-. ais-. ais-. ais-. ais-. ais-. |
  ais8-. ais-. ais-. ais-. ais-. ais-. ais-. ais-. |
  gisis-. ais-. aisis-. bis-. cis-. bis-. aisis-. ais-. |
  gisis-. ais-. aisis-. bis-. cis-. bis-. aisis-. ais-. |
  b4-. r4 r2 |
  d4 cis bis b |
  ais a gis g |
  fis eis e8 dis d cis |
  bis4 r r8 cis'8 cisis dis |
  e4 ees d des |
  bis4-. r4 r2 |
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
  Cause of the Wiz he is a wiz we're off to see the Wi -- zard
  Cause of the Wiz he is a wiz the Wiz of Oz
  Cause of the Wiz he is a wiz we're off to see the Wi -- zard
  Cause of the Wiz he is a wiz the Wiz of Oz
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
  fis16^\mf cis fis cis fis16 cis fis cis fis cis fis cis fis r r8 |
  r4 r16 cis16^\mp bis cis ais dis d cis fis,8-. r |
  gis'16^\mf dis gis dis gis r r8 r4 r16 eis^\mp fis fisis |
  gis4-. r bis,-.^\mf r |
  cisis-.^\f r ais-.^\sfz r4 |
  R1 |
  R1 |
  R1 |
  r8.. a'32^\p a8..-. a32 ais8..-. r32 r4 |
  r8.. g32^\pp g8..-. g32 g8..-. r32 r4 |
  r8. gis16^\ppp gis8.-. gis16 gis4 r4 |
  r4.. ais,32-^^\f ais32-^ r2^\longfermata |
  R1. |
  dis4^\pp^\< ais8 dis4 ais8 dis4 ais8 fis4 ais8 |
  dis,4^\mf eis8 fis4 eis8 dis4 eis8 fis4 gis8 |
  ais4^\> b8 ais4 gis8 fis4^\mp gis8 ais4 ais8 |
  dis4^\< cisis8 dis4 eis8 fis4 eis8 dis4 cisis8 |
  dis4 cis8 bis4 bis8 bis4^\f r8 r4. |
  r4. \acciaccatura { bis8 } cis4.^\ff ~ cis2.^\> ~ |
  cis1.^\f ~ |
  cis1. |
  gis4.-. cis-. r cis-> ~ |
  cis1. ~ |
  cis1. ~ |
  cis1. ~ |
  cis4. gis cis fis, ~ |
  fis8.-. cis''-_^\subPd^\< c-_ b-_ ais-.^\mf gis-_^\p^\< g-_ fis-_ |
  e-.^\mf fis-_^\p^\< e-_ dis-_ cis-.^\mf r r4. |
  r8 bis16^\p^\jazzjazzjazz cis8. bis b ais8 ais16 e'8. dis d |
  cis b ais gis ais4. fis^\< ~ |
  fis1. ~ |
  fis^\> |
  cis'^\p ~ |
  cis4. gis-. cis-. r |
  R2*12 |
  r4 e4^\p^\<^\legato |
  dis fisis |
  R2\parend^\f |
  R2 |
  R2 |
  R2 |
  R2 |
  gis8^\mp^\< fis eis ais, |
  dis2^\mf |
  R2*9 |
  r8 fis^\p^\< e cis |
  b4 gis |
  cis4.^\mf r8 |
  r8 gis^\p^\< ais b |
  cis4^\mf r |
  r8 gis^\mf^\> ais aisis16 bis |
  cis2^\p^\> ~ |
  cis4. cis16-.^\pp^\< cis-. |
  cis8-. cis16-. cis-. cis8-. cis16-. cis-. |
  cis8-. cis-. dis-. eis-. |
  fis,4^\subPd cis fis cis |
  fis4 cis fis cis |
  gis'4 d gis eis' |
  gis, d gis8 cis dis eis |
  fis,4^\subPd cis fis cis |
  fis4 cis fis cis |
  gis'4 d gis eis' |
  gis, d gis8 cis dis eis |
  fis8 eis e dis d cis bis b |
  ais a gis g fis eis e dis |
  e eis fis fisis gis gisis ais aisis |
  bis cis cisis dis disis eis fis fisis |
  gis2. r4 |
  R1 |
  R1 |
  e,4 eis fis fisis |
  gis2. r4 |
  r2 r8 b bes a |
  gis4-. r4 r2 |
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
  Wiz of Oz Wiz of Oz Oz
  He is a wiz, Oh what a wiz,
  We're off to see
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
