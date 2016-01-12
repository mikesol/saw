\header {
  title = \comeOutTitle
  subtitle = \comeOutDedication
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}
%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoComeout" { << { \numericTimeSignature
        \sopranoComeout
      } {
        \marksComeout
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoComeout" {
        \sopranoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoComeout" { << { \numericTimeSignature
        \mezzoComeout
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoComeout" {
        \mezzoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoComeout" { << { \numericTimeSignature
        \altoComeout
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoComeout" {
        \altoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorComeout" { << { \numericTimeSignature
        \tenorComeout
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorComeout" {
        \tenorComeoutWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassComeout" { << { \numericTimeSignature
        \bassComeout
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bassComeout" {
        \bassComeoutWords
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override BendAfter.after-line-breaking = #kill-second-spanner
      \override TupletNumber #'text = #tuplet-number::calc-fraction-text
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \override DynamicLineSpanner.direction = #UP
      \remove "Forbid_line_break_engraver"
      %tupletFullLength = ##t
      %tupletFullLengthNote = ##t
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

%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoComeout" { << { \numericTimeSignature
        \sopranoComeout
      } {
        \marksComeout
      } >> }
      \new Lyrics \lyricsto "sopranoComeout" {
        \sopranoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoComeout" { \numericTimeSignature
        \mezzoComeout
      }
      \new Lyrics \lyricsto "mezzoComeout" {
        \mezzoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoComeout" { \numericTimeSignature
        \altoComeout
      }
      \new Lyrics \lyricsto "altoComeout" {
        \altoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorComeout" { \numericTimeSignature
        \tenorComeout
      }
      \new Lyrics \lyricsto "tenorComeout" {
        \tenorComeoutWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassComeout" { \numericTimeSignature
        \bassComeout
      }
      \new Lyrics \lyricsto "bassComeout" {
        \bassComeoutWords
      }
    >>
  >>
  \midi {}
}
