%%% RECURRENT "SOME" !!!

%{
  Mirku says...
  1) Use slurs AND beams instead of just beams.
  2) Beam according to measure
  3) LOOK INTO 7/8
  % 2.17.12 works
%}

%#(set-global-staff-size 14.14)
#(set-global-staff-size 15.87)

%%%%%% ending with E major
%%%%%% then D major
%%%%%% then B major (if happy)
%%%%%% then D major (why oh why)
%%%%%% C-major happy going down

\version "2.17.0"
\include "defs-devel.ly"

#(load "swing.scm")

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)

myred = \once \override NoteHead #'color = #red

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
  max-systems-per-page = #2
}

\header {
  title = "Finale: Sit Ozfårs Wundrföl Wysr"
  subtitle = "for Marie Perbost"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

prefatoryMatter = {
  \autoBeamOff
}

scorePrefatoryMatter = {
  \prefatoryMatter
}

midiPrefatoryMatter = {
  \prefatoryMatter
}

marks = {
  \tempo "Maestoso" 4=60
  s1*2 |
}

sopranoFinale = \relative c''' {
  \key b \major
  b1 ~ |
  b |
}

sopranoFinaleWords = \lyricmode {
  Oz.
}

mezzoFinale = \relative c'' {
  \key b \major
  r4 fis8 [ eis ] cis [ e ] \times 2/3 { dis [ b d ] } |
  \times 2/3 { b [ ais cis ] } \times 2/3 { a [ fis gis ] } \times 2/3 { e [ g f ] } \times 2/3 { fis [ d f ] }
}

mezzoFinaleWords = \lyricmode {
  Oz.
}

altoFinale = \relative c'' {  \key b \major
  b2 ~ b8 [ ais8 ] \times 2/3 { a [ eis gis ] }  |
  \times 2/3 { f [ fis g ] } 
}

altoFinaleWords = \lyricmode {
  Oz
}

tenorFinale = \relative c'' {
  \clef "treble_8"
  \key b \major
  r4 a8 [ gis ] e [ g ] \times 2/3 { fis [ cis e ] } |
  b1 |
}

tenorFinaleWords = \lyricmode {
  Oz.
}

bassFinale = \relative c' {
  \clef bass
  \key b \major
  b1 |
  \times 2/3 { g8 [ e' c ] } \times 2/3 { dis [ eis, d' ] } \times 2/3 { e, [ cis' g ] } \times 2/3 { a [ gis c, ] }
}

bassFinaleWords = \lyricmode {
  Oz.
}
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \sopranoFinale
      } {
	\scorePrefatoryMatter
        \marks
      } >> }
      \lyricsto "soprano" \new Lyrics {
        \sopranoFinaleWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzoFinale
      }
      \lyricsto "mezzo" \new Lyrics {
        \mezzoFinaleWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \altoFinale
      }
      \lyricsto "alto" \new Lyrics {
        \altoFinaleWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenorFinale
      }
      \lyricsto "tenor" \new Lyrics {
        \tenorFinaleWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \bassFinale
      }
      \lyricsto "bass" \new Lyrics {
        \bassFinaleWords
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
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\midiPrefatoryMatter
        \sopranoFinale
      } {
	\midiPrefatoryMatter
        \marks
      } >> }
      \lyricsto "soprano" \new Lyrics {
        \sopranoFinaleWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzoFinale
      }
      \lyricsto "mezzo" \new Lyrics {
        \mezzoFinaleWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \altoFinale
      }
      \lyricsto "alto" \new Lyrics {
        \altoFinaleWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenorFinale
      }
      \lyricsto "tenor" \new Lyrics {
        \tenorFinaleWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\midiPrefatoryMatter
        \bassFinale
      }
      \lyricsto "bass" \new Lyrics {
        \bassFinaleWords
      }
    >>
  >>
  \midi {}
}
