\header {
  title = "The Lollipop Guild" %(1)"
  subtitle = \markup { for Mark Applebaum }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon and Mirjam Solomon"
}
%%% SCORE
\markup \override #'(line-width . 120) \column {
  \line { 1. Inhaled. 2. Slightly flat. 3. Smoky. 4. Yodeled.
  5. Bluer. 6. Whispered. 7. Disruptive. 8. Curios. }
  \line { 9. Glutteral. 10. Col legno battuto. 11. Anal. 12. Rich in phlegm. 13. Lacking breath support. }
  \line { 14. Overintellectualized. 15. Negationist. 16. Dans le style de l'ensemble 101.
  17. Unrecognizable as music. 18. In the pocket. }
}


\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoLollipop" { << { \numericTimeSignature \accidentalStyle dodecaphonic
        \sopranoLollipop
      } {
        \marksLollipop
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoLollipop" {
        \sopranoLollipopWords
      }
    >>
\new StaffGroup \with { \override SystemStartBracket.stencil = ##f }  <<
    \new Staff = "ossiaTwo" \with {
    \remove "Time_signature_engraver"
    \hide Clef
    fontSize = #-5
    \override StaffSymbol.staff-space = #(magstep -5)
    \override StaffSymbol.thickness = #(magstep -5)
  }
  { \ossiaTwo }
    \new Staff = "ossia" \with {
    \remove "Time_signature_engraver"
    \hide Clef
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
  }
  { \ossiaOne }
 
    \new Staff = "mezzy" \with { instrumentName = \ttoName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoLollipop" { << { \numericTimeSignature \accidentalStyle dodecaphonic
        \mezzoLollipop
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoLollipop" {
        \mezzoLollipopWords
      }
    >>
>>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoLollipop" { << { \numericTimeSignature \accidentalStyle dodecaphonic
        \altoLollipop
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoLollipop" {
        \altoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorLollipop" { << { \numericTimeSignature \accidentalStyle dodecaphonic
        \tenorLollipop
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorLollipop" {
        \tenorLollipopWords
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \consists "Balloon_engraver"
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
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
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
      \override BalloonTextItem.annotation-balloon = ##f
      \override BalloonTextItem.Y-extent = ##f
      \override BalloonTextItem.X-extent = ##f
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
      \new Voice = "1" { \voiceOne << \sopranoLollipop \marksLollipop >> }
      \new Voice = "2" { \voiceTwo \mezzoLollipop }
      \new Voice = "3" { \voiceThree \altoLollipop }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorLollipop }
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
      \override VerticalAxisGroup.remove-first = ##t
      \RemoveEmptyStaves
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
      \new Voice = "sopranoLollipop" { << { \numericTimeSignature
        \sopranoLollipop
      } {
        \marksLollipop
      } >> }
      \new Lyrics \lyricsto "sopranoLollipop" {
        \sopranoLollipopWords
      }
    >>
    \new Staff = "mezzy" \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoLollipop" { \numericTimeSignature
        \mezzoLollipop
      }
      \new Lyrics \lyricsto "mezzoLollipop" {
        \mezzoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoLollipop" { \numericTimeSignature
        \altoLollipop
      }
      \new Lyrics \lyricsto "altoLollipop" {
        \altoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorLollipop" { \numericTimeSignature
        \tenorLollipop
      }
      \new Lyrics \lyricsto "tenorLollipop" {
        \tenorLollipopWords
      }
    >>
  >>
  \midi {}
}
