\header {
  title = \merryFastTwoTitle
  subtitle = \merryFastTwoDedication
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}
%%% SCORE

\score {
  \new ChoirStaff <<
    %\new DrumStaff \drummode { \repeat unfold 32 { r4 hhc r4 hhc } }
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \altoFP
      } {
        \marksFP
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWordsFP
      }
    >>
    \new Staff \with { printPartCombineTexts = ##f instrumentName = \markup \right-column { "Bitch" Dörty "Fakbyd" } %shortInstrumentName = #"R."
} << \new Voice { \partcombine
      { \numericTimeSignature
        \compFP
      } {
        \tenMelFP
      } }
    \new NullVoice = "comp" \compFP
    \new Lyrics \lyricsto "comp" {
      \compWordsFP
    } >>
    \new Staff = "realBass" \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \bassFP
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWordsFP
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


%%% SCORE
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"(B.)" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \sopranoMoLSecondPart
      } {
        \marksMoLSecondPart
      } {
        \nothingMoLSecondPart
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsMoLSecondPart
      }
    >>
    \new Staff \with { instrumentName = #"(D.)" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \mezzoMoLSecondPart
      } {
        \nothingMoLSecondPart
      } >> }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsMoLSecondPart
      }
    >>
    \new Staff \with { instrumentName = #"(T.)" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \altoMoLSecondPart
      } {
        \nothingMoLSecondPart
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWordsMoLSecondPart
      }
    >>
    \new Staff \with { instrumentName = #"(F.)" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \tenorMoLSecondPart
      } {
        \nothingMoLSecondPart
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsMoLSecondPart
      }
    >>
    \new Staff = "realBass" \with { instrumentName = #"(W.)" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \bassMoLSecondPart
      } {
        \nothingMoLSecondPart
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWordsMoLSecondPart
      }
    >>
  >>
  \layout {
    indent = #0
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
<<
  \transpose c c \new ChoirStaff <<
    \new DrumStaff \drummode { \midihead s1*3 \repeat unfold 97 { r4 hhc r4 hhc } }
    \new Staff \with { midiInstrument = #"tenor sax" instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \midihead \altoFP
      }
      { \midihead \marksFP }
      \new Lyrics \lyricsto "alto" {
        \altoWordsFP
      }
    >>
    \new Staff \with { midiInstrument = #"baritone sax" instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "comp" { \numericTimeSignature
        \midihead \compFP
      }
      \new Lyrics \lyricsto "comp" {
        \compWordsFP
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)" instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \midihead \bassFP
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsFP
      }
    >>
  >>
  \transpose c c \new ChoirStaff <<
    \new Staff \with { midiInstrument = #"alto sax" instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \midihead #(skip-of-length marksFP) \sopranoMoLSecondPart
      } {
        \midihead #(skip-of-length marksFP) \marksMoLSecondPart
      } >> }
    >>
    \new Staff \with { midiInstrument = #"trumpet" instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \midihead #(skip-of-length marksFP) \mezzoMoLSecondPart
      }
    >>
    \new Staff \with { midiInstrument = #"tenor sax" instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \midihead #(skip-of-length marksFP) \altoMoLSecondPart
      }
    >>
    \new Staff \with { midiInstrument = #"baritone sax" instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \midihead #(skip-of-length marksFP) \tenorMoLSecondPart
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)" instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \midihead #(skip-of-length marksFP) \bassMoLSecondPart
      }
    >>
  >>
>>
  \midi {}
}