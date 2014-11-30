\version "2.19.0"
\include "defs-devel.ly"

marD = \markup \null
elsD = \markup \null
mikD = \markup \null
rynZ = \markup \null
desD = \markup \null

#(set-global-staff-size 15.87)
autoBeamInstruction = \autoBeamOn

solo = \markup \italic "solo"
psolo = \markup \italic "(solo)"
skat = \markup \italic "sit skat"
shoot = \markup \italic "SYT"

\header {
  title = "If I Only Had the Nerve"
  subtitle = "for the Real Group"
  %title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}
\paper {
  #(define fonts
    (set-global-fonts
    #:music "lilyjazz"
    #:brace "lilyjazz"
    #:roman "LilyJAZZText"
    #:sans "LilyJAZZChord"
    #:factor (/ staff-height pt 20)
  ))
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
  max-systems-per-page = #2
  %oddHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
  %evenHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
}


#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)

railroad =  {
  \once \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
  \breathe
}
myred = \once \override NoteHead #'color = #red

php = \once \override Hairpin.stencil = #(parenthesize-callback ly:hairpin::print)

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 1\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
}

prefatoryMatter = {
  \key bes \major
  \autoBeamInstruction
  \time 12/8
}

scorePrefatoryMatter = {
  \prefatoryMatter
  \partial 8
}

midiPrefatoryMatter = {
  \prefatoryMatter
  \partial 8
}

theme = \relative c {
  cis8 |
  d4 bes8 g4 f8 d'4 d8 ~ d4 bes8 ~ |
  bes2. ~ bes4. r4 fis'8 |
  g4 ees8 c4 aes8 g'4 g8 ~ g4 ees8 ~ |
  ees2. r4. ees4 e8 |
  f4 \tag #'second { \rred } a8 f4 e8 ees4 g8 ees4 cis8 |
  d4 f8 d4 des8 c4 ees8 c4 cis8 |
  d4 bes8 g4 f8 d'4 d8 ~ d4 bes8 ~ |
  \tag #'first { bes4. }
  \tag #'second { bes2. }
}

marks = {
  \tempo "Lindy höp?" 4.=96
}

soprano = {
  \transpose c c' \removeWithTag #'second \theme
  r4. r4. r4
  \transpose c c' \removeWithTag #'first \theme
  \relative c' {
    r8 bes c d f g |
    bes4 bes8 ~ bes4 bes8 g4 bes8 ~ bes4 r8 |
    bes4 c16 bes g4 bes8 ~ bes4. ~ bes4 gis8 |
    a4 c8 a4 f8 g4. a4 f8 ~ |
    f4 e8 ees4 d8 ~ d d e fis a b |
    c4 c8 ~ c4 c8 a4 c8 ~ c4 r8 |
    c4 d16 c a4 c8 ~ c4. ~ c4 ais8 |
    b4 d8 b4 bes8 a4 c8 a4 aes8 |
    g4 b8 g4 ges8 f4 a8 f4 e8 |
    ees4 g8 ees4 c8 a4 ges'8 ~ ges4 f8 ~ |
    f2.
  }
}

sopranoWords = \lyricmode {
  \repeat unfold 36 da
  Yeh, it's sad, be
  da
  da da da when you're da da da
  da
  da to be da da da da
  da da
  dan a da da sis -- sy da da
  da With da da da da out the
  vim and verve da just da be
  
}

mezzo = \relative c' {
  r8 |
  R1.*6 |
  r4. \Red d4 ees8 f4 d8 ~ \Black d4. |
  r4. \Red bes4 c8 d4 bes8 \Black r4. |
  bes'4 bes8 \Red bes4 c8 \Black bes4 bes8 ~ bes4 bes8 ~ |
  bes8 r4 r4. r2. |
  bes4 \rred bes8 bes4 bes8 bes4 bes8 ~ bes4 bes8 ~ |
  bes8 r4 r4. r2. |
  bes4 bes4 r \rred bes4 bes4 r |
  bes4 \rred bes4 r bes4 bes4 r |
  bes4 bes8 bes4 bes8 bes4 bes8 ~ bes4 a8 ~ |
  a4. ~ a4 aes8 ~ aes2. |
  g4 g8 ~ g4. ~ g4. ~ g4 r8 |
  g4. ~ g4 g8 ~ g4. ~ g4 e8 |
}

mezzoWords = \lyricmode {
 Yeh, it's sad, be
  lieve me Mis -- sy
  da da when you're da da da
  da to be da da da da
  dan a
  sis -- sy
  da With
  da da
  vim and verve da just da be
}


alto = \relative c'' {
  r8 |
  R1.*8 |
  g4 g8 g4 g8 ges4 ges8 ~ ges4 f8 ~ |
  f8 r4 r4. \rred d4. r |
  g4 g8 \rred g4 g8 fis4 fis8 ~ fis4 g8 ~ |
  g8 r4 r4. r2. |
  g4 g4 r g4 \rred g4 r |
  g4 g4 r g4 g4 r |
  g4 g8 g4 g8 ges4 ges8 ~ ges4 f8 ~ |
  f1. |
  ees4 ees8 ~ ees4. ~ ees4. ~ ees4 r8 |
  e4. ~ e4 e8 ~ e4. ~ e4 r8 |
}

altoWords = \lyricmode {
  da da when you're da da da
  born
  da to be da da da da
  dan a
  sis -- sy
  da With
  da da
  vim and verve da just da be
}

tenor = {
  \clef bass
  \removeWithTag #'second \theme
  r4. r2.
  \relative c' {
    \clef "treble_8"
    ees4 ees8 ees4 ees8 ees4 ees8 ~ ees4 d8 ~ |
    d8 r4 r4. r2. |
    ees4 ees8 ees4 ees8 d4 d8 ~ d4 d8 ~ |
    d8 r4 r4. r2. |
    bes4 bes r c c r |
    d d r ees ees8 f4 f8 |
    f4 f8 f4 f8 ees4 ees8 ~ ees4 d8 ~ |
    d1. |
    c4 c8 ~ c4. ~ c4. ~ c4 r8 |
    c4. ~ c4 c8 ~ c4. ~ c4 r8 |
  }
}

tenorWords = \lyricmode {
  \repeat unfold 36 da
  Yeh, it's sad, be
  da
  da da when you're da da da
  da to be da da da da
  dan a
  sis -- sy
  da With da da out the
  vim and verve da just da be
}

bass = \relative c {
  \clef "bass"
  r8 |
  R1.*7 |
  r4. \Red bes4 c8 d4 bes8 \Black r4. |
  c4. r f, r |
  bes4 bes8 a4. g ges |
  f r bes r |
  ees4 ees8 d4. c cis |
  d4. des c b |
  bes a aes g |
  c r f, r |
  bes1. |
  ees4 ees8 ~ ees4. ~ ees4. ~ ees4 r8 |
  e4. ~ e4 e,8 ~ e4 e'8 ~ e4 e8 |
  
}

bassWords = \lyricmode {
  lieve me Mis -- sy
  da da
  da da da born da
  da
  da
  da da da da da
  dan da born da
  da da da da
  da da
  da
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
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \bass
      }
      \new Lyrics \lyricsto "bass" {
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

%{
\score {
  \new PianoStaff <<
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \soprano
      } \\ { \mezzo } \\ { \alto } {
	\scorePrefatoryMatter
        \marks
      } >> }
    }
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      } \\ \\ { \bass } {
	\scorePrefatoryMatter
        \marks
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
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\midiPrefatoryMatter
        \bass
      }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
  >>
  \midi {}
}
