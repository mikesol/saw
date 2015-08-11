\version "2.17.0"
\include "defs-devel.ly"
\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
  %max-systems-per-page = #2
}

#(ly:set-option 'point-and-click #f)

legero = \markup \italic "legero"

\header {
  title = "Come Out" %(1)"
  subtitle = \markup { for Massive Attack }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% first

nothing = {}

marksComeout = {
  \time 3/4
  \tempo "Andante, molto rubato" 4=128
  \partial 4 s4
  %%%%%%%
  s2.
}

prefatoryMatterComeout = {
  \key d \major
  #(set-accidental-style 'modern-cautionary)
  \autoBeamOff
}


sopranoComeout = \relative c' { \prefatoryMatterComeout
}

sopranoComeoutWords = \lyricmode {
}


mezzoComeout = \relative c' {   \prefatoryMatterComeout
}

mezzoComeoutWords = \lyricmode {
}

altoComeout = \relative c' {
  \prefatoryMatterComeout
}

altoComeoutWords = \lyricmode {
}

tenorComeout = \relative c' {   \prefatoryMatterComeout
  \clef "treble_8"
}

tenorComeoutWords = \lyricmode {
}

bassComeout = \relative c {   \prefatoryMatterComeout
  \clef "bass"
}

bassComeoutWords = \lyricmode {
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
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
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
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
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
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
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
#(set-global-staff-size 20)

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \sopranoComeout \marksComeout >> }
      \new Voice = "2" { \voiceTwo \mezzoComeout }
      \new Voice = "3" { \voiceThree \altoComeout }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorComeout }
      \new Voice = "5" { \voiceTwo \bassComeout }
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
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoComeout" { \numericTimeSignature
        \mezzoComeout
      }
      \new Lyrics \lyricsto "mezzoComeout" {
        \mezzoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoComeout" { \numericTimeSignature
        \altoComeout
      }
      \new Lyrics \lyricsto "altoComeout" {
        \altoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorComeout" { \numericTimeSignature
        \tenorComeout
      }
      \new Lyrics \lyricsto "tenorComeout" {
        \tenorComeoutWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
