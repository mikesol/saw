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
}

#(ly:set-option 'point-and-click #f)

MyRed = \Red
MyBlack = \Black
myred = \once \override NoteHead.color = #red
myblack = \revert NoteHead.color
%MyRed = \revert NoteHead.color
%MyBlack = \revert NoteHead.color
%myred = \revert NoteHead.color
%myblack = \revert NoteHead.color

\header {
  title = "The Wonderful Wizard of Oz" %(1)"
  subtitle = \markup { for Ahti Sonninen }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 2/2
  \tempo "Adagio" 2=35
  \partial 4
  s4 |
  \repeat unfold 45 { s1 | } \bar "|."
}

prefatoryMatter = {
  \key g \major
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c' { \autoBeamOff
  \prefatoryMatter
  d4 |
  b'4 a b c |
  d g e c |
  b d a d |
  b g2. |
  b1 |
  fis2 e |
  a b |
  a2. e4 |
  r2 d' ~ |
  d a ~ |
  a d ~ |
  d a ~ |
  a1 ~ |
  a2 cis ~ |
  cis1 |
  d1 |
  b |
  cis |
  a2 b |
  a1 |
  b |
  a2 fis ~ |
  fis4 b2 a4 |
  g2 b |
  c1 |
  a2. c4 |
  b a g fis |
  f g a b |
  d1 
  c
  b ~ |
  b2 e |
  d4 c b a |
  g fis2 a4 |
  b1 ~ |
  b |
  d2 c ~ |
  c a4 b |
  b b a b |
  a g2 d4 |
  b'4 a b c |
  d g e c |
  b d a d |
  b g2. ~ |
  g1 |
}

sopranoWords = \lyricmode {
}

mezzo = \relative c' { \autoBeamOff
  \prefatoryMatter
  d4 |
  b'4 a b a |
  b e c a |
  g2 fis |
  g1 ~ |
  g2 d4 g ~ |
  g d b2 |
  c4 d g2 ~ |
  g d4 e |
  fis e d e |
  d2 e |
  fis1 |
  e2 g ~ |
  g4 fis fis fis |
  e2 e4 a |
  a a a2 |
  a1 |
  gis1 ~ |
  gis
  fis4 g2 d4 |
  g2 fis |
  g1 |
  e4 d2 c4 |
  e2 dis |
  fis4 e g2 |
  g4 fis2 fis4 |
  fis2. a4 ~ |
  a1 ~ |
  a2. r4 |
  b1 |
  a4 a a a |
  a a2 fis4 |
  d2. c'4 |
  b a g fis |
  e d2. |
  d2. g4 ~ |
  g d4 b2 |
  c4 d g2 ~
  g2 g2 ~ |
  g4 g fis g |
  e2. d4 |
  b'4 a b a |
  b e c a |
  g2 fis |
  g1 ~ |
  g1 |
}

mezzoWords = \lyricmode {
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  d4 |
  g g g g |
  g g g g |
  g g g g |
  fis e d c |
  d2 b ~ |
  b d2 |
  a2 fis'4 e |
  e2 b4 c |
  d c b c |
  b1 |
  d2 b ~ |
  b e ~ |
  e4 d d d |
  d1 |
  fis2 e |
  fis4 d2. ~ |
  d4 r d e |
  e e e e |
  d2 cis |
  d d4 c |
  e4 d2 c4 |
  c4 b2 a4 |
  b1 |
  d |
  e4 d c b |
  e2. fis4 |
  g4 fis e d |
  d e f2 |
  e2 g4 a |
  fis1 |
  g2 e |
  d1 |
  e1 |
  d4 d c a |
  d e fis g |
  f g a b ~ |
  b2 a4 g |
  fis2 e |
  d4 d c d ~ |
  d1 |
  fis4 g g g |
  g g g g |
  g g g g |
  fis e d c |
  b1 |
}

altoWords = \lyricmode {
}

tenor = \relative c' {
  \autoBeamOff
  \clef "treble_8"
  d4 |
  fis e fis e |
  fis e fis e |
  fis2 e |
  d4 c b a |
  b2 a |
  g1 ~ |
  g |
  c2 g4 fis |
  a2. b4 |
  a4 g2.~ |
  g4 r g g ~ |
  g g ais2 |
  b1 |
  g |
  d'2 cis ~ |
  cis b |
  d b ~ |
  b bes |
  b1 ~ |
  b2 a |
  c4 b a2 |
  g1 |
  g2 g4 g ~ |
  g g g2 |
  a1 |
  c2. e4 |
  d1 ~ |
  d |
  g,2 e' ~ |
  e1 |
  d |
  b |
  c |
  a |
  b4 c d e |
  d e f g |
  f2 e ~ |
  e1 ~ |
  e1 |
  c4 b c2 |
  b4 e fis e |
  fis e fis e |
  fis2 e |
  d4 c b a |
  g1 |
}

tenorWords = \lyricmode {
}

bass = \relative c' { \autoBeamOff
  \prefatoryMatter
  \clef bass
  r4 |
  r2 d4 c |
  b2 c |
  d d, |
  g1 |
  g,2 fis' |
  e e, |
  a1 |
  d2 d, |
  g1 |
  c |
  g |
  fis |
  b1 |
  bes |
  a2 ais |
  b1 |
  e |
  e, |
  a ~ |
  a2 d |
  g,1 |
  c |
  b |
  e |
  a, |
  d |
  g, ~ |
  g |
  c |
  d |
  g,2 fis' |
  e1 |
  a, |
  d |
  g, ~ |
  g |
  c |
  a |
  d |
  d, |
  g2 d''4 c |
  b2 c |
  d d, |
  g1 ~ |
  g1 |
}

bassWords = \lyricmode {
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
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
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
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
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
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
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Metronome_mark_engraver"
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
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Metronome_mark_engraver"
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
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
