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
  \repeat unfold 49 { s1 | } \bar "|."
}

prefatoryMatter = {
  \key d \major
  #(set-accidental-style 'modern-cautionary)
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
  R1*3 |
  r2. 
  a4\p\< ( |
  fis' e fis g |
  a\mf d b g |
  fis a e a |
  fis\> d2. ) |
  r2\! a'4\mp\< d ~ |
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
  e d2.\> ~ |
  d2 fis,4\mp ( g |
  a d b g |
  fis a e a |
  fis d2.\> ~ |
  d1\p\fermata ) |
}

sopranoWords = \lyricmode {
  Ah
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

mezzo = \relative c' { \autoBeamOff
  \prefatoryMatter
  R1*3 |
  r2. 
  a4\p\< ( |
  fis' e fis e |
  fis4\mf a g e ~ |
  e2 d4 cis |
  d1\> ) |
  r2\! fis4\mp\< b ~ |
  b fis\> d2 |
  e4\< e a2 ~ |
  a2\> fis4\< a |
  e e e\> e |
  cis bes2\mp r4 |
  r2 b4\< b ~ |
  b b ais'2\mf |
  a4 a e e |
  d2\> g4\< ais |
  b b a2\> |
  a4 fis2. ~ |
  fis4\mp r4 fis\< gis |
  g fis gis g |
  g a2\mf\> fis4 |
  d2 fis4 e\mp |
  e d b2\> |
  e4 e2 cis4 |
  cis2\p cis4 cis4\< ~ |
  cis4 b4 ais'2 |
  gis4 gis2 gis4 |
  g2 g4 ais\f ( ~ |
  ais4 b2. ~ |
  b2. ) r4 |
  r2 a4 b |
  a\> b a aes\< |
  bes cis2\f bes4 |
  fis2.\> bes4\mf |
  b bes a\< gis |
  g fis2\f\> e4 ~ |
  e2.\p\< ais4\mf ~ |
  ais fis d2 |
  e4 fis a4\< ( g |
  fis4 ) r\! bes4\f d |
  cis b cis cis |
  b a\> (g) a,4 ( |
  fis' e fis\mp e |
  fis4 a g e ~ |
  e2 d4 cis |
  d1\> ~ |
  d\p\fermata ) | 
  
}

mezzoWords = \lyricmode {
  Ah
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

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  R1*3 |
  r2. 
  a4\p\< ( |
  d1 ~ |
  d4\mf fis e d ~ |
  d2 b |
  cis4\> b a g |
  a4 ) r\! e'4\mp\< a ~ |
  a e\> b2 |
  cis4\< d fis2 ~ |
  fis\> dis4\< fis |
  d d cis\> cis |
  a aes2\mp r4 |
  r2 a4\< a ~ |
  a g g'2\mf |
  fis4 fis d d |
  cis2\> e4\< fis |
  g g fis2\> |
  fis4 dis2. ( |
  d4\mp ) r cis\< e |
  e e e e |
  e fis2\mf\> d4 |
  c2 e4 d\mp |
  d b b2\> |
  d4 cis2 bes4 |
  b2\p ais4 ais\< ~ |
  ais a fis'2 |
  fis4 fis2 fis4 |
  ees2 e4 fis\f ~ |
  fis2 fis4 g |
  a fis d e |
  fis d r e |
  fis\> g fis f\< |
  g4 g2\f g4 |
  dis2.\> e4\mf |
  cis4 g' fis\< fis |
  e2 d2\f\> ~ |
  d4 cis2.\p\< |
  fis4\mf e b'\< a |
  g fis e d |
  cis r\! cis'\f b |
  a g fis e |
  d d\> d d |
  d1\mp ( ~ |
  d4 fis4 e d ~ |
  d2 b |
  cis4\> b a g |
  fis1\p\fermata ) |
}

altoWords = \lyricmode {
  Ah
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  when a man's an emp -- ty ket -- tle
  he should be on his met -- tle
  and yet
  Won -- der -- ful things that he
  just be -- cause I'm pre -- su -- min'
  that I could be a hu -- man if I
  on -- ly -- had a heart.
  Ah
}

tenor = \relative c' {
  \autoBeamOff
  \clef "treble_8"
  \prefatoryMatter
  R1*3 |
  r2. 
  a4\p\< ( |
  cis b cis b |
  cis\mf d2 b4 ~ |
  b2 g |
  a4\> g fis e |
  fis ) r\! cis'4\mp\< fis ~ |
  fis d\> a2 |
  b4\< ais cis2 ~ |
  cis2\> c4\< dis4 |
  b bes a\> b |
  g e2\mp a4\< |
  b\> a g\< fis |
  g e d\mf cis' |
  e4 d ais g |
  fis2\> d'4\< cis4 |
  d d cis2\> |
  d4 b2. ~ |
  b4\mp r4 b\< d |
  d d d d |
  bes4 cis2\mf\> b4 |
  a2 c4 b\mp |
  b a g2\> |
  bes4 a2 g4 |
  fis2\p fis4 fis\< ~ |
  fis fis cis'2 |
  b4 d2 d4 |
  cis2 cis4 cis\f ~ |
  cis2. b4 |
  c2 ais |
  a4 b b4 cis |
  c\> d b cis\< |
  b b2\f e4 |
  c4\> b a a\mf |
  a c b\< d
  cis bes2.\f\> |
  b2.\p\< e4\mf ~ |
  e cis bes\< b4 ~ |
  b4 cis bes2 ~ |
  bes4 r\! d\f e |
  d e ais, b |
  cis4 b2\> a4 ( |
  cis b cis\mp b |
  cis d2 b4 ~ |
  b2 g |
  a4\> g fis e |
  d1\p\fermata ) |
}

tenorWords = \lyricmode {
  Ah
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  The Won -- der -- ful Wi -- zard of Oz is
  a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  a man's a ket -- tle
  be -- cause of be on his met -- tle and yet I'm torn a -- part
  ful things that he does.
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
  Ah
}

bass = \relative c' { \autoBeamOff
  \prefatoryMatter
  \clef bass
  R1*3 |
  R1 |
  r2 a4\mp\< ( g |
  fis2\mf g |
  a a, ) |
  r2. d4\p\< ~ |
  d1 |
  g2\mf g,4 e' |
  fis2. cis4 |
  b1\> |
  e\< |
  a,\> |
  d\< |
  cis2 fis, |
  b1\> ~ |
  b2 e\mf |
  a, ais |
  b4 b\mp\< cis4 dis |
  << { e1 ~ |
  e4 } { s2.\> s4\< } >> d cis b |
  a2\mf e' |
  d a4 d |
  g,2. fis4 |
  e fis g e |
  a2 ais |
  b2. fis'4 |
  e2 b |
  a1 |
  d1\< |
  aes\> |
  g ~ |
  g |
  fis2 ais |
  b1\< |
  e1 |
  a,\> |
  d1\p\< |
  aes\> |
  g\< ~ |
  g4 r4\! r g\f |
  a1 ~ |
  a\> |
  d2\mp a'4 ( g |
  fis2 g |
  a a, |
  d1\> ~ |
  d\p\fermata )|
}

bassWords = \lyricmode {
  Ah
  We're off off to see the wiz
  Won -- der
  Oz
  hear he
  is If ev -- er wiz If ev -- ver a
  oh ev -- er
  a wiz there was The Wiz -- ard
  Wiz of Oz is one be -- cause
  be -- cause cause be -- cause
  be -- cause
  things he does
  Won -- der -- ful
  We're off
  Won -- de
  Oz
  Ah
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
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
    \new Staff = "tenorstaff" \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
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
