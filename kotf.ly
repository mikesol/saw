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

%indy = #(make-music 'LaissezVibrerEvent)
indy = #(make-articulation "downbow")

\header {
  title = "If I Were King of the Forest"
  subtitle = "for Claude Debussy, Olivier Messiaen and Thelonius Monk"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

prefatoryMatter = {
  \autoBeamOff
}

marksKOTF = {
  \partial 4
  \tempo "lent" 4=44
  s4 |
  s1 |
  \tempo "plus vif" 4=60
  s1*2 |
  s2.
    \tempo "lent" 4=44
    s4 |
  s1 |
  \tempo "plus animé" 4=60
  s1*2 |
  \time 5/4
  s1 \tempo "lent" 4=44 s4
  \time 4/4
  s1 |
  %  no 5/4 here, need to cut double wait
  \tempo "plus fort" 4=60
  s1*3 |
  \time 5/4
  s1 \tempo "lent" 4=44 s4 |
  \time 4/4
  s1 |
  \tempo "plus profond" 4=60
  s1*4 |
  s2. \tempo "lent" 4=44 s4 |
  s1 |
  \tempo "plus dur" 4=60
  s1*4 |
  \time 3/4
  s2 \tempo "lent" 4=44 s4 |
  \time 4/4
  s1 |
  \tempo "plus long" 4=60
  s1*4 |
  \time 3/4
  s2 \tempo "lent" 4=44 s4 |
  \time 4/4
  s1 |
  \tempo "plus intense" 4=60
  s1*3 |
  s2. \tempo "lent" 4=44 s4 |
  s1 |
  \tempo "plus rapide" 4=60
  s1*3 |
}

sopranoKOTF = \relative c' {
  \key fis \major
  fisis4 |
  gis2 r8 gisis8 ~ gisis4 |
  ais4 fis' a cis, |
  eis e gis ais, |
  c dis\fermata r
  \key a \major
  g,4 |
  a2 ais4 fis' |
  b,4 a' ~ a cis, |
  eis e gis ais, |
  c dis2\fermata r4 \key cis \major fisis,4 |
  ais2 b4 fis'8 a |
  bis,4 cis eis e |
  gis ais, c dis ~ |
  dis1 ~ |
  dis2.\fermata r4 \key f \major g, |
  b4 fis' c a' |
  cis,4 f ~ f2 ~ |
  f4 e4 ~ e gis ~ |
  gis bes, ~ bes c ~ |
  c1 ~ |
  c2\fermata r4 \key e \major g4 |
  c4 fis8 a cis,4 f |
  d4 e ~ e dis ~ |
  dis d ~ d cis |
  c d ~ d2 ~ |
  d4 r r2 |
  r2 \key aes \major g,4 |
  des'8 fis8 a cis,8 d f4 e8 |
  ees4 aes ~ aes2 ~ |
  aes1 ~ |
  aes1 ~ |
  aes4 r r2 |
  r2 \key bes \major g,4 |
  d'2 f8 ees ~ ees4 |
  e2. ees4 ~ |
  ees2. r4 |
  r2. fis,4 |
  a cis, f \key c \major g |
  ees'8 fis a cis, f e ~ e4 |
  f4 fis a cis, |
  f e gis bes, |
  c1 ~ |
  c2. \key ees \major g4 |
  e' fis a cis, |
  f e gis bes, |
  ges'1 ~ |
  ges ~ |
  ges ~ |
  ges ~ |
  ges2. r4 |
  
}

sopranoKOTFWords = \lyricmode {
}

mezzoKOTF = \relative c' {
  \key fis \major
  cisis4 |
  dis2 r8 eis8 ~ eis4 |
  eis1 ~ |
  eis ~ |
  eis2\fermata  r4
  \key a \major
  d4 |
  f2 fis |
  gis1 ~ |
  gis ~ |
  gis2.\fermata r4 \key cis \major cisis,4 |
  fisis2 fis |
  gis2 fis |
  a4 cis, ~ cis eis |
  e4 gis ais, bis |
  dis2.\fermata r4 \key f \major d |
  ges2 g |
  g2 fis4 a |
  cis, f ~ f2 ~ |
  f4 e gis2 ~ |
  gis4 b, c ees ~ |
  ees2\fermata r4 \key e \major d4 |
  a'2 ais |
  a4 fis a cis, |
  f e gis ais, ~ |
  ais1 ~ |
  ais2. r4 |
  r2 \key aes \major d4 |
  aes'2 beses |
  bes2. a4 ~ |
  a f fes aes4 ~ |
  aes c, ees2 |
  e4 aes ~ aes2 ~ |
  aes4 r \key bes \major d, |
  bes'4 a4 ~ a8 a4 gis8 |
  a4 bes c2 ~ |
  c4 fis,4 ~ fis a |
  fis a ~ a2 ~ |
  a2. \key c \major d,4 |
  bes'2 ~ bes8 b4 bes8 |
  d2 ees4 fis |
  a cis, f e |
  gis4 bes, ~ bes2 ~ |
  bes2. \key ees \major d,4 |
  cis'1 |
  c |
  des4 c ees2 |
  d4 des ~ des2 |
  des4 fis, a cis, |
  f e aes bes, |
  c ees2. |
}

mezzoKOTFWords = \lyricmode {
}

altoKOTF = \relative c' {
  \key fis \major
  bis4 |
  cis2 r8 dis8 ~ dis4 |
  dis1 ~ |
  dis ~ |
  dis2\fermata r4 \key a \major
  c4 |
  cis2 d |
  e2 fis4 a |
  cis, eis e gis |
  ais, c dis\fermata r4 \key cis \major
  bis4 |
  dis2 bis
  dis1 ~ |
  dis ~ |
  dis | 
  g2 fis4\fermata r \key f \major c4 |
  ees2 e |
  ees1 ~ |
  ees4 r r2 |
  r2. fis4 |
  a1 ~ |
  a2\fermata r4 \key e \major c,4 |
  fis2 fisis |
  fis1 |
  r4 fis4 a cis, |
  f e gis2 ~ |
  gis1 ~ |
  gis2 \key aes \major c,4 |
  d2 ges |
  g2 ges |
  des1 |
  bes ~ |
  bes2 bes4 c |
  ees r \key bes \major c |
  g'8 ges ~ ges4 ~ ges8 ges ~ ges4 |
  f4 fis a cis, |
  f e aes bes, |
  c1 ~ |
  c4 b ~ b \key c \major c4 |
  g'2 ~ g8 a gis4 |
  bes4 c ~ c2 ~ |
  c4 b des c |
  d4 fis, a cis, |
  f e gis \key ees \major c, |
  b'1 |
  a |
  bes ~ |
  bes ~ |
  bes ~ |
  bes ~ |
  bes2. r4 |
}

altoKOTFWords = \lyricmode {
}

tenorKOTF = \relative c' {
  \clef "treble_8"
  \key fis \major
  gis4 |
  a2 r8 b8 ~ b4 |
  cis1 ~ |
  cis ~ |
  cis2\fermata r4
  \key a \major
  aes4 |
  g2 gis |
  cis1 ~ |
  cis ~ |
  cis2.\fermata r4 \key cis \major gis4 |
  cis2 gis |
  eis1 ~ |
  eis ~ |
  eis ~ |
  eis2.\fermata r4 \key f \major aes |
  c2 bes |
  a1 ~ |
  a2 fis4 a |
  cis, f e gis |
  b, c ees2 |
  r2\fermata r4 \key e \major gis |
  e'2 dis |
  b1 ~ |
  b2. r4 | 
  r fis a cis, |
  f e gis ais, |
  c dis \key aes \major aes' |
  bes2 ees |
  c1 |
  b2. fis4 ~ |
  fis a cis, f ~ |
  f1 ~ |
  f4 r \key bes \major aes |
  ees'4. cis8 ~ cis c ~ c4 |
  d2. fis,4 |
  a cis, f e |
  aes bes, c ees ~ |
  ees2. \key c \major aes4 |
  cis2 ~ cis8 f ~ f4 |
  e1 |
  r2. g4 |
  e2 g ~ |
  g4 r r \key ees \major aes, |
  g'1 |
  fis |
  g4 fis a cis, |
  f e gis bes, |
  c ees ~ ees f4 |
  des1 ~ |
  des2. r4 |
}

tenorKOTFWords = \lyricmode {
}

bassKOTF = \relative c {
  \clef "bass"
  \key fis \major
  ais4 |
  b2. r4 |
  R1 |
  R1 |
  r2\fermata r4
  \key a \major
  bes4 |
  bes2. r4 |
  R1 |
  R1 |
  r2.\fermata r4 \key cis \major ais |
  gisis2. r4 |
  R1 |
  R1 |
  R1 |
  r2.\fermata r4 \key f \major bes4 |
  aes2. r4 |
  R1 |
  R1 |
  R1 |
  R1 |
  r2\fermata r4 \key e \major ais4 |
  g2. r4 |
  R1 |
  R1 |
  R1 |
  R1 |
  r2 \key aes \major bes4 |
  ges2. r4 |
  R1 |
  R1 |
  R1 |
  R1 |
  r2 \key bes \major bes4 |
  f2. r4 |
  R1 |
  R1 |
  R1 |
  r2. \key c \major bes4 |
  e,2. r4 |
  R1 |
  R1 |
  R1 |
  r2. \key ees \major bes'4 |
  ees,1 ~ |
  ees2 r |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
}

bassKOTFWords = \lyricmode {
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