#(set-global-staff-size 15.87)

\version "2.17.0"
\include "defs-devel.ly"

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)
#(set-accidental-style 'modern-cautionary)

rall = \mark \markup \italic "rall."
moltorall = \mark \markup \italic "molto rall."

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

\header {
  title = "If I Were King of the Forest"
  subtitle = "for Claude Debussy"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

prefatoryMatter = {
  \autoBeamOff
}

marksKOTF = {
  \tempo "Adagio" 4=60
  \time 4/4
  \partial 4
  s4 |
  s1*2 |
  \tempo "Andate" 4=72
  s1*3 |
}

sopranoKOTF = \relative c'' {
  r16 g8.^\p^\< |
  gis4^\> \times 2/3 { b8^\mf cis b } d8 [ \times 2/3 { cis16 d cis ] } b8 gis |
  b16 fis8. ~ fis4 ~ fis8 r r16 g8.^\p^\< |
  gis4^\mp d'^\mf b2 |
  r4 e b2 |
  r4 cis b g |
  bes1 |
}

sopranoKOTFWords = \lyricmode {
  Wi -- zard
  If I Were King of the Fo -- rest
  Wi -- zard
  not queen
  not duke
  not prince
  Wi -- zard
}

mezzoKOTF = \relative c' {
  r16 d8.^\p^\< |
  << { dis1 } { s4^\> s2.^\p } >>  |
  fis16^\mp cis8. ~ cis8 ais''^\pp ~ ais r r16 d,,8.^\p^\< |
  << { fis1 } { s2^\> s2^\p } >> |
  r4 g^\mp gis2 |
  r4 ais e d |
  f8. r16 \times 2/3 { b8 cis b } d8 [ \times 2/3 { cis16 d cis ] } b8 gis |
}

mezzoKOTFWords = \lyricmode {
  Wi -- zard
  Fo -- rest Wiz
  Wi -- zard
  not duke
  not prince
  Wi -- zard
  If I Were King of the Fo -- rest
}

altoKOTF = \relative c' {
  r16 c8.^\p^\< |
  << { cis1 } { s4^\> s2.^\p } >>  |
  dis16^\mp b8. ~ b4 ~ b8 r r16 c8.^\p^\< |
  << { cis2. } { s2^\> s4^\p } >> f4 |
  e2. e4 |
  f4 fis g c, |
  ees2
}

altoKOTFWords = \lyricmode {
  Wi -- zard
  Fo -- rest
  Wi -- zard
  not queen
  not duke
  not prince
  Wi -- zard
}

tenorKOTF = \relative c' {
  \clef "treble_8"
  r16 aes8.^\p^\< |
  << { a1 } { s4^\> s2.^\p } >> |
  cis16^\mp gis8. ~ gis4 ~ gis8 r r16 aes8.^\p^\< |
  << { b2. } { s2^\> s4^\p } >>  d4^\mp |
  b2. e4 |
  b2 d4 aes^\p |
  b2 \times 2/3 { b8 cis b } d8 [ \times 2/3 { cis16 d cis ] } |
}

tenorKOTFWords = \lyricmode {
  Wi -- zard
  Fo -- rest
  Wi -- zard
  not queen
  not duke
  prince
  Wi -- zard
  If I Were King of the Fo -- rest
}

bassKOTF = \relative c {
  \clef "bass"
  r16 bes8. |
  b1 |
  e16^\mp e8. ~ e4 ~ e8 r r16 bes8. |
  a1 ~ |
  a2 r2 |
  r2. bes4 |
  aes4. r8 r2 |
}

bassKOTFWords = \lyricmode {
  Wi -- zard
  Fo -- rest
  Wi -- zard
  Wi -- zard
}


\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" } <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\prefatoryMatter
        \sopranoKOTF
      } {
        \marksKOTF
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoKOTFWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" } <<
      \new Voice = "mezzo" { \numericTimeSignature
	\prefatoryMatter
        \mezzoKOTF
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoKOTFWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" } <<
      \new Voice = "alto" { \numericTimeSignature
	\prefatoryMatter
        \altoKOTF
      }
      \new Lyrics \lyricsto "alto" {
        \altoKOTFWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" } <<
      \new Voice = "tenor" { \numericTimeSignature
	\prefatoryMatter
        \tenorKOTF
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorKOTFWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" } <<
      \new Voice = "bass" { \numericTimeSignature
	\prefatoryMatter
        \bassKOTF
      }
      \new Lyrics \lyricsto "bass" {
        \bassKOTFWords
      }
    >>
  >>
  \layout {
    \context {
      \Voice
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
        \prefatoryMatter
        \sopranoKOTF
      } \\ {         \prefatoryMatter
        \mezzoKOTF
         } \\ {         \prefatoryMatter
        \altoKOTF
         } {
        \marksKOTF
      } >> }
    }
    \new Staff  {
      \new Voice = "tenor" { << { \numericTimeSignature
        \prefatoryMatter
        \tenorKOTF
      } \\ \\ {         \prefatoryMatter
        \bassKOTF
         } {
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