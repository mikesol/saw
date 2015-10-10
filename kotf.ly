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

marksKOTF = {
  \partial 4
  \tempo "lent" 4=44
  s4 |
  s1 |
  \tempo "plus vif" 4=60
  s1*2 |
  s2. \bar "!!"
    \tempo "lent" 4=44
    s4 |
  s1 |
  \tempo "plus animé" 4=60
  s1*3 |
  \time 5/4
  s1  \bar "!!" \tempo "lent" 4=44 s4
  \time 4/4
  s1 |
  %  no 5/4 here, need to cut double wait
  \tempo "plus fort" 4=60
  s1*3 |
  %\time 5/4
  s2. \bar "!!" \tempo "lent" 4=44 s4 |
  \time 4/4
  s1 |
  \tempo "plus profond" 4=60
  s1*4 |
  s2. \bar "!!" \tempo "lent" 4=44 s4 |
  s1 |
  \tempo "plus dur" 4=60
  s1*4 |
  \time 3/4
  s2 \bar "!!" \tempo "lent" 4=44 s4 |
  \time 4/4
  s1 |
  \tempo "plus long" 4=60
  s1*4 |
  \time 3/4
  s2 \bar "!!" \tempo "lent" 4=44 s4 |
  \time 4/4
  s1 |
  \tempo "plus intense" 4=60
  s1*3 |
  s2. \bar "!!" \tempo "lent" 4=44 s4 |
  s1 |
  \tempo "plus rapide" 4=60
  s1*3 |
}

% not cot -- ton not chinz I'd com -- mand each
% the chip -- munks gen -- u -- flect to me. Though...

sopranoKOTF = \relative c' {
  \key fis \major
  \hairlenMed fisis4^\fp^\< |
  \set melismaBusyProperties = #'()
  gis16^\> [ ( gis gis gis gis gis gis gis ) ] r8\! << { \unset melismaBusyProperties gisis8 ~ gisis4 |
  ais4 \bblue fis' a \bblue cis, |
  \bblue eis e \bblue gis \bblue ais, |
  bis \bblue dis\fermata } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s4^\mp s2.^\p^\> s1 s4 s4^\pp } >>  r
  \key a \major
  g,4^\p^\< |
  a4 r\parend^\f ais4^\p fis'^\pp |
  b,4^\mp \bblue a'^\pp^ ~ \bblue a^\< \bblue cis, |
  f^\mf \bblue e \bblue gis \breathe bes,^\p |
  c ees4^\> ~ ees2 ~ |
  ees2. r4\parend^\pp \key cis \major fisis,4^\< |
  ais2^\fp b4 fis'8^\pp^\< a |
  bis,4 \bblue cis \bblue eis^\mf e |
  \bblue gis \bblue ais, \bblue bis \bblue dis ~ |
  \hairtip \bblue dis1^\> ~ |
  \bblue dis2 r4\! \key f \major \times 2/3 { r8 g,4^\mf } |
  b4 \times 2/3 { fis'8^\p r4 } \times 2/3 { c2^\< a'4^\mf } |
  cis,4^\p \bblue f^\< ~ f2 ~ |
  f4^\f e4^\> gis bes, |
  \bblue c1 ~ |
  \bblue c1^\p ~ |
  \bblue c2^\< r4\parend^\f \key e \major g4 |
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
  If I (I I I I I I I) were King
  the chip -- munks gen -- uf -- lect to me. Though…
  I'd click my (my) heel
  show re -- spect to me the chip -- munks
  The spar -- row's
  spar -- row's wing
  The chip -- munks gen -- uf -- lec -- ting
  His wife be Queen of May
  show
  The chip -- munks show
}

mezzoKOTF = \relative c' {
  \key fis \major
  \hairlenMed cisis4^\fp^\< |
  \set melismaBusyProperties = #'()
  dis16^\> [ ( dis dis dis dis dis dis dis ) ] r8\! \unset melismaBusyProperties << { eis8 ~ eis4 |
  eis1 ~ |
  eis ~ |
  eis2\fermata } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s1^\mp s1^\> s4^\p } >> r4
  \key a \major
  d4^\p^\< |
  f4 r\parend^\f << { fis2 } { s4^\p s^\< } >> |
  gis1^\mp ~ |
  gis ~ |
  gis^\> ~ |
  gis2. r4\parend^\pp \key cis \major cisis,4^\< |
  fisis2^\fp fis^\< |
  gis2^\mf^\> fis\p |
  a4 \bblue cis,^\< ~ \bblue cis \bblue eis^\> |
  e4 \bblue gis ~ \bblue gis2^\< ~ |
  \bblue \hairtip gis2^\> r4\! \key f \major \times 2/3 { r8 d4^\mf } |
  \times 2/3 { ges2 r4 } g2^\< |
  g2^\> \bblue a4^\mf cis,^\p^\< |
  \bblue f1 ~ |
  \bblue f4^\f e gis bes, |
  \bblue c4.^\> r8\parend^\p fis4 \bblue a^\< ~ |
  \bblue a2 r4\parend^\f \key e \major d,4 |
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
  If I (I I I I I I I) were King
  I'd click my heel
  The spar -- row's wing
  The chip -- munks uf -- lec -- ting
  His wife Queen May
  chip -- munks show
  The chip -- munks show
  munks show
}

altoKOTF = \relative c' {
  \key fis \major
  \hairlenMed bis4^\fp^\< |
  \set melismaBusyProperties = #'()
  cis16^\> [ ( cis cis cis cis cis cis cis ) ] r8\! << { \unset melismaBusyProperties dis8 ~ dis4 |
  dis1 ~ |
  dis ~ |
  dis2\fermata } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s1^\mp s1^\> s4^\p } >> r4 \key a \major
  c4^\p^\< |
  cis4 r\parend^\f << { d2 } { s4^\p s4^\< } >> |
  e2^\mp fis4 \bblue a |
  \bblue cis, eis \bblue e \bblue gis |
  bes, c^\> ees c |
  ees c ees r4\parend^\pp \key cis \major
  bis4^\< |
  dis2^\fp bis^\<
  dis1^\mf^\> ~ |
  dis4 fis^\p a \bblue cis,^\< ~  |
  << { \bblue cis2 } { s8 s4^\> } >> \bblue ais4^\mp \bblue bis | 
  \bblue \hairtip dis2^\> r4\! \key f \major \times 2/3 { r8 c4^\mf } |
  \times 2/3 { ees2 r4 } e2^\< |
  ees1^\> ~ |
  ees8^\pp r fis2.^\< |
  \bblue a4^\mf cis,^\p \bblue f2^\< ~ |
  << { \bblue f1^\> ~ | } { s2. s4^\< } >>
  \bblue f2 r4\parend^\f \key e \major c4 |
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
  If I (I I I I I I I) were King
  I'd click my heel
  would show re -- spect to me the \repeat unfold 3 { chip -- munks }
  The spar -- row's wing
  The chip -- munks uf -- lec -- ting
  His wife Queen May
  The chip -- munks show
}

tenorKOTF = \relative c' {
  \clef "treble_8"
  \key fis \major
  \hairlenMed gis4^\fp^\< |
  \set melismaBusyProperties = #'()
  a16^\> [ ( a a a a a a a ) ] r8\! << { \unset melismaBusyProperties b8 ~ b4 |
  cis1 ~ |
  cis ~ |
  cis2\fermata } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s1^\mp s1^\> s4^\p } >>  r4
  \key a \major
  aes4^\p^\< |
  g4 r\parend^\f << { gis2  } { s4^\p s4^\< } >> |
  cis1^\mp ~ |
  cis ~ |
  cis^\> ~ |
  cis2. r4\parend^\pp \key cis \major gis4^\< |
  cis2^\fp gis^\< |
  eis1^\mf^\> ~ |
  eis ~ |
  << { eis^\p ~ | } { s2 s^\< } >>
  \hairtip eis2^\> r4\! \key f \major \times 2/3 { r8 aes4^\mf } |
  \times 2/3 { c2 r4 } bes2^\< |
  \bblue a1^\> ~ |
  \bblue a4^\p cis, \bblue f2^\< ~ |
  f2. e4^\f^\> |
  gis bes, \bblue c2 |
  \bblue ees2^\< r4\parend^\f \key e \major gis |
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
  If I (I I I I I I I) were King
  I'd click my heel
  The spar -- row's wing
  His wife Queen
  May
  munks show
  The chip -- munks show, show
}

bassKOTF = \relative c {
  \clef "bass"
  \key fis \major
  \hairlenMed ais4^\fp^\< |
  \set melismaBusyProperties = #'()
  b16^\> [ ( b b b b b b b ) ] r8\! \unset melismaBusyProperties r8 r4 |
  R1 |
  R1 |
  r2\fermata r4
  \key a \major
  bes4^\p^\< |
  bes4 r\parend^\f r2 |
  R1 |
  R1 |
  R1 |
  r2. r4 \key cis \major ais^\< |
  \hairtip gisis2.^\fp^\> r4\! |
  R1 |
  R1 |
  R1 |
  r2 r4 \key f \major \times 2/3 { r8 bes4^\mf } |
  \times 2/3 { aes2 r4 } r2 |
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
  If I (I I I I I I I)
  I'd click
  The spa
  His wife
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