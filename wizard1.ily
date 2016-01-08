\header {
  title = "Ouverture: The Wonderful Wizard of Oz" %(1)"
  subtitle = \markup { for Bill Evans, William Schuman, and Hugo Wolf }
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
        \sopranoWizardOne
      } {
        \marksWizardOne
      } { %{\annotations%} } {
        \dynamicsGlobalWizardOne
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsWizardOne
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \mezzoWizardOne
      } {
        \dynamicsGlobalWizardOne
      } >> }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsWizardOne
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \altoWizardOne
      } {
        \dynamicsGlobalWizardOne
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWordsWizardOne
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \tenorWizardOne
      } {
        \dynamicsGlobalWizardOne
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsWizardOne
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \bassWizardOne
      } {
        \dynamicsGlobalWizardOne
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWordsWizardOne
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

%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \sopranoWizardOne
      } {
        \marksWizardOne
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsWizardOne
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzoWizardOne
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsWizardOne
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \altoWizardOne
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsWizardOne
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenorWizardOne
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsWizardOne
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \bassWizardOne
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsWizardOne
      }
    >>
  >>
  \midi {}
}
