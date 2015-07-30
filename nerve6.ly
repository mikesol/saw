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
  %R1*2 |
  %r8 d r4 r2 |
  %R1 |
  %R1 |
  %r2. ees8 r |
  %r4 f8 r r4 d8 r |
  %bes8 r r4 r2 |
  %r4. c8 r2 | 
  %r8 d r4 r8 bes r4 |
  %r4 c8 r d r bes r |
  %r2. g8 r |
  %r2. a8 r |
  %bes8 r8 r4 g8 r8 r4
  %bes8 r4. f8 f r4 |
  %f8 f r4 f8 r r4 |
  R1*16 |%r8
  r2. d8^\mf ees |
  f d bes c d bes8 r4 |
  r4 \times 2/3 { r8 bes c8 } d bes g a |
  bes g r4 r4. bes8 |
  f f f f f4 r4 |
  r f ~ f2 |
  r2. bes8 a |
  g r g' f ees d r4 |
  r4 c8 bes a a a' g |
  f ees r4 r4 d8 c |
  bes bes bes bes bes4 r4 |
  r4 bes4 ~ bes2 |
  r2. d8 ees |
  f d bes c d bes r4 |
  r4 \times 2/3 { bes8 bes c8 } d bes g a |
  bes g r4 r4. bes8 |
  f f f f f4 r |
  r f4 ~ f2 |
  r2. bes8 a |
  g r g' f ees d r4 |
  r4 c8 bes a a a' g |
  f ees r4 r4 d8 c |
  bes bes bes bes bes4 r4 |
  r << { bes ~ bes2 } { s2^\< s8 s8^\f } >> |
  r2. bes4 |
  g'2 r |
  r8 fis g a ~ a4. f8 ~ |
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
(erve)

But I could change my ha -- bits
Ne -- ver more be scared of rab -- bits
If I on -- ly had the nerve
(erve)

I'm af -- raid there's no de -- ny -- ing
I'm just an aw -- ful dan -- dy li -- on
A fate I don't de -- serve
(erve)

But I could show my pro -- wess
Be a li -- on, not a mou -- se
If I on -- ly had the nerve
(erve)

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
  %R1*4 |
  %r8 a ~ a4 ~ a2 |
  %f2. r4 |
  %R1*2 |
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
  d f d des c f, g cis |
  d bes g f f' d8 r4 |
  r8 fis g bes ~ bes g ges4 |
  f8 f g f bes g f cis |
  d bes bes' a aes bes, ees f |
  g bes g f ees d ees e |
  f a d des c a g ges |
  f a f e ees f g ges |
  f bes f d c bes g' ges |
  f ees d a c4-. d8-. cis8 |
  d8 bes8 g8 f8 d'8 d4 bes8 ~ |
  bes2. r8 f'8 |
  g8 ees c aes g' g4 ees8 ~ |
  ees2 r4 ees8 e8 |
  f8 a f e ees g4 ges8 |
  f f,4 fis8 g8 bes d cis |
  d bes d ees f d4 bes8 ~ |
  bes4 r bes' g8 cis, |
  d8 bes8 g8 f8 d'8 d4 bes8 ~ |
  bes2. r8 f'8 |
  g8 ees c aes g' g4 ees8 ~ |
  ees2 r4 ees8 e8 |
  %f8 a4 g8 f ees4 cis8 |
  %d c bes c d ees f ees |
  %d bes g f d' d4 bes8 ~ |
  f8 a f d ees g f ees |
  d4 bes'8 a g f d ees |
  f^\< g bes g c bes g bes |
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
  g ees c bes g' g4 ees8 ~ |
  ees2 ~ ees8 r8 r4 |
  r8 c c c r bes bes bes |
  r d d des r c c b |
  bes4-. bes4-. bes8 ( a ) g a ~ |
  a aes4 g8 f ees4 d8 |
  c8 ees g bes ees, g bes d |
  c8-. r4 c8 ~ \times 2/3 { c g gis } \times 2/3 { a ais b } |
  c e c a bes d bes g |
  a c a f ~ f4 d |
  g4 \times 2/3 { g8 gis a } \times 2/3 { bes a aes } \times 2/3 { g fis e } |
  d fis a d \times 2/3 { r fis, g } \times 2/3 { gis a ais }
  b d8 b bes8 a c8 a aes8 |
  g b8 g ges8 f a8 f d8 |
  ees8 f g ees f g a f |
  \times 2/3 { bes c bes } \times 2/3 { des c bes } g f d bes |
  ees f g bes a f ~ \times 2/3 { f f' ees }
  d8 f d bes des c bes g |
  r4 ees' r \times 2/3 { g8 f8 ees } |
  d c bes a ~ a g4 f8 |
  \times 2/3 { g ees bes' } \times 2/3 { g d' bes } \times 2/3 { f' e ees } \times 2/3 { d des c }
  bes8 c bes g g' f d bes |
  ees4 g, r g8 f |
  d' des c bes ~ bes g f g |
  ees f g bes a f g a |
  aes aes r g' ~ g2^\fermata |
  %g4 bes a8 bes c4 |
  %\times 2/3 { d8 des c } bes4 ~ bes8 g8 f d |
  %ees g bes d \times 2/3 { c a bes } \times 2/3 { c d ees } |
  %f g, f bes ~ bes a aes ees |
  %g4 g r g |
  %f8 d4 a'8 ~ a g4 f8 |
  %ees8 g bes d c bes a g |
  %f bes f ees \times 2/3 { d bes c } \times 2/3 { d f g } |
  %bes4 g r g |
  %d'8 des c bes ~ bes g f g |
  %ees g bes d c f, g a |
  %aes aes r g' ~ g2^\fermata |
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
  Oh I'd roar and rrwuff the rab -- bits
  I'd be aw -- ful if I had the

  Ne -- ver -- more would I show
  I'm just an aw -- ful king, Oh no
  A dan -- dy li -- on in my core
  I roared be fore
  I'd ruff, I'd bet -- ter my core prow -- ess
  Not a -- fraid of Mis -- sy mou -- se I'm de -- ny -- ing if I had the
  Ne -- ver -- more, a -- no -- ther nerve

  I'd be gen -- tle as a li -- zard's verve
  I'd show my fate I'd ne -- ver serve
  If the Wi -- zard is a Wi -- zard a bli -- zard a li -- zard
  Ne -- ver more be if I had the nerve

  nerve nerve
  I'm sure to get a re -- gal core
  A cea -- sar who would ruff some more
  I could serve an aw -- ful li -- on
  If you're sad I'm de -- ny -- ing Then the vim and verve
  are aw -- ful like a bee -- zer
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
  A king with -- out the vim and verve
  be -- lieve me, sy When you're 
  to be a sy Ne -- ver
  If I had the nerve
  Be a king they could
  serve a cle -- ver cea -- sar
  If I roar more then I'd be in my 
  stride, a rab -- bit don't de -- serve
  A li -- zard don't serve I could
  And with a giz -- zard that you bet -- ter
  Roar like be -- fore
  Ne -- ver more would I show it like a gi -- zard
  I'd be re -- gal like a bli -- zard I'm a -- fraid
  there's no de -- ny -- ing when you're
  born not a Wi -- zard a li -- on
  If a dan -- dy is a bliz -- zard
  When you're born with -- out the vim and verve I'd
  %{serve%} nerve %{roar%} more no you're born in a way to be
  gi -- zard bli -- zard gi -- zard li -- zard the Wi -- zard of
  Oz is one be -- cause he is the won -- der -- ful the
  Wi -- zard of Oz is one be -- cause a li -- on would -- n't be a sis -- sy
  Nerve
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
  d f d des c ees c cis |
  d bes g f f' d4 bes8 ~ |
  bes4 r bes'-. r8 cis,8 |
  d8 bes g f d' d4 bes8 ~ |
  bes2. r8 fis'8 |
  g8 ees d c bes g'4 ees8 ~ |
  ees2 r4 c8 cis8 |
  d4 f8 e ees f ees cis |
  d f d des c ees c cis |
  d bes g f ees' c4 d8 |
  bes4 r aes'4-. fis-. |
  g-. ees c ees8 cis |
  d bes g f d'8 d4 bes8 |
  ees8 c aes f d'8 c bes aes |
  c bes4 g8 ees f g a |
  bes4 bes r bes |
  r8 a' f e ees g4 fis8 |
  f d bes g a8 a4 a8 ~ |
  a4 r r d' |
  bes,8 cis d bes g f d' ees |
  f d bes c d bes4 r8 |
  r8 aes c ees d bes d c |
  bes4 ees8 d g,4 bes |
  %a4 f'8 ees d c4 bes8 |
  %a bes g gis a f b fis |
  %g
  r2. d8 ees |
  f a f ees d c b aes |
  g8^\< g g g g g4 f'8 ~ |
  f2 \times 2/3 { r8 bes, c } \times 2/3 { d f g } |
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
  c2 g' |
  a r4 ees8 e |
  f a f e ees g ees cis |
  d f d des c ees c cis |
  d f g f d' ( c ) bes c ~ |
  c bes4 r8 \times 2/3 { r8 bes, c } \times 2/3 { d f g } |
  bes8 bes c bes des c bes g |
  c8 ( des16 c ) g8 bes8 ~ \times 2/3 { bes e, f fis g gis } |
  a c a f g f a e |
  f e ees d ~ \times 2/3 { d d e } \times 2/3 { fis a b } |
  c8 r \times 2/3 { c cis d } \times 2/3 { ees d des } c8 a |
  \times 2/3 { c a e' } \times 2/3 { c g' e } \times 2/3 { b' a aes } \times 2/3 { g f ees } |
  d8 d f,4 r \times 2/3 { g8 gis a } |
  \times 2/3 { b a aes } g4 r \times 2/3 { d8 des c } |
  bes8 bes r d c c r ees |
  d a4 fis'8 d8 bes \times 2/3 { g8 a bes } |
  c2 d4 bes' |
  a aes g f |
  c c' r c |
  a fis8 ees d g d' c |
  bes g4 bes8 a8 f4 a8 |
  f4. g8 ~ g g a g |
  g4 ees r e8 d |
  d1 ~ |
  d2 ees |
  d8 d r8 aes'8 ~ aes2 |
  
}

altoWords = \lyricmode {
  Bee -- zer
  Nerve
  A re -- gal born to ne -- ver serve
  A dan -- dy king de -- ny -- ing verve
  Show the di -- no -- saurs my ha -- bits
  Oh I'd roar and rrwuff the rab -- bits
  I'd be aw -- ful if I had the nerve

  Nerve

  The cea -- sar show -- ing I de -- serve
  A bee -- zer king, oh I would serve
  Oh I'd bet my core prow -- ess
  Not a -- fraid of Mis -- sy mou -- se
  I'm de -- ny -- ing if I had the, the nerve
  nerve I'd roar some more and be gen -- tle as a li -- zard
  I'd show my fate I no my fate, a sis -- sy
  It's sad be -- ieve me Mis -- sy
  Wiz
  A king a roar show me
  more be if I had the nerve
  nerve
  sure to get a re -- gal I'm a -- fraid there's no de -- ny -- ing
  A cea -- sar who would ruff some more, ruff my core I'd

  If you're sad well I'm de -- ny -- ing Then the vim and verve are aw -- ful
  be
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
  born -- to
  verve
  Yes it's sad be -- lieve me mis -- sy
  When you're born to be a sis -- sy
  Ne -- ver
  If I on -- ly had the nerve
  Be
  I would be there to
  serve a cle -- ver cea -- sar If I
  roar some more
  then I'd be in my
  stride, a rab -- bit don't de -- serve
  A li -- zard don't serve
  On -- ly then when I
  could And with a gi -- zard you bet -- ter
  Wi -- zard a Wi -- zard the Wi -- zard of Oz he would
  show it like
  I would be re -- gal just like
  Oh I'm a -- fraid there's de -- ny -- ing
  you're born not a li -- on On -- ly if
  dan bli -- zard
  born with vim and
  verve nerve more
  born, born a -- way to be the gi -- zard the bli -- zard of
  Oz, Wi -- zard is the won -- der -- ful
  the Wiz a sis -- sy Nerve
}

tenor = \relative c' {
  \clef "treble_8"
  R1*4 |
  r8 f^\f ~ f4 ~ f2 |
  c2. r4 |
  R1*23 |
  r2 bes4^\mf g |
  bes r ees, r |
  d g r bes |
  ees,8 g r cis d bes g f |
  d'8 d4 bes8 ~ bes4 d |
  c8 r f, g aes c4 fis,8 |
  g aes bes d, ees f g a |
  %f8 f r4 f8 f r4 |
  %f8 f r4 g8 g r4 |
  %ees'8 d ~ d4 c8 c4 d8 ~ |
  bes4 a8 g f4 c'8 bes |
  a8 g4 g8 b4 g |
  ees8^\< ees ees ees ees ees4 d'8 ~ |
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
  d bes g f d' d4 bes8 ~ |
  bes2. r8 fis' |
  g ees c bes g'8 g4 ges,8 |
  f c c c r g' g g |
  r gis gis a r g g fis' |
  g ees c bes g' ees4 d8 ~ |
  d1 |
  bes8 c ~ c4 ~ c2 |
  g4. g8 ~ g c4 ees8 |
  d4 f e ees8 d ~ |
  d bes c a ~ a c4 d8 |
  ees8 ees4 ees8 c8 a8 ~ a4 |
  a4 \times 2/3 { a8 ais b } \times 2/3 { c cis d } ees8 ees |
  g4 \times 2/3 { d8 dis e } \times 2/3 { f e ees } d8 ais |
  b d b bes a c a aes |
  g4 \times 2/3 { c8 b bes } \times 2/3 { a aes g } f ees |
  a4 d ~ d c |
  bes2 a4 c |
  bes2 d4 bes |
  g bes r bes |
  a1 |
  bes2 a4 c |
  bes2 d |
  c4 bes r bes |
  bes2 a4 g |
  bes2 c2 |
  f,8 f r c'8 ~ c2^\fermata |
}

tenorWords = \lyricmode {
  Bee -- zer
  Li -- zard
  more
  if
  nerve nerve
  nerve
  sure to
  I'm sure to get a re -- gal core A
  see cea -- sar ruff some would show the dan -- dy fo -- rus
  I could serve aw -- ful lie If you're sad well de -- ny -- ing
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
  A king with -- out the vim and it's sad be -- lieve me 
  sy When you're
  to be a
  sy Ne -- ver
  If I on -- ly had the nerve
  serve a
  roar more I would stride
  a rab -- bit
  Rab -- bit don't serve
  On -- ly could change my hab -- bits
  Wiz Wiz -- ard the Wi -- zard of Oz would
  Show just like a gi -- zard he'd show it
  re -- gal lie a bli -- zard I'm a fraid
  there's no de -- ny -- ing when you're just
  born Wi -- zard
  dan bli -- zard
  born vim and verve
  nerve more
  born
  gi -- zard of 
  Oz Wiz
  won -- der
  ful Wiz -- ard of Oz a sis -- sy Nerve
 
  
  
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
  f c' bes d |
  ees8 ees d4 c cis |
  d bes c a8 f |
  bes4 d c g |
  c g f a |
  bes8 d f bes r bes,4 b8 |
  c4 r f, r |
  bes r4 r2 |
  f4 r bes r |
  ees4 r4 r2 |
  f,4 r4 r2 |
  R1 |
  f4 r4 r2 |
  r2 bes4 r |
  ees4 r f, r |
  bes r4 r2 |
  f'4 r bes, r |
  g'8 ees c bes g'8 g c,8 cis |
  d4 des c8 a f a |
  bes4 d c4 g8 b |
  c4 r f, fis |
  g8 bes d a' ~ a g d cis |
  c4 g f a |
  bes8 bes a4 g ges |
  f c' bes d |
  ees8 ees d4 c cis |
  d8 bes a bes c a f a |
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
  ees2 e |
  f g8 ees c bes |
  a8 c r f ~ f ees c a |
  f f r f' ~ f d c g |
  c4 g'8 ges f f, g a |
  bes d f bes ~ bes f d bes |
  ees8 ees ~ ees4 ees8 ees8 ~ ees4 |
  e4. e8 ~ e e4 e8 |
  f4. f,8 ~ f f8 g a |
  bes8 des c bes ~ bes c d4 |
  c8 a ~ a4 ~ a8 ees'4. |
  d4. d8 ~ d4. d8 |
  g, r8 r4 r2 |
  g'8 r \times 2/3 { g a ais } \times 2/3 { b a aes } g d |
  c2 f8 ees d c |
  bes8 bes4 g8 ~ g8 a bes4 |
  c g' f8 f, a4 |
  bes bes8 c d ees f g |
  ees4 r e r |
  f fis g d8 des |
  c4 g' f8 g a4 |
  bes4. bes,8 ~ bes c d4 |
  ees4 r e r |
  f fis g4 g, |
  c g' f f, |
  bes8 bes r bes ~ bes2^\fermata |
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
  a dan -- dy de -- ny -- ing
  di -- no ha -- bit I'd 
  roar the ra -- bit
  aw -- ful had the
  aw -- ful if I
  had the nerve
  more
  serve
  king no core
  bet
  ny
  nerve
  scared more verve
  show
  fate
  sis -- sy, yes it's sad be -- lieve me Mis -- say
  Wi -- zard is a Wiz a king
  show me more
  if I
  home and a heart would have the
  sure to re -- gal
  I'd get a re -- gal
  core a cea -- sar
  cea -- sar who'd ruff some
  serve an aw -- ful li -- on If you're 
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
  roar don't de -- serve a
  king vim and verve it's sad yes
  mis -- sy when you're
  born to sis -- sy
  Ne -- ver more
  on -- ly had, I had the 
  nerve of a rab -- bit I would
  serve a cea -- sar
  roar more I would stride now
  a ra -- bit li -- zard don't serve then when
  could change a Wi -- zard
  of Oz
  re just like a bli -- zard I'm just a -- fraid
  ny -- ing when you're
  born not
  Wi -- zard of Oz
  is one be -- cause
  won -- der -- ful things the Wi -- zard
  verve ruff
  born to roar he's the gi -- zard bli -- zard of Oz
  Wi -- zard the won -- der
  Wiz of Oz is one a li -- on sis -- sy Nerve
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
