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
  subtitle = \markup { for Art Tatum }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 2/2
  \tempo "Allegro" 2=120
  \partial 2
}

prefatoryMatter = {
  \key aes \major
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c' { \autoBeamOff
  \prefatoryMatter
  r2 |
  ees1 ~ |
  ees2 des4 c |
  des2 
}

sopranoWords = \lyricmode {
}

mezzo = \relative c' { \autoBeamOff
  r2 |
  c2. bes4 |
  c2 a |
  bes
}

mezzoWords = \lyricmode {
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  %\clef alto 
  ees2 |
  aes4 g8 f ees4 des |
  c8 ges'4 f8 ~ f ees ~ ees4 |
  \times 2/3 { des f aes } \times 2/3 { c aes bes } |
  g-. r aes-. r |
  aes, aes aes' bes |
  g8 ees g f r8 f ~ \times 2/3 { f g aes } |
  \times 2/3 { bes4 c bes } \times 2/3 { aes f g } |
  \times 2/3 { ees bes g } ees ees' |
  \times 2/3 { f des bes } \times 2/3 { g g' ees } |
  \times 2/3 { aes ees c } \times 2/3 { a a' f } |
  \times 2/3 { bes f des } \times 2/3 { bes b' g } |
  \times 2/3 { c g e } \times 2/3 { c c' aes } |
  \times 2/3 { des aes f } \clef alto \times 2/3 { des aes f } |
  des-. r \clef treble aes''2 |
  bes4 aes8 aes g g f4 |
  g8 bes4 ees8 ~ ees c ~ c4 |
  des4 c8 c bes bes aes4 |
  g8 f4 ees8 ~ ees8 \clef "treble_8" d4.^"(repeat)" |
  d4 c8 c bes bes aes4
  g8 bes4 ees8 ~ ees8 c4. |
  \times 2/3 { bes4 ees ees, } \times 2/3 { ees' ees, ees' } |
  ees,8 ees'4 ees,8 ~ ees \treble ees''4. |
  c4 ees c bes |
  gis8 a4 g8 r8 f4. |
  ees8 ees ees e ~ e e e f
}

altoWords = \lyricmode {
}

tenor = \relative c' {
  \autoBeamOff
  \clef "treble_8"
  r2 |
  aes2 g |
  a f ~ |
  f
}

tenorWords = \lyricmode {
}

bass = \relative c { \autoBeamOff
  \prefatoryMatter
  \clef bass
  r2 |
  aes4 bes c e, |
  a ees' f, a |
  bes  f ees g |
  aes r r2 |
}

bassWords = \lyricmode {
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
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
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
