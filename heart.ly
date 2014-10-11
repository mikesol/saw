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

%{
\paper {
  #(define fonts
    (set-global-fonts
    #:music "profondo"
    #:factor (/ staff-height pt 20)
  ))
}
%}

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
  \time 2/4
}

scorePrefatoryMatter = {
  \prefatoryMatter
}

midiPrefatoryMatter = {
  \prefatoryMatter
}

marks = {
  \tempo "Largo" 4=48
  s2 |
}

soprano = \relative c'' {
  R2 |
  R2 |
  R2 |
  r8 b4. ~ |
  b4. c8 ~ |
  c2 |
  b4 a8 b |
  a g4. |
  r4. e'8 ~ |
  e4 d ~ |
  d c ~ |
  c b ~ |
  b cis ~ |
  cis2 ~ |
  cis ~ |
  cis |
  R2 |
  r4 fis ~ |
  fis2 ~ |
  fis ~ |
  fis4 e ~ |
  e d ~ |
  d cis ~ |
  cis2 |
  b8 g e cis' |
  a fis d b |
  b'4 a8 g |
  fis e dis cis |
}

sopranoWords = \lyricmode {
}

mezzo = \relative c' {
  R2 |
  R2 |
  fis4 e ~ |
  e8 d cis b ~ |
  b8 r4. |
  r8 fis' dis b |
  R2 |
  R2 |
  r8 a'4. ~ |
  a2 ~ |
  a ~ |
  a |
  R2 |
  g2 |
  a2 ~ |
  a4 b4 ~ |
  b a8 g |
  fis a4 g8 ~ |
  g b4. ~ |
  b4 a ~ |
  a2 |
  g |
  b4 a ~ |
  a2 ~ |
  a4 g ~ 
  g fis ~ |
  fis e |
}

mezzoWords = \lyricmode {
}

alto = \relative c' {
  R2 |
  R2 |
  \Red
  r4. fis8 ~ |
  fis2 ~ |
  fis8 g4. |
  a2 ~ |
  a2 ~ |
  a4 fis4 |
  d2 ~ |
  d4 e ~ |
  e2 |
  fis4 d ~ |
  d4 e4 ~ |
  e2 |
  fis2 ~ |
  fis4 d ~ |
  d4. b8 ~ |
  b8 cis4. ~ |
  cis4 d4 ~ |
  d2 |
  b |
  d4 a |
  a8 a a a ~ |
  a d4. ~ |
  d4 cis ~ |
  cis b ~ |
  b4. b'8 |
  a8 g fis e ~ |
  e2 ~ |
  e4 d4 |
  cis cis' |
  b a ~ |
  a g ~ |
  g fis8 e |
  d 
}

altoWords = \lyricmode {
}

tenor = \relative c' {
  \clef "treble_8"
  r8 d b g' |
  e cis ais fis |
  r8 fis4. |
  ais4 b ~ |
  b2 |
  R2 |
  r8 b4. ~ |
  b8 dis4 e8 ~ |
  e4. r8 |
  g8 fis4. ~ |
  fis8 r4. |
  r8 e4. |
  fis2 |
  r8 d8 cis b |
  ais g fis4 |
  r8 b cis r8 |
  r8 d cis4 |
  r4 d8 e ~ |
  e8 e4 cis8 ~ |
  cis d e fis ~ |
  fis d b g' |
  e cis a fis |
  fis' fis, e' fis |
  e4 cis8 b ~ |
  b2 ~ |
  b8 d, a'4 |
  b c ~ |
  c2 ~ |
  c4 b8 a |
  g4
}

tenorWords = \lyricmode {
}

bass = \relative c' {
  \clef "bass"
  R2 |
  R2 |
  R2 |
  R2 |
  R2 |
  R2 |
  R2 |
  R2 |
  r8 cis b a ~ |
  a4 r8 d  |
  c b a g |
  r4. cis8 |
  b ais g fis |
  R2 |
  r4. e8 |
  d2 |
  eis |
  fis |
  g |
  a |
  r4 b, |
  e4 a, |
  d2 |
  g, |
  a |
  fis4 fis' |
  g e |
  dis2 |
  b |
  fis'4 e8 d |
  cis4. b8 |
  a cis fis4 |
}

bassWords = \lyricmode {
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
