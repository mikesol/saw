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
  title = "If I Only Had a Brain"
  subtitle = "for me"
  %title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}

prefatoryMatter = {
  \key ees \major
  \autoBeamOff
  \tempo 4=52
}

scorePrefatoryMatter = {
  \prefatoryMatter
  \partial 4
}

midiPrefatoryMatter = {
  \prefatoryMatter
  %r2.
  \partial 4
}

marks = {
  \repeat unfold 65 \unfoldSwing 52
}

soprano = \relative c'' {
  r4 |
  R1 |
  R1 |
  r2. g8 aes |
  bes g ees f g ees4 f8 |
  g ees c d ees c4 ees8 |
  bes4 bes d'8 c bes aes |
  g f g aes bes g ees f |
  g ees4 f8 g ees bes aes |
  \myred d'8 ees f d bes c d bes ~ |
  bes c d bes \myred g aes bes g |
  ees f \myred g aes bes g ees f |
  g8 ees \myred \times 2/3 { g aes bes } g16 ees f ees ~ ees4 ~ |
  \times 2/3 { ees8 f g } ees4 c d |
  ees c2 ees4 |
  bes4 bes bes bes |

}

sopranoWords = \lyricmode {
  I could wile a -- way the ho -- urs
  Con -- fer -- rin' with the flow -- ers
  my thoughts were
  bu -- sy hat -- chin' if I
  I could wile a -- way the ho -- urs
  Con -- fer -- rin' with the
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny
  I'd un -- ra -- vel a -- ny
  I'd un -- ra -- vel a -- ny
}

mezzo = \relative c'' {
  g8 aes |
  bes g ees f g ees4 f8 |
  g ees c d ees ces4 ees8 |
  bes bes bes bes bes2 ~ |
  bes4 g8 aes bes g ees'8 d |
  c4 c'8 bes aes g f ees |
  d d d' c bes aes g f |
  ees ees ees ees ees2 ~ |
  ees2. r4
  \myred bes'8 c d bes \myred g aes bes g |
  \myred g aes bes g ees f g ees ~ |
  ees g d d \myred bes'8 c d bes |
  \myred d ees f d bes4 ees,8 d |
  c4 \times 2/3 { r8 c'8 bes } aes16 g f ees d c d8 ~ |
  d d16 d'   c bes aes g   f ees ees ees    ees ees g aes |
  bes g ees f g ees8 f16 g ees c d ees8 ees16 |
  %bes g ees f g ees4 f8 |
  %g ees c d ees4 ees |
}

mezzoWords = \lyricmode {
  I could wile a -- way the ho -- urs
  Con -- fer -- rin' with the flow -- ers
  Con -- sul -- tin' with the rain
  I could wile a
  And my head I'd be scratch -- in'
  While my thoughts were bu -- sy hat -- chin'
  If I on -- ly had a brain

  I'd un -- ra -- vel
  I'd un -- ra -- vel
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny in -- di -- vi -- d'le
  In trou -- ble or in pain
  %With the thoughts I'd be think -- in'
  %I could be a -- no -- ther Lin -- coln
  %If I on -- ly had a brain
}

alto = \relative c' {
  \clef "treble_8"
  r4 |
  R1 |
  r4 g8 aes bes ces4 ces8 |
  bes4 g8 aes bes g ees f |
  g8 ees4 f8 ees4 g |
  aes4 aes'8 g f ees d c |
  bes aes g aes bes c d c |
  bes aes g f ees ees ees ees |
  ees4 g8 aes bes g \myred g'8 aes |
  bes g ees f g ees4 f8 |
  g ees c d ees c4 ees8 |
  \myred bes8 c d bes \myred d8 ees f d %\myred g aes bes g |
  bes c d bes ees8 d c4 |
  c'8 bes aes g f ees d c |
  d' c bes aes g f ees ees | 
  ees ees ees2. |
  s1 |
}

altoWords = \lyricmode {
  I could wile I could wile
  I could wile a -- way the ho -- urs
  Con -- fer -- in'
  head I'd be scratch -- in'
  While my thoughts were bu -- sy hat -- chin'
  bu -- sy hat -- chin' if I on -- ly had a brain
  I'd un -- ra -- vel
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny in -- di -- vi -- d'le
  In
  I'd un -- ra -- vel
  I'd un -- ra -- vel
}

tenor = \relative c' {
  \clef "treble_8"
  r4 |
  r2. g8 aes |
  bes g ees f g aes4 ces8 |
  bes g ees f g ees4 f8 |
  g ees c d ees c4 d8 |
  ees4 aes8 bes c aes f g |
  aes f4. ~ f4 r |
  d'8 c bes aes g4 g8 aes |
  bes g ees d c ees4 f8 |
  g4 \myred g8 aes bes g \myred g aes |
  bes g ees f g ees \myred g aes |
  bes g ees f g ees \myred g aes |
  bes g ees f g ees4 d8 |
  ees8 d c4 c'8 bes aes g |
  f ees d4 d'8 c bes aes |
  g ees c d ees c g' aes |
  bes g ees f g2 |
}

tenorWords = \lyricmode {
  I could wile a -- way the ho -- urs
  Con -- fer -- rin' with the flow -- ers
  Con -- fer
  I'd be scratch -- in'
  While my thoughts were bu -- sy hat -- chin'
  If
  I'd un -- ra -- vel a -- ny rid -- dle
  the rain
  I'd un -- ra -- vel
  I'd un -- ra -- vel a -- ny rid -- dle
  I'd un -- ra -- vel a -- ny 
  I'd un -- ra -- vel  
}

bass = \relative c' {
  \clef bass
  r4 |
  r4 g8 aes bes g ees d |
  c2 ces4 aes8 f |
  g2 c |
  f,2 bes |
  aes2 ~ \times 2/3 { aes4 c f, } |
  bes2 g |
  c2 f,2 |
  bes g |
  f bes |
  ees4 \myred g,8 aes bes g bes4 |
  f2 bes |
  ees g, |
  aes c |
  f, bes |
  ees1 |
 
}

bassWords = \lyricmode {
  I could wile a -- way the ho -- urs I
  Con -- fer -- rin' with the rain
  I would be if
  if I on
}
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \soprano
      } {
	\scorePrefatoryMatter
        \marks
      } >> }
      \lyricsto "soprano" \new Lyrics {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzo
      }
      \lyricsto "mezzo" \new Lyrics {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \alto
      }
      \lyricsto "alto" \new Lyrics {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      }
      \lyricsto "tenor" \new Lyrics {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \bass
      }
      \lyricsto "bass" \new Lyrics {
        \bassWords
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
        \soprano
      } {
	\midiPrefatoryMatter
        \marks
      } >> }
      \lyricsto "soprano" \new Lyrics {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzo
      }
      \lyricsto "mezzo" \new Lyrics {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \alto
      }
      \lyricsto "alto" \new Lyrics {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenor
      }
      \lyricsto "tenor" \new Lyrics {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\midiPrefatoryMatter
        \bass
      }
      \lyricsto "bass" \new Lyrics {
        \bassWords
      }
    >>
  >>
  \midi {}
}
