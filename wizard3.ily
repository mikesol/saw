\header {
  title = "The Wonderful Wizard of Oz" %(1)"
  subtitle = \markup { for Art Tatum and The Bird }
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
        \sopranoWizardThree
      }  {
        \nothing
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsWizardThree
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \mezzoWizardThree
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsWizardThree
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \altoWizardThree
      } { \marksWizardThree } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWordsWizardThree
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \tenorWizardThree
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsWizardThree
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \bassWizardThree
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWordsWizardThree
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
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}

%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << {  \numericTimeSignature
        \sopranoWizardThree
      } {
        \marksWizardThree
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsWizardThree
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzoWizardThree
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsWizardThree
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \altoWizardThree
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsWizardThree
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenorWizardThree
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsWizardThree
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)"  instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \bassWizardThree
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsWizardThree
      }
    >>
  >>
  \midi {}
}
