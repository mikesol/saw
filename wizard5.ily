\header {
  title = \wizardFiveTitle
  %subtitle = \markup { for Carl Stalling, Raymond Scott, Дмитрий ШостаковичN and Béla Bartók }
  subtitle = \wizardFiveDedication
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}
%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \removeWithTag #'midi \sopranoCircus
      } {
        \keepWithTag #'score { \removeWithTag #'midi \marksCircus }
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsCircus
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \removeWithTag #'midi \mezzoCircus
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsCircus
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \removeWithTag #'midi \altoCircus
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWordsCircus
      }
    >>
    \new Staff = "tenorstaff" \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \removeWithTag #'midi \tenorCircus
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsCircus
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \removeWithTag #'midi \bassCircus
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWordsCircus
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


%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \keepWithTag #'midi { \removeWithTag #'score \sopranoCircus }
      } {
        \keepWithTag #'midi { \removeWithTag #'score \marksCircus }
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsCircus
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \keepWithTag #'midi \mezzoCircus
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsCircus
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \keepWithTag #'midi \altoCircus
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsCircus
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \keepWithTag #'midi \tenorCircus
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsCircus
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \keepWithTag #'midi \bassCircus
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsCircus
      }
    >>
  >>
  \midi {}
}
