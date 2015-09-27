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
  %indent = 1.9\in
}

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Wonderful Wizard of Oz" %(1)"
  subtitle = \markup { for Carl Stalling, Raymond Scott, Дмитрий ШостаковичN and Béla Bartók }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 4/4
  \partial 4.
  \tempo "Presto" 4=200
  s4. |
  s1 |
}

prefatoryMatter = {
  \key cis \major
  #(set-accidental-style 'modern-cautionary)
}


soprano = \relative c'' { \autoBeamOff
  \prefatoryMatter
  r4. |
  R1*5 |
  r2 r8 g8^\pp^\< a ais |
  b4^\p^\> ais a gis |
  g fis eis^\pp
}

sopranoWords = \lyricmode {
  he is the
  \repeat unfold 8 wiz
}

mezzo = \relative c' { \autoBeamOff
  \prefatoryMatter
  r4. |
  R1 |
  r2 r8 e8^\pp^\< fis g |
  gis4^\p^\> g fis eis |
  e dis d^\pp cis |
  r2 r8 cis^\< dis e |
  eis4^\p^\> e dis d |
  cis^\pp bis b ais |
  a gis g
}

mezzoWords = \lyricmode {
  he is the
  \repeat unfold 8 wiz
  he is the
  \repeat unfold 11 wiz
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  \clef "treble_8"
  r4. |
  r2 r8 d^\pp^\< e f |
  fis4^\p^\> eis e\pp dis |
  d cis bis b |
  ais a gis g |
  fis8 b^\< cis d dis4^\p^\> d |
  cis^\pp bis b ais |
  a gis g fis |
  eis e dis
}

altoWords = \lyricmode {
  he is the
  \repeat unfold 13 wiz
  he is the
  \repeat unfold 13 wiz
}

tenor = \relative c' { \autoBeamOff
  \clef "treble_8"
  \prefatoryMatter
  a8^\pp^\< b c |
  cis4^\p^\> bis b\pp ais |
  a gis g fis |
  eis e dis d |
  cis c b8^\< g' a ais |
  b4^\p^\> ais a^\pp gis |
  g fis eis e |
  dis d cis bis |
  b ais a
}

tenorWords = \lyricmode {
  he is the
  \repeat unfold 15 wiz
  he is the
  \repeat unfold 15 wiz
}

bass = \relative c' { \autoBeamOff
  \prefatoryMatter
  \clef bass
  r4. |
  R1*8 |
}

bassWords = \lyricmode {
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
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
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
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
    \new Staff = "tenorstaff" \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
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
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
      \override Script #'direction = #UP
      \override DynamicLineSpanner #'direction = #UP
      %\override Slur #'direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
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
      \override InstrumentName.self-alignment-X = #RIGHT
      \override InstrumentName.padding = #1.0
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
      \override Hairpin.stencil = ##f
      \override DynamicText.stencil = ##f
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
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
%{
    \new Staff \with { instrumentName = #"Glockenspiel" %shortInstrumentName = #"M."
} <<
      \new Voice = "glock" { << { \numericTimeSignature
        \glock
      } {
        \nothing
      } {
        \nothing
      }>> }
    >>
%}
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
