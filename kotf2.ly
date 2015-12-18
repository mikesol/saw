#(set-global-staff-size 15.87)

\version "2.17.0"
\include "defs-devel.ly"

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)
#(set-accidental-style 'modern-cautionary)

rall = \mark \markup \italic "rall."
accel = \mark \markup \italic "accel."
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
  %%%%%%%% !
  %%%%%%%% !
  %%%%%%%% !
  %%%%%%%% !
  page-count = #4
}

%indy = #(make-music 'LaissezVibrerEvent)
indy = #(make-articulation "downbow")

\header {
  title = "If I Were King of the Forest"
  subtitle = "for Claude Debussy, Olivier Messiaen and Thelonius Monk"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

hairlenSmall = {
  \hairlen #4
}

hairlenMed = {
  \hairlen #8
}

prefatoryMatter = {
  \autoBeamOff
}

\defineBarLine "!!" #'("!!" "" "")

mblue = { }
Mred = { }
mred = { }

marksKOTF = {
  \partial 4
  \tempo "très lent"
}

sopranoKOTF = \relative c' {
  \key fis \major
  \Mred \hairlenMed fisis4^\fp^\< |
  \set melismaBusyProperties = #'()
  gis16^\> [ ( gis gis gis gis gis gis gis ) ] r8\! << { \unset melismaBusyProperties gisis8 ~ gisis4 |
  ais4 \Black \mblue fis'-- a \mblue cis, |
  \mblue eis e \mblue gis \mblue ais, |
  bis \mblue dis^\fermata r4
  \key a \major
   } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s4^\mp s2.^\p^\> s1 s2^\pp } >>
  g,4^\p^\< |
  a^\mf r ais2 |
  b1 ~ |
  b^\> ~ |
  b2^\p^\fermata r4 
  \key cis \major
  fisis^\< |
  ais2^\fp b2^\< |
  bis1\!^\mf |
  bis1^\>
  bis2^\p r4 
  \key f \major
  g4^\mf^\> |
  b4^\p r4 c2^\< |
  c1 ~ |
  c ~ |
  c2^\f r4 
  \key e \major
  g^\> |
  c2^\mf cis |
  d4 fis a cis, |
  f e gis ais, |
  c dis^\fermata r 
  \key aes \major
   g,^\> |
  des'2^\p^\< d^\mf^\> |
  ees1^\p ~ |
  ees1 ~ |
  ees2^\fermata r4 
  \key bes \major
   g, |
  d'2^\< ees |
  e1 ~ |
  e4 fis^\f a cis, |
  f2^\fermata r4 
  \key c \major
   g, |
  ees'2 e |
  f1 ~ |
  f ~ |
  f2^\fermata r4 
  \key ees \major
   g, |
  e'^\ff fis a cis, |
  f e aes bes, |
  ges'1 ~ |
  ges ~ |
  ges ~ |
  ges ~ |
  ges2.    
}

sopranoKOTFWords = \lyricmode {
  If I (I I I I I I I) were King
  the chip -- munks gen -- uf -- lect to me. Though…
}

mezzoKOTF = \relative c' {
  \key fis \major
  \Mred \hairlenMed cisis4^\fp^\< |
  \set melismaBusyProperties = #'()
  dis16^\> [ ( dis dis dis dis dis dis dis ) ] r8\! \unset melismaBusyProperties << { eis8 ~ eis4 |
  eis1 ~ |
  eis ~ |
  eis2^\fermata
  } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s1^\mp s1^\> s4^\p } >> r4
  \key a \major
  d4^\p^\< |
  f4^\mf r fis2 |
  g1 ~ |
  g^\>
  g2^\fermata^\p r4 
  \key cis \major
   cisis4^\< |
  fisis,2^\fp fis^\< |
  gis1^\mf ~ |
  gis^\> ~ |
  gis2^\p^\fermata r4 
  \key f \major
  d4 | ges2
  g |
  g4 fis'4 a cis, |
  f-- e4 aes bes, |
  c ees^\fermata r4
  \key e \major
  d, |
  a'2 ais |
  a1 ~ |
  a ~ |
  a2^\fermata r4
  \key aes \major
  d,4 |
  aes'2 beses |
  bes4 fis a cis |
  f e aes-- bes, |
  c ees^\fermata r4 \key bes \major d,4 |
  bes2 a |
  a1 ~ |
  a ~ |
  a2 r4 \key c \major d,4 |
  bes'2 b |
  d4 fis4 a cis |
  f e gis bes, |
  c-- ees^\fermata r4 \key ees \major
  d, |
  cis'1 |
  c |
  c4 ees ~ ees2 |
  d2 des4 fis4 |
  a cis, f e |
  aes bes, c ees ~ |
  ees2.
  
  
  
}

mezzoKOTFWords = \lyricmode {
  If I (I I I I I I I) were King
}

altoKOTF = \relative c' {
  \key fis \major
  \hairlenMed bis4^\fp^\< |
  \set melismaBusyProperties = #'()
  \Mred cis16^\> [ ( cis cis cis cis cis cis cis ) ] r8\! << { \unset melismaBusyProperties dis8 ~ dis4 |
  dis1 ~ |
  dis ~ |
  dis2^\fermata } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s1^\mp s1^\> s4^\p } >> r4 
  \key a \major
  c4^\p |
}

altoKOTFWords = \lyricmode {
  If I (I I I I I I I) were King
}

tenorKOTF = \relative c' {
  \clef "treble_8"
  \key fis \major
  \hairlenMed gis4^\fp^\< |
  \set melismaBusyProperties = #'()
  \Mred a16^\> [ ( a a a a a a a ) ] r8\! << { \unset melismaBusyProperties b8 ~ b4 |
  cis1 ~ |
  cis ~ |
  cis2^\fermata } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s1^\mp s1^\> s4^\p } >>  r4
  \key a \major
  aes4^\p |
}

tenorKOTFWords = \lyricmode {
  If I (I I I I I I I) were King
  I'd click my heel
}

bassKOTF = \relative c {
  \clef "bass"
  \key fis \major
  \hairlenMed \Mred ais4^\fp^\< |
  \set melismaBusyProperties = #'()
  b16^\> [ ( b b b b b b b ) ] r8\! \unset melismaBusyProperties r8 r4 |
  R1 |
  R1 |
  r2^\fermata r4
  \key a \major
  bes4^\p |
}

bassKOTFWords = \lyricmode {
  If I (I I I I I I I)
  I'd click
  The spa
  His wife
  my re
  The trees
  The moun
  The bulls
  If I
}


\score {
  \new ChoirStaff <<
    \new Staff \with { midiInstrument = #"vibraphone" instrumentName = \bitchName } <<
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
    \new Staff \with { midiInstrument = #"vibraphone" instrumentName = \dortyName } <<
      \new Voice = "mezzo" { \numericTimeSignature
	\prefatoryMatter
        \mezzoKOTF
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoKOTFWords
      }
    >>
    \new Staff \with { midiInstrument = #"vibraphone" instrumentName = \ttoName } <<
      \new Voice = "alto" { \numericTimeSignature
	\prefatoryMatter
        \altoKOTF
      }
      \new Lyrics \lyricsto "alto" {
        \altoKOTFWords
      }
    >>
    \new Staff \with { midiInstrument = #"vibraphone" instrumentName = \fakbydName } <<
      \new Voice = "tenor" { \numericTimeSignature
	\prefatoryMatter
        \tenorKOTF
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorKOTFWords
      }
    >>
    \new Staff \with { midiInstrument = #"vibraphone" instrumentName = \wysrName } <<
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