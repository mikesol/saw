%{
  GM w/ 2 entries
  GM w/ 4 entries
  IRREGULAR HOCKET .---..--..--
  TIGHTER HOCKET -.-.--.-.-.-
  3+3+2 (meaning --.--.--.--.-.-.)
  
  f g a f d' c bes c [but harmonized interestingly, bes at end becomes 3rd of ges major]
  ...
  SOLO MPer
  SOLO MPic
  SOLO Mike / SOLO Ryan
  SOLO Mathieu + tutti -...^^^----- where . = mathieu & ^ is loud rebuke
  CHROM
  CHROM
  DIM
  DIM
  CUTE
  CUTE
  CUTE
  CUTEWWWHAM
  4 MEASURES OF SOLO (EX g bes c bes c des16 c g8 bes
     g d f g' d c bes f |
     g a bes g a bes c f, |
     d' bes c d c bes f fis |
  WHAM bam WHAM bam
  |-|-.-|cis8
  d bes g f f' d4 f, |
  bes d f bes r4 fwefafeafefaefeafefaewfefaefef

%}
\version "2.19.0"
\include "defs-devel.ly"

marD = \markup \null
elsD = \markup \null
mikD = \markup \null
rynZ = \markup \null
desD = \markup \null

#(set-global-staff-size 15.87)
autoBeamInstruction = \autoBeamOn

solo = \markup \italic "solo"
psolo = \markup \italic "(solo)"
skat = \markup \italic "sit skat"
shoot = \markup \italic "SYT"

\header {
  title = "If I Only Had the Nerve"
  subtitle = "for Satchmo"
  %title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}
\paper {
  #(define fonts
    (set-global-fonts
    #:music "lilyjazz"
    #:brace "lilyjazz"
    #:roman "LilyJAZZText"
    #:sans "LilyJAZZChord"
    #:factor (/ staff-height pt 20)
  ))
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
  max-systems-per-page = #2
  %oddHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
  %evenHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
}


#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)

railroad =  {
  \once \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
  \breathe
}
myred = \once \override NoteHead #'color = #red

php = \once \override Hairpin.stencil = #(parenthesize-callback ly:hairpin::print)

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 1\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
}

prefatoryMatter = {
  \key bes \major
  \autoBeamInstruction
  \time 4/4
}

scorePrefatoryMatter = {
  \prefatoryMatter
}

midiPrefatoryMatter = {
  \prefatoryMatter
}
marks = {
  \tempo "Dixie" 4=96
  \repeat unfold 93 { \repeat unfold 4 \unfoldSwing #96 } \bar "|."
}

beamComm = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
}

soprano = \relative c' {
  R1*16 |
  r2. d8^\mf ees |
  f d bes c d bes8 r4 |
  r4 \times 2/3 { r8 bes c8 } d bes g a |
  bes g r4 r4. bes8 |
  f f f f f2 ~ |
  f1 |
  r2. bes8 a |
  g r g' f ees d r4 |
  r4 c8 bes a a a' g |
  f ees r4 r4 d8 c |
  bes bes bes bes bes2 ~ |
  bes1 |
  r2. d8 ees |
  f d bes c d bes r4 |
  r4 \times 2/3 { bes8 bes c8 } d bes g a |
  bes g r4 r4. bes8 |
  f f f f f2 ~ |
  f1 |
  r2. bes8 a|
  g4 g'8 f ees d r4 |
  r4 c8 bes a a a' g |
  f ees r4 r4 d8 c |
  bes bes bes bes << { bes2 ~ |
     bes1 } { s2^\< s2. s8 s8^\f } >> |
  r2. bes4 |
  g'2 r |
  r4. fis8 g a4 f8 ~ |
  f2 r |
  r4 g ees8 ees4 ees8 ~ |
  ees2 r |
  r4 f^\mf d2 |
  r4 d8 d c bes c bes |
  c bes c d8 r4 bes |
  R1 |
  r8 c ~ c4 r8 d ~ d4 |
  r8 f4 r8 r4. g8 |
  r8 d4 c8 r4 bes8 f'8 ~ |
  f8 r r4 r2 |
  r8 d4 r8 r2 |
  r4. ees8-- ~  ees r4 f8 ~ |
  f8 d bes c d8 bes4 c8 |
  d8 r r4 r8 bes g a | % D
  bes g r4 r2 | % g
  r4 bes ~ bes2 | % C
  f8 f f f f2 | % F
  r4 bes4 ~ bes8 a ~ a4 | % Bb
  g4 g'8 f ees d c bes | % Eb
  a8 a a' g f ees ~ ees4 | % Ao
  r8 d^\< ~ d4 ~ d8 c ~ c4 | % D
  bes8^\f bes bes bes bes2 |
  r bes4 a |
  g2 g'4 f |
  ees4. d8 c4. bes8 |
  a4 a a' g |
  f4. ees8 d4. c8 |
  bes4 bes bes' a |
  g8 f ~ f4 ees4. d8 |
  c4. c8 ~ c2 |
  c'4. bes8 ~ bes2 |
  a4. g8 ~ g2 |
  f4. g8 ~ g2 |
  a1 |
  r4 d ~ d8 d ~ d4 |
  r d r d |
  r d r d |
  bes4 r r4. d8 |
  bes4 r r4. d8 |
  bes4 r r2 |
  r8 d8 ~ d4 ~ d2 |
  bes1 ~ |
  bes ~ |
  bes ~ |
  bes ~ |
  bes ~ |
  bes ~ |
  bes ~ |
  bes |
}

sopranoWords = \lyricmode {
Yeh, it's sad, be -- lieve me, Mis -- sy
When you're born to be a sis -- sy
With -- out the vim and verve

But I could change my ha -- bits
Ne -- ver more be scared of rab -- bits
If I on -- ly had the nerve

I'm af -- raid there's no de -- ny -- ing
I'm just an aw -- ful dan -- dy li -- on
A fate I don't de -- serve

But I could show my pro -- wess
Be a li -- on, not a mou -- se
If I on -- ly had the nerve

Oh I'd be in my stride
A king down to the core
Oh I roar the way I ne -- ver roared be -- fore
And then I'd rrwuff
And roar some more

I would show the di -- no -- sau -- rus
Who's king a -- round the fo -- rus
A king they's bet -- ter serve

And with my re -- gal bee -- zer
I could be a -- no -- ther cea -- ser
If I on -- ly had the nerve

I'd be brave as a bliz -- zard
I'd be gen -- tle as a li -- zard
I'd be cle -- ver as a giz -- zard
If the Wi -- zard is a Wi -- zard who will serve?

Then I'm sure to get a brain
A heart, a home, the nerve
}

mezzo = \relative c' {
  r4. cis8^\f d bes g f |
  d'8 d4 bes8 ~ bes2 |
  r4. fis'8 g ees c bes |
  g' g4 ees8 ~ ees2 |
  r4 d8 ees f a f e |
  ees g ees cis d f d des |
  c ees c cis d bes g f |
  f' d4 bes8 ~ bes r r4 |
  r2 r4. cis8^\mf |
  d8 bes8 g8 f8 d'8 d4 bes8 ~ |
  bes2. r8 fis'8 |
  g8 ees c bes g' g8 ~ g4 |
  r2. ees8 e8 |
  f8 a f e ees g ees cis |
  d bes g f d' d4 cis8 |
  d bes g f f' d8 r4 |
  r8 fis g bes ~ bes g ges4 |
  f8 f g f bes g f cis |
  d c bes' a aes bes, ees f |
  g bes g f ees d ees e |
  f a d des c a g ges |
  f a f e ees f g ges |
  f bes f d c a g' ges |
  f ees d a c4-. d8-. cis8 |
  d8 bes8 g4 d'8 d4 bes8 ~ |
  bes4. r8 bes'4 f8 fis |
  g8 ees c aes g' g4 ees8 ~ |
  ees2 r4 ees8 e8 |
  f8 a f e ees g4 ges8 |
  f f,4 fis8 g8 bes d dis |
  bes4 d8 ees f4 d8 c |
  bes4 r bes' g8 cis, |
  d8 bes8 g4 d'4 c |
  d2 ~ d8 r c d |
  c fis g fis d ees4 ees8 |
  f8 ees d4 aes'8 g f ees |
  d f aes g f g f ees |
  bes' bes f ees b' b g a |
  bes^\< bes bes bes bes bes4 bes8 |
  a4. aes8 ~ aes2 |
  g8^\f g ~ g4 ~ g2 |
  g4. g8 ~ g4. e8 |
  f8 a8 f d8 f e8  ees d8 ~ |
  d8 des8  c bes8 ~  \times 2/3 { bes bes c } \times 2/3 { d f g } |
  a8 a8 ~  a4  a8 a4 r8 |
  a4. a8 ~ a4 f8 fis |
  g8 r8 r4 r2 |
  f8^\mf r8 r4 r2 |
  c8 ees8 c g8 a4. r8 |
  r4. d8 ~ d c a g |
  a a4 fis'8 ~ fis e d b |
  d d4 a'8 ~ a g fis e |
  fis a^\< r a r b r bis^\f ~ ( |
  bis \glissando c4 ) r8 r2 |
  r4. a8^\mf ~ a g f d |
  f f r c'8-- ~ c bes a g |
  a g f d f d c cis | % don't forget the eis4
  r4 r8 cis'8 d8 r8 r8 c8 |
  bes8 ees,8  d8  a'8 r2 |
  r8 c8 bes8 des,8 c8 e8 r8 bes' |
  r8 bes8 a8 r8 r8  des8 r8 c8 |
  g8 r8 r8 a8 r8 g8 r8 fis'8 |
  r4 f,8 r8 f'8 r8 r8 g,8 |
  ees8 e8 f8 r8 bes8 ees,8  a8 r8 |
  g'8^\<  g r gis, a bes c cis |
  d^\f bes g f d' d4 bes8 ~ |
  bes2. r8 fis' |
  
}

mezzoWords = \lyricmode {
  An aw -- ful fate I don't de -- serve
  A king with -- out the vim and verve
  Yes it's sad, be -- lieve me, Mis -- sy
  When you're born to be a sis -- sy
  Ne -- ver if I on -- ly had the nerve

  A re -- gal born to ne -- ver serve
  A dan -- dy king de -- ny -- ing %verve
  Show the di -- no -- saurs my ha -- bits
  I'd be aw -- ful if I had the
  be aw -- ful if I had the

  Ne -- ver -- more would I show
  I'm just an aw -- ful king, Oh no
  A dan -- dy li -- on in my core
  I roared be fore
  I'd ruff, I'd bet -- ter my core prow -- ess
  Not a -- fraid of Mis -- sy mou -- se I'm de -- ny -- ing if I had the
  Ne -- ver -- more, a -- no -- ther nerve

  I'd be gen -- tle as li -- zard's verve
  nerve If
  I'd show my fate I'd ne -- ver serve
  If the Wi -- zard is a Wi -- zard a bli -- zard a li -- zard
  Ne -- ver more if I had, had the nerve

  nerve nerve
  I'm sure to get re -- gal core
  Oh, A cea -- sar who would ruff some, some more could show pro -- wess
  I could serve an aw -- ful li -- on
  If you're sad well I'm de -- ny -- ing Then the vim and verve
  are aw -- ful, a bee -- zer
  stride da
  Ruff roar
  A ha -- bit that I do not de -- serve
  don't de -- serve On -- ly then I would change in for -- us
  Ra -- bit 
  I would serve
  verve
  If I on -- ly had
  Oh he was a sin -- ner
  Al -- ways was a win -- ner
  I am get -- ting thin the Wiz of Oz
  Hea -- vens I'm a spin -- ner
  Shucks I'm a be -- gin -- ner please have mer -- cy on me

  ly had
  the nerve
  de -- ny -- ing
  be -- lieve me Mis -- sy and
  a di rus I'd show
  ess
  be my
  si roar I'd
  show the for if I had bee -- zer
  I on -- ly had
  An aw -- ful fate I don't de -- serve
}


alto = \relative c'' {
  R1*4 |
  r8 a^\f ~ a4 ~ a2 |
  f2. r4 |
  R1
  r2. bes8^\mf cis,8 |
  d8 bes8 g8 f8 d'8 d4 bes8 ~ |
  bes2. r8 fis'8 |
  g8 ees c bes g' g4 ees8 ~ |
  ees2 r4 ees8 e8 |
  f8 a f e ees g ees cis |
  d f d des c ees c a |
  ees4 des' a8 f ~ f4 ~ |
  f4 r bes'-. r8 cis,8 |
  d8 bes g f d' d4 bes8 ~ |
  bes2. r8 fis'8 |
  g8 ees d4 c8 g'4 d8 ~ |
  d c bes aes g r c8 cis8 |
  d4 f8 e ees f ees cis |
  d f d des c ees c cis |
  d bes g f ees' c4 d8 |
  bes4 r aes'4-. fis-. |
  g-. ees c ees8 cis |
  d bes g f d'8 d4 a8 |
  aes8 c aes f d'8 c bes aes |
  c bes4 g8 ees f g a |
  bes4 bes r bes8 c |
  d8 a' f e ees g4 fis8 |
  f d bes g a8 a4 a8 ~ |
  a4 r r d' |
  bes,8 cis d cis a fis'4 ees8 |
  f d bes c d bes ees fis |
  g8 bes c bes g8 f4 bes8 ~ |
  bes2 \times 2/3 { r8 c, cis } \times 2/3 { d f g }
  bes8 bes ees, ees bes' bes ees, cis |
  d c a' g f ees d ees |
  f8^\< g bes g c bes g ges |
  f4. f8 ~ \times 2/3 { f8 bes, c } \times 2/3 { d f g } |
  bes^\f bes4 bes8 g8 bes4 r8 |
  bes8 ( c16 bes ) g8 bes8 ~ bes4. gis8 |
  a8 c8 a  f g4 a8 f8 ~ |
  f e8 ees d8 ~ \times 2/3 { d d e } \times 2/3 { fis a b } |
  c8 c4 c8  a8 c4 r8 |
  c8 ( d16 c ) a8 c8 ~ c4 a8 ais |
  b^\> d8 b bes8 a c8 a aes8 |
  g b8 g ges8 f a8 f d8 |
  ees^\mf g8 ees c8 a ges'4 r8 |
  R1 |
  r4. d8 ~ d c a g |
  a a4 fis'8 ~ fis e d b |
  d d e^\< fis r g r gis^\f ~ ( |
  gis \glissando a8 ~ a4 ~ a8 ) r r4 |
  r4. e8^\mf ~ e e d8 bes |
  d d r a'-- ~ a g f ees |
  f c4 d8 c4 bes |
  r8  ees8  d8 bes'8 bes8 r8 r4 |
  r4 bes,8 ees8 cis8 d8 r8 dis8 |
  r8  d8 e8 a,8  bes8 r8 r8  c8 |
   d8 fis8 g8  r8 r8 bes8 r8 ges8 |
  f8 ces8  bes8 ees8 r8 d8 r8 cis'8 |
  r8 bes, r4 c'8 r4 d,8 |
  r8 c8 r4 r8 c8 g'8 r8 |
  ees8^\< f8 g8  d8 fis8 g8  a8 fis8 |
  a4^\f g f ees |
  d a'8 bes a g f d |
}

altoWords = \lyricmode {
  Bee -- zer
  Nerve
  A re -- gal born to ne -- ver serve
  A dan -- dy king de -- ny -- ing verve
  Show the di -- no -- saurs my ha -- bits
  Oh I'd roar and rrwuff the rab -- bits
  I'd be aw -- ful had the

  Nerve

  The cea -- sar show -- ing I de -- serve
  A bee -- zer king I would serve, I roared be --  fore
  Oh I'd bet my core prow -- ess
  Not a -- fraid of Mis -- sy mou -- se
  I'm de -- ny -- ing if I had the, the nerve
  nerve I'd roar some more and be gen -- tle as a li -- zard
  I'd show my fate I no my fate, a sis -- sy
  It's sad be -- lieve me Mis -- sy
  I'm a -- fraid
  A king -- 'd roar show me
  more be if I had the nerve
  nerve
  sure to get a re -- gal a -- fraid there's no de -- ny -- ing
  Oh A cea -- sar who would ruff some more, ruff my core I would
  serve an aw -- ful li -- on If you're
  sad well I'm de -- ny -- ing Then the
  vim and verve are aw -- ful like a
  be -- zer
  I would be in my stride dan -- dy li -- on
  Ruff and roar
  A ha -- bit that I don't de -- serve, don't de -- serve
  On -- ly then I would change in my for -- us
  Ra -- bit serve
  I'd be cle -- ver as a gi -- zard I'd be re -- gal like a bli -- zard Mis -- sy 
  If I on -- ly had the

  Al -- ways was a win -- ner
  I am get -- ting
  thin -- ner just Wiz of Oz
  Hea -- vens I'm a
  spin -- ner
  Shucks I'm a be -- gin -- ner have mer -- cy

  I on -- ly had
  ny -- ing I'm a, a
  be -- lieve me Mis and
  I'm a di rus
  I'd
  show my pro -- wess
  be my
  a roar I'd
  the I had
  bee -- zer
  If I on -- ly had 
  An aw -- ful fate I serve
  What a li -- on when you're
}

tenor = \relative c' {
  \clef "treble_8"
  R1*4 |
  r8 f^\f ~ f4 ~ f2 |
  c2. r4 |
  R1*23 |
  r2 bes4.^\mf a8 |
  g4 r ees r |
  d g r bes |
  ees,8 g r bes ees, a4 g8 |
  a4 g ~ g a8 b |
  a aes a c aes c4 c8 |
  d8 c ~ c4 ges'8 ees aes, g |
  aes4 ees'8 c ees4 c8 bes |
  bes4 c8 cis d4 f |
  ees8^\< c g ees ees ees4 d'8 ~ |
  d1
  c8^\f c ~ c4 ~ c2 |
  c4. c8 ~ c4. r8 |
  c4. gis8 a8 c8 a f8 |
  g8 a4 f8 f8 e8 ees d8 |
  ees' ees8 ~ ees4 ees8 ees4 r8 |
  fis4. fis8 ~ fis4 d8 des |
  d8 r8 r4 r2 |
  b8^\mf r8 r4 r2 |
  g2 ees2 |
  R1 |
  R1 |
  r4. d'8 ~ d b a g |
  fis a c a c a g eis |
  fis d'4 d8 ~ d c a g |
  a a4 bes8 ~ bes bes g g |
  c c r c-- ~ c g g bes |
  a a r a c g r g |
  fis8 c' bes r r gis a r |
  r4 fis8 r8 r2 |
  r4 r8 fis8 g8 r8 r4 |
  a8 r8 des c r8 g'8  g8  ees8 |
  d8 a8 g8 r8 r8 c b8  bes8 |
  g'8 r8 des8 r fis8 f8 e8 r8 |
  c8 b8 r8 cis8 r8  a8 r8 aes8 |
  c8^\< d8  ees8 b8  c8 b8 gis8 a8 |
  fis'4^\f ees d c8 cis |
  d bes g f d' d4 bes8 |
}

tenorWords = \lyricmode {
  Bee -- zer
  Li -- zard
  more
  if
  nerve nerve
  nerve
  sure to
  I'll sure get a re -- gal core A
  cea -- sar would would ruff some, some
  show my  prow -- wess I could serve aw -- ful lie If you're
  sad I'm de -- ny -- ing
  vim and verve are aw -- ful be
  stride da
  ruff rar
  Hab, a ha -- bit that I don't de no I do not would
  change in for -- us
  Ra -- bit I would serve
  verve
  If I
  I am get -- ting
  thin -- ner when I think a -- bout the Wi -- zard
  Can't keep down my din -- ner
  Hea -- vens I'm a spin -- ner
  Shucks I'm a be -- gin -- ner have mer -- cy be -- cause
  I on -- ly had nerve
  me mis
  verve di -- no rus Oh I'd
  show my pro
  be in my stride
  si roar some more
  show the rus I a
  bee -- zer If I on -- ly had An
  aw -- ful fate I An aw -- ful fate I don't de -- serve
  
}

bass = \relative c {
  \clef "bass"
  bes4^\f a g b |
  c g8 ges f g a f |
  bes4 a g d' |
  c g8 ges f f' d c |
  r8 bes a4 g d'8 des |
  c ees c bes a f f' b, |
  c bes a g f g a f |
  bes bes'^\> a g f ees d des |  
  c4^\mf g f a |
  bes8 bes a4 g ges |
  f ees' d bes |
  ees8 ees g,4 aes8 bes c cis |
  d4 bes c a8 f |
  bes4 d8 g, c4 g |
  c e, f a |
  bes8 c d r r4 d8 b |
  c4 r f, r |
  bes r4 r2 |
  f4 r bes r |
  ees4 r4 r2 |
  f,4 r4 r2 |
  R1 |
  c'4 r4 f, r4 |
  r2 bes4 r |
  ees4 r f, r |
  bes r4 r2 |
  f'4 r bes, r |
  g'8 ees c bes g'8 g c,8 cis |
  d4 des c8 a f a |
  bes4 d c4 g8 b |
  c4 r f,4. fis8 |
  g8 bes d a' ~ a g4 g8 |
  c,4 ges f a8 f |
  bes8 bes d,4 ees g8 e |
  f4 ees'8 a, bes4 aes8 fis |
  g4 aes a c8 cis |
  d8 bes4 bes8 bes8 bes4 bes8 |
  bes4 d8 fis, g8 a b4 |
  c4^\< g8 ges f g a f |
  bes4. bes8 ~ bes2 |
  ees8^\f ees ~ ees4 ~ ees2 |
  e4. e,8 ~ e e'4 ges8 |
  f4 f, g a |
  bes c d bes |
  a2 ~ a8 ees'8 ~ ees4 |
  d2 ~ d8 a4 aes8 |
  g8 r8 r4 r2 |
  g'8^\mf r8 r4 r2 |
  c,2 f,4 c'8 cis8 |
  d8 d fis,4 g gis |
  a8 d ~ d aes g d' d, eis |
  fis d' fis,4 g gis |
  a8 d4 b8 a g fis d' |
  d d fis,4 g gis |
  a8 d des c ~ c bes a g |
  a f' a,4 bes b |
  c4 f, a4 g8 cis |
  d8 r8 r4 r2 |
  g,8 r8 r4 r4  f8 r8 |
  e8 r8 r4 r4 c'8 r8 |
  f8 r8 r4  d8 r8 a8 a'8 |
  r8 ges8 f8 r8 fis,8 r8 cis'8 r8 |
  ees8  f8 r8 a,8 r4 r8  f'8 |
  r4 r8 a8 r4 r8 ees8 |
  d8^\< aes'8 a,8 bes8 ees8 d8 aes8 d8 |
  g,1^\f ~ |
  g4. r8 g'4 f |
}

bassWords = \lyricmode {
  Yeh, it's sad be -- lieve me now Mis -- sy when you're
  born to be a, when you are born to be a
  With -- out vim, vim and verve
  be -- lieve me Mis -- sy yes it's sad
  would show the di -- no -- saur -- us
  sis -- sy when you're born to be a
  re -- gal born to
  re -- gal don't serve a
  dan -- dy king
  a dan -- dy de -- ny -- ing show the
  di -- no ha -- bit I'd 
  roar rrwuff the ra -- bit
  aw -- ful had the
  aw -- ful if
  had the nerve
  more
  serve
  king no core
  bet
  ny had
  nerve
  scared more verve
  show
  fate
  sis -- sy, yes it's sad be -- lieve me Mis -- say
  Wi -- zard is a Wiz a king
  show me more
  if I
  home and a heart would -- 've
  sure to re -- gal oh
  I'd get a re -- gal, a
  core would would ruff, ruff some
  more  de -- ny I could
  serve aw -- ful li -- on you're 
  sad I'm de -- ny -- ing  Then
  vim verve are aw -- ful like a bee -- zer
  stride da
  ruff rar get a
  ha -- bit don't de
  don't de -- serve would
  Change my
  Ra -- bit I'd
  nerve
  verve
  If I
  He's the Wi -- zard of Oz is
  One Oh the Wi -- zard oh the
  Wi -- zard of Oz is one, one be -- cause he is the
  Wi -- zard of Oz the Won -- der -- ful Wiz the won -- der
  Wi -- zard of Oz is
  one Wi -- zard one be -- cause
  nerve
  oh
  fraid vim
  verve sau
  Oh I'd
  my prow
  I'd in
  stride a sy I'd
  rus
  a bee -- zer
  I could be a li -- on
  roar don't de
}

ugh = \transpose c c, {
  \clef "treble_8"
  \transpose g g { r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
d''8
ees''8
f''8
d''8
bes'8
c''8
r8
r8
r8
r8
r8
r8
r8
r8
d''8
bes'8
r8
c''8
d''8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
g'8
a'8
bes'8
g'8
r8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
f'8
f'8
f'8
f'8
f'8 ~
f'8
r8
r8
r8
r8
r8
r8
r8
r8
f'8 ~
f'8 ~
f'8 ~
f'8 ~
f'8 ~
f'8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8
a'8
g'8
r8
r8
r8
r8
r8
r8
r8
r8
r8
g''8
f''8
ees''8
d''8
c''8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
a'8
r8
a''8
g''8
f''8
ees''8
r8
r8
r8
r8
r8
r8
r8
r8
d''8
c''8
bes'8
bes'8
bes'8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8 ~
bes'8 ~
bes'8 ~
bes'8 ~
bes'8 ~
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8 ~
bes'8
r8
r8
d''8
ees''8
r8
r8
r8
r8
r8
r8
r8
r8
f''8
d''8
bes'8
c''8
d''8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
r8
c''8
d''8
bes'8
g'8
a'8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8
g'8
r8
bes'8
f'8
f'8
r8
r8
r8
r8
r8
r8
r8
r8
f'8
f'8
f'8 ~
f'8 ~
f'8 ~
f'8
r8
r8
r8
r8
r8
r8
r8
r8
f'8 ~
f'8 ~
f'8 ~
f'8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8
a'8
g'8
r8
g''8
f''8
r8
r8
r8
r8
r8
r8
r8
r8
ees''8
d''8
c''8
bes'8
a'8
r8
r8
r8
r8
r8
r8
r8
r8
r8
a''8
g''8
f''8
ees''8
d''8
c''8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8
bes'8
bes'8
bes'8
bes'8 ~
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8 ~
bes'8 ~
bes'8 ~
bes'8 ~
bes'8 ~
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8 ~
bes'8
g''8 ~
g''8
r8
r8
r8
r8
r8
r8
r8
r8
g''8 ~
g''8
r8
fis''8
g''8
a''8
r8
r8
r8
r8
r8
r8
r8
r8
f''8 ~
f''8 ~
f''8 ~
f''8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
g''8 ~
g''8
ees''8 ~
ees''8
ees''8 ~
ees''8
r8
r8
r8
r8
r8
r8
r8
r8
ees''8 ~
ees''8
f''8 ~
f''8
d''8 ~
d''8
r8
r8
r8
r8
r8
r8
r8
r8
d''8 ~
d''8
r8
r8
d''8
d''8
r8
r8
r8
r8
r8
r8
r8
r8
c''8
bes'8
c''8
bes'8
c''8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
c''8
d''8
bes'8 ~
bes'8 ~
bes'8 ~
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
r8
c''8
d''8
f''8
g''8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
d''8
c''8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
f''8 ~
f''8 ~
f''8 ~
f''8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
d''8
ees''8
f''8
d''8
bes'8
c''8
r8
r8
r8
r8
r8
r8
r8
r8
d''8
bes'8
r8
c''8
d''8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
g'8
a'8
bes'8
g'8
r8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
f'8
f'8
f'8
f'8
f'8 ~
f'8
r8
r8
r8
r8
r8
r8
r8
r8
f'8 ~
f'8 ~
f'8 ~
f'8 ~
f'8 ~
f'8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8
a'8
g'8
r8
r8
r8
r8
r8
r8
r8
r8
r8
g''8
f''8
ees''8
d''8
c''8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
a'8
r8
a''8
g''8
f''8
ees''8
r8
r8
r8
r8
r8
r8
r8
r8
d''8
c''8
bes'8
r8
bes''8
a''8
r8
r8
r8
r8
r8
r8
r8
r8
g''8
f''8
ees''8
d''8
c''8
c''8
r8
r8
r8
r8
r8
r8
r8
r8
c'''8
bes''8
a''8
g''8
fis''8
g''8
r8
r8
r8
r8
r8
r8
r8
r8
bes''8 ~
bes''8 ~
bes''8 ~
bes''8 ~
bes''8 ~
bes''8
r8
r8
r8
r8
r8
r8
r8
r8
bes''8 ~
bes''8 ~
bes''8 ~
bes''8 ~
bes''8
r8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8
bes'8
d''8
d''8
d''8
d''8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8
r8
r8
d''8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8
r8
r8
d''8
bes'8
r8
r8
d''8
r8
r8
r8
r8
r8
r8
r8
r8
bes'8
r8
r8
r8
r8
r8
r8
r8
r8 }
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie|Harmonie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \soprano
      } {
	\scorePrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa|Marie" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Mathieu" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \bass
      }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
%{
%}
  >>
  \layout {
    \context {
      \Voice
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \override DynamicLineSpanner.direction = #UP
      \remove "Forbid_line_break_engraver"
      \beamComm
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

%{
\score {
  \new PianoStaff <<
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \soprano
      } \\ { \mezzo } \\ { \alto } {
	\scorePrefatoryMatter
        \marks
      } >> }
    }
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      } \\ \\ { \bass } {
	\scorePrefatoryMatter
        \marks
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
%bes8 bes c bes des c bes g |
%c4 des16 c bes ~ \times 2/3 { bes e, f fis g gis } |
%a c a f g f a e |
%f e ees \times 2/3 { d d e } \times 2/3 { fis a b } |
%c8 r \times 2/3 { c cis d } \times 2/3 { ees d des } c8 a |
%\times 2/3 { c a e } \times 2/ { c g e } \times 2/3 { b a aes } \times 2/3 { g f ees } |
%d d
%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\midiPrefatoryMatter
        \soprano
      } {
	\midiPrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\midiPrefatoryMatter
        \bass
      }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
  >>
  \midi {}
}
