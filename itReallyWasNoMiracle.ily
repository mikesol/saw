\header {
  title = \itReallyWasNoMiracleTitle
  subtitle = \itReallyWasNoMiracleDedication
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatterItReallyWasNoMiracle
        \sopranoItReallyWasNoMiracle
      } {
	\scorePrefatoryMatterItReallyWasNoMiracle
        \marksItReallyWasNoMiracle
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsItReallyWasNoMiracle
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatterItReallyWasNoMiracle
        \mezzoItReallyWasNoMiracle
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsItReallyWasNoMiracle
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatterItReallyWasNoMiracle
        \altoItReallyWasNoMiracle
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsItReallyWasNoMiracle
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatterItReallyWasNoMiracle
        \tenorItReallyWasNoMiracle
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsItReallyWasNoMiracle
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatterItReallyWasNoMiracle
        \bassItReallyWasNoMiracle
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsItReallyWasNoMiracle
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
      \override DynamicLineSpanner.direction = #UP
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
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\midiPrefatoryMatterItReallyWasNoMiracle
        \sopranoItReallyWasNoMiracle
      } {
	\midiPrefatoryMatterItReallyWasNoMiracle
        \marksItReallyWasNoMiracle
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsItReallyWasNoMiracle
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatterItReallyWasNoMiracle
        \mezzoItReallyWasNoMiracle
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsItReallyWasNoMiracle
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatterItReallyWasNoMiracle
        \altoItReallyWasNoMiracle
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsItReallyWasNoMiracle
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatterItReallyWasNoMiracle
        \tenorItReallyWasNoMiracle
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsItReallyWasNoMiracle
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\midiPrefatoryMatterItReallyWasNoMiracle
        \bassItReallyWasNoMiracle
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsItReallyWasNoMiracle
      }
    >>
  >>
  \midi {}
}
