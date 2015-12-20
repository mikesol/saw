\version "2.17.0"
\include "defs-devel.ly"
\include "stylesheet.ly"

legero = \markup \italic "legero"

\header {
  title = "The Coroner" %(1)"
  subtitle = \markup { for Haendel }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

asCoroner = \lyricmode {
  As co -- ro -- ner
}

iMustConfer = \lyricmode {
  I must con -- fer
}

firstLine = \lyricmode {
  \asCoroner \iMustConfer
}

secondLine = \lyricmode {
  I've care -- ful -- ly ex -- am -- ined her
}

thirdLine = \lyricmode {
  And she's not on -- ly mere -- ly dead
}

thirdLineShort = \lyricmode {
  And she's not on mere dead
}

fourthLine = \lyricmode {
  She's real -- ly most sin -- cere -- ly dead
}

firstPart = \lyricmode {
  \firstLine
  \secondLine
  \thirdLine
}

secondPart = \lyricmode {
  \secondLine
  \thirdLine
  \fourthLine
}

coronerWords = \lyricmode {
  \firstLine
  \secondLine
  \thirdLine
  \fourthLine
}

coronerWordsShort = \lyricmode {
  \firstLine
  \secondLine
  \thirdLineShort
  \fourthLine
}

coronerWordsShortShort = \lyricmode {
  \iMustConfer
  \secondLine
  \thirdLineShort
  \fourthLine
}

coronerWordsLast = \lyricmode {
  \iMustConfer
  \secondLine
  \thirdLine
  \fourthLine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% first

nothing = {}

marksCoronerFirst = {
  \time 2/4
  \tempo "Allegro" 4=128
  \partial 8 s8
  %%%%%%%
  s2*8
  \time 3/4
  s2.*6 |
  \time 2/4
  s2*8 |
  s2*8 |
  s2*8 |
  s2*4 |
  \mark "rall."
  \unfoldChange #128 #52 #8 |
  \unfoldChange #52 #32 #4 |
  \tempo 4=32
  s2 |
  \tempo "Maestoso" 4=80 |
  s2*2 |
  \mark "accel."
  \unfoldChange #80 #96 #8 |
  \tempo "Andante" 4=96
  s2*2 |
  \unfoldChange #96 #120 #4 |
  \tempo "Moderato" 4=120
  \time 3/4
  s2.*2 |
  \time 2/4
  s2 | \bar "|."
}

prefatoryMatterCoronerFirst = {
  \key d \major
  #(set-accidental-style 'modern-cautionary)
  \autoBeamOff
  
}


sopranoCoronerFirst = \relative c' { \prefatoryMatterCoronerFirst
  r8 |
  R2 |
  r4. fis8^\f |
  gis a b a |
  b cis b a |
  gis fis gis cis |
  b a gis b |
  a gis fis a |
  gis fis e %{endOne%} a,^\mp^\< |
  d cis d e f g |
  a^\mf d des c ces bes |
  a gis a f e d |
  bes' g e bes' a g |
  f e f a, e' f |
  d2 r4 |
  r8 a'^\mp^\< d cis^\> |
  b4 r\! |
  r8 b,^\< e d^\> |
  cis4 r\! |
  r8 a'^\< fis' e^\> |
  d4 r\! |
  r8 d,^\< g fis |
  e^\> fis fis r\! |
  R2 |
  d'2^\p^\< ~ |
  d4. c8 ~ |
  c2^\> ~ |
  c2 |
  bes  ~ |
  bes^\< |
  a4. a8^\subPd |
  a a a fis^\mf^\> |
  fis fis fis fis |
  fis fis fis^\p e^\mf^\> |
  e e e e^\p |
  b'^\mf^\> b b^\p e,^\mf^\> |
  e e e^\p dis^\mf^\> |
  dis dis dis dis |
  dis^\p^\< dis dis dis |
  a'->^\fp^\< gis g fis |
  e d cis b |
  e4.->^\fp r8 |
  R2 |
  a8->^\fp^\< b cis d |
  e fis g gis |
  a4.^\mf b8 |
  cis c b r |
  r4. fis8^\f |
  g8. fis16 g8 fis |
  g fis e d |
  cis e a, a |
  a'4 g |
  fis16 d g e a8 g |
  fis g e a |
  << { fis d d4. r8 } { s2^\> s8\mp } >> |
  R2. |
  R2 |
}

sopranoCoronerFirstWords = \lyricmode {
  \secondPart
  \coronerWords
  \repeat unfold 4 \asCoroner
  ly dead
  co -- ro -- ner dead
  \coronerWords
  \firstLine
  I've care
  she's not on -- ly mere -- ly dead
  she's real sin -- cere -- ly dead
  \coronerWordsLast
}


mezzoCoronerFirst = \relative c' {   \prefatoryMatterCoronerFirst
  r8 |
  R2 |
  r4. dis8^\f |
  e fis gis fis |
  gis fis gis dis |
  e dis e e |
  gis fis e eis |
  fis e dis e |
  e dis e %{endOne%} r |
  r8 a,^\mp^\< d cis d e |
  f^\mf g a g d e |
  f e f4 a^\pp^\< ~ |
  a2. ~ |
  a2.^\> ~ |
  a8^\p r e^\mf f d r |
  R2 |
  r8 fis^\mp^\< b a^\> |
  g4 r\! |
  r8 e^\< a g^\> |
  fis4 r\! |
  r8 fis^\< b a^\> |
  g4 r\! |
  R2 |
  a4^\p^\< g |
  bes^\> a |
  g^\< a |
  f^\> d |
  e^\< a |
  g^\> e |
  fis^\< d8 [ fis ] |
  a4 d8 fis,^\subPd |
  e^\mf^\> e e e^\p |
  d^\mf^\> d d d |
  d d^\p cis^\mf^\> cis |
  cis cis^\p c^\mf^\> c |
  c c^\p d^\mf^\> d |
  d d^\p c^\mf^\> c |
  c c^\p cis^\mf^\> cis |
  cis\!^\< cis cis cis |
  e->\! r4. |
  a8^\mf^\< gis g fis |
  a^\fp^\< gis g fis |
  e d cis b |
  a4.^\> r8\! |
  R2 |
  a''8^\mf b cis d |
  e fis g r |
  r4. c,,8^\f |
  b8. b16 b8 c |
  b d a b |
  e, gis e e |
  d'4 b |
  d8 b c b |
  d b a a |
  a fis fis^\> a c b |
  a g fis4.^\mp r8 |
  R2 |
}

mezzoCoronerFirstWords = \lyricmode {
  \secondPart
  As co -- ro -- ner I must
  I've care -- ful -- ly ex -- am -- ined her she's
  cere -- ly dead
  \repeat unfold 3 \asCoroner
  Co -- ro -- ner I must con -- fer I care -- ful -- ly ex -- am -- ined her dead
  \coronerWords
  As cor
  must con -- fee I've care -- ful -- ly ex -- am -- ined her and
  She's
  real -- ly most sin -- cere -- ly dead
  \coronerWordsShortShort
  ly most sin -- cere -- ly dead
}

altoCoronerFirst = \relative c' {
  \prefatoryMatterCoronerFirst
  r8 |
  R2 |
  r4. b8^\f |
  b cis e e |
  e dis e b |
  b cis b cis |
  e dis b cis |
  cis b cis a |
  b b b %{endOne%} r |
  R2. |
  R2. |
  r2 fis'4^\pp^\< ~ |
  fis g^\mf d8 e |
  d8 cis d4 cis8 d |
  a2 r8 a8 |
  d cis d ais |
  b ais b dis |
  e d cis b |
  a cis d b |
  a fis a fis' |
  fis e d c |
  b a b cis |
  e d d a |
  bes d f a |
  g e c bes |
  a c e g |
  f d bes a |
  g bes d f |
  e c a g |
  fis a c ees |
  d e fis d^\subPd |
  d d cis^\mf^\> cis |
  cis cis cis^\p b^\mf |
  b^\p bes^\mf^\> bes bes |
  bes^\p a^\mf^\> a a |
  a a a a^\p |
  gis^\mf^\> gis gis gis |
  gis^\p a^\mf^\> a^\p b^\mf^\> |
  b b^\< b b |
  cis->\! r4. |
  R2 |
  a8^\fp^\< b cis d |
  e fis g gis |
  a4.^\fp^\< gis8 |
  g fis e d^\mf |
  r gis' g fis |
  e d cis r |
  r4. dis,8^\f |
  e8. dis16 e8 a |
  g a e e |
  cis d cis g' |
  fis4 g |
  a8 g fis g |
  a d, cis cis |
  d d d4.^\> e8 |
  fis e d4.^\mp r8 |
  R2 |
}

altoCoronerFirstWords = \lyricmode {
  \secondPart
  mere -- ly ead She's real -- ly most
  cere -- ly dead
  \coronerWords
  \coronerWords
  \coronerWords
  As cor
  care -- ful -- ly ex -- am -- ined her and
  She's ly mere -- ly dead she's
  ly most sin -- cere -- ly dead
  \coronerWordsShortShort
  sin -- cere -- ly dead
}

tenorCoronerFirst = \relative c' {   \prefatoryMatterCoronerFirst
  \clef "treble_8"
  a8^\f |
  d cis d e |
  fis e g a, |
  gis fis e cis' |
  b a gis fis |
  e a gis a |
  b cis gis gis |
  a e fis e |
  gis a gis %{endOne%} r |
  r2 r8 a,^\mp^\< |
  d e f e f g |
  a^\mf d des c bes a |
  g a bes g f e |
  f g a g f a, |
  e' f d2 |
  r4. fis8^\mp^\< |
  b, cis^\> d4 |
  r4.\! e8^\< |
  a g^\> fis4 |
  r4.\! ais8^\< |
  d cis^\> b4 |
  r4.\! a8^\< |
  g a^\> a4 |
  r\! f^\p^\< ~ |
  f e ~ |
  e^\> g ~ |
  g f^\< ~ |
  f d ~ |
  d^\> cis ~ |
  cis g'^\< ( |
  fis4 ) d8 b'8^\subPd |
  b bes^\mf^\> bes bes |
  bes bes^\p g^\mf^\> g |
  g g g g |
  g g g^\p fis^\mf^\> |
  fis fis fis fis |
  fis fis fis fis |
  fis fis fis fis^\p |
  g^\< g g gis |
  g-> r4. |
  r4. b,8^\p^\< |
  cis d e fis |
  g gis a b |
  cis4.^\fp r8 |
  R2 |
  cis8^\mf b a gis |
  g fis e r |
  r4. a8^\f |
  g8. a16 b8 dis |
  e d cis b |
  a b a e' |
  d4 d |
  d8 d d d |
  d a a a |
  a a a2^\> ~ |
  a4 c8 b a g |
  fis d d^\mp r |
}

tenorCoronerFirstWords = \lyricmode {
  \coronerWords
  \firstPart
  sin -- cere -- ly dead
  \repeat unfold 4 \asCoroner
  Co -- ro -- ner I must con -- fer that
  \coronerWords
  As cor
  I've care -- ful -- ly ex -- am -- ined her and She's
  real -- ly most sin -- cere -- ly dead
  \coronerWordsShortShort
  real -- ly most sin -- cere -- ly dead
}

bassCoronerFirst = \relative c {   \prefatoryMatterCoronerFirst
  \clef "bass"
  r8 |
  R2 |
  r4. b8^\f |
  e cis b a |
  gis a b fis |
  gis fis e fis |
  gis a b gis |
  fis gis a cis |
  b b e %{endOne%} r |
  R2. |
  r2 r8 a,^\mf |
  d4-. r d4^\pp^\< ~ |
  d g,2^\mf |
  d'2 a4 ~ |
  a4 d4. r8 |
  R2 |
  r4. fis8^\mp^\< |
  e fis^\> g4 |
  r4.\! e8^\< |
  fis e^\> d4 |
  r4.\! dis8^\< |
  g fis^\> e4 ~ |
  e8^\mp a, d4 |
  r8 d4.^\mf ~ |
  d8 g,4. ~ |
  g8 c4. ~ |
  c8 f,4. ~ |
  f8 bes4. ~ |
  bes8 e,4. ~ |
  e8 a4. ~ |
  a8 d4 g8^\subPd |
  g g g g |
  g e^\mf^\> e e^\p |
  a,^\mf^\> a a a^\p |
  d^\mf^\> d d d |
  d^\p g,^\mf^\> g g |
  g^\p b^\mf b b^\p |
  e,^\mf^\> e e e |
  e^\< a d d |
  a^\fp^\< b cis d |
  e fis g gis |
  a4.^\> r8\! |
  R2 |
  a8^\fp^\< gis g fis |
  e d cis b |
  a4.^\> r8\! |
  r4. a8^\f |
  d8. cis16 d8 b8 |
  e8. b16 e8 b |
  e fis g gis |
  a e a, cis |
  d4 e |
  fis8 b, fis b |
  a8 a a a |
  d a d2^\> ~ |
  d2 c8 b |
  a fis fis^\mp r |
}

bassCoronerFirstWords = \lyricmode {
  \secondPart
  As cor 
  mere -- ly
  sin -- cere dead
  \repeat unfold 3 \asCoroner ly dead
  Co -- ro -- ner I must
  con -- fer that
  \coronerWords
  \firstLine
  I've care
  she's not on -- ly mere -- ly dead she's
  real
  \coronerWordsShort
  most sin -- cere -- ly dead
}

%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoCoronerFirst" { << { \numericTimeSignature
        \sopranoCoronerFirst
      } {
        \marksCoronerFirst
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoCoronerFirst" {
        \sopranoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoronerFirst" { << { \numericTimeSignature
        \mezzoCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoCoronerFirst" {
        \mezzoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoronerFirst" { << { \numericTimeSignature
        \altoCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoCoronerFirst" {
        \altoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoronerFirst" { << { \numericTimeSignature
        \tenorCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorCoronerFirst" {
        \tenorCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoronerFirst" { << { \numericTimeSignature
        \bassCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bassCoronerFirst" {
        \bassCoronerFirstWords
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
      \override DynamicLineSpanner.direction = #UP
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

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \sopranoCoronerFirst \marksCoronerFirst >> }
      \new Voice = "2" { \voiceTwo \mezzoCoronerFirst }
      \new Voice = "3" { \voiceThree \altoCoronerFirst }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorCoronerFirst }
      \new Voice = "5" { \voiceTwo \bassCoronerFirst }
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
      \override Hairpin.direction = #UP
      \override DynamicText.direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override DynamicLineSpanner.direction = #UP
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
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoCoronerFirst" { << { \numericTimeSignature
        \sopranoCoronerFirst
      } {
        \marksCoronerFirst
      } >> }
      \new Lyrics \lyricsto "sopranoCoronerFirst" {
        \sopranoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoronerFirst" { \numericTimeSignature
        \mezzoCoronerFirst
      }
      \new Lyrics \lyricsto "mezzoCoronerFirst" {
        \mezzoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoronerFirst" { \numericTimeSignature
        \altoCoronerFirst
      }
      \new Lyrics \lyricsto "altoCoronerFirst" {
        \altoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoronerFirst" { \numericTimeSignature
        \tenorCoronerFirst
      }
      \new Lyrics \lyricsto "tenorCoronerFirst" {
        \tenorCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoronerFirst" { \numericTimeSignature
        \bassCoronerFirst
      }
      \new Lyrics \lyricsto "bassCoronerFirst" {
        \bassCoronerFirstWords
      }
    >>
  >>
  \midi {}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% second
%{
marksCoronerSecond = {
  \time 2/4
  \tempo "Adagio" 2=44
  \partial 8 s8
  %%%%%%%
  s2*13 \bar "|."
}

prefatoryMatterCoronerSecond = {
  \key d \major
  #(set-accidental-style 'modern-cautionary)
  
}

coroner = \relative c' { \autoBeamOff
  a8 d cis d e
     fis e g fis
     gis a b a
     b cis d gis,
     a fis e d
     b' g e b'
     a fis g a,
     e' fis d
}

sopranoCoronerSecond = {   \prefatoryMatterCoronerSecond
 \coroner r8 R2 R2 R2 R2 R2 }

sopranoCoronerSecondWords = \coronerWords


mezzoCoronerSecond = {   \prefatoryMatterCoronerSecond
r8 R2 \coroner R2 R2 R2 R2 }

mezzoCoronerSecondWords = \coronerWords

altoCoronerSecond = {   \prefatoryMatterCoronerSecond
r8 R2 R2 r8 \coroner r4. R2 R2 }

altoCoronerSecondWords = \coronerWords

tenorCoronerSecond = \transpose c c, {   \prefatoryMatterCoronerSecond

  \clef "treble_8"
  r8 R2 R2 R2 r4
  \coroner  r4 R2
}

tenorCoronerSecondWords = \coronerWords

bassCoronerSecond = \transpose c c, {   \prefatoryMatterCoronerSecond

  \clef "bass"
  r8 R2 R2 R2 R2 r4.
  \coroner r8
}

bassCoronerSecondWords = \coronerWords

%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoCoronerSecond" { << { \numericTimeSignature
        \sopranoCoronerSecond
      } {
        \marksCoronerSecond
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoCoronerSecond" {
        \sopranoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoronerSecond" { << { \numericTimeSignature
        \mezzoCoronerSecond
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoCoronerSecond" {
        \mezzoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoronerSecond" { << { \numericTimeSignature
        \altoCoronerSecond
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoCoronerSecond" {
        \altoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoronerSecond" { << { \numericTimeSignature
        \tenorCoronerSecond
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorCoronerSecond" {
        \tenorCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoronerSecond" { << { \numericTimeSignature
        \bassCoronerSecond
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bassCoronerSecond" {
        \bassCoronerSecondWords
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
      \override DynamicLineSpanner.direction = #UP
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


%%% piano redux

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \sopranoCoronerSecond \marksCoronerSecond >> }
      \new Voice = "2" { \voiceTwo \mezzoCoronerSecond }
      \new Voice = "3" { \voiceThree \altoCoronerSecond }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorCoronerSecond }
      \new Voice = "5" { \voiceTwo \bassCoronerSecond }
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
      \override Hairpin.direction = #UP
      \override DynamicText.direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override DynamicLineSpanner.direction = #UP
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

%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoCoronerSecond" { << { \numericTimeSignature
        \sopranoCoronerSecond
      } {
        \marksCoronerSecond
      } >> }
      \new Lyrics \lyricsto "sopranoCoronerSecond" {
        \sopranoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoronerSecond" { \numericTimeSignature
        \mezzoCoronerSecond
      }
      \new Lyrics \lyricsto "mezzoCoronerSecond" {
        \mezzoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoronerSecond" { \numericTimeSignature
        \altoCoronerSecond
      }
      \new Lyrics \lyricsto "altoCoronerSecond" {
        \altoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoronerSecond" { \numericTimeSignature
        \tenorCoronerSecond
      }
      \new Lyrics \lyricsto "tenorCoronerSecond" {
        \tenorCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoronerSecond" { \numericTimeSignature
        \bassCoronerSecond
      }
      \new Lyrics \lyricsto "bassCoronerSecond" {
        \bassCoronerSecondWords
      }
    >>
  >>
  \midi {}
}
%}