\version "2.19.0"
\include "defs-devel.ly"
%lo = { }
%sh = { }
%lod = { }
%ssh = { }
ntrill = \override TrillSpanner #'bound-details #'left  #'text = #'()
%scared
%  then I'd rrwuff
%gen -- tle
%   giz -- zard
%be -- fore
%   Wiz of Oz
%nerve
%   I'd
%king
%   roar some
%home
%   brain
%a
%   heart
%the
%   nerve


%{
  GM w/ 2 entries
  GM w/ 4 entries
  IRREGULAR HOCKET .---..--..--
  TIGHTER HOCKET -.- .--    .-.   -.-
  3+3+2 (meaning --.--.--.--.-.-.)
  
  f g a f d' c bes c [but harmonized interestingly, bes at end becomes 3rd of ges major]
  ...
  SOLO MPer
  SOLO MPic
  SOLO Ttö / SOLO Fakbyd
  SOLO Wysr + tutti -...^^^----- where . = mathieu & ^ is loud rebuke
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
\include "stylesheet.ly"

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
  s1*64
  \mark "rall."
  \unfoldChange #96 #92 #8
  \tempo 4=92
  s1
  s2 \mark "rall." \unfoldChange #90 #84 #4 |
  \tempo 4=84
  s1*3
  s2.
     \mark "rall."
     \unfoldChange #84 #70 #8
  \tempo "Maestoso" 4=72
     s4 | \noBreak
  s1 |
  \tempo "più leggero"
  \mark "accel."
  \unfoldChange #70 #96 #8
  \tempo 4=88
  s1*18
  s2 \set Score.tempoWholesPerMinute = #(ly:make-moment 72 4 0 0) s4 \set Score.tempoWholesPerMinute = #(ly:make-moment 88 4 0 0) s4 |
  s1 \bar "|."
}

beamComm = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
}

soprano = \relative c' {
  R1*16 |
  r2. \lo d8^\mf \sh ees |
  \lo f \sh d \lo bes \sh c \lo d \sh bes8 r4 |
  r4 \times 2/3 { r8 bes c8 } \lo d \sh bes \lo g \sh a |
  \lo bes \sh g r4 \lod r4. \sh bes8 |
  \lo f \sh f \lo f \sh f f2 ~ |
  f1 |
  r2. \lo bes8 \sh a |
  \lo g \sh r \lo g' \sh f \lo ees \sh d r4 |
  r4 \lo c8 \sh bes \lo a \sh a \lo a' \sh g |
  \lo f \sh ees r4 r4 \lo d8 \sh c |
  \lo bes \sh bes \lo bes \sh bes bes2 ~ |
  bes1 |
  r2. \lo d8 \sh ees |
  \lo f \sh d \lo bes \sh c \lo d \sh bes r4 |
  r4 \times 2/3 { bes8 bes c8 } \lo d \sh bes \lo g \sh a |
  \lo bes \sh g r4 \lod r4. \sh bes8 |
  \lo f \sh f \lo f \sh f f2 ~ |
  f1 |
  r2. \lo bes8 \sh a |
  g4 \lo g'8 \sh f \lo ees \sh d r4 |
  r4 \lo c8 \sh bes \lo a \sh a \lo a' \sh g |
  \lo f \sh ees r4 r4 \lo d8 \sh c |
  << { \times 4/5 { bes4 bes bes bes bes ~ } |
     bes1 } { s1^\< s2. s8 s8^\f } >> |
  r2. bes4 |
  g'2. r4 |
  \lod r4. \sh fis8 \lo g a4 \sh f8 ~ |
  f2 r |
  r4 g \lo ees8 ees4 \sh ees8 ~ |
  ees2 r |
  r4 f^\mf d2^\turn |
  r4 \lo d8 \sh d \lo c \sh bes \lo c \sh bes |
  \lo c \sh bes \lo c \sh d8 \lo r8 bes4-\bendAfter #-3 \sh r8 |
  R1 |
  \lo r8 \sh c ~ c4 \lo r8 \sh d ~ d4 |
  \lo r8 f4 \sh r8 \lod r4. \sh g8 |
  \lo r8 d4 \sh c8 r4 \lo bes8 \sh f'8 ~ |
  \lo f8 \sh r r4 r2 |
  \lo r8 d4 \sh r8 r2 |
  \lod r4. \sh ees8-- ~  \lo ees r4 \sh f8 ~ |
  \lo f8 \sh d \lo bes \sh c \lo d8 bes4 \sh c8 |
  \lo d8 \sh r r4 \lo r8 \sh bes \lo g \sh a | % D
  \lo bes \sh g r4 r2 | % g
  r4 bes ~ bes2 | % C
  \lo f8 \sh f \lo f \sh f f2 | % F
  r4 bes4 ~ \lo bes8 \sh a ~ a4 | % Bb
  g4 \lo g'8 \sh f \lo ees \sh d \lo c \sh bes | % Eb
  \lo a8 \sh a \lo a' \sh g \lo f \sh ees ~ ees4 | % Ao
  \lo r8 \sh d^\< ~ d4 ~ \lo d8 \sh c ~ c4 | % D
  \lo bes8^\f \sh bes \lo bes \sh bes bes2 |
  \lod r4. \sh bes8 ~ bes4 a |
  g2 g'4 f |
  \lod ees4. \sh d8 ~ \lo d c4 \sh bes8 |
  a4 a a' g |
  \lod f4. \sh ees8 d4 \lo ees8 \sh c8 |
  bes4 bes \lod bes'4. \sh a8 ~ |
  a4 ~ \times 2/3 { a8 g4 ~ } \times 2/3 { g8 f4 } \times 2/3 { ees8 d4 } |
  \lo c8 \sh c8 r4 r2 |
  \lo c'8 \sh bes8 r4 r2 |
  \times 2/3 { r8 a g } \stemDown f16 g d' ( c ~ c2 | \stemNeutral
  c2.. ) r8 |
  R1 |
  \lo r8 \sh d ~ d4 ~ d2 ~ |
  d1^\> ~ |
  d1 ~ |
  \lod d4.^\p \sh r8 r4 c ~ |
  c r4 \lo bes8 \sh bes r4 |
  r4 \lo bes8 \sh bes8 r2 |
  r2 \lo r8 \sh bes \times 2/3 { r8 \ntrill d4^\ff\startTrillSpan ~ } |
  \lo d8 \sh bes8\stopTrillSpan ~ bes4 ~ bes4 r4 |
  r2 \lo r8 \sh d ~ d4 |
  bes1 |
  r2 \times 2/3 { r8 d4 ~ } d4 |
  bes1 ~ |
  bes1 ~ |
  bes1 ~ |
  bes1 ~ |
  bes1 ~ |
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
I would be cle -- ver as a giz -- zard
If the Wi -- zard is a Wi -- zard who will serve?

Then I'm sure to get a brain
A heart, a home, the nerve
}

mezzo = \relative c' {
  \lod r4. \sh cis8^\f \lo d \sh bes \lo g \sh f |
  \lo d'8 d4 \sh bes8 ~ bes2 |
  \lod r4. \sh fis'8 \lo g \sh ees \lo c \sh bes |
  \lo g' g4 \sh ees8 ~ ees2 |
  r4 \lo d8 \sh ees \lo f \sh a \lo f \sh e |
  \lo ees \sh g \lo ees \sh cis \lo d \sh f \lo d \sh des |
  \lo c \sh ees \lo c \sh cis \lo d \sh bes \lo g \sh f |
  \lo f' d4 \sh bes8 ~ \lo bes \sh r r4 |
  r2 \lod r4. \sh cis8^\mf |
  \lo d8 \sh bes8 \lo g8 \sh f8 \lo d'8 d4 \sh bes8 ~ |
  bes2. \lo r8 \sh fis'8 |
  \lo g8 \sh ees \lo c \sh bes \lo g' \sh g8 ~ g4 |
  r2. \lo ees8 \sh e8 |
  \lo f8 \sh a \lo f \sh e \lo ees \sh g \lo ees \sh cis |
  \lo d \sh bes \lo g \sh f \lo d' d4 \sh cis8 |
  \lo d \sh bes \lo g \sh f \lo f' \sh d8 r4 |
  \lo r8 \sh fis \lo g \sh bes ~ \lo bes \sh g ges4 |
  \lo f8 \sh f \lo g \sh f \lo bes \sh g \lo f \sh cis |
  \lo d \sh c \lo bes' \sh a \lo aes \sh bes, \lo ees \sh f |
  \lo g \sh bes \lo g \sh f \lo ees \sh d \lo ees \sh e |
  \lo f \sh a \lo d \sh des \lo c \sh a \lo g \sh ges |
  \lo f \sh a \lo f \sh e \lo ees \sh f \lo g \sh ges |
  \lo f \sh bes \lo f \sh d \lo c \sh a \lo g' \sh ges |
  \lo f \sh ees \lo d \sh a c4-_ \lo d8-_ \sh cis8 |
  \lo d8 \sh bes8 g4 \lo d'8 d4 \sh bes8 ~ |
  \lod bes4. \sh r8 bes'4 \lo f8 \sh fis |
  \lo g8 \sh ees \lo c \sh aes \lo g' g4 \sh ees8 ~ |
  ees2 r4 \lo ees8 \sh e8 |
  \lo f8 \sh a \lo f \sh e \lo ees g4 \sh ges8 |
  \lo f f,4 \sh fis8 \lo g8 \sh bes \lo d \sh dis |
  bes4 \lo d8 \sh ees f4 \lo d8 \sh c |
  bes4 r bes' \lo g8 \sh cis, |
  \lo d8 \sh bes8 g4 d'4 c |
  d2 ~ \lo d8 \sh r \lo c \sh d |
  \lo c \sh fis \lo g \sh fis \lo d ees4 \sh ees8 |
  \lo f8 \sh ees d4 \lo aes'8 \sh g \lo f \sh ees |
  \lo d \sh f \lo aes \sh g \lo f \sh g \lo f \sh ees |
  \lo bes' \sh bes \lo f \sh ees \lo b' \sh b \lo g \sh a |
  \lo bes^\< \sh bes \lo bes \sh bes \lo bes bes4 \sh bes8 |
  \lod a4. \sh aes8 ~ aes2 |
  \lo g8^\f \sh g ~ g4 ~ g2 |
  \lod g4. \sh g8 ~ \lod g4. \sh e8 |
  \lo f8 \sh a8 \lo f \sh d8 \lo f \sh e8 \lo ees \sh d8 ~ |
  \lo d8 \sh des8 \lo c \sh bes8 ~  \times 2/3 { bes bes c } \times 2/3 { d f g } |
  \lo a8 \sh a8 ~  a4  \lo a8 a4 \sh r8 |
  \lod a4. \sh a8 ~ a4 \lo f8 \sh fis |
  \lo g8 \sh r8 r4 r2 |
  \lo f8^\mf \sh r8 r4 r2 |
  \lo c8 \sh ees8 \lo c \sh g8 \lod a4. \sh r8 |
  \lod r4. \sh d8 ~ \lo d \sh c \lo a \sh g |
  \lo a a4 \sh fis'8 ~ \lo fis \sh e \lo d \sh b |
  \lo d d4 \sh a'8 ~ \lo a \sh g \lo fis \sh e |
  \lo fis \sh a^\< \lo r \sh a \lo r \sh b \lo r \sh bis^\f ~ ( |
  \lo bis \glissando c4 ) \sh r8 r2 |
  \lod r4. \sh a8^\mf ~ \lo a \sh g \lo f \sh d |
  \lo f \sh f \lo r \sh c'8-- ~ \lo c \sh bes \lo a \sh g |
  \lo a \sh g \lo f \sh d \lo f \sh d \lo c \sh cis | % don't forget the eis4
  r4 \lo r8 \sh cis'8 \lo d8 \sh r8 \lo r8 \sh c8 |
  \lo bes8 \sh ees,8 \lo d8 \sh a'8 r2 |
  \lo r8 \sh c8 \lo bes8 \sh des,8 \lo c8 \sh e8 \lo r8 \sh bes' |
  \lo r8 \sh bes8 \lo a8 \sh r8 \lo r8 \sh des8 \lo r8 \sh c8 |
  \lo g8 \sh r8 \lo r8 \sh a8 \lo r8 \sh g8 \lo r8 \sh fis'8 |
  r4 \lo f,8 \sh r8 \lo f'8 \sh r8 \lo r8 \sh g,8 |
  \lo ees8 \sh e8 \lo f8 \sh r8 \lo bes8 \sh ees,8 \lo a8 \sh r8 |
  \lo g'8^\<  \sh g \lo r \sh gis, \lo a \sh bes \lo c \sh cis |
  \lo d^\f \sh bes \lo g \sh f \lo d' d4 \sh bes8 ~ |
  bes4 \lo r8 \sh cis8 \lo d \sh bes \lo g \sh f |
  \times 2/3 { r g'-. g-. } \times 2/3 { g-. r4 } \times 2/3 { fis8-. fis-. r } \times 2/3 { r8 d-. d-. } |
  \times 2/3 { d8-. r f-. } \times 2/3 { r8 cis-. cis-. } \times 2/3 { r c-. r } \times 2/3 { e r-. a, }
  \lo gis-- \( \sh a-. \) \lo r \sh b [ \( \lo c \) ] \sh r \lo ais-- \( \sh b-. \) |
  \lo r \sh dis [ \( \lo e \) ] \sh fis, \( \lo g \) [ \sh cis ] \lo d [ \sh bes ] |
  \lo g \sh f \lo d' \sh d ~ d2 ~ |
  \lo d \sh bes ~ bes4 ~ bes ~ \times 2/3  { bes8 d c } |
  \lo bes \sh bes r4 r2 |
  \lo bes8 \sh bes \lo g' \sh f \times 2/3 { des ( c ) bes } g16 bes c d |
  \times 2/3 { r8 c c } \times 2/3 { c r4 } \times 2/3 { ges8 f f } \times 2/3 { f r4 } |
  a16 r8. \times 2/3 { r8 fis' fis } \times 2/3 { fis^\> fis fis } \times 2/3 { fis^\< fis fis } |
  fis4^\f-\bendAfter #-3 \times 2/3 { c8 cis d } \times 2/3 { ees d des } c4 |
  \lo c8 ( \ssh d16 \ssh c ) \lo a8 \sh c ~ \times 2/3 { c fis, g } \times 2/3 { gis a ais } |
  \lo b^\> \sh d \lo b \sh bes \lo a \sh c \lo a \sh aes |
  \lo g \sh b \lo g \sh ges \lo f \sh a \lo f \sh d |
  \times 2/3 { ees8^\pp r4 } r4 \times 2/3 { ges8 r4 } r4 |
  \lo r8 f4 \sh f8 r4 \lo r8 \sh fis |
  r4 \lo g8 \sh r \times 2/3 { r8 a r } r4 |
  r2. \times 2/3 { r8 \ntrill bes'4^\ff\startTrillSpan ~ }
  \lo bes8 \sh g8\stopTrillSpan \times 2/3 { des8 ( c ) bes } \lo g8 \sh r bes4 |
  a4^\markup \italic "not swung" f8 g a4 bes |
  \lo f^\markup \italic "swung" \sh a \lo f \sh e \lo ees \sh g \lo ees \sh cis |
  \lo d \sh f \lo d \sh des \lo c \sh ees \lo c \sh cis |
  \lo c8 \sh c g''4 r g |
  \lo f8 \sh d \lo c \sh bes ~ \lo bes \sh cis \lo d \sh cis |
  \lo d \sh bes \lo g \sh f \lo f' d4 \sh f,8 |
  \lo bes, \sh d \lo f \sh bes r4 \ntrill aes'4\startTrillSpan ~ |
  aes4 ~ aes2\stopTrillSpan-\bendAfter #-5 r4 |
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
  I'd rrwuff, I'd bet -- ter my core prow -- ess
  Not a -- fraid of Mis -- sy mou -- se I'm de -- ny -- ing if I had the
  Ne -- ver -- more, a -- no -- ther nerve

  I'd be gen -- tle as li -- zard's verve
  nerve If
  I'd show my fate I'd ne -- ver serve
  If the Wi -- zard is a Wi -- zard a bli -- zard a li -- zard
  Ne -- ver more if I had, had the nerve

  nerve nerve
  I'm sure to get re -- gal core
  Oh, A cea -- sar who would rrwuff some, some more could show pro -- wess
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
  An aw -- ful fate I
%scared
  then I'd rrwuff
%gen -- tle
   giz -- zard
%be -- fore
   Wiz of Oz
%nerve
   I'd
%king
   roar some
%home
   brain
%a
   heart
%the
   nerve
  bli -- zard de -- serve
  li -- zard the verve
  to serve
  be aw -- ful if I had the nerve
  king of fo -- rus
  sau -- rus
  Such a Wi -- zard, off to see my
  Wiz of Oz
  my Won -- der -- ful
  off
  The Wi -- zard of Oz is one be -- cause
  cause of the won -- der -- ful things
  that he does 
  Don't -- chya know that we're
  bee -- zer like I ne -- ver could a 
  cea -- ser if I on -- ly would it's
  sad
  be -- lieve me
  when you are
  born to be a sis -- sy o -- ver the rain -- bow
  roar the way I roared be -- fore
  I'd serve a -- round the home some more my
  pro -- wess
  serve
  verve
  Won -- der -- ful things he does
  We're off to see the Wi -- zard
  If I had the nerve
  nerve!
}


alto = \relative c'' {
  R1*4 |
  \lo r8 \sh a^\f ~ a4 ~ a2 |
  f2. r4 |
  R1
  r2. \lo bes8^\mf \sh cis,8 |
  \lo d8 \sh bes8 \lo g8 \sh f8 \lo d'8 d4 \sh bes8 ~ |
  bes2. \lo r8 \sh fis'8 |
  \lo g8 \sh ees \lo c \sh bes \lo g' g4 \sh ees8 ~ |
  ees2 r4 \lo ees8 \sh e8 |
  \lo f8 \sh a \lo f \sh e \lo ees \sh g \lo ees \sh cis |
  \lo d \sh f \lo d \sh des \lo c \sh ees \lo c \sh a |
  ees4 des' \lo a8 \sh f ~ f4 ~ |
  f4 r bes'-. \lo r8 \sh cis,8 |
  \lo d8 \sh bes \lo g \sh f \lo d' d4 \sh bes8 ~ |
  bes2. \lo r8 \sh fis'8 |
  \lo g8 \sh ees d4 \lo c8 g'4 \sh d8 ~ |
  \lo d \sh c \lo bes \sh aes \lo g \sh r \lo c8 \sh cis8 |
  d4 \lo f8 \sh e \lo ees \sh f \lo ees \sh cis |
  \lo d \sh f \lo d \sh des \lo c \sh ees \lo c \sh cis |
  \lo d \sh bes \lo g \sh f \lo ees' c4 \sh d8 |
  bes4 r aes'4-_ fis-_ |
  g-. ees c \lo ees8 \sh cis |
  \lo d \sh bes \lo g \sh f \lo d'8 d4 \sh a8 |
  \lo aes8 \sh c \lo aes \sh f \lo d'8 \sh c \lo bes \sh aes |
  \lo c bes4 \sh g8 \lo ees \sh f \lo g \sh a |
  bes4 bes r \lo bes8 \sh c |
  \lo d8 \sh a' \lo f \sh e \lo ees g4 \sh fis8 |
  \lo f \sh d \lo bes \sh g \lo a8 a4 \sh a8 ~ |
  a4 r r d' |
  \lo bes,8 \sh cis \lo d \sh cis \lo a fis'4 \sh ees8 |
  \lo f \sh d \lo bes \sh c \lo d \sh bes \lo ees \sh fis |
  \lo g8 \sh bes \lo c \sh bes \lo g8 f4 \sh g8 |
  bes2 \times 2/3 { r8 c, cis } \times 2/3 { d f g }
  \lo bes8 \sh bes \lo ees, \sh ees \lo bes' \sh bes \lo ees, \sh cis |
  \lo d \sh c \lo a' \sh g \lo f \sh ees \lo d \sh ees |
  \lo f8^\< \sh g \lo bes \sh g \lo c \sh bes \lo g \sh ges |
  \lod f4. \sh f8 ~ \times 2/3 { f8 bes, c } \times 2/3 { d f g } |
  \lo bes^\f \ntrill bes4\startTrillSpan \sh bes8\stopTrillSpan \lo g8 bes4 \sh r8 |
  \lo bes8 ( \ssh c16 \ssh bes ) \lo g8 \sh bes8 ~ \lod bes4. \sh gis8 |
  \lo a8 \sh c8 \lo a \sh f g4 \lo a8 \sh f8 ~ |
  \lo f \sh e8 \lo ees \sh d8 ~ \times 2/3 { d d e } \times 2/3 { fis a b } |
  \lo c8 \ntrill c4\startTrillSpan \sh c8\stopTrillSpan \lo a8 c4 \sh r8 |
  \lo c8 ( \ssh d16 \ssh c ) \lo a8 \sh c8 ~ c4 \lo a8 \sh ais |
  \lo b^\> \sh d8 \lo b \sh bes8 \lo a \sh c8 \lo a \sh aes8 |
  \lo g \sh b8 \lo g \sh ges8 \lo f \sh a8 \lo f \sh d8 |
  \lo ees^\mf \sh g8 \lo ees \sh c8 \lo a ges'4-\bendAfter #-3 \sh r8 |
  R1 |
  \lod r4. \sh d8 ~ \lo d \sh c \lo a \sh g |
  \lo a a4 \sh fis'8 ~ \lo fis \sh e \lo d \sh b |
  \lo d \sh d \lo e^\< \sh fis \lo r \sh g \lo r \sh gis^\f ~ ( |
  \lo gis \glissando \sh a8 ~ a4 ~ \lo a8 ) \sh r r4 |
  \lod r4. \sh e8^\mf ~ \lo e \sh e \lo d8 \sh bes |
  \lo d \sh d \lo r \sh a'-- ~ \lo a \sh g \lo f \sh ees |
  \lo f c4 \sh d8 c4 bes |
  \lo r8 \sh ees8 \lo d8 \sh bes'8 \lo bes8 \sh r8 r4 |
  r4 \lo bes,8 \sh ees8 \lo cis8 \sh d8 \lo r8 \sh dis8 |
  \lo r8 \sh d8 \lo e8 \sh a,8 \lo bes8 \sh r8 \lo r8 \sh c8 |
  \lo d8 \sh fis8 \lo g8 \sh r8 \lo r8 \sh bes8 \lo r8 \sh ges8 |
  \lo f8 \sh ces8 \lo bes8 \sh ees8 \lo r8 \sh d8 \lo r8 \sh cis'8 |
  \lo r8 \sh  bes, r4 \lo c'8 r4 \sh d,8 |
  \lo r8 \sh c8 r4 \lo r8 \sh c8 \lo g'8 \sh r8 |
  \lo ees8^\< \sh f8 \lo g8 \sh d8 \lo fis8 \sh g8 \lo a8 \sh fis8 |
  a2^\f \lod ees4. \sh cis'8 |
  \lo d \sh bes \lo g \sh f \lo d' \sh d ~ \times 2/3 { d des c } |
  \times 2/3 { b bes-. bes-. } \times 2/3 { bes-. r4 } \times 2/3 { ces8-. ces-. r } \times 2/3 { r8 aes-. a-. } |
  \times 2/3 { a-. r b-. } \times 2/3 { r8 a-. aes-. } \times 2/3 { r g-. r } \times 2/3 { b-. r e,-. } |
  \lo f-- \( \sh fis-. \) \lo r \sh fis [ \( \lo f \) ] \sh r \lo f-- \( \sh e-. \) |
  \lo r \sh b' [ \( \lo b \) ] \sh c, \( \lo f [ \sh aes \) ] \lo g \sh ees |
  \lo e \sh d \lo a' \sh g ~ \lo g \sh ees \lo f \sh g ~ |
  \lo g8 \sh c,8 ~ c4 des4 aes' |
  \lo g8 \sh g \times 2/3 { bes c bes } \lo des \sh c^\turn bes16 g bes g |
  \lo e \sh e r4 r2 |
  \times 2/3 { r8 e e } \times 2/3 { e r4 } \times2/3 { r8 ees ees } \times 2/3 { ees8 r4 } |
  f16 r8. \times 2/3 { r8 f fis } \times 2/3 { g^\> gis a } \times 2/3 { ais^\< b c } |
  \lo c8^\f c4 \sh c8 a4 \times 2/3 { fis8 g gis } |
  \times 2/3 { a aes e' } \times 2/3 { c g' e } \times 2/3 { b' bes a } \times 2/3 { aes g ges } |
  \lo f \sh f r4 r2 |
  \times 2/3 { r8 f,^\mf f } r4 r2 |
  \times 2/3 { bes,8^\pp r4 } r4 \times 2/3 { ees8 r4 } r4 |
  \lo r8 d4 \sh d8 r4 \lo r8 \sh d |
  r4 \lo ees8 \sh r \times 2/3 { r8 e r } r4 |
  r2. \times 2/3 { r8 \ntrill aes4^\ff\startTrillSpan ~ } |
  \times 2/3 { aes8 f4\stopTrillSpan } \lo g \sh cis \lo d \sh bes \lo g \sh f |
  \lo d'8 d4 \sh bes8 ~ bes4 \lo ges \sh f |
  \lod ees4. \sh fis8 \lo g \sh ees \lo c \sh bes |
  \lo g' g4 \sh ees8 ~ ees2 |
  \lo ees8 \sh ees ees'4 r ees |
  \lo d8 bes4 \sh a ~ \lo a \sh bes \lo g \sh cis |
  \lo d \sh bes \lo g \sh f \lo d' a4 \sh f8 |
  \lo bes, \sh d \lo f \sh bes r4 \ntrill c4\startTrillSpan ~ |
  c4 ~ c2\stopTrillSpan-\bendAfter #-5 r4 |
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
  Oh A cea -- sar who would rrwuff some, some more,
  rrwuff my core I would
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
  An aw -- ful An aw -- ful fate I don't de
  what a
scared
  then I'd rrwuff
%gen -- tle
   giz -- zard
%be -- fore
   Wiz of Oz
%nerve
   I'd
%king
   roar some
%home
   brain
%a
   heart
%the
   nerve
  bli -- zard de -- serve
  li -- zard the verve
  to serve
  be aw -- ful if I had the
  de -- ny -- ing
  a cea -- sar for -- us
  Oh what a Wi -- zard can -- not take it
  sau -- rus
  Wiz of Oz
  Won -- der -- ful
  off
  The Wi -- zard of Oz is one be -- cause
  dan -- dy li cause of the won -- der
  Wiz a wiz a Wi -- zard of Oz is a bee -- zer
  cea -- ser
  sad be -- lieve me 
  when
  you are born
  to be
  A dan -- dy king they bet -- ter serve
  Bet -- ter serve
  A re -- gal Wi -- zard I de -- serve
  pro -- wess
  serve verve
  Won -- der things he does
  We're off to see the Wi -- zard If I had the nerve
  nerve!
}

tenor = \relative c' {
  \clef "treble_8"
  R1*4 |
  \lo r8 \sh f^\f ~ f4 ~ f2 |
  c2. r4 |
  R1*23 |
  r2 \lod bes4.^\mf \sh a8 |
  g4 r ees r |
  d g r bes |
  \lo ees,8 \sh g \lo r \sh bes \lo ees, a4 \sh g8 |
  a4 g ~ g \lo a8 \sh b |
  \lo a \sh aes \lo a \sh c \lo aes c4 \sh c8 |
  \lo d8 \sh c ~ c4 \lo f8 \sh ees \lo aes, \sh g |
  aes4 \lo ees'8 \sh c ees4 \lo c8 \sh bes |
  bes4 \lo c8 \sh cis d4 f |
  \lo ees8^\< \sh c \lo g \sh ees \lo ees ees4 \sh d'8 ~ |
  d1
  \lo c8^\f \sh c ~ c4 ~ c2 |
  \lod c4. \sh c8 ~ \lod c4. \sh r8 |
  \lod c4. \sh gis8 \lo a8 \sh c8 \lo a \sh f8 |
  \lo g8 a4 \sh f8 \lo f8 \sh e8 \lo ees \sh d8 |
  \lo ees' \sh ees8 ~ ees4 \lo ees8 ees4 \sh r8 |
  \lod fis4. \sh fis8 ~ fis4 \lo d8 \sh des |
  \lo d8 \sh r8 r4 r2 |
  \lo b8^\mf \sh r8 r4 r2 |
  g2 ees2 |
  R1 |
  R1 |
  \lod r4. \sh d'8 ~ \lo d \sh b \lo a \sh g |
  \lo fis \sh a \lo c \sh a \lo c \sh a \lo g \sh eis |
  \lo fis d'4 \sh d8 ~ \lo d \sh c \lo a \sh g |
  \lo a a4 \sh bes8 ~ \lo bes \sh bes \lo g \sh g |
  \lo c \sh c \lo r \sh f-- ~ \lo f \sh d \lo c \sh bes |
  \lo a \sh a \lo r \sh a \lo c \sh g \lo r \sh g |
  \lo fis8 \sh c' \lo bes \sh r \lo r \sh d, \lo a' \sh r |
  r4 \lo fis8 \sh r8 r2 |
  r4 \lo r8 \sh fis8 \lo g8 \sh r8 r4 |
  \lo a8 \sh r8 \lo des \sh c \lo r8 \sh g'8 \lo g8 \sh ees8 |
  \lo d8 \sh a8 \lo g8 \sh r8 \lo r8 \sh c \lo b8 \sh bes8 |
  \lo g'8 \sh r8 \lo des8 \sh r \lo fis8 \sh f8 \lo e8 \sh r8 |
  \lo c8 \sh b8 \lo r8 \sh cis8 \lo r8 \sh a8 \lo r8 \sh aes8 |
  \lo c8^\< \sh d8 \lo ees8 \sh b8 \lo c8 \sh b8 \lo gis8 \sh a8 |
  fis'4^\f \lo ees8 \sh cis \lo d \sh bes \lo a \sh g |
  \lo fis \sh cis' \lo d \sh bes \lo g \sh cis \lo d \sh bes
  \times 2/3 { cis d-. d-. } \times 2/3 { d-. r4 } \times 2/3 { des8-. des-. r } \times 2/3 { r ees-. d-. } |
  \times 2/3 { ces-. r g'-. } \times 2/3 { r f-. fis-. } \times 2/3 { r fes-. r } \times 2/3 { aes-. r d,-. } |
  \lo ees-- \sh ees-. \lo r \sh ees [ \( \lo d \) ] \sh r \lo d-- \( \sh cis-. \) |
  \lo r \sh a' [ \( \lo gis \) ] \sh a, \( \lo b \)  [ \sh fis' ] \lo g \sh a, |
  \lo d \sh g, ees'4 ~ \lo ees8 \sh c \lo des \sh ees ~  |
  \lod ees4. \sh aes,8 \lo bes \sh ges' ~ ges4 |
  \lo c,8 \sh c r4 r2 |
  \lo g \sh g r4 r2 |
  \times 2/3 { r8 bes bes } \times 2/3 { bes r4 } \times 2/3 { r8 a a } \times 2/3 { a r4 }
  \times 4/5 { d16 [ d d d d ] } \times 2/3 { d8 a' aes8 } \times 2/3 { g^\> ges f } \times 2/3 { e^\< ees d }
  \times 2/3 { c^\f d dis } e4 \times 2/3 { a,8 ais b } \times 2/3 { c b bes } |
  fis'4 ~ \times 2/3 { fis8 b, bes } a4 c |
  \lo b8 \sh b r4 r2 |
  \times 2/3 { r8 d^\mf d } r4 r2 |
  \times 2/3 { g,8^\pp r4 } r4 \times 2/3 { a8 r4 } r4 |
  \lo r8 a4 \sh a8 r4 \lo r8 \sh b |
  r4 \lo d8 \sh r \times 2/3 { r8 c r } r4 |
  r2. \times 2/3 { r8 \ntrill f4^\ff \glissando } |
  c2 ~ \lo c8 \sh r8 \lo d8 \sh ees |
  \lo f \sh d \lo bes \sh c \lo d bes4 \sh c8 |
  \lo d \sh bes \lo g \sh a \lo bes g4 \sh bes8 |
  \lo f \sh f \lo f \sh f f4 \lo bes8 \sh a |
  \lo g8 \sh g a'4 r a |
  \lo bes,8 \sh f' \lo ees  \sh d ~ \lo d \sh c \lo bes \sh cis |
  \lo d \sh bes \lo g \sh f \lo a c4 \sh d8 |
  \lo bes \sh d, \lo f \sh bes r4 \ntrill d4\startTrillSpan ~ |
  d4 ~ d2\stopTrillSpan-\bendAfter #-5 r4 |
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
  cea -- sar would would rrwuff some, some
  show my  prow -- wess I could serve aw -- ful lie If you're
  sad I'm de -- ny -- ing
  vim and verve are aw -- ful be
  stride da
  rrwuff roar
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
  aw -- ful An aw -- ful fate I don't
  An aw -- ful fate
  An aw -- ful
scared
  then I'd rrwuff
%gen -- tle
   giz -- zard
%be -- fore
   Wiz of Oz
%nerve
   I'd
%king
   roar some
%home
   brain
%a
   heart
%the
   nerve
  bli -- zard de -- serve
  li -- zard the verve
  to serve
  be aw -- ful if I had
  de -- ny -- ing nerve
  cea -- sar
  for -- us
  sau -- rus
  Wiz of Oz
  Won -- der -- ful
  off The Wi -- zard of Oz
  The Wi -- zard of Oz is one be -- 
  cause of the won
  cause of the won -- der ful
  things
  wiz a Wi -- zard
  bee -- zer
  cea -- ser
  sad be -- lieve me when
  you are
  born when
  Yes it's sad be -- lieve me Mis -- sy
  you're born to be a sis -- sy
  With -- out the vim and verve
  I could pro -- wess serve verve
  Won -- der -- ful things he does 
  We're off to see the Wi -- zard If I had the nerve
  nerve!
}

bass = \relative c {
  \clef "bass"
  bes4^\f a g b |
  c \lo g8 \sh ges \lo f \sh g \lo a \sh f |
  bes4 a g d' |
  c \lo g8 \sh ges \lo f \sh f' \lo d \sh c |
  \lo r8 \sh bes a4 g \lo d'8 \sh des |
  \lo c \sh ees \lo c \sh bes \lo a \sh f \lo f' \sh b, |
  \lo c \sh bes \lo a \sh g \lo f \sh g \lo a \sh f |
  \lo bes \sh bes'^\> \lo a \sh g \lo f \sh ees \lo d \sh des |  
  c4^\mf g f a |
  \lo bes8 \sh bes a4 g ges |
  f ees' d bes |
  \lo ees8 \sh ees g,4 \lo aes8 \sh bes \lo c \sh cis |
  d4 bes c \lo a8 \sh f |
  bes4 \lo d8 \sh g, c4 g |
  c e, f a |
  \lo bes8 \sh c \lo d \sh f bes4-. \lo d,8 \sh b |
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
  \lo g'8 \sh ees \lo c \sh bes \lo g'8 \sh g \lo c,8 \sh cis |
  d4 des \lo c8 \sh a \lo f \sh a |
  bes4 d c4 \lo g8 \sh b |
  c4 r \lod f,4. \sh fis8 |
  \lo g8 \sh bes \lo d \sh a' ~ \lo a g4 \sh g8 |
  c,4 ges f \lo a8 \sh f |
  \lo bes8 \sh bes d,4 ees \lo g8 \sh e |
  f4 \lo ees'8 \sh a, bes4 \lo aes8 \sh fis |
  g4 aes a \lo c8 \sh cis |
  \lo d8 bes4 \sh bes8 \lo bes8 bes4 \sh bes8 |
  bes4 \lo d8 \sh fis, \lo g8 \sh a b4 |
  c4^\< \lo g8 \sh ges \lo f \sh g \lo a \sh f |
  \lod bes4. \sh bes8 ~ bes2 |
  \lo ees8^\f \sh ees ~ ees4 ~ ees2 |
  \lod e4. \sh e,8 ~ \lo e e'4 \sh ges8 |
  f4 f, g a |
  bes c d bes |
  a2 ~ \lo a8 \sh ees'8 ~ ees4 |
  d2 ~ \lo d8 a4 \sh aes8 |
  \lo g8 \sh r8 r4 r2 |
  \lo g'8^\mf \sh r8 r4 r2 |
  c,2 f,4 \lo c'8 \sh cis8 |
  \lo d8 \sh d fis,4 g gis |
  \lo a8 d4 \sh aes8 \lo g \sh d' \lo d, \sh eis |
  \lo fis \sh d' fis,4 g gis |
  \lo a8 d4 \sh b8 \lo a \sh g \lo fis \sh d' |
  \lo d \sh d fis,4 g gis |
  \lo a8 \sh d \lo des \sh c ~ \lo c \sh bes \lo a \sh g |
  \lo a \sh f' a,4 bes b |
  c4 f, a4 \lo g8 \sh cis |
  \lo d8 \sh r8 r4 r2 |
  \lo g,8 \sh r8 r4 r4 \lo f8 \sh r8 |
  \lo e8 \sh r8 r4 r4 \lo c'8 \sh r8 |
  \lo f8 \sh r8 r4 \lo d8 \sh r8 \lo a8 \sh a'8 |
  \lo r8 \sh ges8 \lo f8 \sh r8 \lo fis,8 \sh r8 \lo cis'8 \sh r8 |
  \lo ees8 \sh f8 \lo r8 \sh a,8 r4 \lo r8 \sh f'8 |
  r4 \lo r8 \sh a8 r4 \lo r8 \sh ees8 |
  \lo d8^\< \sh aes'8 \lo a,8 \sh bes8 \lo ees8 \sh d8 \lo aes8 \sh d8 |
  g,1^\f ~ |
  \lo g8 \sh r8 a'4 ~ \times 2/3 { a8 aes g } \times 2/3 { ges f e } |
  \times 2/3 { ees8-_ r4 } \times 2/3 { r8 a,-_ a-_ } \times 2/3 { r4 fes'8-_ } \times 2/3 { aes,-_ r4 } |
  \times 2/3 { r8 g-_ r } \times 2/3 { fis'-_ r4 } \times 2/3 { f8-_ r a,-_ } \times 2/3 { r f'-_ r } |
  \lo c [ \sh c ] \lo f, \sh cis' [ \lo cis ] \sh fis, \lo d' [ \sh d ] |
  \lo g, \sh e' [ \lo e ] \sh aes, \lo g [ \sh e' ] c4 |
  e f aes, ges ~ |
  ges des' \lod aes4. \sh fes'8 |
  \lo ees8 \sh ees r4 r2 |
  \lo c \sh c r4 r2 |
  \times 2/3 { f,8 f' f } \times 2/3 { f r4 } r16 f, f g bes g f g |
  bes16 r8. \times 2/3 { r8 b' bes } \times 2/3 { a^\> aes g } \times 2/3 { ges^\< f e }
  \lo a,8^\f a4 \sh a8 a4 ees' |
  \lod d4. \sh d8 ~ \lo d fis,4 \sh a8 |
  \lo g8 \sh g8 r4 r2 |
  \times 2/3 { r8 b'^\mf b } r4 r2 |
  \times 2/3 { c,8^\pp r4 } r4 \times 2/3 { f,8 r4 } r4 |
  \lo r8 bes4 \sh bes8 r4 \lo r8 \sh g |
  r4 \lo c8 \sh r \times 2/3 { r8 f, r } r4 |
  r2. \times 2/3 { r8 \ntrill bes4^\ff ~ } |
  \lo bes8 \sh ees8 \lo ees \sh ees \lo r \sh e \lo e \sh g |
  \lo r8 f4 \sh d8 ~ \lo d8 g4 \sh d8 |
  c4 \lo g'8 \sh c, \lo f f,4 \sh f'8 |
  bes,8^\markup \italic "not swung" d c bes aes g f f' |
  \lo ees8^\markup \italic "swung" \sh ees r4 e r4 |
  f4 fis \lo g8 \sh d \lo bes \sh g |
  c4 \lo g' \sh c, \lo f f,4 \sh f'8 |
  \lo bes, \sh d \lo f \sh bes \times 2/3 { r8 c, ces } bes4 ~ |
  bes2. \times 2/3 { bes8 bes r } |
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
  aw -- ful I had, had the
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
  core would would rrwuff, rrwuff some
  more  de -- ny I could
  serve aw -- ful li -- on you're 
  sad I'm de -- ny -- ing  Then
  vim verve are aw -- ful like a bee -- zer
  stride da
  rrwuff roar get a
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
  roar Oh show the king what a
  scared
%  then I'd rrwuff
  gen -- tle
%   giz -- zard
  be -- fore
%   Wiz of Oz
  nerve
%   I'd
  king
%   roar some
  home
%   brain
  a
%   heart
  the
%   nerve
  bli -- zard I'd de -- serve a
  li -- zard and the verve
  to serve
  be aw -- ful if the nerve de -- ny -- ing
  for -- us
  sau -- rus
  Wiz, Wiz of Oz
  Oh don't -- chya know that we are
  off
  The Wi -- zard of Oz is one be -- cause
  dan -- dy li -- on
  won -- der
  he's a
  bee -- zer
  cea -- ser
  sad
  be -- lieve me
  when you are
  born
  to be a
  a -- round the
  fo -- rus when you're
  born when you're born
  to a si -- sy then I'd roar and rrwuff some
  pro -- wess
  nerve
  Wo -- onder
  Wi -- zard no We're off
  see the Wi -- zard
  If I had the nerve
  Had the nerve!
  Wi -- zard
}


\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
      %\override PhrasingSlur #'style = #'dotted
      \override PhrasingSlur.dash-definition = #'((0 1 0.4 0.75))
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
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
