\header {
  title = "Optimistic Voices"
  subtitle = \markup { for nobody in particular }
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
        \sopranoOptimistic
      } {
        \marksOptimistic
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsOptimistic
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \mezzoOptimistic
      } {
        \marksOptimistic
      } >> }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsOptimistic
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \altoOptimistic
      } {
        \marksOptimistic
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWordsOptimistic
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \tenorOptimistic
      } {
        \marksOptimistic
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsOptimistic
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \key ees \major \bassOptimistic
      } {
        
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWordsOptimistic
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \override DynamicLineSpanner #'direction = #UP
      %\override Slur #'direction = #UP
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
        \sopranoOptimistic
      } {
        \marksOptimistic
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsOptimistic
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzoOptimistic
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsOptimistic
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \altoOptimistic
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsOptimistic
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenorOptimistic
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsOptimistic
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \bassOptimistic
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsOptimistic
      }
    >>
  >>
  \midi {}
}
