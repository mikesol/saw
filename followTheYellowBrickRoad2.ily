\header {
  title = \followTheYellowBrickRoadTwoTitle
  subtitle = \followTheYellowBrickRoadTwoDedication
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatterYBR
        \sopranoYBR
      } {
	\scorePrefatoryMatterYBR
        \marksYBR
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsYBR
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatterYBR
        \mezzoYBR
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsYBR
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatterYBR
        \altoYBR
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsYBR
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatterYBR
        \tenorYBR
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsYBR
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatterYBR
        \bassYBR
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsYBR
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
	\midiPrefatoryMatterYBR
        \sopranoYBR
      } {
	\midiPrefatoryMatterYBR
        \marksYBR
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsYBR
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatterYBR
        \mezzoYBR
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsYBR
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatterYBR
        \altoYBR
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsYBR
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatterYBR
        \tenorYBR
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsYBR
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\midiPrefatoryMatterYBR
        \bassYBR
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsYBR
      }
    >>
  >>
  \midi {}
}
