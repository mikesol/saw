#(set-global-staff-size 15.87)

%%%%%% ending with E major
%%%%%% then D major
%%%%%% then B major (if happy)
%%%%%% then D major (why oh why)
%%%%%% C-major happy going down

\version "2.17.0"
\include "defs-devel.ly"

#(load "swing.scm")

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)

rall = \mark \markup \italic "rall."
moltorall = \mark \markup \italic "molto rall."

myred = \once \override NoteHead #'color = #red
myblue = \once \override NoteHead #'color = #blue
myorange = \once \override NoteHead #'color = #(x11-color 'orange)
mydarkgreen = \once \override NoteHead #'color = #darkgreen
mydarkmagenta = \once \override NoteHead #'color = #darkmagenta
mydarkyellow = \once \override NoteHead #'color = #darkyellow

myfinalred = \myred
myfinalblue = \myblue
myfinalorange = \myorange
myfinalgreen = \mydarkgreen
myfinaldarkmagenta = \mydarkmagenta
myfinaldarkyellow = \mydarkyellow

mFR = \myfinalred
mFB = \myfinalblue 
mFO = \myfinalorange
mFG = \myfinalgreen 
mFM = \myfinaldarkmagenta
mFY = \myfinaldarkyellow



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
  max-systems-per-page = #2
}

\header {
  title = "Finale: Sit Ozfårs Wundrföl Wysr"
  subtitle = \markup { for Marie Perbost \super 1}
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

prefatoryMatter = {
  \autoBeamOff
}

scorePrefatoryMatter = {
  \prefatoryMatter
}

midiPrefatoryMatter = {
  \prefatoryMatter
}

marksFinalRepeat = {
  \tempo "Andante" 4=76
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  << { \unfoldChange #76 #56 #40 } { s1 \rall } >>
  \time 6/4
  \moltorall
  \unfoldChange #56 #36 #10
  \unfoldChange #70 #84 #2
}

sopranoFinalRepeat = \relative c''' {
  \key b \major
  \mFM c1 ~ |
  \mFM c2. \mFY d,4 |
  \mFR dis1 ~ |
  \mFR dis8 \mFB cis4. ~ \mFB cis8 \mFO b4 g8 ~ |
  \times 2/3 { g4 \mFG e'8 ~ } \mFG e4 ~ \mFG e2 |
  ais,8 \mFM b4 \mFY cis8 ~ \mFY cis4 ~ cis4. bis8 r4 |
  
}

sopranoFinalRepeatWords = \lyricmode {
}

tasteless = \markup \justify {
 Tasteless : (ˈtāst - lis) considered to be lacking in aesthetic
 judgment or to offend against what is regarded as appropriate behavior.
}

mezzoFinalRepeat = \relative c''' {
  \key b \major
  \mFM g1 ~ |
  \mFM g2. \mFY ais,4 |
  %\mFR \times 2/3 {  b4 b'8 ~ } \times 6/7 { b [ ais8 gis8 ] fis4 dis8 [ \mFR b ] } |
  \mFR \times 2/3 {  b4 b'8 ~ } \times 6/7 { b [ ais8 gis8 ] fis [ e ] dis8 [ cis ] } |
  %\times 2/3 { \mFR ais8 \mFB a4 ~ } \mFB a4 \mFO fis2 |
  \times 2/3 { %{\mFR%} b8 [ \mFB a8. \footnote #'(1 . 1) \tasteless NoteHead c'16 ] } \times 2/3 { g16 [ bes e,8 dis ] } \times 2/3 { d'16 [ gis, b f a d, ~ ] } d [ \mFO eis8. ] |
  % c' g bes e, dis      d' gis, b f a
  %\mFG b,4  g16 dis''8. ~ dis8 \mFM b,8 ~ \mFM \times 2/3 { b8 cis4 ~ } |
  \mFG fis4  g,8 [ dis''8 ~ ] dis16 [ cis b8 ] ais16 [ gis fis8 ] | 
  e8 [ \mFM dis8 ~ ] \mFM dis4 ~ dis8 gis8 ~ gis8 \mFY g4. r4 |
  %b16 [ b' ais gis ] fis [ e dis cis ] \times 4/5 { b8. [ ais'16 fis16 ] } \times 4/5 { a16 [  cis,8. c16 ~ ] } |
  %c8 [ \times 2/3 { gis'16 eis g ] } ais,8  [ \times 2/3 { fis'16 cis e ] }  \times 2/3 { dis8 [ b f ~ ] } f16 [ d' e,8 ] |
  %\times 2/3 { gis d' g ~ } g16 cis,8. ~ cis4 fis, |
}

mezzoFinalRepeatWords = \lyricmode {
  Oz.
}

altoFinalRepeat = \relative c'' {
  \key b \major
  \mFM dis1 ~ |
  \mFM dis4 d, gis, \mFY gis' |
  \mFR gis2 ~ \times 2/3 { gis8 [ g,8 g' ~ ] } \times 2/3 { g8 [ a b ] } |
  %\mFB fis2 \mFO d2 |
  \mFB \times 2/3 { fis4 g2 } gis4 ~ gis16 \mFO a8. ~ | %a8 \mFO d,8 |
  \mFG a4. %{\mFG a'4.%} a,8 \mFM gis'4 fis8 b8 |
  \times 2/3 { cis,4 a'16 [ cis, ] } \times 2/3 { g' [ a, ] fis'4 } \mFY e2 dis4 r4 |
  %gis2 %~ gis16 [ ais gis fis ] e [ dis cis b ] |
  %\times 2/3 { a'4    f8 }  c16  [ c' b a ] g [ f e d ]
}

altoFinalRepeatWords = \lyricmode {
  Oz
}

tenorFinalRepeat = \relative c'' {
  \clef "treble_8"
  \key b \major
  \mFM a2. b,4 |
  f2. \mFY f'4 |
  \mFR e8 [ fis, ] fis' [ eis ] cis [ %{\mFR%} e ] \times 2/3 { dis [ b d ] } |
  \times 4/5 { ais8 [ b ] \mFB e4 d8 } \times 4/5 { eis,8 [ fis ] cis'8. [ \mFO bis ] } %cis'~ \times 2/3 { cis [ e, f ] } } |
  %\mFO bis8 [ fis8 ] \mFG \times 2/3 { eis'8 [ bis8 dis ] } \mFM cis4 ~ \times 2/3 { \mFM cis8 [ ais8 b8 ] } |
  b8 [ ais8 ] \mFG eis'4 ~ \times 2/3 { \mFG eis4 \mFM cis8 ~ } \times 2/3 { \mFM cis8 [ ais8 b8 ] } |
  gis'8 [ fis8 ] e8 [ d8 ] c4 \mFY ais2 r4 |

  %\times 2/3 { g,8 [ e' c ] } \times 2/3 { dis [ eis, d' ] } \times 2/3 { e, [ cis' g ] } \times 2/3 { b [ eis, ais ] } |
  %\times 4/5 { cis,8. [ gis''16 eis16 ] } \times 4/5 { g16 [  a,8. b'16 ] } \times 4/5 { g16 [  ais16 fis16. f16. ] } a16 b,8 ais16 ~ |
  %\times 4/5 { ais [ bis' g ais fis ] ~ } fis [ f e8 ] b'16 [ cis,8. ] ais'16 [ bis,8. ] |
}

tenorFinalRepeatWords = \lyricmode {
  Oz.
}

bassFinalRepeat = \relative c' {
  \clef bass
  \key b \major
  r4 gis4 \mFM d2 ~ |
  \mFM d2 ~ \mFM d8 \mFY g,4. |
  \mFR fis1 |
  \mFB d'2 \mFO gis, |
  \mFG g ~ \mFG g8 \mFM e'4. ~ | 
  \mFM e4 \mFY fis,4 ~ \mFY fis2. r4 |
  %~ |
  %fis2.. f8 ~ |
  %f1 |
}

bassFinalRepeatWords = \lyricmode {
  Oz.
}

marksLastNote = {
  \tempo "Maestoso" 4=44
  \time 4/4
  s1 |
  \time 11/12 
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \rall
  << { s1*11/12 } { \unfoldChange #44 #29 #7 } >> |
  \time 4/4
  \tempo "Andante con moto" 4=88
  s1 |
  \rall
  \unfoldChange #88 #60 #48 \bar "|."
}

sopranoLastNote = \relative c''' {
  %\key b \major
  b1 ~ |
  b2. ~ \times 2/3 { b4 ~ } |
  b1 ~ |
  b2 r4 fis4 ~ |
  fis1 ~ |
  fis4 d a2 ~ |
  a4 gis'2 g4 ~ |
  g2. r4 |
  b1^\longfermata |
}

sopranoLastNoteWords = \lyricmode {
  Oz.
}

mezzoLastNote = \relative c'' {
  %\key b \major
  r4 fis8 [ eis ] cis [ e ] \times 2/3 { dis [ b d ] } |
  \times 2/3 { b [ ais fis ] }  \times 2/3 { a [ gis ais ] } \times 2/3 { f [ a dis, ] } \times 2/3 { fisis [ ais ] } |
  cis,1 ~ |
  cis4 dis ais2 ~ |
  ais2. b'4 |
  g2. eis'4 |
  c2 d ~ |
  d4 cis2 r4 |
  dis1^\longfermata | 
}

mezzoLastNoteWords = \lyricmode {
  Oz.
}

altoLastNote = \relative c'' {
  %\key b \major
  b2 ~ b8 [ ais8 ] \times 2/3 { a [ eis gis ] }  |
  \times 2/3 { f [ g d ] } \times 2/3 { g [ e eis ] } \times 2/3 { d [ e cis ] } \times 2/3 { dis [ eis ] } |
  fis,2. cis'4 |
  g2. cis'4 ~ |
  cis4 a e2 ~ |
  e2. dis4 ~ |
  dis1 |
  a'2. r4 |
  b'1^\longfermata |
}

altoLastNoteWords = \lyricmode {
  Oz
}

tenorLastNote = \relative c'' {
  \clef "treble_8"
  %\key b \major
  r4 a8 [ gis ] e [ g ] \times 2/3 { fis [ cis e ] } |
  b2. ~ \times 2/3 { b4 ~ } |
  b gis d2 ~ |
  d2. g'4 |
  d1 ~ |
  d4 ais2. ~ |
  ais4 c2. ~ |
  c2. r4 |
  fis1^\longfermata | 
}

tenorLastNoteWords = \lyricmode {
  Oz.
}

bassLastNote = \relative c' {
  \clef bass
  %\key b \major
  b1 |
  \times 2/3 { g8 [ e' c ] } \times 2/3 { dis [ eis, d' ] } \times 2/3 { e, [ cis' g ] } \times 2/3 { a [ gis ] } |
  c,1 ~ |
  c1 |
  f,1 ~ |
  f ~ |
  f ~ |
  f2. r4 |
  b1^\longfermata |
}

bassLastNoteWords = \lyricmode {
  Oz.
}
marksLastNoteDraftTwo = {
  \tempo "Maestoso" 4=88
  \time 4/4
  << { \unfoldChange #80 #68 #24  } { s1 \rall } >> 
  \unfoldChange #72 #40 #8
  \unfoldChange #112 #112 #8
  \tempo "Largo"
  \unfoldChange #112 #40 #16
  s1 \bar "|."
}

sopranoLastNoteDraftTwo = \relative c''' {
  %\key b \major
  b1 ~ |
  b1 ~ |
  b1 ~ |
  b1 |
  R1 |
  b1 ~ |
  b1 ~ |
  b4 r r2^\fermata |
}

sopranoLastNoteDraftTwoWords = \lyricmode {
  Oz.
}

mezzoLastNoteDraftTwo = \relative c'' {
  %\key b \major
  r2 fis4 e |
  g dis a' e |
  ais f e d |
  cis d b e |
  R1 |
  dis1 ~ |
  dis ~ |
  dis4 r4 r2^\fermata |
}

mezzoLastNoteDraftTwoWords = \lyricmode {
  Oz.
}

altoLastNoteDraftTwo = \relative c'' {
  %\key b \major
  b2. c4 |
  ees b c b |
  e c ais b |
  a ais g c |
  R1 |
  b1 ~ |
  b ~ |
  b4 r r2^\fermata |
}

altoLastNoteDraftTwoWords = \lyricmode {
  Oz
}

tenorLastNoteDraftTwo = \relative c'' {
  \clef "treble_8"
  %\key b \major
  r2 a4 g bes f fis g |
  gis a fis g |
  f fis d fis |
  R1 |
  fis1 ~ |
  fis ~ |
  fis4 r4 r2^\fermata |
}

tenorLastNoteDraftTwoWords = \lyricmode {
  Oz.
}

bassLastNoteDraftTwo = \relative c' {
  \clef bass
  %\key b \major
  b1 ~ |
  b1 ~ |
  b1 ~ |
  b1 |
  R1 |
  b,1 ~ |
  b1 ~ |
  b4 r r2^\fermata |
}

bassLastNoteDraftTwoWords = \lyricmode {
  Oz.
}
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" } <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
	\sopranoFinalRepeat
        \sopranoLastNote
      } {
	\scorePrefatoryMatter
	\marksFinalRepeat
        \marksLastNote
      } >> }
      \lyricsto "soprano" \new Lyrics {
	\sopranoFinalRepeatWords
        \sopranoLastNoteWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" } <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
	\mezzoFinalRepeat
        \mezzoLastNote
      }
      \lyricsto "mezzo" \new Lyrics {
	\mezzoFinalRepeatWords
        \mezzoLastNoteWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" } <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
	\altoFinalRepeat
        \altoLastNote
      }
      \lyricsto "alto" \new Lyrics {
	\altoFinalRepeatWords
        \altoLastNoteWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" } <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
	\tenorFinalRepeat
        \tenorLastNote
      }
      \lyricsto "tenor" \new Lyrics {
	\tenorFinalRepeatWords
        \tenorLastNoteWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" } <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
	\bassFinalRepeat
        \bassLastNote
      }
      \lyricsto "bass" \new Lyrics {
	\bassFinalRepeatWords
        \bassLastNoteWords
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
  \midi {}
}

