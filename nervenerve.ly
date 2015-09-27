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
  R1*2 |
  r8 d r4 r2 |
  R1*5 |
  r4. ees8 f d r4 |
  R1*2 |
  r4 bes8 c d bes r4 |
  R1*2 |
  r4 \times 2/3 { r8 bes c } d bes g r |
  r2.. a8 |
  bes g r bes f f f r |
  r4. f8 f r bes a |
  g r r4 r4 g'8 f |
  ees8 r r4 r8 d c bes |
  a a a' g r4 f8 ees |
  d4-. r c-. r |
  bes8 bes bes bes r4 bes8 r |
  r4 d8 ees f d bes r |
  r c d bes r4 bes8 c |
  r8 d r bes r g r a |
  bes g r4 r8 bes f f |
  r4 f8 f f r r4 |
  r2 r8 bes r a |
  r8 g g' f ees d r4 |
  r4 c8 bes a a a' g |
  r4 f8 ees r4 d8 c |
  bes8 bes bes bes bes2 |
  r4 bes g'2 |
  r4. fis8 g4 a |
  f2 r4 g4 |
  ees4. ees8 ~ ees4 r4 |
  r ees ~ ees r4 |
  r4 f d2 |
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
  R1*8 |
  R1*7 |
  r2 bes4 r4 |
  r8 bes a aes g bes g ges |
  f f g f bes g f cis |
  d r bes' c bes d, \times 2/3 { bes' a aes } |
  g ees aes a bes g f cis |
  d f r4 g8 bes4 a,8 |
  bes d f fis g bes4 g8 |
  ees4 c c a8 d |
  d4 r4 r2 |
}

mezzoWords = \lyricmode {
}

alto = \relative c'' {
  R1*7 |
  r2 bes4 r8 cis,8 |
  d8 bes8 g8 f8 d'8 d4 r8 |
  r2.. fis8 |
  g8 ees c aes g' g4 ees8 ~ |
  ees2 r4 ees8 e8 |
  f8 a f e ees g ees cis |
  d f d des c ees c cis |
  d bes g f f' d4 bes8^> |
  r2. d8 cis |
  d8 bes8 g8 f8 d'8 d4 bes8 ~ |
  bes2. r8 fis'8 |
  g8 ees c aes g' g8 ~ g4 |
  ees2 r4 ees8 e8 |
  f8 a f e ees g ees cis |
  r f d des r ees c cis |
  d bes g f f' d4 bes8^> |
  r2. d8 cis |
}

altoWords = \lyricmode {
  Nerve
  An aw -- ful fate I don't de %-- serve
  A king with -- out the vim and verve
  Yes it's sad, be -- lieve me, Mis -- sy
  When you're born to be a sis -- sy
  Ne -- ver if I on -- ly had the nerve
}
tenor = \relative c' {
  \clef "treble_8"
  R1*8 |
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
  f4 c' bes8 c d bes |
  ees8 ees d4 c cis |
  d r des r |
  c r f, r |
  c' r f, r |
  R1 |
  c'4 r f, r |
  bes8 bes a4 g ges |
  f r bes r |
  ees8 ees d4 c8 bes a g |
  d'4 r8 des c4 r8 b |
  bes4 r8 aes8 g4 r8 g |
  c4 r f, fis |
  g8 d' a' g ~ g f ees b |
   
}

bassWords = \lyricmode {
  Yeh, it's sad be -- lieve me now Mis -- sy when you're
  born to be a, when you are born to be a
  With -- out vim, vim and verve
  be -- lieve me Mis -- sy yes it's sad
  would show the di -- no -- saur -- us
  sis -- sy when you're born to be a

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
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
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
