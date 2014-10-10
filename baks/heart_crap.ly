#(set-global-staff-size 15.87)
%{
When a man's an empty kettle
He should be on his mettle
And yet I'm torn apart
Just because I'm presumin'
That I could be a human
If I only had a heart

I'd be tender, I'd be gentle
And awful sentimental
Regarding love and art
I'd be friends with the sparrows 
And the boy that shoots the arrows
If I only had a heart

Picture me a balcony
Above a voice sings low

(Snow White)
Wherefore art thou, Romeo?

(Tin Man)
I hear a beat, how sweet!

Just to register emotion, jealousy, devotion
And really feel the part
I could stay young and chipper
And I'd lock it with a zipper
If I only had a heart
%}
% 
\version "2.19.0"
\include "defs-devel.ly"

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)

\paper {
  #(define fonts
    (set-global-fonts
    #:music "profondo"
    #:factor (/ staff-height pt 20)
  ))
}

railroad =  {
  \once \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
  \breathe
}
myred = \once \override NoteHead #'color = #red

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
  title = "If I Only Had a Heart"
  subtitle = "for Henry Purcell and J.S. Bach"
  %title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}

prefatoryMatter = {
  \key b \minor
  \autoBeamOff
}

scorePrefatoryMatter = {
  \prefatoryMatter
  %\partial 4
}

midiPrefatoryMatter = {
  \prefatoryMatter
  %r2.
  %\partial 4
}

marks = {
  \tempo "Largo" 4=48
  s1 |
}

soprano = \relative c'' {
  R1 |
  r2. b4 ~ |
  b4. c8 ~ c4 b4 ~ |
  b a8 b ~ b r8 e4 ~ |
  e2. d4 ~ |
  d4 c ~ c b ~ |
  b cis2. ~ |
  cis2 b2 |
  s1 \break s1*3 \break s1*3 \break s1*3 \break s1*3 \break |
}

sopranoWords = \lyricmode {
  me had
}

mezzo = \relative c'' {
  r4. g8 e4. r8 |
  fis4 e8 fis e d4. |
  r8 g4 r8 a8 fis4. |
  r2 a8 g4. ~ |
  g2 ~ g8 fis4. ~ |
  fis2 ~ fis8 e4. ~ |
  e8 r r4 r2 |
  r4 g4 ~ g8 fis4. |
  r2.. g8 ~ |
  g2 fis |
  s1*16 |
}

mezzoWords = \lyricmode {
  sum And
  Just chip If That heart
}

alto = \relative c' {
  r8 d4 r8 r8 cis4. ~ |
  cis8 r4. r4 cis8 b ~ |
  b8 r8 e4 ~ e dis ~ |
  dis2 ~ dis8 r fis e |
  d cis4. ~ cis8 r8 r4 |
  r2. d8 cis ~ |
  cis4 e ~ e8 d4. ~ |
  d8 r8 r4 r4 cis8 d ~ |
  d4 cis8 b ~ b cis d e ~ |
  e4 d8 cis8 ~ cis d cis b |
  s1*16 |
}

altoWords = \lyricmode {
  em his
  shoots on
}

tenor = \relative c' {
  \clef "treble_8"
  r4 b2 ais4 ~ |
  ais2. r4 |
  R1 |
  R1 |
  r2. e'8 d |
  c b a g ~ g4. r8 |
  b ais g fis ~ fis4 cis'8 b |
  ais2 r8 b4. ~ |
  b2. ais4 |
  s1*16 |
}

tenorWords = \lyricmode {
  me tal
}

bass = \relative c {
  \clef "bass"
  r2.. fis8 |
  r8 fis4. r2 | 
  r2.. b8 |
  r8 b4. r2 |
  r4 b8 a ~ a2 |
  R1 |
  R1 |
  r8 g fis e d2 |
  eis2 fis |
  ais2. r4 |
  s1*16 |
}

bassWords = \lyricmode {
  When
  I'd
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
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
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \bass
      }
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
