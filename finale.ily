\header {
  title = "Finale: Sit Ozfårs Wndrföl Wysr"
  %subtitle = \markup \center-column { "for Marie Perbost" \normal-text \small "tu veux une finale ? voilà ta finale. t'es contente ?? t'es contente ?!?!? " }
  %subtitle = \markup \center-column { "for Marie Perbost" \normal-text \small "« un final, ça donne envie d'applaudir, pas de gerber »" }
  subtitle = \markup \center-column { "for Marie Perbost" }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName } <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\prefatoryMatterFinale
        \sopranoChorale
	\sopranoCinqVoix
	\sopranoFinalRepeat
        \sopranoLastNoteDraftTwo
      } {
        \marksChorale
	\marksCinqVoix
	\marksFinalRepeat
        \marksLastNoteDraftTwo
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoChoraleWords
	\sopranoCinqVoixWords
	\sopranoFinalRepeatWords
        \sopranoLastNoteDraftTwoWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName } <<
      \new Voice = "mezzo" { \numericTimeSignature
	\prefatoryMatterFinale
        \mezzoChorale
	\mezzoCinqVoix
	\mezzoFinalRepeat
        \mezzoLastNoteDraftTwo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoChoraleWords
	\mezzoCinqVoixWords
	\mezzoFinalRepeatWords
        \mezzoLastNoteDraftTwoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName } <<
      \new Voice = "alto" { \numericTimeSignature
	\prefatoryMatterFinale
        \altoChorale
	\altoCinqVoix
	\altoFinalRepeat
        \altoLastNoteDraftTwo
      }
      \new Lyrics \lyricsto "alto" {
        \altoChoraleWords
	\altoCinqVoixWords
	\altoFinalRepeatWords
        \altoLastNoteDraftTwoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName } <<
      \new Voice = "tenor" { \numericTimeSignature
	\prefatoryMatterFinale
        \tenorChorale
	\tenorCinqVoix
	\tenorFinalRepeat
        \tenorLastNoteDraftTwo
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorChoraleWords
	\tenorCinqVoixWords
	\tenorFinalRepeatWords
        \tenorLastNoteDraftTwoWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName } <<
      \new Voice = "bass" { \numericTimeSignature
	\prefatoryMatterFinale
        \bassChorale
	\bassCinqVoix
	\bassFinalRepeat
        \bassLastNoteDraftTwo
      }
      \new Lyrics \lyricsto "bass" {
        \bassChoraleWords
	\bassCinqVoixWords
	\bassFinalRepeatWords
        \bassLastNoteDraftTwoWords
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
      \override HorizontalBracket.direction = #UP
      \consists "Horizontal_bracket_engraver"
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
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
  \midi {}
}
%{
\pageBreak

\score {
  \new PianoStaff <<
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
        \prefatoryMatterFinale
        \sopranoChorale
        \sopranoCinqVoix
        \sopranoFinalRepeat
        \sopranoLastNoteDraftTwo
      } \\ {         \prefatoryMatterFinale
        \mezzoChorale
        \mezzoCinqVoix
        \mezzoFinalRepeat
        \mezzoLastNoteDraftTwo } \\ {         \prefatoryMatterFinale
        \altoChorale
        \altoCinqVoix
        \altoFinalRepeat
        \altoLastNoteDraftTwo } {
        \marksChorale
        \marksCinqVoix
        \marksFinalRepeat
        \marksLastNoteDraftTwo
      } >> }
    }
    \new Staff  {
      \new Voice = "tenor" { << { \numericTimeSignature
        \prefatoryMatterFinale
        \tenorChorale
        \tenorCinqVoix
        \tenorFinalRepeat
        \tenorLastNoteDraftTwo
      } \\ \\ {         \prefatoryMatterFinale
        \bassChorale
        \bassCinqVoix
        \bassFinalRepeat
        \bassLastNoteDraftTwo } {
      } >> }
    }
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
%}