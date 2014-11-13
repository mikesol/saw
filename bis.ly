#(set-global-staff-size 15.87)
\paper {
  #(define fonts
    (set-global-fonts
    #:music "cadence"
    #:factor (/ staff-height pt 20)
  ))
}
\header {
  title = "The Wonerful Wizard of Oz"
  subtitle = "for Gene Peurling"
  %title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}
\paper {
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


\version "2.19.0"
\include "defs-devel.ly"

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
  \key a \major
  \autoBeamOff
  \time 4/4
}

scorePrefatoryMatter = {
  \prefatoryMatter
}

midiPrefatoryMatter = {
  \prefatoryMatter
}

marks = {
  \tempo "Med sit swng" 4=176
  \repeat unfold 145 { \unfoldSwing #176 }
}

soprano = \relative c'' {
  r8 cis4. b4 a |
  cis4. b8 ~ b2 |
  r8 b4. a4 gis |
  b4. a8 ~ a2 |
  r8 a4. gis4 fis |
  a2 gis |
  gis g |
  fis e |
  r8 d4. fis4 a |
  cis d b cis |
  e,8 cis e gis ~ gis e gis b ~ |
  b gis b d r cis4. |
  R1 |
  R1 |
  r2. e,4 |
  a e cis fis |
  gis2 fis |
  e dis4 dis |
  fis8 g gis a ~ a c4. |
  b8 a gis fis ~ fis gis e4 |
  fis2 f |
  e cis |
  d f |
  e g |
  fis f |
  e fis8 fis g gis |
  r8 cis4. b4 a |
  cis4. b8 ~ b2 |
  r8 b4. a4 gis |
  b4. a8 ~ a2 |
  r8 a4. gis4 fis |
  a2 gis |
  gis g |
  fis e |
  r8 d4. fis4 a |
  cis d b cis |
  a8-.
}

sopranoWords = \lyricmode {
}

mezzo = \relative c'' {
  r8 a4. gis4 fis |
  a4. gis8 ~ gis2 |
  r8 gis4. fis4 eis |
  gis4. fis8 ~ fis2 |
  r8 fis4. e4 dis |
  fis2 f |
  e e |
  d cis |
  r8 b4. d4 fis |
  a ais a fis |
  cis8 a cis e ~ e cis e gis ~ |
  gis e gis b r ais4. |
  r2. e4 |
  a e cis d |
  e a2 e4 |
  fis8 e d cis ~ cis d b cis ~ |
  cis2 dis |
  dis c4 c |
  dis8 e eis fis ~ fis d4. |
  cis4 c b ais |
  a2. e'4 |
  a e cis e |
  fis8 fis fis fis ~ fis fis gis a ~ |
  a e4 cis8 ~ cis e4. |
  d8 d cis b ~ b d4 cis8 ~ |
  cis4 b4 a cis |
  r8 a'4. gis4 fis |
  a4. gis8 ~ gis2 |
  r8 gis4. fis4 eis |
  gis4. fis8 ~ fis2 |
  r8 fis4. e4 dis |
  fis2 f |
  e e |
  d cis |
  r8 b4. d4 fis |
  a ais a fis |
  e8-.
}

mezzoWords = \lyricmode {
}


alto = \relative c' {
  r8 fis4. f4 e |
  fis4. f8 ~ f2 |
  r8 e4. e4 cis |
  eis4. e8 ~ e2 |
  r8 d4. d4 cis |
  dis2 d |
  cis cis |
  cis ais |
  r8 a4. b4 dis |
  fis gis fis dis |
  b8 gis b dis ~ dis b dis fis ~ |
  fis e fis gis r gis4. | 
  R1 |
  r2. e4 |
  a e cis d |
  e a2 e4 |
  fis8 e dis cis ~ cis dis cis b ~ |
  b2 ais4 ais |
  b8 cis d dis ~ dis ais4. |
  b8 cis d dis ~ dis d4. ~ |
  d1 |
  cis2 a |
  b gis |
  a cis |
  d bis |
  cis dis8 dis e f |
  r8 fis4. f4 e |
  fis2 f |
  r8 e4. e4 cis |
  eis2 e |
  r8 d4. d4 cis |
  dis2 d |
  cis cis |
  cis ais |
  r8 a4. b4 dis |
  fis gis fis dis |
  cis8-.
}

altoWords = \lyricmode {
}

tenor = \relative c' {
  \clef "treble_8"
  r8 d4. d4 cis |
  d4. d8 ~ d2 |
  r8 cis4. cis4 b |
  cis4. cis8 ~ cis2 |
  r8 b4. ais4 a |
  b2 b |
  a a |
  ais g |
  r8 fis4. a4 c |
  d4 fis d ais |
  gis8 e gis b ~ b gis b dis ~ |
  dis b dis f r8 e4. |
  a4 e cis d |
  e a2 e4 |
  fis8 e d cis ~ cis d b a ~ |
  a2. cis4 |
  a a a' a |
  gis8 gis gis fis ~ fis fis4. |
  b8 b b b ~ b gis4. |
  e2. e4 |
  fis8 fis fis fis ~ fis fis gis a ~ |
  a e4 cis8 ~ cis e4. |
  d8 d cis b ~ b d4 cis8 ~ |
  cis b4 a8 ~ a a4. |
  a4 a a' a |
  gis gis fis fis |
  b1 ~ |
  b2. b4 |
  b4 b8 b b b b4 |
  b4 gis e2 ~ |
  e2 r4 e |
  a e cis d |
  e a2 b4 |
  cis8 cis cis b ~ b cis b4 |
  a1 ~ |
  a |
}

tenorWords = \lyricmode {
}

bass = \relative c {
  \clef "bass"
  b4 cis d dis |
  e f, e gis |
  a b cis eis, |
  fis a cis c |
  b eis, fis dis |
  e gis b ais |
  a cis e eis |
  fis d cis c |
  b d fis f |
  e f, e gis |
  a r4 r2 |
  r4. ais8 r fis4. |
  b4 cis d b |
  e8 e e,4 fis gis |
  a b cis g |
  fis a cis ais |
  b a gis fis |
  e dis cis c |
  b dis fis f |
  e gis b gis |
  d' b gis e |
  cis' a fis d |
  fis b gis e |
  a cis e cis |
  d cis b a |
  gis fis e dis |
  e cis' d dis |
  e f, e gis |
  a b cis eis, |
  fis a cis c |
  b eis, fis dis |
  e gis b ais |
  a cis e eis |
  fis d cis c |
  b d fis f |
  e f, e gis |
  a r4 r2 |
}

bassWords = \lyricmode {
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
