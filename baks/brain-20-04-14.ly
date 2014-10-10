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
  \tempo "Swung" 4=52
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
  %\repeat unfold 65 \unfoldSwing 52
}

soprano = {
  \relative c'' \tripletFeel 8 {
    r4 |
    R1 |
    R1 |
    r2. \myred g8 aes |
    bes g ees f g ees4 f8 |
    g ees c d ees c4 ees8 |
    bes4 bes \myred d'8 c bes aes |
    g f \myred g aes bes g ees f |
    g ees4 f8 g ees bes aes |
    \myred d'8 ees f d bes c d bes ~ |
    bes c d bes \myred g aes bes g |
    ees f \myred g aes bes g ees f |
    g8 ees
  }
  \relative c'' {
    \times 2/3 { \myred g aes bes } \times 2/3 { g8 ees f } \times 2/3 { g8 ees4 ~ }
    \times 2/3 { ees8 f g } \times 2/3 { ees8 c d } \times 2/3 { ees c4 ~ } c8 ees |
    bes4 bes    \times 2/3 { \myred d'8 c bes } \times 2/3 {  aes g f }
  }
  \relative c' \tripletFeel 8 {
    ees8 ees ees ees
  }
  \relative c' {    
    ees8 \myred g16 aes bes g ees f |
    g16 ees8 f16 \times 4/5 { g16 ees g16 f ees16 } \times 4/5 { ees ees ees ees8 } \times 2/3 { r8 ees r } |
    r2 f'2 ~ | %r16 f'8. ~ f4 ~ |
    \times 2/3 { f8 [ f ees ] } \times 2/3 { d [ c bes ] } aes [ g ] bes [ a ] |

    %r16 g [ f ees d c bes aes ] g [ ees' d c bes aes g ees ] |
    \times 2/3 { f8 [ aes c ] } ees16 [ f, aes c ] g'8 [ f16 ees d c bes aes ] |
    %bes16 [ bes' a g f ees d c ] d [ g f ees d c b a ] |

    bes16 [ ees d c bes aes g f ]    g aes bes g ees f g ees
  }
  \tripletFeel 8 \relative c' {
    d8 c d c d c d ees |
    d4 g8 aes bes8 g ees d |
    ees4-. r4 r2 |
    r4. g8 f ees bes'4 | 
  }
  \relative c'' {
    ges4 fes \times 2/3 { g8 aes bes } \times 2/3 { g ees f }
    g16 ees8 f16 g ees c d ees c8. \times 2/3 { ees8 bes bes } |
    \times 2/3 { bes bes bes }
  }
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
  I'd un -- ra -- vel a -- ny rid -- dle
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny in -- di -- vi -- d'le
  In trou -- ble
  no -- ther Lin -- coln
  If I on -- ly had a brain.
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny
  If I on -- ly had a brain
  Oh
}

mezzo = {
  \relative c'' \tripletFeel 8 {
    \myred g8 aes |
    bes g ees f g ees4 f8 |
    g ees c d ees ces4 ees8 |
    bes bes bes bes bes2 ~ |
    bes4 \myred g8 aes bes g \myred ees'8 d |
    c4 c'8 bes aes g f ees |
    d d d' c bes aes g f |
    ees ees ees ees ees2 ~ |
    ees2. r4
    \myred bes'8 c d bes \myred g aes bes g |
    \myred g aes bes g ees f g ees ~ |
    ees g d d \myred bes'8 c d bes |
    \myred d ees f d bes4 \myred ees,8 d |
    c4 \times 2/3 { r8 \myred c'8 bes } aes8 g f ees |
    d8.
  }
  \relative c' {
    \myred d'16^\markup \italic "(not swung)"   c bes aes g   f ees ees ees    ees ees \myred g f^"!" |
    g^"|" g ees f \times 4/5 { g ees8 f16 g } \times 4/6 { ees c d ees c8 } \times 4/5 { ees16 bes bes bes bes } |
    bes8 ees16 bes    bes bes bes bes  ~ \times 2/3 { bes8 ees bes } \times 2/3 { r8 ees r } |
    ees'16 c8. ~
  }
  \tripletFeel 8 \relative c'' {
    \myred c4 ~ c8^\markup \italic "(swung)" bes c d |
    bes2. c4 |
    aes4 aes aes bes |
    g2.^\markup \italic "mit swing" g8 g |
    f8 ees f ees f ees f g |
    ees2 ~ ees8 ees g bes |
    c4-. r4 r8 g f ees |
    bes'2. g8 aes |
  }
  \tripletFeel 8 \relative c'' {
    ces aes ~ \times 2/3 { aes g f } d8 des'8 ~
  }
  \relative c'' {
    des8 ces16 des32 ces |
  }
  \tripletFeel 8 \relative c'' {
    bes8 g ~ \times 2/3 { g f ees } d d' \times 2/3 { c g bes } |
    aes g ~ \times 2/3 { g f ees } d c' ~ \times 2/3 { c bes aes } |
    \times 2/3 { g ees g } \times 2/3 { bes ees ces } d c g ges |
    f4 
  }
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
  For a -- ny
  I'd un -- ra -- vel
  I'd un -- ra -- vel an
  With the thoughts I'd be think -- in'
  I could be 'no -- ther Lin -- coln
  If I on -- ly had a brain
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny in -- di -- vi -- d'le
  In trou -- ble or in pain
  In trou -- ble or in pain
  In trou
  Oh
}

alto = {
  \relative c' \tripletFeel 8 {
    \clef "treble_8"
    r4 |
    R1 |
    r4 \myred g8 aes bes ces4 ces8 |
    bes4 \myred g8 aes bes g ees f |
    g8 ees4 f8 ees4 g |
    aes4 aes'8 g f ees d c |
    bes aes g aes bes c d c |
    bes aes g f ees ees ees ees |
    ees4 \myred g8 aes bes g \myred g'8 aes |
    g^"!" g ees f g ees4 f8 |
    g ees c d ees c4 ees8 |
    \myred bes8 c d bes \myred d8 ees f d %\myred g aes bes g |
    bes c d bes \myred ees8 d c4 |
    c'8 bes aes g f ees d c |
  }
  \relative c'' {
    \times 2/3 { \myred d c bes } \times 2/3 {  aes \myred d, c } \times 2/3 { bes aes g }
  }
  \tripletFeel 8 \relative c'' { \myred g aes | 
    bes8 g ees f g ees4 f8 |
    g ees c d \times 2/3 { ees4 g8 } \times 2/3 { r8 ees r } |
  }
  \relative c' {
    r8 ees16 g \times 2/3 { bes4 ees,8 } \times 2/3 { r8 bes4 ~ } bes8 a  |
    %r8 ees16 g \times 2/3 { bes4 ees,8 } \times 2/3 { r8 a8 aes } ges8 bes |
    %f8 d^"oh" aes'16 g^"tell" f f^"u" \times 4/5 { ees16^"y" g^"I" f ees d^"u" } ees8^"y" d16 bes |
    %c8 ges' f c bes d f f |
    %\times 2/3 { d4 f16 d } \times 4/6 { c4 d16 aes } bes16 [ ees d c ] bes8 ees |
  }
  \tripletFeel 8 \relative c'' {
    \myred bes8 g ees f g ees4 f8 |
    g ees c d ees c4 ees8 |
    bes bes bes bes bes4 ees, |
    c'2 ~ c8 b c d |
    bes8 g' ees f g ees4 f8 |
    g ees c d ees c4 ees8 |
    bes bes bes bes bes g'8 f ees |
    d4. c8 ~ c f8 ~ f4 |
  }
  \relative c'' {
    g,16 aes bes g   ees f g ees   f g ees c \times 2/3 { d8 ees c } |
    \times 2/3 { ees8 bes bes } \times 2/3 { bes bes bes }
  }
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
  I'd un -- ra -- vel a -- ny rid -- dle
  With the thoughts I'd be think -- in'
  I could be a -- no -- ther Lin -- coln
  no -- ther Lin -- coln If
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny in -- di -- vi -- d'le
  Oh
}

tenor = {
  \relative c' \tripletFeel 8 {
    \clef "treble_8"
    r4 |
    r2. \myred g8 aes |
    bes g ees f g aes4 ces8 |
    \myred bes^"(!)" g ees f g ees4 f8 |
    g ees c d ees c4 d8 |
    ees4 \myred aes8 bes c aes f g |
    aes f4. ~ f4 r |
    d'8 c bes aes g4 \myred g8 aes |
    bes g ees d c ees4 f8 |
    g4 \myred g8 aes bes g \myred g aes |
    bes g ees f g ees \myred g aes |
    bes g ees f g ees \myred g aes |
    bes g ees f g ees4 d8 |
    ees8 d c4 \times 2/3 { r8 \myred c'8 bes } aes16 g f ees |
    f4 d \myred d'8 c bes aes |
    g ees c d ees c \myred g' aes |
    bes g ees f g4 \times 2/3 { bes8 r4 } |
  }
  \relative c'' {
    r4 g4 r16 ges8. ~ \times 4/6 { ges16 f [ ees ] d [ c bes ] } |
    aes8 [ ees ] g [ bes ] d16 [ ees, g bes ] ees [ d c bes ] |
    aes8 [ g' ] f [ ees ] c [ bes ] aes' [ d, ~ ] |
    \times 2/3 { d [ ees f ] } \times 2/3 { d [ bes c ] } \times 2/3 { d4 bes4 c, } |
  }
  \tripletFeel 8 \relative c' {
    aes2 ~ aes8 g aes bes |
    g2. aes4 |
    a4-. r4 r4. g8 |
    f ees c'8 aes f g aes f |
  }
  \relative c' {
    c16 g8 f16 ees g bes aes g bes8. \times 2/3 { aes8 g bes } |
    \times 4/5 { d16 c bes d8 } bes ees
   }
}

tenorWords = \lyricmode {
  I could wile a -- way the ho -- urs
  could wile a -- way the ho -- urs
  Con -- fer -- rin' with the flow -- ers
  Con -- sul
  I could wile a -- way the ho -- urs
  bu -- sy hat -- chin'
  If
  I could wile a -- way the ho -- urs
  Con -- fer
  I'd un -- ra -- vel
  I'd un -- ra -- vel a -- ny rid -- dle
  I'd un -- ra -- vel a -- ny rid -- dle
  I'd un -- ra -- vel a -- ny rid -- dle
  For
  With the thoughts I'd be think -- in'
  I could be a -- no -- ther Lin -- coln
  a -- ny in -- di -- vi -- d'le
  I'd un -- ra -- vel a -- ny rid
  Oh
}

bass = {
  \relative c' \tripletFeel 8 {
    \clef bass
    r4 |
    r4 \myred g8 aes bes g ees d |
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
    ees2 aes,4 bes |
    g ees ees' \times 2/3 { r8 ees r } |
  }
  \relative c {
    r8. aes16^\markup \italic "(not swung)" ~ aes4 a4 f |
    bes4 g c g8 ges |
    %f16 [ ees' d c bes aes g f ] f' [ ees d c ] bes [ aes g f ]
    f4 f f16 [ ees' d c ] bes [ aes g f ]
    \times 4/5 { g8 [ aes bes c d ] } ees4 aes,8 bes |
    \times 2/3 { c8 aes f } \times 2/3 { g aes f } g4 d'8 g, |
    c4. d8 ees8 c g ges |
    f4-. r4 r2 |
   }
   \tripletFeel 8 \relative c {
    r8 g f ees bes'4. c8 |
    %d4 g,8 ges8 f4 fis |
    %\times 4/5 { g8 ees' g,16 } \times 4/5 { aes bes g ees f } g ees8. ~ \times 2/3 { ees8 f g } |
    %aes4 bes f d' |
    %\times 2/3 { bes8 g ees } \times 2/3 { f g ees ~ } \times 2/3 { ees f g } \times 2/3 { ees' c d }
    %\times 4/5 { des8 c e g, c } \times 4/5 { ges' fes g bes, g } |
    %\times 2/3 { aes8 bes f } \times 2/3 { ees' g, bes } aes16 g' f ees d c bes aes |
    %g ees' d c bes aes g f g ees8. ~ ees4 |
   }
}

bassWords = \lyricmode {
  I could wile a -- way the ho -- urs I
  Con -- fer -- rin' with the rain
  I'd be scratch -- in'
  If I on -- ly had a brain
  I'd un -- ra -- vel
  In trou -- ble pain
  With thoughts I'd be a brain
  un -- ra -- vel a -- ny
  Oh

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
