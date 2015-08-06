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

#(ly:set-option 'point-and-click #f)

MyRed = \Red
MyBlack = \Black
myred = \once \override NoteHead.color = #red
myblack = \revert NoteHead.color
%MyRed = \revert NoteHead.color
%MyBlack = \revert NoteHead.color
%myred = \revert NoteHead.color
%myblack = \revert NoteHead.color

agogic = #(make-articulation "downbow")

\header {
  title = "Optimistic Voices"
  %subtitle = \markup { for Ahti Sonninen }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 2/2
  \tempo "Allegro" 2=120
  \key ees \major
  s2.
  \key e \major
  s2.
  \key f \major
  s2.
  \key ges \major
  s2.
  \key g \major
  s2.
  \key aes \major
  s2.
  \key a \major
  s2.
  \key bes \major
  s2.
  \key ces \major
  s2.
  \key c \major
  s2.
  \key des \major
  s2.
  \key d \major
  s2.
  \key ees \major
  s2.
  \key e \major
  s2.
  \key f \major
  s2.
  \key ges \major
  s2.
  \key g \major
  s2.
  \key aes \major
  s2.
  \key a \major
  s2.
  \key bes \major
  s2.
  \key ces \major
  s2.
  \key c \major
  s2.
  \key des \major
  s2.
  \key d \major
  s2.
  \key ees \major
  s2.
  \key e \major
  s2.
  \key f \major
  s2.
  \key ges \major
  s2.
  \key g \major
  s2.
  \key aes \major
  s2.
  \key a \major
  s2.
  \key bes \major
  s2.
}

prefatoryMatter = {
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c'' { \autoBeamOff
  \prefatoryMatter
  %{ees%} r4 ees d8 ees %{e%} dis4 |
  e e %{f%} e8 f e4 |
  f %{ges%} ges f8 ges ees4 %{g%} |
  d2. %{aes%} r4 |
  %%%
  r4 aes' %{a%} gis8 a gis4 |
  a4 %{bes%} bes a8 bes g4 %{ces%} |
  ges2. %{c%} r4 |
  r4 c, %{des%} ( des ) d |  %% TT sub...
  %%%%
  r4 %{d%} e4 g8 g g4 %{ees%} |
  aes2 g4 %{e%} a |
  gis2 %{f%} g4 a |
  aes4 ( %{ges%} beses4 ) ges aes |
  %%%
  %{g%} g2 fis4 %{aes%} aes4 |
  g2 %{a%} fis4 gis |
  fis4 %{bes%} ( g2. ) |
  aes2-\bendAfter #-3 r4 ees4-. |
  %%%
  r4 c,4 %{des%} c8 des c4 |
  des4 %{d%} d cis8 d cis4 |
  %{ees%} ees4 ees d8 ees %{e%} cis4 |
  b2 ( %{f%} c4 ) r4 |
  r4 f %{ges%} f8 ges f4 |
  ges4 %{g%} g fis8 g e4 |
  %{aes%} ees ees d8 d %{a%} dis4 |
  d4 e %{bes%} g a 
  
}

sopranoWords = \lyricmode {
}

mezzo = \relative c'' { \autoBeamOff
  \prefatoryMatter
  r4 c c8 c cis4 |
  cis cis cis8 d cis4 |
  d ees d8 ees c4 |
  c2. r4 |
  r ees dis8 e8 dis4 |
  ees e e8 e e4 |
  fes2. r4 |
  r4 bes, ( ces2 ) |
  r4 cis4 d8 d d4 |
  c2 ces4 e |
  dis2 e4 e |
  d ges ees ees |
  e2 ees4 des |
  c2 c4 cis |
  b4 ees4 ~ ees c |
  fes2-\bendAfter #-3 r4 aes,-. |
}

mezzoWords = \lyricmode {
}

alto = \relative c'' { \autoBeamOff
  \prefatoryMatter
  r4 bes a8 bes ais4 |
  b4 b b8 b b4 |
  bes ces ces8 ces a4 |
  g2 a4 b |
  c4 c4 bis8 cis8 bis4 |
  c cis cis8 cis cis4 |
  ces2 ces4 ( c ) |
  g2 aes4 g |
  r4 bes b8 b b4 |
  beses2 beses4 fis |
  f2 bes4 g |
  b4 c c c |
  c2 c4 bes |
  bes2 a4 b4 |
  gis bes2. |
  ges2-\bendAfter #-3 r4 f-. |
}

altoWords = \lyricmode {
}
%e b' d g
tenor = \relative c'' {
  \autoBeamOff
  \prefatoryMatter
  \clef "treble_8"
  r4 g fis8 g fisis4 |
  g g gis8 gis gis4 |
  a aes4 aes8 aes ges4 |
  e2 f4 g |
  aes4 f fis8 fis fis4 |
  fis g g8 g g4 |
  aes2 aes4 ( a ) |
  e2 f2 | 
  r4 g e8 e e4 |
  ees2 d4 cis |
  b2 d4 c |
  f4 ees aes f |
  a2 a4 f |
  ees2 ees4 e4 |
  d4 c ~ c4 e |
  des2-\bendAfter #-3 r4 des-. | % jajaja TT Sub h4x0r
}

tenorWords = \lyricmode {
}

bass = \relative c {
  \autoBeamOff
  \prefatoryMatter
  \clef bass
  bes2. bes4 |
  bes2. bes4 |
  bes2. bes4 |
  bes2 c4 aes |
  r4 bes ~ bes bes |
  r4 bes ~ bes bes |
  bes2 d |
  c g |
  aes2 aes
  f f |
  g2 g |
  ges ges |
  f f |
  g g |
  aes a |
  bes b |
  bes2. bes4 |
  bes2. bes4 |
  bes2. bes4 |
  bes2 ces4 aes |
  r4 bes ~ bes bes |
  r4 bes ~ bes bes |  
  bes2 c |
  c e, |
}

bassWords = \lyricmode {
}
%{
%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \mezzo
      } {
        \marks
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
        \marks
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
        \marks
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \bass
      } {
        \marks
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
      \override DynamicLineSpanner #'direction = #UP
      %\override Slur #'direction = #UP
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
      \new Voice = "4" { \voiceOne << \tenor \marks >> }
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
        \soprano
      } {
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
