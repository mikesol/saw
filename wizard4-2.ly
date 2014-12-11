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
  subtitle = \markup { for Hazebrouck } 
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
  \key d \major
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c' { \autoBeamOff
  \prefatoryMatter
  a4 |
  fis' e fis g |
  a d b g |
  fis a e a |
  fis d2. |
  r2 a'4 d ~ |
  d a fis2 |
  g4 a d2 ~ |
  d2 a4 b |
  a g fis g |
  e d2. ~ |
  d4 r4 d d ~ |
  d d d'2 |
  d4 cis cis cis |
  b2 b4 e |
  e e e2 |
  cis4 a2. ~ |
  a4 r a b |
  b b b b |
  cis d2 a4 |
  fis2 a4 g |
  g fis e2 |
  g4 fis2 e4 |
  d2 d4 d ~ |
  d d d'2 |
  d4 cis2 cis4 |
  b2 b4 e ~ |
  e1 ~ |
  e2. r4 |
  r2 d4 e |
  e e e e |
  e e2 cis4 |
  a2. g'4 |
  fis e d cis |
  b a2. |
  a2. d4 ~ |
  d a fis2 |
  g4 a d2 ~ |
  d4 r e fis |
  fis fis e fis |
  e d2. ~ |
  d2 fis,4 g |
  a d b g |
  fis a e a |
  fis d2. ~ |
  d1 |
}

sopranoWords = \lyricmode {
}

mezzo = \relative c' { \autoBeamOff
  \prefatoryMatter
  a4 |
  fis' e fis e |
  fis2 e ~ |
  e cis |
  d1 |
  r2 fis4 b ~ |
  b fis d2 |
  e4 e a2 ~ |
  a2 fis4 a |
  e e e e |
  cis bes2. |
  r2 b4 b ~ |
  b b ais'2 |
  a4 a e e |
  d2 g4 ais |
  b b a2 |
  a4 fis2. ~ |
  fis4 r4 fis gis |
  g fis gis g |
  g a2 fis4 |
  d2 fis4 e |
  e d b2 |
  e4 e2 cis4 |
  cis2 cis4 cis4 ~ |
  cis4 b4 ais'2 |
  gis4 gis2 gis4 |
  g2 g4 ais ~ |
  ais1 |
  b2. r4 |
  r2 a4 b |
  a b a aes |
  bes b2 bes4 |
  fis2. bes4 |
  b bes a gis |
  g fis2. |
  e ais4 ~ |
  ais fis d2 |
  e4 fis a2 ~ |
  a bes4
  
}

mezzoWords = \lyricmode {
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  a4 |
  d1 ~ |
  d4 e d2 ~ |
  d b |
  cis4 b a g |
  a2 e'4 a ~ |
  a e b2 |
  cis4 d fis2 ~ |
  fis dis4 fis |
  d d cis cis |
  cis aes2. |
  r2 a4 a ~ |
  a g g'2 |
  fis4 fis d d |
  cis2 e4 fis |
  g g fis2 |
  fis4 dis2. ~ |
  dis4 r d e |
  e e e e |
  e fis2 d4 |
  c2 e4 d |
  d b b2 |
  d4 cis2 bes4 |
  b2 ais4 ais ~ |
  ais a fis'2 |
  fis4 fis2 fis4 |
  ees2 e4 fis ~ |
  fis1 ~ |
  fis2. r4 |
  r2 fis4 g |
  fis g fis f |
  g4 g2 g4 |
  dis2. e4 |
  g g fis fis |
  e d2. |
  cis2. fis4 ~ |
  fis e cis2 |
  d4 e e2 ~ |
  e g4 
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
  \prefatoryMatter
  a4 |
  cis b cis b |
  cis d4 b2 ~ |
  b g |
  a4 g fis e |
  fis2 cis'4 fis ~ |
  fis d a2 |
  b4 ais cis2 ~ |
  cis2 c4 dis4 |
  b bes a b |
  g e2. |
  fis2 fis4 fis ~ |
  fis e cis'2 |
  e4 d ais g |
  fis2 d'4 cis4 |
  d d cis2 |
  d4 b2. ~ |
  b4 r4 b d |
  d d d d |
  bes4 cis2 b4 |
  a2 c4 b |
  b a g2 |
  bes4 a2 bes4 |
  fis2 fis4 fis ~ |
  fis fis cis'2 |
  e4 d2 d4 |
  << { cis2 cis4 cis ~ |
       cis1 ~ |
        cis2. r4 |
        r2 b4 cis |
        c cis d cis |
        cis cis2 e4 |
        c2. cis4 |
        cis c b d |
        cis bes2. |
        b2. e4 ~ |
        e cis bes2 |
        b4 cis bes2 ~ |
        bes cis4 
      }
    \new Staff \with { alignAboveContext = #"tenorstaff" } \relative c' {
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
    } >>
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
  r2 a4 g |
  fis2 g |
  a a, |
  d1 ~ |
  d |
  g |
  fis |
  b, |
  e |
  a, |
  d |
  cis2 fis, |
  b1 ~ |
  b2 e |
  a, ais |
  b2 cis4 dis |
  e1 ~ |
  e4 d cis b |
  a2 e' |
  d a |
  g2. fis4 |
  e fis g e |
  a2 ais |
  b1 |
  e |
  a, |
  d |
  aes |
  g |
  bes |
  fis |
  b |
  e |
  a, |
  d |
  
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
