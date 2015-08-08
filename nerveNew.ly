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
  %\partial 8
}

midiPrefatoryMatter = {
  \prefatoryMatter
  %r2 r4 r8
}

theme = \relative c {
  cis8-\tag #'first \mf |
  d8 bes8 g8 f8 d'8 d4 bes8 ~ |
  bes2. r8 fis'8 |
  g8 ees c aes g' g4 ees8 ~ |
  ees2 r4 ees8 e8 |
  f8-\tag #'second \< a f e ees g ees cis |
  d f d des c ees c cis |
  d bes g f d' d4 bes8 |
  \tag #'first { bes4 }
  \tag #'second { bes2 }
}

marks = {
  \tempo "Dixie" 4=96
}

beamComm = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
}

sopranoHocket = \relative c' {
    r8 ees8 d  bes'8  bes8 r8 r4 |
    r4 r8 a8 r2 |
    r4 r8 des,8 c8 r8  r8 bes'8 |
    r8  bes8 a8 r8 r8 des8 r8 c8 |
    r4 r8 a8 r  g8 r fis'8 |
    r4 g,8 r8  f' r8 r g,8 |
    r b,8 r4  bes'8 r8 a r8 |
     g' r8 r gis,8 a  bes8 c cis8 |
    d bes8 g f8 d' d4 bes8 ~ |
    bes4
  }

sopranoSmooth = \relative c' {
}

soprano = \relative c' {
  r4 d8 ees f d bes c |
  d bes r4 r2 |
  r4 bes8 c d bes g a |
  bes g r4 r2 |
  r4. bes8 f f f f |
  f4 r r2 |
  r4 f ~ f2 |
  R1 |
  r4 bes8 a g4 g'8 f |
  ees d r4 r2 |
  r4 c8 bes a a a'g |
  f ees r4 r2 |
  r4 d8 c bes bes bes bes |
  bes4 r4 r2 |
  r4 bes4 ~ bes2 |
  R1 |
  r4 d8 ees f d bes c |
  d bes r4 r2 |
  r4 \times 2/3 { bes8 bes c } d bes g a |
  bes g r4 r2 |
  r4. bes8 f f f f |
  f4 r r2 |
  r4 f ~ f2 |
  R1 |
  r4 bes8 a g4 g'8 f |
  ees d r4 r2 |
  r4 c8 bes f c' a'8 g |
  f ees r4 r2 |
  r4 d8 c bes bes bes bes |
  bes4 r4 r2 |
  r4 bes4 ~ bes2 |
  R1 |
  r4 bes g'2 |
  R1 |
  r8 fis g a f2 |
  R1 |
  r4 g ees ees |
  ees r4 r2 |
  r4 f d2 |
  R1 |
  r4 d8 d c bes c bes |
  c bes r4 r2 |
  r4 c8 d bes2 |
}

sopranoWords = \lyricmode {
Yeh, it's sad, be -- lieve me, Mis -- sy
When you're born to be a sis -- sy
With -- out the vim and verve
(erve)

But I could change my ha -- bits
%Ne -- ver more be scared of rab -- bits
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

globalGC = {
  \repeat unfold 3 { s4.\< s8\! }
  \tag #'hiGC { s4.\< s8\! s1\< }
  \tag #'loGC { s2\< s1 }
  s1
  s1\f
}

mezzoSmooth = \relative c' {
}

mezzoHocket = \relative c'' {
  r4 r8 cis8 d8 r8 r8 c8 |
   bes8 ees,8  d8  ees8 r2 |
  r8 c'8 bes8 r8 r8 e,8 r4 |
  r8 fis8 g8 r8 r8  bes8 r8 ges8 |
  g8 r8 r8 ees8 r8 d8 r8 cis'8 |
  r8 g,8 r4 c'8 r8 r8 d,8 |
  ees8 e8 f8 r8 g8 ees8  g8 r8 |
  a8  f8 g8  d8 fis8 g8  a8 fis8 |
   a8
}

mezzo = \relative c' {
  R1*15 |
  r2. d4 |
  r8 bes'8 a aes g bes g ges |
  f f g f   bes g f d |
  bes r8 bes' c bes d, bes' fis |
  g r ees f g ees c cis |
  d f4 r8 r8 f g f |
  bes8 g f f r8 f d ees |
  g8 bes4 c8 bes4 a |
  g r4 r d |
  bes'8 f g f r8 bes4 a8 |
  g f r cis d f g f |
  ees c \times 2/3 { bes c cis } d f d bes |
  g'4 \times 2/3 { c,8 cis d } ees f g a
  bes8 bes r4 bes8 bes r4 |
  bes8 bes r4 bes8 bes r4 |
  bes8 bes bes bes bes bes4 a8 ~ ( |
  a4. aes8 ~ aes2 ) |
  g8 g8 ~ g4 ~ g4. r8 |
  g4. g8 ~ g4. e8 |
  f8 a8 f d8 f e8  ees d8 ~ |
   d8 des8  c bes8 ~  \times 2/3 { bes bes c } \times 2/3 { d f g } |
   a8 a8 ~  a4  a8 a4 r8 |
  a4. a8 ~ a4 f8 fis |
  g8 r8 r4 r2 |
  f8\mf r8 r4 r2 |
  c8 ees8 c g8 a4. r8 |
}

mezzoWords = \lyricmode {
  Nerve
  And roar some more
  I roared be -- fore
  I'd be a king down to the core
  Be a bee -- zer ne -- ver more
  I'd be scared of kings in for -- us
  would change my di -- no -- sau -- rus
  But I could be scared of rab -- bits nerve

  Nerve
  I could change my ha -- bits
  Ne -- ver, no more be scared of rab -- bits
  %With -- out the verve
  X X X X X X X X X
  X X X X X X X
  %Ne -- ver more be scared
  When you're born to be with -- out de -- ny -- ing If I had the nerve 

  Li -- on
  roar more
  A re -- gal king, oh they bet -- ter serve, bet -- ter serve,
  I could then show my pro -- wess li -- on
  De -- serve
  Change my roar
  Be
  On -- ly had the nerve
}

altoSmooth = \relative c' {
}

altoHocket = \relative c' {
}

alto = \relative c'' {
  R1*7 |
  r2 bes4^\mf r8 cis,8 |
  d8 bes8 g8 f8 d'8 d4 bes8 ~ |
  bes2. r8 fis'8 |
  g8 ees c aes c f4 d8 ~ |
  d2 r4 ees8 e8 |
  f8 a f e ees g ees cis |
  d f d des c ees c cis |
  d bes g f f' d4 bes8 ~ |
  bes4 r bes' r8 cis,8 |
  d8 bes8 g8 f8 d'8 d4 bes8 ~ |
  bes2. r8 fis'8 |
  g8 ees c aes g' g4 ees8 ~ |
  ees2 r4 ees8 e8 |
  f8 a f e ees g ees cis |
  d f d des c ees c cis |
  d bes g f d' d4 bes8 ~ |
  bes4 r bes'4 r8 cis,8 |
  d8 bes8 g8 f8 d'8 d4 bes8 ~ |
  bes2. r8 f'8 |
  g8 ees c aes g' g4 ees8 ~ |
  ees2 r4 ees8 e8 |
  f8 a f e ees g ees cis |
  d f d des c ees c cis |
  d bes g f d' d4 bes8 ~ |
  bes2 \times 2/3 { r8 bes^\< c } \times 2/3 { d f g } |
  bes\f bes4 bes8 g8 bes4 r8 |
  bes8 ( c16 bes ) g8 bes8 ~ bes4. gis8 |
  a8 c8 a  f g4 a8 f8 ~ |
  f e8 ees d8 ~ \times 2/3 { d d e } \times 2/3 { fis a b } |
  c8 c4 c8  a8 c4 r8 |
  c8 ( d16 c ) a8 c8 ~ c4 a8 ais |
  b\> d8 b bes8 a c8 a aes8 |
  g b8 g ges8 f a8 f d8 |
  ees\mf g8 ees c8 a ges'4 r8 |  
}

altoWords = \lyricmode {
  Nerve
  An aw -- ful fate I don't de -- serve
  A king with -- out the vim and verve
  Yes it's sad, be -- lieve me, Mis -- sy
  When you're born to be a sis -- sy
  Ne -- ver if I on -- ly had the nerve

  Nerve
  A re -- gal born to ne -- ver serve
  A dan -- dy king de -- ny -- ing verve
  Show the di -- no -- saurs my ha -- bits
  Oh I'd roar and rrwuff the rab -- bits
  I'd be aw -- ful if I had the nerve

  Nerve
  The cea -- sar show -- ing I de -- serve
  A bee -- zer king, oh I would serve
  Oh I'd bet -- ter my core prow -- ess
  Not a -- fraid of Mis -- sy mou -- se
  I'm de -- ny -- ing if I had the nerve

  I would be in my stride dan -- dy li -- on
  Roar some more
  A re -- gal king they bet -- ter serve, bet -- ter serve,
  I could then show my pro -- wess, a li -- on
  I de -- serve
  Change my roar, a re -- gal bee -- zer
  I could be a -- no -- ther cea -- ser
  If I on -- ly had the nerve I'd
}

tenorSmooth = \relative c' {
}

tenorHocket = \relative c {
}

tenor = \relative c' {
  \clef "treble_8"
  R1*23 |
  r4 g r2 |
  r4 ees8 ees r4 ees8 ees |
  r4 d8 f r4 bes,8 bes |
  r4 ees8 ees r4 \times 2/3 { g8 aes a } |
  bes4. f8 g f \times 2/3 { ees f ees } |
  d8 f r4 g8 c r4 |
  f,8 d'8 r4 ees,8 c' r4 |
  f8 f f f g8 ges4 f8 ~ ( |
  f4. d8 ~ d2 ) |
  c8 c8 ~ c4 ~ c4. r8 |
  c4. c8 ~ c4. r8 |
  c4. gis8 a8 c8 a f8 |
  g8 a4 f8 f8 e8 ees d8 |
  ees' ees8 ~ ees4 ees8 ees4 r8 |
  fis4. fis8 ~ fis4 d8 des |
  d8 r8 r4 r2 |
  b8\mf r8 r4 r2 |
  g2 ees2 |
}

tenorWords = \lyricmode {
  Nerve
  Change my ha -- bits
  Scared of rab -- bits
  Show my %pro -- wess
  %Li -- on mou -- se
  X X X
  X X X X  X X X
  When you're born to be with -- out de -- ny -- ing If I had the nerve
  Li -- on
  roar more
  king, a re -- gal king they bet -- ter serve
  bet -- ter show my pro -- wess li -- on
  De -- serve Change my
  roar
  Be
  Had the
}

bassSmooth = \relative c {
  d8 d fis,4 g gis |
  a8 d d aes g d' d, eis |
  fis d' fis,4 g gis |
  a8 d4 b8 a g fis e |
  fis8 d' fis,4 g gis |
  a8 c4 bes8 a g fis e |
  fis d' fis,4 g gis |
  a8 a fis b a g fis e |
}

bassHocket = \relative c {
   d8 r8 r4 r2 |
  g,8 r8 r4 r4  f8 r8 |
  e8 r8 r4 r4 c'8 r8 |
  f8 r8 r4  d8 r8 a8 r8 |
  r8 ges'8 f8 r8 fis,8 r8 cis'8 r8 |
  r8  f8 r8 a,8 r4 r8  f'8 |
  r4 r8 fis8 r4 r8 ees8 |
  d8 aes'8 a,8 ais8 dis8 e8 fis,8 d'8 |
  g,8
}

bass = \relative c {
  \clef "bass"
  bes4 a g d' |
  c4 ges f8 g a f |
  bes4 a g b |
  c4 g8 ges f g a f |
  r bes8 a4 g d' |
  c g8 ges f4 a8 aes |
  g4 d'8 des c a f8 a |
  bes8 bes' a g f ees d des |
  c4 r f, r |
  bes8 bes a4 g ges |
  f4 r bes r |
  ees8 ees d4 c cis |
  d r cis r |
  c r f, r |
  c' r f r |
  bes, r r2 |
  c4 r f, r |
  bes8 bes a4 g ges |
  f4 r bes r |
  ees8 ees d4 c ees |
  d r des r |
  c r f r |
  c r f, fis |
  g8 bes d g ~ g d bes g |
  c4 r f, r |
  bes8 bes a4 g ges |
  f r bes r |
  ees8 ees d4 c cis |
  d des c b bes a aes g |
  c ges f a |
  bes1^\< |
  ees8^\f ees8 ~ ees4 ~ ees4. r8 |
  e4. e,8 ~ e e'4 ges8 |
  f4 f, g a |
  bes c d bes |
  a2 ~ a8 ees'8 ~ ees4 |
  d2 ~ d8 a4 aes8 |
  g8 r8 r4 r2 |
  g'8\mf r8 r4 r2 |
  c,2 f,4 c'8 cis8 |
}

bassWords = \lyricmode {
  Yeh, it's sad be -- lieve me Mis -- sy when you're
  born to be a, when you are born to be a
  With -- out vim and verve
  be -- lieve me yes it's sad
  when you're born to be a sis -- sy
  when you're born to be a
  change my
  but I could change my
  ha -- bits
  ne -- ver be scared of ra -- bits
  If I on -- ly nerve
  A -- fraid there's no de -- ny -- ing
  just an aw -- ful I'm just a
  li -- on fate I don't don't de -- serve
  I'm an aw -- ful dan -- dy
  li -- on
  I'd show my prow -- ess
  Be a
  li -- on and not a
  mouse I'd show my prow -- ess
  If I on -- ly had the nerve
  Li -- on
  roar more roar a
  re -- gal king they bet -- ter serve my
  li -- on
  I'd Change my roar
  Be
  Had the had the
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\midiPrefatoryMatter
        \soprano
      } {
   \repeat unfold 200 \unfoldSwing #96

      } {
	\midiPrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
