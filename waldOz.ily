\header {
  %title = "wal'dOz"
  %title = "rain real come"
  subtitle = "for Mirkku"
  title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}

\score {
  <<
\new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \sopranoBeginning
        \sopranoRestarts
        \sopranoRamp
        \sopranoWinding
        \sopranoLarge
        \sopranoTriumphal
        \sopranoElan
        \sopranoSugar
        \sopranoOpera
        \sopranoRealcome
        \sopranoSurprises
        \sopranoWortspiel
        \sopranoCartoon
        \sopranoIfhap
        \sopranoProof
        \sopranoFinale
        \sopranoStutter
        \sopranoDenouement
      } {
   \uberMarksWO
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoBeginningWords
        \sopranoRestartsWords
        \sopranoRampWords
        \sopranoWindingWords
        \sopranoLargeWords
        \sopranoTriumphalWords
        \sopranoElanWords
        \sopranoSugarWords
        \sopranoOperaWords
        \sopranoRealcomeWords
        \sopranoSurprisesWords
        \sopranoWortspielWords
        \sopranoCartoonWords
        \sopranoIfhapWords
        \sopranoProofWords
        \sopranoFinaleWords
        \sopranoStutterWords
        \sopranoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzoBeginning
        \mezzoRestarts
        \mezzoRamp
        \mezzoWinding
        \mezzoLarge
        \mezzoTriumphal
        \mezzoElan
        \mezzoSugar
        \mezzoOpera
        \mezzoRealcome
        \mezzoSurprises
        \mezzoWortspiel
        \mezzoCartoon
        \mezzoIfhap
        \mezzoProof
        \mezzoFinale
        \mezzoStutter
        \mezzoDenouement
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoBeginningWords
        \mezzoRestartsWords
        \mezzoRampWords
        \mezzoWindingWords
        \mezzoLargeWords
        \mezzoTriumphalWords
        \mezzoElanWords
        \mezzoSugarWords
        \mezzoOperaWords
        \mezzoRealcomeWords
        \mezzoSurprisesWords
        \mezzoWortspielWords
        \mezzoCartoonWords
        \mezzoIfhapWords
        \mezzoProofWords
        \mezzoFinaleWords
        \mezzoStutterWords
        \mezzoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \altoBeginning
        \altoRestarts
        \altoRamp
        \altoWinding
        \altoLarge
        \altoTriumphal
        \altoElan
        \altoSugar
        \altoOpera
        \altoRealcome
        \altoSurprises
        \altoWortspiel
        \altoCartoon
        \altoIfhap
        \altoProof
        \altoFinale
        \altoStutter
        \altoDenouement
      }
      \new Lyrics \lyricsto "alto" {
        \altoBeginningWords
        \altoRestartsWords
        \altoRampWords
        \altoWindingWords
        \altoLargeWords
        \altoTriumphalWords
        \altoElanWords
        \altoSugarWords
        \altoOperaWords
        \altoRealcomeWords
        \altoSurprisesWords
        \altoWortspielWords
        \altoCartoonWords
        \altoIfhapWords
        \altoProofWords
        \altoFinaleWords
        \altoStutterWords
        \altoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenorBeginning
        \tenorRestarts
        \tenorRamp
        \tenorWinding
        \tenorLarge
        \tenorTriumphal
        \tenorElan
        \tenorSugar
        \tenorOpera
        \tenorRealcome
        \tenorSurprises
        \tenorWortspiel
        \tenorCartoon
        \tenorIfhap
        \tenorProof
        \tenorFinale
        \tenorStutter
        \tenorDenouement
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorBeginningWords
        \tenorRestartsWords
        \tenorRampWords
        \tenorWindingWords
        \tenorLargeWords
        \tenorTriumphalWords
        \tenorElanWords
        \tenorSugarWords
        \tenorOperaWords
        \tenorRealcomeWords
        \tenorSurprisesWords
        \tenorWortspielWords
        \tenorCartoonWords
        \tenorIfhapWords
        \tenorProofWords
        \tenorFinaleWords
        \tenorStutterWords
        \tenorDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \keepWithTag #'normal \removeWithTag #'piano \bassBeginning
        \bassRestarts
        \bassRamp
        \bassWinding
        \bassLarge
        \bassTriumphal
        \bassElan
        \bassSugar
        \bassOpera
        \bassRealcome
        \bassSurprises
        \bassWortspiel
        \bassCartoon
        \bassIfhap
        \bassProof
        \bassFinale
        \bassStutter
        \bassDenouement
      }
      \new Lyrics \lyricsto "bass" {
        \bassBeginningWords
        \bassRestartsWords
        \bassRampWords
        \bassWindingWords
        \bassLargeWords
        \bassTriumphalWords
        \bassElanWords
        \bassSugarWords
        \bassOperaWords
        \bassRealcomeWords
        \bassSurprisesWords
        \bassWortspielWords
        \bassCartoonWords
        \bassIfhapWords
        \bassProofWords
        \bassFinaleWords
        \bassStutterWords
        \bassDenouementWords
      }
    >>
  >>
%  \new PianoStaff <<
%    \new Staff << \uberMarksWO \giantKludgyRewriteRightHand >>
%    \new Staff \giantKludgyRewriteLeftHand
%  >>
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
%{
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
\midiBeginning
        \sopranoBeginning
        \sopranoRestarts
        \sopranoRamp
        \sopranoWinding
        \sopranoLarge
        \sopranoTriumphal
        \sopranoElan
        \sopranoSugar
        \sopranoOpera
        \sopranoRealcome
        \sopranoSurprises
        \sopranoWortspiel
        \sopranoCartoon
        \sopranoIfhap
        \sopranoProof
        \sopranoFinale
        \sopranoStutter
        \sopranoDenouement
      } {
\midiBeginning
        \uberMarksWO
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoBeginningWords
        \sopranoRestartsWords
        \sopranoRampWords
        \sopranoWindingWords
        \sopranoLargeWords
        \sopranoTriumphalWords
        \sopranoElanWords
        \sopranoSugarWords
        \sopranoOperaWords
        \sopranoRealcomeWords
        \sopranoSurprisesWords
        \sopranoWortspielWords
        \sopranoCartoonWords
        \sopranoIfhapWords
        \sopranoProofWords
        \sopranoFinaleWords
        \sopranoStutterWords
        \sopranoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
\midiBeginning        \mezzoBeginning
        \mezzoRestarts
        \mezzoRamp
        \mezzoWinding
        \mezzoLarge
        \mezzoTriumphal
        \mezzoElan
        \mezzoSugar
        \mezzoOpera
        \mezzoRealcome
        \mezzoSurprises
        \mezzoWortspiel
        \mezzoCartoon
        \mezzoIfhap
        \mezzoProof
        \mezzoFinale
        \mezzoStutter
        \mezzoDenouement
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoBeginningWords
        \mezzoRestartsWords
        \mezzoRampWords
        \mezzoWindingWords
        \mezzoLargeWords
        \mezzoTriumphalWords
        \mezzoElanWords
        \mezzoSugarWords
        \mezzoOperaWords
        \mezzoRealcomeWords
        \mezzoSurprisesWords
        \mezzoWortspielWords
        \mezzoCartoonWords
        \mezzoIfhapWords
        \mezzoProofWords
        \mezzoFinaleWords
        \mezzoStutterWords
        \mezzoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
\midiBeginning        \altoBeginning
        \altoRestarts
        \altoRamp
        \altoWinding
        \altoLarge
        \altoTriumphal
        \altoElan
        \altoSugar
        \altoOpera
        \altoRealcome
        \altoSurprises
        \altoWortspiel
        \altoCartoon
        \altoIfhap
        \altoProof
        \altoFinale
        \altoStutter
        \altoDenouement
      }
      \new Lyrics \lyricsto "alto" {
        \altoBeginningWords
        \altoRestartsWords
        \altoRampWords
        \altoWindingWords
        \altoLargeWords
        \altoTriumphalWords
        \altoElanWords
        \altoSugarWords
        \altoOperaWords
        \altoRealcomeWords
        \altoSurprisesWords
        \altoWortspielWords
        \altoCartoonWords
        \altoIfhapWords
        \altoProofWords
        \altoFinaleWords
        \altoStutterWords
        \altoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
\midiBeginning        \tenorBeginning
        \tenorRestarts
        \tenorRamp
        \tenorWinding
        \tenorLarge
        \tenorTriumphal
        \tenorElan
        \tenorSugar
        \tenorOpera
        \tenorRealcome
        \tenorSurprises
        \tenorWortspiel
        \tenorCartoon
        \tenorIfhap
        \tenorProof
        \tenorFinale
        \tenorStutter
        \tenorDenouement
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorBeginningWords
        \tenorRestartsWords
        \tenorRampWords
        \tenorWindingWords
        \tenorLargeWords
        \tenorTriumphalWords
        \tenorElanWords
        \tenorSugarWords
        \tenorOperaWords
        \tenorRealcomeWords
        \tenorSurprisesWords
        \tenorWortspielWords
        \tenorCartoonWords
        \tenorIfhapWords
        \tenorProofWords
        \tenorFinaleWords
        \tenorStutterWords
        \tenorDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
\midiBeginning        \keepWithTag #'normal \removeWithTag #'piano \bassBeginning
        \bassRestarts
        \bassRamp
        \bassWinding
        \bassLarge
        \bassTriumphal
        \bassElan
        \bassSugar
        \bassOpera
        \bassRealcome
        \bassSurprises
        \bassWortspiel
        \bassCartoon
        \bassIfhap
        \bassProof
        \bassFinale
        \bassStutter
        \bassDenouement
      }
      \new Lyrics \lyricsto "bass" {
        \bassBeginningWords
        \bassRestartsWords
        \bassRampWords
        \bassWindingWords
        \bassLargeWords
        \bassTriumphalWords
        \bassElanWords
        \bassSugarWords
        \bassOperaWords
        \bassRealcomeWords
        \bassSurprisesWords
        \bassWortspielWords
        \bassCartoonWords
        \bassIfhapWords
        \bassProofWords
        \bassFinaleWords
        \bassStutterWords
        \bassDenouementWords
      }
    >>
  \midi {}
}
%}