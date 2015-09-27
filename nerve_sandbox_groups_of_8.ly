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
  subtitle = "for Satchmo"
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
  %max-systems-per-page = #2
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
  \time 4/4
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
  cis8-\tag #'first \mf |
  d8 bes8 g8 f8 d'8 d8 ~ d8 bes8 ~ |
  bes2 ~ bes4 r8 fis'8 |
  g8 ees8 c8 aes8 g'8 g8 ~ g8 ees8 ~ |
  ees2 r4 ees8 e8 |
  f8-\tag #'second \< \tag #'second { \rred } a8 f8 e8 ees8 g8 ees8 cis8 |
  d8 f8 d8 des8 c8 ees8 c8 cis8 |
  d8 bes8 g8 f8 d'8 d8 ~ d8 bes8 ~ |
  \tag #'first { bes4 }
  \tag #'second { bes2 }
}

marks = {
  \tempo "Dixie" 4=96
  \time 4/4
  \partial 8 s8
  \repeat unfold 25 { s1 }
}

soprano = \transpose c c {
  \transpose c c' \removeWithTag #'second \theme
  r4 r4 r8
  \transpose c c' \removeWithTag #'first \theme
  \relative c' {
    \times 2/3 { r8 bes c } \times 2/3 { d f g } |
    bes8\f bes8 ~ bes8 bes8 g8 bes8 ~ bes8 r8 |
    bes8 ( c16 bes ) g8 bes8 ~ bes4 ~ bes8 gis8 |
    a8 c8 a8 \rred f8 g4 a8 f8 ~ |
    f8 e8 ees8 d8 ~ \times 2/3 { d d e } \times 2/3 { fis a b } |
    c8 c8 ~ c8 c8 \rred a8 c8 ~ c8 r8 |
    c8 ( d16 c ) a8 c8 ~ c4 ~ c8 ais8 |
    b8\> d8 b8 bes8 a8 c8 a8 aes8 |
    g8 b8 g8 ges8 f8 a8 f8 e8 |
    ees8\mf g8 ees8 c8 a8 ges'8 ~ ges8 r8 |
    s1*39 |
  }
}

sopranoWords = \lyricmode {
}

test = {
  r8 r8 r8 r8 r8 r8 r8 d''8 ees''8 f''8 d''8 bes'8 c''8 d''8 bes'8 r8 r8 r8 r8 r8 r8 r8 r8 r8 c''8 d''8 bes'8 g'8 a'8 bes'8 g'8 r8 r8 r8 r8 r8 r8 r8 r8 r8 bes'8 f'8 f'8 f'8 f'8 f'8 ~ f'8 r8 r8 r8 r8 r8 r8 r8 r8 f'8 ~ f'8 ~ f'8 ~ f'8 ~ f'8 ~ f'8 r8 r8 r8 r8 r8 r8 r8 r8 r8 r8 bes'8 a'8 g'8 r8 g''8 f''8 ees''8 d''8 r8 r8 r8 r8 r8 r8 r8 r8 c''8 bes'8 a'8 r8 a''8 g''8 f''8 ees''8 r8 r8 r8 r8 r8 r8 r8 r8 d''8 c''8 bes'8 bes'8 bes'8 bes'8 bes'8 ~ bes'8 r8 r8 r8 r8 r8 r8 r8 r8 bes'8 ~ bes'8 ~ bes'8 ~ bes'8 ~ bes'8 ~ bes'8 r8 r8 r8 r8 r8 r8 r8 r8 r8 r8 d''8 ees''8 f''8 d''8 bes'8 c''8 d''8 bes'8 r8 r8 r8 r8 r8 r8 r8 r8 r8 c''8 d''8 bes'8 g'8 a'8 bes'8 g'8 r8 r8 r8 r8 r8 r8 r8 r8 r8 bes'8 f'8 f'8 f'8 f'8 f'8 ~ f'8 r8 r8 r8 r8 r8 r8 r8 r8 f'8 ~ f'8 ~ f'8 ~ f'8 ~ f'8 ~ f'8 r8 r8 r8 r8 r8 r8 r8 r8 r8 r8 bes'8 a'8 g'8 r8 g''8 f''8 ees''8 d''8 r8 r8 r8 r8 r8 r8 r8 r8 c''8 bes'8 a'8 r8 a''8 g''8 f''8 ees''8 r8 r8 r8 r8 r8 r8 r8 r8 d''8 c''8 bes'8 bes'8 bes'8 bes'8 bes'8 ~ bes'8 r8 r8 r8 r8 r8 r8 r8 r8 bes'8 ~ bes'8 ~ bes'8 ~ bes'8 ~ bes'8 ~ bes'8 r8 r8 r8 r8 r8 r8 r8 r8 r8 r8 bes'8 ~ bes'8 g''8 ~ g''8 ~ g''8 ~ g''8 r8 fis''8 r8 r8 r8 r8 r8 r8 r8 r8 g''8 a''8 f''8 ~ f''8 ~ f''8 ~ f''8 r8 r8 r8 r8 r8 r8 r8 r8 r8 r8 g''8 ~ g''8 ees''8 ~ ees''8 ees''8 ~ ees''8 ees''8 ~ ees''8 r8 r8 r8 r8 r8 r8 r8 r8 f''8 ~ f''8 d''8 ~ d''8 ~ d''8 ~ d''8 r8 r8 r8 r8 r8 r8 r8 r8 r8 r8 d''8 d''8 c''8 bes'8 c''8 bes'8 c''8 bes'8 r8 r8 r8 r8 r8 r8 r8 r8 c''8 d''8 bes'8 ~ bes'8 ~ bes'8 ~ bes'8 r8 c''8 r8 r8 r8 r8 r8 r8 r8 r8 d''8 f''8 g''8 r8 r8 r8 r8 d''8 r8 r8 r8 r8 r8 r8 r8 r8 c''8 bes'8 f''8 ~ f''8 ~ f''8 ~ f''8 r8 r8 r8 r8 r8 r8 r8 r8 r8 r8 d''8 ees''8 f''8 d''8 bes'8 c''8 d''8 bes'8 r8 r8 r8 r8 r8 r8 r8 r8 r8 c''8 d''8 bes'8 g'8 a'8 bes'8 g'8 r8 r8 r8 r8 r8 r8 r8 r8 r8 bes'8 f'8 f'8 f'8 f'8 f'8 ~ f'8 r8 r8 r8 r8 r8 r8 r8 r8 f'8 ~ f'8 ~ f'8 ~ f'8 ~ f'8 ~ f'8 r8 r8 r8 r8 r8 r8 r8 r8 r8 r8 bes'8 a'8 g'8 r8 g''8 f''8 ees''8 d''8 r8 r8 r8 r8 r8 r8 r8 r8 c''8 bes'8 a'8 r8 a''8 g''8 f''8 ees''8 r8 r8 r8 r8 r8 r8 r8 r8 d''8 c''8 bes'8 bes'8 bes'8 bes'8 bes'8 ~ bes'8 r8 r8 r8 r8 r8 r8 r8 r8 bes'8 ~ bes'8 r8 r8 r8 r8 r8 r8 r8 r8
}


\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \test
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
