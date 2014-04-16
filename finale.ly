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

myred = \once \override NoteHead #'color = #red

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

rall = \mark \markup \italic "rall."

marksFinalRepeat = {
  \tempo "Andante" 4=76
  \unfoldChange #76 #56 #40
  \unfoldChange #56 #36 #8
}

sopranoFinalRepeat = \relative c''' {
  \key b \major
  c1 ~ |
  c2. d,4 |
  dis1 |
  cis2 b |
  e2 dis2 ~ |
  dis2 cis |
  %~ |
  %dis8 cis4. ~ cis8 b4. ~ |
  %b8 e4. ~ e4. dis8 ~ |
  %dis4. cis8 ~ cis2 |
  
}

sopranoFinalRepeatWords = \lyricmode {
}

mezzoFinalRepeat = \relative c''' {
  \key b \major
  g1 ~ |
  g2. ais,4 |
  b1 |
  a2 fis |
  b2 b2 ~ |
  b2 g |
  %b16 [ b' ais gis ] fis [ e dis cis ] \times 4/5 { b8. [ ais'16 fis16 ] } \times 4/5 { a16 [  cis,8. c16 ~ ] } |
  %c8 [ \times 2/3 { gis'16 eis g ] } ais,8  [ \times 2/3 { fis'16 cis e ] }  \times 2/3 { dis8 [ b f ~ ] } f16 [ d' e,8 ] |
  %\times 2/3 { gis d' g ~ } g16 cis,8. ~ cis4 fis, |
}

mezzoFinalRepeatWords = \lyricmode {
  Oz.
}

altoFinalRepeat = \relative c'' {
  \key b \major
  dis1 ~ |
  dis4 d, gis, gis' |
  gis1 |
  fis2 d |
  a'2 gis2 ~ |
  gis2 e |

  %gis2 %~ gis16 [ ais gis fis ] e [ dis cis b ] |
  %\times 2/3 { a'4    f8 }  c16  [ c' b a ] g [ f e d ]
}

altoFinalRepeatWords = \lyricmode {
  Oz
}

tenorFinalRepeat = \relative c'' {
  \clef "treble_8"
  \key b \major
  a2. b,4 |
  f2. f'4 |
  e1 |
  e2 c |
  f cis ~ |
  cis ais |
  %e8 [ fis, ] fis' [ eis ] cis [ e ] \times 2/3 { dis [ b d ] } |
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
  r4 gis4 d2 ~ |
  d2 ~ d8 g,4. |
  fis1 |
  d'2 gis, |
  g e' ~ | 
  e fis, |
  %~ |
  %fis2.. f8 ~ |
  %f1 |
}

bassFinalRepeatWords = \lyricmode {
  Oz.
}

marksLastNote = {
  \tempo "Maestoso" 4=56
  s1 |
  \time 11/12 
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \rall
  << { s1*11/12 } { \unfoldChange #56 #29 #7 } >> |
  \time 4/4
  \tempo "Andante con moto" 4=88
  s1 |
  \rall
  \unfoldChange #88 #60 #48 \bar "|."
}

sopranoLastNote = \relative c''' {
  \key b \major
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
  \key b \major
  r4 fis8 [ eis ] cis [ e ] \times 2/3 { dis [ b d ] } |
  \times 2/3 { b [ ais fis ] }  \times 2/3 { a [ gis ais ] } \times 2/3 { f [ a dis, ] } \times 2/3 { fisis [ ais ] } |
  cis,1 ~ |
  cis4 dis ais2 ~ |
  ais2. b'4 |
  g2. fis'4 |
  c2 d ~ |
  d4 cis2 r4 |
  dis1^\longfermata | 
}

mezzoLastNoteWords = \lyricmode {
  Oz.
}

altoLastNote = \relative c'' {  \key b \major
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
  \key b \major
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
  \key b \major
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
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
	\sopranoFinalRepeat
        %\sopranoLastNote
      } {
	\scorePrefatoryMatter
	\marksFinalRepeat
        %\marksLastNote
      } >> }
      \lyricsto "soprano" \new Lyrics {
	\sopranoFinalRepeatWords
        %\sopranoLastNoteWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
	\mezzoFinalRepeat
        %\mezzoLastNote
      }
      \lyricsto "mezzo" \new Lyrics {
	\mezzoFinalRepeatWords
        %\mezzoLastNoteWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
	\altoFinalRepeat
        %\altoLastNote
      }
      \lyricsto "alto" \new Lyrics {
	\altoFinalRepeatWords
        %\altoLastNoteWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
	\tenorFinalRepeat
        %\tenorLastNote
      }
      \lyricsto "tenor" \new Lyrics {
	\tenorFinalRepeatWords
        %\tenorLastNoteWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
	\bassFinalRepeat
        %\bassLastNote
      }
      \lyricsto "bass" \new Lyrics {
	\bassFinalRepeatWords
        %\bassLastNoteWords
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

