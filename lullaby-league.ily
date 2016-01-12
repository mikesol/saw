\header {
  title = \lullabyLeagueTitle
  subtitle = \lullabyLeagueDedication
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoLullaby" { << { \numericTimeSignature
        \sopranoLullaby
      } {
        \marksLullaby
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoLullaby" {
        \sopranoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoLullaby" { << { \numericTimeSignature
        \mezzoLullaby
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoLullaby" {
        \mezzoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoLullaby" { << { \numericTimeSignature
        \altoLullaby
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoLullaby" {
        \altoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorLullaby" { << { \numericTimeSignature
        \tenorLullaby
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorLullaby" {
        \tenorLullabyWords
      }
    >>
%    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
%} <<
%      \new Voice = "bassLullaby" { << { \numericTimeSignature
%        \bassLullaby
%      } {
%        \nothing
%      } >> }
%      \new Lyrics \lyricsto "bassLullaby" {
%        \bassLullabyWords
%      }
%    >>
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
      \new Voice = "1" { \voiceOne << \sopranoLullaby \marksLullaby >> }
      \new Voice = "2" { \voiceTwo \mezzoLullaby }
      \new Voice = "3" { \voiceThree \altoLullaby }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorLullaby }
      \new Voice = "5" { \voiceTwo \bassLullaby }
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
      \new Voice = "sopranoLullaby" { << { \numericTimeSignature
        \sopranoLullaby
      } {
        \marksLullaby
      } >> }
      \new Lyrics \lyricsto "sopranoLullaby" {
        \sopranoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoLullaby" { \numericTimeSignature
        \mezzoLullaby
      }
      \new Lyrics \lyricsto "mezzoLullaby" {
        \mezzoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoLullaby" { \numericTimeSignature
        \altoLullaby
      }
      \new Lyrics \lyricsto "altoLullaby" {
        \altoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorLullaby" { \numericTimeSignature
        \tenorLullaby
      }
      \new Lyrics \lyricsto "tenorLullaby" {
        \tenorLullabyWords
      }
    >>
%    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
%} <<
%      \new Voice = "bassLullaby" { \numericTimeSignature
%        \bassLullaby
%      }
%      \new Lyrics \lyricsto "bassLullaby" {
%        \bassLullabyWords
%      }
%    >>
  >>
  \midi {}
}
