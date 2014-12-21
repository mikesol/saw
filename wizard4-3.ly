%TRANSPOSE TO D, KEEP IN SOPRANO!!!
\version "2.17.0"
\include "defs-devel.ly"
%{
    \new Staff \with { alignAboveContext = #"tenorstaff" }
     \relative c' {
      \key d \major
      R1 |
      r2 fis4 g |
      a fis d e |
      fis d fis e |
      fis d b cis |
      d b2 d4 |
      a a a a |
      a1 |
      r2 d ~ |
      d4 cis2. |
      b2 b'4 a
      g fis e d |
      cis cis cis' b |
      a g fis e |
      d d d d | 
      d1 |
    }
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause of the won -- der -- ful things he does.
  Won -- der -- ful things that he does.
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  

%}
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
  title = "The Wonderful Wizard of Oz" %(1)"
  subtitle = \markup { for Hazebrouck } 
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 2/2
  \tempo "Adagio" 2=38
  s4
  \repeat unfold 36 { s1 | }
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup \italic "rallentando"
  \unfoldChange #72 #64 #48 |
  \tempo Lento 2=32
  \repeat unfold 2 { s1 } \bar "|."
}

prefatoryMatter = {
  \key d \major
  #(set-accidental-style 'modern-cautionary)
  \partial 4
}


glock = \relative c'' {
  \prefatoryMatter
  \repeat unfold 20 { r4 a r e r fis r d | }
  r4 a' r e R1 |
  \relative c'' \repeat unfold 3 { r4 a r e r fis r d | }
  R1\fermataMarkup |
}

soprano = \relative c' { \autoBeamOff
  \prefatoryMatter
  %R1*3 | r2. 
  a4\p\< ( |
  fis' e fis g |
  a\mf d b g |
  fis a e a |
  fis\> d2 ) r4\! |
  fis2\mp a4 g |
  fis2 a |
  b4 a b cis |
  d2 a4. r8 |
  cis4 b2 a4 |
  b2 a |
  a4 fis gis4. a8 |
  a2. r4 |
  a2 b4 a |
  a ( fis )  g2 |
  g4 g a g |
  g e fis4. r8 |
  fis4 e fis g |
  a d b g |
  fis a e a |
  fis4 ( d ~ d ) r4 |
  b'4 fis g d' |
  cis2 b |
  a4 e fis e |
  d2. r4 |
  b' fis gis e' |
  d2 cis |
  a4 b cis b |
  a2 r |
  fis2 a4 g |
  fis2 a |
  b4 a b cis |
  d2 a4. r8 |
  fis4 e fis g |
  a d b g |
  fis a e a |
  fis ( d4 ~ d4 ) r |
  a' r b4 a |
  a ( e ) g2 |
  g4 g a g |
  g e fis a, |
  fis'4 e fis g |
  a d b g |
  fis a e a |
  fis4 ( d2. ) |
}

sopranoWords = \lyricmode {
  Ah
  We're off to see the
  Off to see the Wi -- zard
  We hear he is a
  Wi -- zard of a wiz
  If ev -- er there was
  Wi -- zard Oz is one be -- cause
  Cause he is the won -- der -- ful
  The Wi -- zard, wiz of Oz.
  Wi -- zard is a whiz
  If ev -- er wiz there was.
  Wi -- zard is a whiz
  Be -- cause be -- cause be -- cause
  We're off to see the
  Off to see the Wi -- zard
  Cause he is the won -- der -- ful
  The Wi -- zard, wiz of Oz.
  If ev -- er there was
  Wi -- zard Oz is one be -- cause
  Be -- cause he is the won -- der -- ful
  The Wi -- zard, wiz of Oz.
}

mezzo = \relative c' { \autoBeamOff
  \prefatoryMatter
  %R1*3 | r2. 
  a4\p\< ( |
  d2. e4 |
  fis4\mf a g e ~ |
  e2 d4 cis ~ |
  cis\> b a g4\! ) |
  a2\mp fis'4 e |
  d2 fis |
  g4 fis g e |
  fis2 fis4 r |
  fis2 e4 cis |
  d2 cis |
  fis4 d e2 |
  e2. r4 |
  e2 e4 e |
  fis4 ( b, ) d2 |
  e4 e e e |
  d bes d4. r8 |
  d4 d d e |
  fis a g e |
  d2 cis2 |
  b2. r4 |
  d2 des4 g |
  e4 ( fis ) d ( e ) |
  fis2 e |
  g fis |
  e4 d ( cis ) gis' |
  fis2 gis2 |
  fis2 e ~ |
  e4 g fis e |
  d2 fis4 e |
  d2 fis4 ( e ) |
  g4 fis g e |
  fis2 fis4. r8 |
  d2. e4 |
  fis a g e |
  d2 cis4 e |
  d ( b4 ~ b ) r |
  fis'2 fis4 e |
  e ( d4 ) d4 ( dis ) |
  c4 c fis e |
  dis cis d a |
  d2 cis4 e |
  e fis ~ fis e |
  d fis cis fis |
  d ( a2. ) |
}

mezzoWords = \lyricmode {
  Ah
  We're off to see the
  Off to see the Wi -- zard
  We hear he is a
  Wi -- zard of wiz
  If ev -- er there was
  Wi -- zard Oz is one be -- cause
  Cause he is the won -- der -- ful
  The Wiz, Wiz Oz.
  Wiz is a
  whiz
  If ev -- er
  was the
  Wi -- zard a whiz
  Be -- cause be
  The Won -- der
  We're off to see the
  Off to see the Wi -- zard
  Cause the won -- der -- ful
  The Wiz, wiz of Oz.
  If ev -- er there was
  Wi -- zard Oz is one be -- cause
  Be -- cause he is the won -- der -- ful
  The Wi -- zard, wiz of Oz.
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  %R1*3 | r2. 
  \clef "treble_8"
  a4\p\< ( |
  cis4 b cis b |
  d fis e d |
  d2 b |
  a4\> g fis e4 ) |
  fis2\mp cis'4 b |
  b2  e2 |
  e2 d4 cis |
  cis4 ( b ) a4. r8 |
  a2 gis4 e |
  gis4 ( a ) fis ( gis ) |
  cis2 b2 |
  b4 ( a ~ a ) r |
  cis2 cis4 cis |
  c ( a ) b2 |
  bes4 b cis cis |
  b4 g4 cis4. r8 |
  a1 |
  e'4 fis e b |
  b2 b |
  a2. c4 |
  b2 bes4 a |
  gis2 fis |
  cis'4 b a g |
  b2 a |
  gis1 |
  b |
  cis1 ~ |
  cis |
  d2 e4 d |
  b2 a |
  d1 |
  cis2 b4. r8 |
  cis2 d4 cis |
  b fis' e b |
  b2 b |
  b4 ( fis4 ~ fis ) r |
  e'2 d4 d |
  d ( cis ) c ( b ) |
  c4 aes cis cis |
  c b b fis |
  gis g a b |
  cis a d b |
  a4 b g cis |
  b ( fis2. ) |
}

altoWords = \lyricmode {
  Ah
  We're off to see the
  Off see the Wi -- zard
  We hear he is a
  Wiz a wiz
  If ev -- er there was
  Wi -- zard Oz is one be -- cause
  Cause won -- der -- ful
  The Wiz, Wiz Oz.
  The Wiz is a
  whiz If
  ev -- er wiz there
  was the
  Wiz, whiz cause
  We're off to see the
  Off Wi -- zard
  Cause is the won -- der -- ful
  The Wiz, wiz Oz.
  If ev -- er there was
  Wi -- zard Oz is one be -- cause
  Be -- cause he is the won -- der -- ful
  The Wiz -- ard, wiz of Oz.
}

tenor = \relative c' {
  \autoBeamOff
  \clef "treble_8"
  \prefatoryMatter
  %R1*3 | r2. 
  r4 |
  R1 | R1 | R1 |
  r2 a4\mp\< d ~ |
  d a\> fis2 |
  g4\< a d2 ~ |
  d2\> a4\< b |
  a g fis\> g |
  e d2.\mp ~ |
  d4 r4 d\< d ~ |
  d d d'2\mf |
  d4 cis cis cis |
  b2\> b4\< e |
  e e e2\> |
  cis4 a2. ~ |
  a4\mp r a\< b |
  b b b b |
  cis d2\mf\> a4 |
  fis2 a4 g\mp |
  g fis e2\> |
  g4 fis2 e4 |
  d2\p d4 d\< ~ |
  d d d'2 |
  d4 cis2 cis4 |
  b2 b4 e\f ~ |
  e1 ~ |
  e2. r4 |
  r2 d4 e |
  e\> e e e\< |
  e e2\f cis4 |
  a2.\> g'4\mf |
  fis e d\< cis |
  b a2.\f\> |
  a2.\p\< d4\mf ~ |
  d a fis2 |
  g4 a d2\< ~ |
  d4 r\! e\f fis |
  fis fis e fis |
  e d2. ~ |
  d2\! r2 |
  R1*4 |
}

tenorWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause of the won -- der -- ful things he does.
  Won -- der -- ful things that he does.
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
  Ah
}

bass = \relative c' { \autoBeamOff
  \prefatoryMatter
  \clef bass
  %R1*3 | R1 |
  r4
  r2 a4\mp\< ( g |
  fis2\mf g |
  a a, |
  d1\> ) |
  d2\! d4 d4 |
  d2 d4 ( a ) |
  g2 a |
  d2. cis4 |
  b1 |
  e2 a,4 fis |
  b2 e4 e, |
  a2 cis4 e |
  a2. g4 |
  fis2 e4 b |
  a2. ais4 |
  b4 cis d cis |
  b2 a4 g |
  fis2 g |
  a2 a |
  d1 |
  g, |
  gis1 |
  a2 ais |
  b4 b cis d |
  e1 |
  gis4 fis e d |
  a'2 e4 ( d ) |
  cis b a g |
  fis2 b |
  e4 a, d2 |
  g,2 a |
  ais2 b4 a8 [ g ] |
  fis2. g'4 |
  fis2 g |
  a2 a, |
  b2 a4 g |
  fis2 d'4 c' |
  ais b gis a |
  f bes, e b' |
  ais gis g dis |
  b2 a4 g |
  fis2 g |
  a2 a |
  d1 |
}

bassWords = \lyricmode {
  Ah
  We're off to see the
  Off the Wi -- zard
  We is We hear Wiz of a
  whiz of a wiz If ev -- er a 
  Wiz is one be cause be -- cause is the won -- der
  Wiz wiz Oz.
  Wiz whiz ev -- er was.
  Wi -- zard of Oz
  whiz be -- cause be -- cause be -- cause The Won -- der
  We're off
  see the won
  Off see Wi -- zard be -- cause the
  won -- der
  Wiz, wiz
  Oz. Wiz of Oz
  ev -- er o ev -- er a
  Wi -- zard Oz is one be -- cause
  Be -- cause is the won -- der
  Wiz, wiz Oz.
}

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
    \new Staff = "tenorstaff" \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
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
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
      \override DynamicLineSpanner #'direction = #UP
      %\override Slur #'direction = #UP
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
      \override Hairpin.stencil = ##f
      \override DynamicText.stencil = ##f
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
  \new ChoirStaff <<
%{
    \new Staff \with { instrumentName = #"Glockenspiel" %shortInstrumentName = #"M."
} <<
      \new Voice = "glock" { << { \numericTimeSignature
        \glock
      } {
        \nothing
      } {
        \nothing
      }>> }
    >>
%}
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
