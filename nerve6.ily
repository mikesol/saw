\header {
  title = \nerveSixTitle
  dedication = \nerveSixDedication
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatterNerve
        \sopranoNerve
      } {
	\scorePrefatoryMatterNerve
        \marksNerve
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsNerve
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatterNerve
        \mezzoNerve
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsNerve
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatterNerve
        \altoNerve
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsNerve
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatterNerve
        \tenorNerve
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsNerve
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatterNerve
        \bassNerve
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsNerve
      }
    >>
%{
%}
  >>
  \layout {
    \context {
      \Voice
      %\override PhrasingSlur #'style = #'dotted
      \override PhrasingSlur.dash-definition = #'((0 1 0.4 0.75))
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

%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\midiPrefatoryMatterNerve
        \sopranoNerve
      } {
	\midiPrefatoryMatterNerve
        \marksNerve
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsNerve
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatterNerve
        \mezzoNerve
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsNerve
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatterNerve
        \altoNerve
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsNerve
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatterNerve
        \tenorNerve
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsNerve
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\midiPrefatoryMatterNerve
        \bassNerve
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsNerve
      }
    >>
  >>
  \midi {}
}
