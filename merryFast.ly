\version "2.17.0"
\include "defs-devel.ly"
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
  %max-systems-per-page = #2
}
maybeStemUp =  { %{\stemUp%} }
maybeStemDown =  { %{\stemDown%} }
maybeStemNeutral = { %{\stemNeutral%} }
#(ly:set-option 'point-and-click #f)
sim = \markup \italic "sim."
MyRed = \Red
MyBlack = \Black
myred = \once \override NoteHead.color = #red
myblack = \revert NoteHead.color
%MyRed = \revert NoteHead.color
%MyBlack = \revert NoteHead.color
%myred = \revert NoteHead.color
%myblack = \revert NoteHead.color

%{
  repeated note
  repeated lick
  digs, scoops, etc
  rests in strange places...
  
%}

\header {
  title = "The Merry Old Land of Oz" %(1)"
  subtitle = \markup { for Jon Hendricks }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 2/2
  \tempo "Fast" 2=160
}

prefatoryMatter = {
  \key e \major
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c' {
  \prefatoryMatter
  R1*13 |
  e4 e e r |
  e8 e4 e8 ~ e e4 e8 |
  e e e4 e4 e8 e ~ |
  e4 r r e |
  e e e e |
  e8 e4 e8 ~ e e4 e8 |
  e8 e e4 e e |
  e4-. r r2 |
}

sopranoWords = \lyricmode {
  Ha ha ha
  Ho dee ho and a
  cou -- ple of tra la las
  That's how we laugh the day a -- way in the mer -- ry old land of Oz.
}

mezzo = \relative c' {
  \prefatoryMatter
  R1*13 |
  d4 d cis r |
  b8 b4 cis8 ~ cis cis4 cis8 |
  d d d4 cis4 cis8 b ~ |
  b4 r r cis |
  d d cis cis |
  b8 b4 cis8 ~ cis cis4 cis8 |
  d8 d d4 cis cis |
  b4-. r r2 |
}

mezzoWords = \lyricmode {
  Ha ha ha
  Ho dee ho and a
  cou -- ple of tra la las
  That's how we laugh the day a -- way in the mer -- ry old land of Oz.
}

alto = \relative c' {
  \prefatoryMatter
  \clef "treble_8"
  R1*5 |
  e4 e e r |
  e8 e4 e8 ~ e e e e |
  e e e4 e4 e8 g ~ |
  g4 r r g |
  gis! e e b cis8 e4 e8 ~ e e4 e8 |
  e8 e e4 e e8 e ~ e8 b'4. \Cross b8 gis e b 
  \nnnn e,4 gis b r |
  a8 b4 gis8 ~ gis gis4 fis8 |
  e e e4 gis8 b4 a8 ~ |
  a4 r r b |
  e,4. gis8 b4 e |
  cis8 dis4 e8-. r a,4 a8 |
  gis gis gis4 a fis |
  e-. r e'2 |
}

altoWords = \lyricmode {
  Ha ha ha
  Ho dee ho dee and a
  cou -- ple of tra la las
  That's how we laugh the day a -- way in the mer -- ry old land of Oz.
  Come sing it with me.
  Ha ha ha
  Ho dee ho and a
  cou -- ple of tra la las
  That's how we laugh the day a -- way in the mer -- ry old land of Oz.
}

tenor = \relative c' {
  \prefatoryMatter
  \clef "treble_8"
  R1*13 |
  b4 b b r |
  b8 b4 b8 ~ b b4 b8 |
  b b b4 b4 b8 b ~ |
  b4 r r b |
  b b b b |
  b8 b4 b8 ~ b b4 b8 |
  b8 b b4 b b |
  b4-. r r2 |
}

tenorWords = \lyricmode {
  Ha ha ha
  Ho dee ho and a
  cou -- ple of tra la las
  That's how we laugh the day a -- way in the mer -- ry old land of Oz.
}

bass = \relative c, {
  \prefatoryMatter
  \clef "bass"
  e4 r gis r |
  a r ais r |
  b r gis r |
  g r fis r |
  ais r f r |
  %%
  e r gis r |
  g r fis r |
  e r gis r |
  a r ais r |
  b r gis r |
  a r fis r |
  gis r g r |
  fis r a r |
  %%
  gis r b r |
  a r cis r |
  b r ais r |
  a r fisis r |
  gis r b r |
  a r fis r |
  gis r g r |
  e r e r |
  %%%
  a a fis fis |
  g fis e bis |
  cis e a fis |
  g b e, gis |
  a gis b fis |
  f cis' g gis |
  bes a fis gis |
  g e fis f |
  %%%
  a b cis ais |
  b cis d bis |
  cis c bes a |
  b gis fis e |
  a e cis' c |
  b e, d' bis |
  cis a gis fis |
  e fis gis eis |
  %%%
  fis ais cis dis |
  d cis c gis |
  b ais g a |
  gis g fis f |
  b fis ais a |
  e gis g dis |
  g fis b fis |
  ais a f gis |
  %%
  e e gis gis |
  a a ais ais |
  b b gis gis |
  cis cis gis g |
  fis a cis ais |
  b a gis fis |
  e gis fis a |
  gis b a fis |
  e
}

bassWords = \lyricmode {
  Off to see the won -- der -- ful, the Wi -- zard
  Up at twelve and go to work at one
  Have lunch and then we're done oh
  Ha ha ho ho
  tra la la that's 
  how we laugh the land of Oz
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie Pb" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      } {
        \marks
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Marie Pc" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \mezzo
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \alto
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \tenor
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff = "realBass" \with { instrumentName = #"Mathieu" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \bass
      } {
        \nothing
      } >> }
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

%{
%%% piano redux
#(set-global-staff-size 20)

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \soprano \marks >> }
      \new Voice = "2" { \voiceTwo \mezzo }
      \new Voice = "3" { \voiceThree \alto }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenor }
      \new Voice = "5" { \voiceTwo \bass }
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
%}
%%% MIDI

\score {
  \transpose c c \new ChoirStaff <<
    \new Staff \with { midiInstrument = #"alto sax" instrumentName = #"Marie Pb" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      } {
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { midiInstrument = #"trumpet" instrumentName = #"Marie Pc" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { midiInstrument = #"tenor sax" instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { midiInstrument = #"baritone sax" instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)" instrumentName = #"Mathieu" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \bass
      }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
  >>
  \midi {}
}
