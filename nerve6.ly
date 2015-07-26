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
  R1*16 |
  r2. d8 ees |
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
  r4. c8 d bes g a |
  bes g r4 r4. bes8 |
  f f f f f4 r |
  r f4 ~ f2 |
  r2. bes8 a |
  g r g' f ees d r4 |
  r4 c8 bes a r a' g |
  f ees r4 r4 d8 c |
  bes bes bes bes bes4 r4 |
  r bes ~ bes2 |
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

mezzo = \relative c'' {
  R1*4 |
  r8 a ~ a4 ~ a2 |
  f2. r4 |
  R1*2 |
  r2 r4. cis8 |
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
  f g bes g c bes g bes |
  a4. aes8 ~ aes2 |
  g8 g ~ g4 ~ g2 |
}

mezzoWords = \lyricmode {
}

alto = \relative c' {
  R1*4 |
  r8 f ~ f4 ~ f2 |
  d2. r4 |
  R1 |
  r2 bes'4 r8 cis,8 |
  d8 bes8 g8 f8 d'8 d4 bes8 ~ |
  bes2. r8 fis'8 |
  g8 ees c aes g' g4 ees8 ~ |
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
  g8 g g g g g4 f'8 ~ |
  f2 \times 2/3 { r8 bes,^\< c } \times 2/3 { d f g } |
  bes\f bes4 bes8 g8 bes4 r8 |
  bes8 ( c16 bes ) g8 bes8 ~ bes4. gis8 |
  a8 c8 a  f g4 a8 f8 ~ |
  f e8 ees d8 ~ \times 2/3 { d d e } \times 2/3 { fis a b } |
  c8 c4 c8  a8 c4 r8 |
  c8 ( d16 c ) a8 c8 ~ c4 a8 ais |
  b\> d8 b bes8 a c8 a aes8 |
  g b8 g ges8 f a8 f d8 |
  ees\mf g8 ees c8 a ges'4 r8 |   |

}

altoWords = \lyricmode {
  An aw -- ful fate I don't de -- serve
  A king with -- out the vim and verve
  Yes it's sad, be -- lieve me, Mis -- sy
  When you're born to be a sis -- sy
  Ne -- ver if I on -- ly had the nerve

  Nerve

  A re -- gal born to ne -- ver serve
  A dan -- dy king de -- ny -- ing verve
  Show the di -- nos my ha -- bits
  Oh I'd roar and rrwuff the rab -- bits
  I'd be aw -- ful if I had the, the nerve

  Nerve

  The cea -- sar show -- ing I de -- serve
  A bee -- zer king, oh I would serve
  Oh I'd bet -- ter my core prow -- ess
  Not a -- fraid of Mis -- sy mou -- se
  I'm de -- ny -- ing if I had the nerve

%{
  I would be in my stride dan -- dy li -- on
  Roar some more
  A re -- gal king they bet -- ter serve, bet -- ter serve,
  I could then show my pro -- wess, a li -- on
  I de -- serve
  Change my roar, a re -- gal bee -- zer
  I could be a -- no -- ther cea -- ser
  If I on -- ly had the nerve I'd
%}
}
tenor = \relative c' {
  \clef "treble_8"
  R1*4 |
  r8 d ~ d4 ~ d2 |
  c2. r4 |
  R1*23 |
  r2 bes4 g |
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
  ees8 ees ees ees ees ees4 d'8 ~ |
  d1
  c8 c ~ c4 ~ c2 |
}

tenorWords = \lyricmode {
}

bass = \relative c {
  \clef "bass"
  bes4 a g d' |
  c g8 ges f g a f |
  bes4 a g b |
  c g8 ges f f' d c |
  r8 bes a4 g d'8 des |
  c g' c, bes a f f' d |
  c bes a g f g a f |
  bes bes' a g f ees d des |  
  c4 g f a |
  bes8 bes a4 g ges |
  f c' bes d |
  ees8 ees d4 c cis |
  d bes c a8 f |
  bes4 d c b |
  c g f a |
  bes8 d f bes r bes, r b |
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
  bes4 d c d8 bes |
  c4 r f, fis |
  g8 bes d a' ~ a g d cis |
  c4 g f a |
  bes8 bes a4 g ges |
  f c' bes d |
  ees8 ees d4 c cis |
  \times 2/3 { d8 c bes } a g c a f a |
  bes4 d8 fis, g8 a b4 |
  c4 g8 ges f g a f |
  bes4. bes8 ~ bes2 |
  ees8 ees ~ ees4 ~ ees2 |
}

bassWords = \lyricmode {
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

%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\midiPrefatoryMatter
        \soprano
      } {
   \repeat unfold 400 \unfoldSwing #96

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
