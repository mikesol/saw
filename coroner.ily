\header {
  title = \coronerTitle
  subtitle = \coronerDedication
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

%%% SCORE
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoCoronerFirst" { << { \numericTimeSignature
        \sopranoCoronerFirst
      } {
        \marksCoronerFirst
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoCoronerFirst" {
        \sopranoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoronerFirst" { << { \numericTimeSignature
        \mezzoCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoCoronerFirst" {
        \mezzoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoronerFirst" { << { \numericTimeSignature
        \altoCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoCoronerFirst" {
        \altoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoronerFirst" { << { \numericTimeSignature
        \tenorCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorCoronerFirst" {
        \tenorCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoronerFirst" { << { \numericTimeSignature
        \bassCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bassCoronerFirst" {
        \bassCoronerFirstWords
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

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \sopranoCoronerFirst \marksCoronerFirst >> }
      \new Voice = "2" { \voiceTwo \mezzoCoronerFirst }
      \new Voice = "3" { \voiceThree \altoCoronerFirst }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorCoronerFirst }
      \new Voice = "5" { \voiceTwo \bassCoronerFirst }
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
      \override Hairpin.direction = #UP
      \override DynamicText.direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override DynamicLineSpanner.direction = #UP
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
      \new Voice = "sopranoCoronerFirst" { << { \numericTimeSignature
        \sopranoCoronerFirst
      } {
        \marksCoronerFirst
      } >> }
      \new Lyrics \lyricsto "sopranoCoronerFirst" {
        \sopranoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoronerFirst" { \numericTimeSignature
        \mezzoCoronerFirst
      }
      \new Lyrics \lyricsto "mezzoCoronerFirst" {
        \mezzoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoronerFirst" { \numericTimeSignature
        \altoCoronerFirst
      }
      \new Lyrics \lyricsto "altoCoronerFirst" {
        \altoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoronerFirst" { \numericTimeSignature
        \tenorCoronerFirst
      }
      \new Lyrics \lyricsto "tenorCoronerFirst" {
        \tenorCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoronerFirst" { \numericTimeSignature
        \bassCoronerFirst
      }
      \new Lyrics \lyricsto "bassCoronerFirst" {
        \bassCoronerFirstWords
      }
    >>
  >>
  \midi {}
}
