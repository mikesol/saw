\header {
  title = \brainTitle
  subtitle = \brainDedication
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
        \scorePrefatoryMatterBrain \sopranoBrain
      }  {
        \nothing
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsBrain
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \scorePrefatoryMatterBrain \mezzoBrain
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsBrain
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \scorePrefatoryMatterBrain \altoBrain
      } { \scorePrefatoryMatterBrain \marksBrain } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWordsBrain
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \scorePrefatoryMatterBrain \tenorBrain
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsBrain
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \scorePrefatoryMatterBrain \bassBrain
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWordsBrain
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
        \midiPrefatoryMatterBrain \sopranoBrain
      } {
        \midiPrefatoryMatterBrain \marksBrain
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsBrain
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \midiPrefatoryMatterBrain \mezzoBrain
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsBrain
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \midiPrefatoryMatterBrain \altoBrain
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsBrain
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \midiPrefatoryMatterBrain \tenorBrain
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsBrain
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)"  instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \midiPrefatoryMatterBrain \bassBrain
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsBrain
      }
    >>
  >>
  \midi {}
}
