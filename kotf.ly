#(set-global-staff-size 15.87)

\version "2.17.0"
\include "defs-devel.ly"

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)
#(set-accidental-style 'modern-cautionary)

rall = \mark \markup \italic "rall."
accel = \mark \markup \italic "accel."
moltorall = \mark \markup \italic "molto rall."


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

mblue = { \bblue }
Mred = { \Red }
mred = { \rred }

marksKOTF = {
  \partial 4
  \tempo "très lent"
  \mtp #28
  s4 |
  \mtp #13 s4 \mtp #7 s \mtp #24 s \mtp #27 s |
  \tempo "plus vif"
  \mtp #40 s4 \mtp #47 s4 \mtp #48 s2 |
  s1 |
  s1 |
  s2. \bar "!!"
    \mtp #44
    \tempo "lent"
    s4 |
  s1 |
  \tempo "plus animé"
  \mtp #67 s4 \mtp #69 s \mtp #74 s \mtp #70 s |
  \mtp #68
  s1*2 |
  \mtp #68 s4 \mtp #65 s4 \mtp #63 s4  \bar "!!" \tempo "lent" \mtp #44 s4 |
  \time 4/4
  s2. \mtp #39 s4 |
  \tempo "plus fort"
  \unfoldChange #60 #80 #8 |
  s1*2 |
  s2. \bar "!!" \tempo "lent" \mtp #38 s4 |
  \mtp #51 s4 \mtp #47 s4 \mtp #47 s4 \mtp #41 s4 
  \tempo "plus profond"
  \mtp #71 s4 \mtp #78 s4 \mtp #82 s4 \mtp #93 s4 |
  s1*3 |
  s2. \bar "!!" s4 |
  \tempo "lent"
  \mtp #44 s4 \mtp #42 s \mtp #40 s \mtp #39 s |
  \tempo "plus dur"
  \mtp #69 s4 \mtp #73 s \mtp #77 s \mtp #80 s |
  s1*3 |
  \mtp #80 s4 \mtp #77 s \mtp #72 s \bar "!!" \mtp #68 s4 |
  \tempo "lent"
  \time 4/4
  \mtp #40 s4 \mtp #40 s \mtp #39 s \mtp #39 s |
  \tempo "plus long"
  \mtp #69 s4 \mtp #72 s \mtp #80 s \mtp #88 s |
  \mtp #93
  s1*2 |
  s2. \bar "!!" s4 |
  \time 4/4
  \tempo "lent"
  \mtp #49 s4 \mtp #51 s4 \mtp #50 s4 \mtp #47 s4
  \tempo "plus intense"
  \unfoldChange #80 #92 #8 |
  s1 |
  s2 \mtp #88 s4 \bar "!!" \mtp #80 s4 |
  \tempo "lent"
  \mtp #50 s4 \mtp #52 s \mtp #52 s \mtp #51 s
  \tempo "plus rapide"
  \unfoldChange #84 #100 #8 |
  s1 |
  \rall
  << { s1 s2. \bar "!!" s4 } { \unfoldChange #100 #80 #16 } >> |
  \accel
  \unfoldChange #80 #90 #16 |
  s1*3 |
  \rall
  \unfoldChange #90 #60 #14 \bar "||"
}

% not cot -- ton not chinz I'd com -- mand each
% the chip -- munks gen -- u -- flect to me. Though...

sopranoKOTF = \relative c' {
  \key fis \major
  \Mred \hairlenMed fisis4^\fp^\< |
  \set melismaBusyProperties = #'()
  gis16^\> [ ( gis gis gis gis gis gis gis ) ] r8\! << { \unset melismaBusyProperties gisis8 ~ gisis4 |
  ais4 \Black \mblue fis' a \mblue cis, |
  \mblue eis e \mblue gis \mblue ais, |
  bis \mblue dis ~ \mblue dis2 ~ \mblue dis2 r4 } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s4^\mp s2.^\p^\> s1 s1 s2^\pp } >>
  \key a \major
  \Mred g,4^\p^\< |
  a4 r\parend^\f ais4^\p \Black fis'^\pp |
  \mred b,4^\mp \mblue a'^\pp^ ~ \mblue a^\< \mblue cis, |
  f^\mf \mblue e \mblue gis \breathe bes,^\p |
  c ees4^\> ~ ees2 ~ |
  << { ees2. } { s2 s4^\pp } >> \key cis \major \Red fisis,4^\< |
  ais2^\fp b4 \Black fis'8^\pp^\< a |
  \mred bis,4 \mblue cis \mblue eis^\mf e |
  \mblue gis \mblue ais, \mblue bis \mblue dis ~ |
  \hairtip \mblue dis1^\> ~ |
  \mblue dis2 r4\! \key f \major \times 2/3 { r8 \mred g,4^\mf } |
  \mred b4 \times 2/3 { fis'8^\p r4 } \times 2/3 { \mred c2^\< a'4^\mf } |
  \mred cis,4^\p \mblue f^\< ~ \mblue f2 ~ |
  \mblue f4^\f e4^\> gis bes, |
  \mblue c1 ~ |
  \mblue c1^\p ~ |
  \mblue c2^\< r4\parend^\f \key e \major \mred g4 |
  \mred c4 fis8 [ a ] \mred cis,4^\subPd^\< f |
  \mred d4 \mblue e^\f ~ \mblue e2 ~ |
  \mblue e4 fis a cis, |
  f \mblue e \mblue gis ais, |
  bis4 dis ~ dis2 |
  r2. \key aes \major \mred g,4^\mf |
  \mred des'8 fis8^\p^\< a cis, \mred d^\mf f4^\> e8 |
  \mred ees4^\p \mblue aes ~ \mblue aes2 ~ |
  \mblue aes1 ~ |
  \mblue aes1 ~ |
  \mblue aes2. \key bes \major \mred g,4 |
  \mred d'2^\< f8 \mred ees e4 |
  \mred e2.^\mf r4 |
  aes4 \mblue bes, ~ \mblue bes c ~ |
  c2. \key c \major \mred g4 |
  \mred ees'2^\< ~ \mred ees8 \mred e ~ \mred e4 |
  \mred f4^\f fis a cis, |
  f \mblue e gis bes, |
  \mblue c1 ~ |
  \mblue c2.^\< \key ees \major \mred g4 |
  \mred e'^\ff fis a cis, |
  \mred f e gis bes, |
  \Mred ges'1 ~ |
  ges ~ |
  ges ~ |
  ges ~ |
  ges2.
}

sopranoKOTFWords = \lyricmode {
  If I (I I I I I I I) were King
  the chip -- munks gen -- uf -- lect to me. Though…
  I'd click my (my) heel
  show re -- spect to me the chip -- munks
  The spar -- row's
  (spar -- row's) wing
  The chip -- munks gen -- uf -- lec -- ting
  His wife (be) Queen (of) May
  show
  The chip -- munks show
  my re (my) gal (my) robes
  hailed,
  be hailed and crowned by ev' -- ry chip -- munk
  The trees (The trees they) would (they would)
  kneel fowl
  The moun (moun) tains (tains)
  bow
  chip -- munk's tail
  The bulls kow tow
  For cou -- rage is the thing of chip
  If I chip -- munk I were chip -- munk my
  king!
}

mezzoKOTF = \relative c' {
  \key fis \major
  \Mred \hairlenMed cisis4^\fp^\< |
  \set melismaBusyProperties = #'()
  dis16^\> [ ( dis dis dis dis dis dis dis ) ] r8\! \unset melismaBusyProperties << { eis8 ~ eis4 |
  eis1 ~ |
  eis ~ |
  eis ~ |
  eis2 } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s1^\mp s1^\> s4^\p } >> r4
  \key a \major
  d4^\p^\< |
  f4 r\parend^\f << { fis2 } { s4^\p s^\< } >> |
  gis1^\mp ~ |
  gis ~ |
  gis^\> ~ |
  << { gis2. } { s2 s4^\pp } >> \key cis \major cisis,4^\< |
  fisis2^\fp fis^\< |
  gis2^\mf^\> \Black fis\p |
  a4 \mblue cis,^\< ~ \mblue cis \mblue eis^\> |
  e4 \mblue gis ~ \mblue gis2^\< ~ |
  \mblue \hairtip gis2^\> r4\! \key f \major \times 2/3 { r8 \Mred d4^\mf } |
  \times 2/3 { ges2 r4 } g2^\< |
  g2^\> \Black \mblue a4^\mf cis,^\p^\< |
  \mblue f1 ~ |
  \mblue f4^\f e gis bes, |
  \mblue c4.^\> r8\parend^\p fis4 \mblue a^\< ~ |
  \mblue a2 r4\parend^\f \key e \major \Mred d,4 |
  a'2^\> ais^\< |
  a4 \Black fis^\f a cis, |
  f \mblue e \mblue gis ais, |
  bis dis ~ dis2 |
  R1 |
  r2. \key aes \major \Mred d4 |
  aes'2 beses^\> |
  bes2.^\p \Black a4 ~ |
  a f fes \bblue aes4 ~ |
  aes2. a4 ~ |
  a2. \key bes \major \mred d,4 |
  \mred bes'4^\< a4 ~ a8 \mred a4 gis8 |
  \mred a4^\mf \mblue bes c2 ~ |
  c2 ees ~ |
  ees2. \key c \major \mred d,4 |
  \mred bes'4^\< a ~ a8 \mred b4 bes8 |
  \mred d2^\f ees4 fis |
  a cis, f e |
  gis4 bes, ~ bes2 ~ |
  bes2.^\< \key ees \major \mred d,4 |
  \mred cis'1^\ff |
  \mred c |
  \mred des4 c \mblue ees2 |
  d4 \mblue des ~ \mblue des2 ~ |
  \mblue des4 fis, a cis, |
  f e aes \mblue bes, |
  c \mblue ees \mblue ees
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
  my re -- gal robes
  be hailed and crowned by ev' -- ry chip -- munk
  The trees would kneel
  fish a chip -- munk woof
  The moun (moun) tains (tains) bow
  chip -- munk's tail
  The bulls (bulls) ow (kow)
  tow cou - -rage is the thing of chip -- munks
  If I were king!
  Chip -- munk
  chip -- mnunk
  Chip -- munk, my chip -- munk cot -- ton chip -- munk king
}

altoKOTF = \relative c' {
  \key fis \major
  \hairlenMed bis4^\fp^\< |
  \set melismaBusyProperties = #'()
  \Mred cis16^\> [ ( cis cis cis cis cis cis cis ) ] r8\! << { \unset melismaBusyProperties dis8 ~ dis4 |
  dis1 ~ |
  dis ~ |
  dis ~ |
  dis2 } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s1^\mp s1^\> s4^\p } >> r4 \key a \major
  c4^\p^\< |
  cis4 r\parend^\f << { d2 } { s4^\p s4^\< } >> |
  e2^\mp \Black fis4 \mblue a |
  \mblue cis, eis \mblue e \mblue gis |
  bes, c^\> ees c |
  ees c ees^\pp \key cis \major \Mred bis4^\< |
  dis2^\fp bis^\<
  dis1^\mf^\> ~ |
  dis4 \Black fis^\p a \mblue cis,^\< ~  |
  << { \mblue cis2 } { s8 s4^\> } >> \mblue ais4^\mp \mblue bis | 
  \mblue \hairtip dis2^\> r4\! \Mred \key f \major \times 2/3 { r8 c4^\mf } |
  \times 2/3 { ees2 r4 } e2^\< |
  ees1^\> ~ |
  ees8^\pp r \Black r4 r fis^\< |
  \mblue a4^\mf cis,^\p \mblue f2^\< ~ |
  << { \mblue f1^\> ~ | } { s2. s4^\< } >>
  \mblue f2 r4\parend^\f \key e \major \Mred c4 |
  fis2^\> fisis^\< |
  fis1 ~ |
  fis1 ~ |
  fis1 ~ |
  fis2^\f \Black a4 cis, |
  f \mblue e \mblue gis \key aes \major \Mred c,4 |
  d2 ges^\> |
  g2^\p \Black ges |
  des1 ~ |
  des4 \mblue c \mblue ees2 ~ |
  ees4 f e \key bes \major \mred c4 |
  \mred g'8^\< ges ~ ges4 ~ ges8 \mred ges ~ \mred ges4 |
  \mred f2.^\mf e4 ~ |
  e1 ~ |
  e2. \key c \major \mred c4 |
  \mred g'8^\< ges ~ ges4 f8 \mred a gis4 |
  \mred bes2^\f \mblue c4 cis ~ |
  cis b des c |
  d4 fis, a cis, |
  f^\< e gis \key ees \major \mred \mred c, |
  \mred b'1^\ff |
  \mred a |
  \mred bes ~ |
  \mred bes ~ |
  \mred bes ~ |
  \mred bes ~ |
  \mred bes2.
}

altoKOTFWords = \lyricmode {
  If I (I I I I I I I) were King
  I'd click my heel
  would show re -- spect to me the \repeat unfold 3 { chip -- munks }
  The spar -- row's wing
  The chip -- munks uf -- lec -- ting
  His wife Queen May
  The chip -- munks show
  my re -- gal robes
  hailed and crowned by ev
  The trees would kneel fowl
  fish chip -- munk rab -- bit
  The moun (moun) tains
  bow munk
  The bulls (The bulls) kow (kow)
  tow cou -- rage
  the thing of things for cou -- rage is the thing
  If I were king!
}

tenorKOTF = \relative c' {
  \clef "treble_8"
  \key fis \major
  \hairlenMed gis4^\fp^\< |
  \set melismaBusyProperties = #'()
  \Mred a16^\> [ ( a a a a a a a ) ] r8\! << { \unset melismaBusyProperties b8 ~ b4 |
  cis1 ~ |
  cis ~ |
  cis ~ |
  cis2 } { \hairlenSmall s8.^\< \hairlenSmall s8.^\> s1^\mp s1^\> s4^\p } >>  r4
  \key a \major
  aes4^\p^\< |
  g4 r\parend^\f << { gis2  } { s4^\p s4^\< } >> |
  cis1^\mp ~ |
  cis ~ |
  cis^\> ~ |
  << { cis2. } { s2 s4^\pp } >> \key cis \major gis4^\< |
  cis2^\fp gis^\< |
  eis1^\mf^\> ~ |
  eis ~ |
  << { eis^\p ~ | } { s2 s^\< } >>
  \hairtip eis2^\> r4\! \key f \major \times 2/3 { r8 aes4^\mf } |
  \times 2/3 { c2 r4 } bes2^\< |
  a1^\> ~ |
  a4^\p \Black cis, \mblue f2^\< ~ |
  f2. e4^\f^\> |
  gis bes, \mblue c2 |
  \mblue ees2^\< r4\parend^\f \key e \major \Mred gis |
  e'2^\> dis^\< |
  b1 ~ |
  b2.^\f r4 | 
  r \Black fis a cis, |
  f \mblue e \mblue gis ais, |
  c2 dis4 \key aes \major \Mred aes' |
  bes2 ees^\> |
  c2.^\p \Black b4 ~ |
  b1 |
  bes1 |
  des2. \key bes \major \mred aes4 |
  \mred ees'4.^\< cis8 ~ cis \mred c ~ \mred c4 |
  \mred d1^\mf ~ |
  \mred d1 |
  fis4 a cis, \key c \major \mred aes4 |
  \mred cis4.^\< c8 ~ c8 \mred f ~ \mred f4 |
  \mred e1^\f |
  R1 |
  f4 \mblue e ~ \mblue e2 |
  gis4 bes,^\< \mblue c \key ees \major \mred aes |
  \mred g'1^\ff |
  \mred fis |
  \mred g4 fis a cis, |
  f e gis \mblue bes, |
  c \mblue ees ~ \mblue ees fis4 |
  a \mblue des, \mblue des2 ~ |
  \mblue des2.
}

tenorKOTFWords = \lyricmode {
  If I (I I I I I I I) were King
  I'd click my heel
  The spar -- row's wing
  His wife Queen
  May
  munks show
  The chip -- munks show, show
  my re -- gal robes
  be hailed and crowned by ev' -- ry chip -- munk
  The trees would
  kneel fish rab -- bit
  The moun (moun) tains
  bow
  The rab -- bit
  The bulls (bulls) kow tow
  is the
  thing of chip
  If I were king
  Chip -- munk, my chip -- munk cot -- ton chip -- munk
  my chip -- munk king! 
}

bassKOTF = \relative c {
  \clef "bass"
  \key fis \major
  \hairlenMed \Mred ais4^\fp^\< |
  \set melismaBusyProperties = #'()
  b16^\> [ ( b b b b b b b ) ] r8\! \unset melismaBusyProperties r8 r4 |
  R1 |
  R1 |
  R1 |
  r2 r4
  \key a \major
  bes4^\p^\< |
  bes4 r\parend^\f r2 |
  R1 |
  R1 |
  R1 |
  r2. \key cis \major ais4^\< |
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
  r2 r4 \key e \major ais4 |
  g2.^\> r4\parend^\p |
  R1 |
  R1 |
  R1 |
  R1 |
  r2. \key aes \major bes4^\mf |
  ges2. r4 |
  R1 |
  R1 |
  R1 |
  r2. \key bes \major bes4^\p |
  f2 ~ f8 r r4 |
  R1 |
  R1 |
  r2. \key c \major bes4^\mf |
  e,2. r4 |
  R1 |
  R1 |
  R1 |
  r2. \key ees \major bes'4^\ff |
  ees,1 ~ |
  ees2 r |
  R1 |
  R1 |
  R1 |
  R1 |
  r2.
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