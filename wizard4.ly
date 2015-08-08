%TRANSPOSE TO D, KEEP IN SOPRANO!!!
\version "2.17.0"
\include "defs-devel.ly"
%{
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
  subtitle = \markup { for Ahti Sonninen }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 2/2
  \tempo "Adagio" 2=38
  \partial 4
  s4 |
  \repeat unfold 45 { s1 | } \bar "|."
}

prefatoryMatter = {
  \key g \major
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c' { \autoBeamOff
  \prefatoryMatter
  d4\mf ( |
  b'4 a b c |
  d g e c |
  b d a d |
  b g2. ) |
  R1 |
  r2 g |
  a4 b2 a4 ~ |
  a2 g4 fis |
  r2 d' ~ |
  d a |
  b d ~ |
  d2 e2 ||
  cis4 b a2 ~ |
  a2 cis ~ |
  cis2 \Blue e2 |
  fis4 e d cis |
  \Black b1 |
  cis |
  a2 b |
  a1 |
  g ~ |
  g2 fis ~ |
  fis4 b2 a4 |
  g2 b4 a |
  c1 |
  a2. c4 |
  b a g fis |
  f g a b |
  d1 
  c
  b ~ |
  b2 e |
  d4 c b a |
  g fis2 a4 |
  b1 ~ |
  b |
  d2 c ~ |
  c \Red a4 b-\agogic |
  b b a-\agogic b |
  a g2.-\agogic ~ |
  g2-\agogic \Black b4 c |
  d g e c |
  b d a d |
  b g2. ~ |
  g1 |
}

sopranoWords = \lyricmode {
  %Ah
  %We're off see
  %the Wi -- zard
  %Won
  %Wi -- zard of
  %Wi -- zard
}

mezzo = \relative c' { \autoBeamOff
  \prefatoryMatter
  d4\mf ( |
  b'4 a b a ~ |
  a b c a ~ |
  a2 g4 fis4 |
  g1 ~ |
  g2 ) \Red d4 g-\agogic ~ |
  g d b2-\agogic |
  c4 d-\agogic g2 ~ |
  g-\agogic d4 e\agogic |
  \Black fis e d e-\agogic ~ |
  e2 \Blue fis4 g |
  a g fis e |
  \Black e2 \Red g-\agogic |
  g4 fis-\agogic fis fis |
  e2-\agogic e4 a-\agogic |
  a a a2-\agogic |
  \Black a2 \Blue gis4 a |
  gis1 ~ |
  \Black gis |
  \Red fis4 g2-\agogic d4 |
  \Black g2 fis |
  g1 |
  e4 d2 c4 |
  e2 dis |
  fis4 e \Red g2-\agogic |
  g4 fis2-\agogic fis4 |
  \Black g4 fis2 \Red a4-\agogic ~ |
  a2 ~ a2-\agogic ~ |
  a4 ~ a2-\agogic r4 |
  \Black b1 |
  \Red a4 a a-\agogic a |
  a a2-\agogic fis4 |
  d2.-\agogic c'4-\agogic |
  b a g-\agogic fis |
  e d2.-\agogic |
  d2.-\agogic g4-\agogic ~ |
  g d4 b2-\agogic |
  c4 d-\agogic g2 ~
  g2-\agogic \Black g2 ~ |
  g4 g fis g |
  e2. d4 |
  b'4 a b a ~ |
  a b c a ~ |
  a2 g4 fis |
  g1 ~ |
  g1 |
}

mezzoWords = \lyricmode {
  %Ah
  %We're off to see the Wi -- zard
  %The Won -- der ful Wi -- zard of Oz
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  d4\mf ( |
  g1 |
  fis4 g4 a g ~ |
  g2 c,  |
  fis4 e d c ) |
  d2 b ~ |
  b1 |
  a2 fis'4 e ~ |
  e2. c4 |
  \Red d c b-\agogic c |
  \Black b4 b2. |
  d2 \Blue b4 cis |
  d cis b ais ~ |
  ais b e d |
  cis d fis4 g ~ |
  g4 g fis4 e |
  \Red fis4 d2.-\agogic ~ |
  d4 r d e-\agogic |
  e e e-\agogic e |
  \Black d2 cis4 b |
  fis' e \Red d4 c-\agogic |
  \Black d2. e4 |
  \Red c4 b2-\agogic a4 |
  \Black b1 |
  d |
  e4 d ( c ) b |
  \Red e2-\agogic e4 \Black fis4 ( |
  g4 fis e d |
  d e f2 |
  e2 ) \Red g4 a-\agogic |
  \Black g4 fis2. |
  g2 e |
  d4 e fis g |
  e1 ( |
  d4 ) d c a |
  d ( e fis g ) |
  f g a b ~ |
  b2 a4 ( g ) |
  fis2 e |
  d4 d c d ~ |
  d2 d |
  fis4 ( g2. |
  fis4 g a g ~ | 
  g2 c, |
  fis4 e d c |
  b1 ) |
}

altoWords = \lyricmode {
  %{
  Ah
  We're off see
  the
  Wi -- zard
  The Won -- der -- ful Wiz -- ard
  of Oz
  We hear
  is a whiz of a wiz,
  ev -- er wiz there was.
  If ev -- er, oh ev -- er a wiz was,
  The Wi -- zard of Oz is one be -- cause
  cause
  be -- cause be -- cause be -- cause
  be -- cause of the won -- der -- ful things does.
  the things he does.
  won -- der -- ful
  We're off to see the
  Wi -- zard the
  der -- ful wi -- zard of
  Ah %}
}

tenor = \relative c' {
  \autoBeamOff
  \clef "treble_8"
  \key g \major
  d4\mf ( |
  fis e fis e |
  d2 e2 |
  fis2 e |
  d4 c b a ) |
  b2 a |
  g1 ~ |
  g  |
  d'4 c b4 a ~ |
  a2 a4 b4 |
  \Red a4 g2.-\agogic ~ |
  g4-\agogic r g g-\agogic ~ |
  g g \Black fis2 |
  e'4 d4 cis b |
  g4 fis d'2 ~ |
  d2 cis ~ |
  cis4 b2. ~ |
  b1 ~ |
  b2 bes |
  b1 |
  \rred b2-\agogic a |
  \Red c4 b a2-\agogic |
  \Black g1 |
  \Red g2-\agogic g4 g-\agogic ~ |
  g g \Black g2 |
  a1 |
  c2 c4 e4 ( |
  d1 ~ |
  d ) |
  g,2 e' ~ |
  e2 e4 d ~ |
  d1 |
  b |
  c |
  a |
  b4 c d e |
  d e f g |
  f2 e ~ |
  e1 ~ |
  e1 |
  c4 b c2 |
  b4 e fis e |
  d2 e2 |
  fis2 e |
  d4 c b a |
  g1 |
}

tenorWords = \lyricmode {
  Ah
  %We're off to see the
  %Wi -- zard The Won -- der
  %Wi -- zard of Oz
  %We hear he is
  %{ a of a wiz,
  ver wiz there was
  If oh
  a wiz
  was,
  The
  zard of Oz
  is
  cause be -- cause
  be -- cause
  be -- cause
  be -- cause
  be -- cause
  won -- der -- ful
  %}
}

bass = \relative c' { \autoBeamOff
  \prefatoryMatter
  \clef bass
  r4 |
  r2 d4\mf ( c |
  b d c e |
  d2 d, |
  g1 ) |
  g,2 fis' |
  e2. d4 |
  c2 a |
  d1 |
  g,1 |
  c2. d4 |
  g2. g,4 |
  fis2 ais |
  b1 ~ |
  b4 bes2. |
  a2 ais |
  b1 |
  r4 \Blue e fis gis |
  fis e d b |
  e4 \Black a,2. ~ |
  a2 d |
  g,1 |
  c |
  b |
  e |
  a, |
  d |
  g, ~ |
  g |
  c |
  d |
  g,2 fis' |
  e1 |
  a, |
  d |
  g, ~ |
  g |
  c |
  a |
  d |
  d, |
  g2 d''4 c |
  b4 d c e |
  d2 d, |
  g1 ~ |
  g1 |
}

bassWords = \lyricmode {
  Ah
  We're off
  %to see
  %the
  %zard The
  %Wi -- zard
  %Wi -- zard
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
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
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
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
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
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
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
