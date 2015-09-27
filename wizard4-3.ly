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
  %indent = 1.9\in
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

%agogic = #(make-articulation "downbow")
agogic = { }

\header {
  title = "The Wonderful Wizard of Oz" %(1)"
  subtitle = \markup { for Mark Kibble }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \tempo "Adagio" 4=76
  s4
  %\repeat unfold 36 { s1 | }
  \repeat unfold 18 { s1 | }
  s2..
  \unfoldChange #72 #68 #1
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup \italic "rallentando"
  \unfoldChange #68 #72 #1
  \unfoldChange #72 #70 #7 |

  \tempo "Maestoso" 4=70
  \repeat unfold 7 { s1 | }
  
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup \italic "rallentando"
  \unfoldChange #70 #64 #8 |

  \tempo "Adagio" 4=72
  \unfoldChange #64 #70 #16 |
  \repeat unfold 6 { s1 | }

  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup \italic "rallentando"
  \unfoldChange #72 #64 #48 |
  \tempo Lento 4=64
  \repeat unfold 2 { s1 } 
  s2.
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
  \time 4/4
  %R1*3 | r2.
  a4\p\< |
  fis' e fis g |
  a\mf d b g |
  fis a e a |
  fis\> ( d2 ) r4\! |
  fis2\mp a4 g |
  fis2 a |
  b4\< a b cis |
  d2\mf a4. r8 |
  cis4 b2 a4 |
  b2 a |
  a4 fis gis4.\> a8 |
  a2. r4\! |
  a2\mp\< b4 a |
  a\> ( fis )  g2 |
  g4\< g a g |
  g\> e fis4.\! r8 |
  fis4\< e fis g |
  a\mf d b g |
  fis\> a e a |
  fis8-_\< e fis g a fis d' c
  b4\mf fis g d' |
  cis2 b |
  a4 g fis e |
  d2. r4 |
  b' fis gis e' |
  d2 cis4 ( b ) |
  a2\> b |
  g2 a |
  fis2\mp a4 g |
  fis2 a |
  b4\< a b cis |
  d2\mf\> a4. r8\! |
  fis4\< fis fis g |
  a\mf d b g |
  fis a e a |
  fis\> ( d4 ~ d4 ) r\! |
  a'\mp r b4 a |
  a e g2 |
  g4 g a g |
  g e fis a, |
  fis'4 e fis g |
  a d b g |
  fis a e a |
  fis4 ( d ~ d ) r4 |
  e2. \bar "|."
}

sopranoWords = \lyricmode {
  Be -- cause he is the won -- der -- ful
  The Wi -- zard, wiz of Oz.
  We're off to see the
  Off to see the Wi -- zard
  We hear he is a
  Wi -- zard of a wiz
  If ev -- er there was
  Wi -- zard Oz is one be -- cause
  Cause he is the won -- der -- ful
  The Wi -- zard, wiz of Oz.
  The Won -- der -- ful, o ev -- er
  Wi -- zard is a whiz
  If ev -- er wiz there was.
  Wi -- zard is a whiz
  Be -- cause be -- cause oh
  We're off to see the
  Off to see the Wi -- zard
  Cause he is the won -- der -- ful
  The Wi -- zard, wiz of Oz.
  If %ev -- er there was
    The Won -- der -- ful Wiz
  Wi -- zard Oz is one be -- cause
  Be -- cause he is the won -- der -- ful
  The Wi -- zard, wiz of Oz.
  Oz.
}

%mezzo% gis4 d e b'
%alto% b a gis fis d' cis b a

%bass% cis b a g

mezzo = \relative c' { \autoBeamOff
  \prefatoryMatter
  %R1*3 | r2.
  \time 4/4
  a4\p\< |
  d2. e4 |
  fis4\mf a g e |
  e2 d4 cis |
  cis\> b a g4\! |
  a2\mp fis'4 d |
  e2 fis |
  g4\< fis g g |
  fis2\mf d4 e ~ ( |
  e4 fis ) e4 cis |
  d4 ( cis ) d ( e ) |
  fis4 d e2\> |
  e2. r4\! |
  e2\mp\< e4 e |
  fis4\> ( b, ) d2 |
  e4\< e e e |
  d\> bes d4. r8\! |
  d4\< d d e |
  fis\mf a g e |
  d2\> cis2 |
  b8-_\< cis d e fis d fis g |
  fis8\mf e d cis g' fis e d |
  gis4 d e b' |
  g8 fis e d cis e ais, cis |
  fis e d cis d b fis' a ~ |
  a8 gis4 fis e4 gis8 ~ |
  gis8 fis4 a ( gis ) fis8\> ~ ( |
  fis4 e2 ) dis4 ~ |
  dis4 d2 cis4 |
  d2\mp fis4 e |
  d4 cis fis4 e |
  fis2\< g4 e |
  a4\mf\> ( g ) fis4. r8\! |
  d4\< e dis e |
  fis\mf a fis e |
  cis4 fis cis4 e |
  d\> ( b4 ~ b\! ) r |
  fis'4\mp r fis4 e |
  e d4 d4 dis |
  e4 c fis e |
  dis cis d a |
  d2 cis4 e |
  e fis ~ fis e |
  d fis cis fis |
  d ( a ~ a ) r4 |
  cis2. \bar "|."
}

mezzoWords = \lyricmode {
  Be -- cause the won -- der -- ful
  The Wiz, wiz of Oz.
  The Wi -- zard.
  We're off to see the
  Off to see the Wi -- zard
  We hear he is a
  Wi -- zard of wiz
  If ev -- er there was
  Wi -- zard Oz is one be -- cause
  Cause he is the won -- der -- ful
  The Wiz, Wiz Oz.
  The Won -- der -- ful, o ev -- er
  Off to see the Wi -- zard, ev -- er
  Wi -- zard is a
  Off to see the Wi -- zard, ev -- er
  Won -- der -- ful the Wi -- zard, whiz of
  Wi -- zard is a whiz
  Be -- cause be -- cause
  oh
  We're off to see
  We're off to
  Off see the Wi -- zard
  Cause he is the won -- der -- ful
  The Wi -- zard, wiz of Oz.
  If
    %ev -- er there was
    The Won -- der -- ful Wi -- zard
  Wi -- zard Oz is one be -- cause
  Be -- cause  is the won -- der
  The Wi -- zard, wiz of Oz.
  Oz.
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  %R1*3 | r2.
  \time 4/4
  \clef "treble_8"
  a4\p\< |
  cis4 b cis b |
  d fis e d |
  d2 b |
  a4\> g fis e4 |
  fis2\mp cis'4 a |
  b4 cis e c |
  b4\< cis d e |
  cis4\mf ( b ) a4. r8 |
  a2 gis4 e |
  gis4 ( a ) fis ( gis ) |
  cis2 b2\> |
  b4 ( a ~ a\! ) r |
  cis2\mp\< cis4 cis |
  c\> ( a ) b2 |
  bes4\< b cis cis |
  b4\> g4 cis4. r8\! |
  gis4\< gis a d |
  e4\mf fis e b |
  b2\> b |
  a8-_\< b c bes cis c b ees |
  d4\mf b d b |
  b8 a gis fis d' cis b a |
  e'8 d cis b ais g fis e |
  ais2 ( b4 ) r |
  gis4 a b cis |
  b4 ( a ) b2 |
  cis8\> b a g b a g fis ~ |
  fis b4 bes a bes8 |
  a2\mp cis4 b |
  gis4 g c bes |
  d4\< cis d b |
  cis2\mf\> b4.\! r8 |
  gis4\< cis a d |
  cis\mf fis dis b |
  a4 b aes bes |
  b4\> ( fis4 ~ fis ) r\! |
  e'4\mp r d4 d |
  d cis c b |
  a4 aes des des |
  c b b fis |
  gis g a b |
  cis a d b |
  a4 b g cis |
  b ( g4 ~ g ) r4 |
  a2. \bar "|."
}

altoWords = \lyricmode {
  Be -- cause he is the won -- der -- ful
  The Wiz, wiz Oz.
  The Wi -- zard.
  We're off to the Wi -- zard
  We're
  Off to see the Wi -- zard
  We hear he is a
  Wiz a wiz
  If ev -- er there was
  Wi -- zard Oz is one be -- cause
  Cause he is the won -- der -- ful
  The Wiz, Wiz Oz.
  The Won -- der -- ful, o ev -- er
  Wi -- zard is a
  Off to see the Wi -- zard, ev -- er
  Off to see the Wi -- zard, ev -- er
  was
  Wi -- zard is a whiz be
  Off to see the Wi -- zard, ev -- er
  cause be -- cause oh
  We're off to see
  We're off to
  Off to see the Wi -- zard
  Cause he is the won -- der -- ful
  The Wi -- zard, wiz of Oz.
  If %ev -- er there was
    The Won -- der -- ful Wi -- zard
  Wi -- zard Oz is one be -- cause
  Be -- cause he is the won -- der -- ful
  The Wi -- zard, wiz of Oz.
  Oz.
}

mydb = \downbow

tenor = \relative c' {
  \autoBeamOff
  \time 4/4
  \clef "treble_8"
  \prefatoryMatter
  %R1*3 | r2.
  r4 |
  R1 | R1 | R1 |
  r2 a4 d%{\mydb%} ~ |
  d a fis2%{\mydb%} |
  g4 a%{\mydb%} d2 ~ |
  d2%{\mydb%} a4 b%{\mydb%} |
  a g fis%{\mydb%} g |
  e d2.%{\mydb%} ~ |
  d4%{\mydb%} r4 d d%{\mydb%} ~ |
  d d d'2%{\mydb%} |
  d4 cis%{\mydb%} cis cis |
  b2%{\mydb%} b4 e%{\mydb%} |
  e e e2%{\mydb%} |
  cis4 a2.%{\mydb%} ~ |
  a4%{\mydb%} r a b%{\mydb%} |
  b b b%{\mydb%} b |
  cis d2%{\mydb%} a4 |
  fis2%{\mydb%} a4 g%{\mydb%} |
  g fis e2%{\mydb%} |
  g4 fis2%{\mydb%} e4 |
  d2%{\mydb%} d4 d%{\mydb%} ~ |
  d d d'2%{\mydb%} |
  d4 cis2%{\mydb%} cis4 |
  b2%{\mydb%} b4 e%{\mydb%} ~ |
  e2 ~ e%{\mydb%} ~ |
  e4 ~ e2.%{\mydb%} ~ |
  e4%{\mydb%} r d4 e%{\mydb%} |
  e e e%{\mydb%} e |
  e e2%{\mydb%} cis4 |
  a2.%{\mydb%} g'4%{\mydb%} |
  fis e d%{\mydb%} cis |
  b a2.%{\mydb%} |
  a2.%{\mydb%} d4%{\mydb%} ~ |
  d a fis2%{\mydb%} |
  g4 a%{\mydb%} d2 ~ |
  d4%{\mydb%} r e fis%{\mydb%} |
  fis fis e%{\mydb%} fis |
  e d2.%{\mydb%} ~ |
  d2%{\mydb%} r2 |
  R1*4 | r2. \bar "|." 
}

tenorExperimental = {
  \autoBeamOff
  %\time 4/4
  \clef "treble_8"
  \prefatoryMatter
  %R1*3 | r2.
  \time 3/4 
  r4 |
  R2. R2. R2. R2. |
\transpose a e \relative c' {  r2
  d4\mp
  g2 d4
  b2 c4
  d4 g2 ~ g4 r d4
  e4 d c
  b c a
  g2. ~ g4 r4 g4
  g2 g4
  g'2 g4
  fis4 fis fis
  e2 e4
  a4 a a
  a2 fis4
  d2. ~ d4 r4 d
  e e e
  e e fis
  g2 d4
  b2 d4
  c4 c b
  a2 c4
  b2 a4
  g2 g4
  g2 g4
  g'2 g4
  fis2 fis4
  e2 e4
  a2. ~ a2. ~ a2. ~ a4 r g4
  a4 a a
  a a a
  a2 fis4
  d2 r4
  c'4 b a
  g fis e
  d2 r4
  d2.
  g2 d4
  b2 c4
  d4 g2 ~ g4 r a4
  b b b
  a b a
  g2. ~
  g2 r4
  R2.*6 | r2 \bar "|."
}
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
  \time 4/4
  %R1*3 | R1 |
  r4
  r2 a4\mp\< g |
  fis2\mf g |
  a a, |
  d1\> |
  d2\mp d4 b4 |
  e4 a,4 d2 |
  g,2\< a |
  d2.\mf cis4 |
  b1 |
  e2 a,4 fis |
  b2 e4\> e, |
  a2 cis4 e |
  a2.\> g4 |
  fis2\mp e4 cis |
  a2. ais4 |
  b4\< cis d\> cis |
  b2\mp a4 g |
  fis2 g |
  a2 a |
  d4\< a8 g a bes e a, |
  g4\mf a b g |
  gis4 a b gis |
  a2 ais |
  b4 b fis'8 e d b |
  e1 |
  b4 cis d e |
  a2\> e4 ( fis ) |
  a,2. g4 |
  fis2\mp b |
  e4 a, d2 |
  g,2 a |
  ais2\< b4\> a8 [ g ] |
  fis2\! c'4 b |
  g2 b4 e |
  bes4 g a2 |
  a2 a4 g |
  fis4 r d'4 c' |
  ais b gis a |
  f bes, e b' |
  ais gis g dis |
  b2 a4 g |
  fis2 g |
  a2 a |
  d2. r4 |
  fis2.  \bar "|."
}

bassWords = \lyricmode {
  is the Won -- der
  Wiz wiz Oz.
  We're off to
  see Wi -- zard,
  Off the Wi -- zard
  We is We hear Wiz of a
  whiz of a wiz If ev -- er a
  Wiz is one be cause be -- cause is the won -- der
  Wiz wiz Oz.
  Won -- der -- ful o ev -- er
  Wiz -- ard is a
  Wi -- zard is If ev -- er was.
  The Wi -- zard is a Oz
  whiz be -- cause be -- cause be -- cause
  oh
  We're off
  see the won
  Off see Wi -- zard be -- cause is the
  won ful The Wi -- zard, wiz
  Oz. Wiz of Oz
  %ev -- er o ev -- er a
    The Won -- der -- ful Wi -- zard
  Wi -- zard Oz is one be -- cause
  Be -- cause is the won -- der
  Wiz, wiz Oz.
  Oz.
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
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
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
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
    \new Staff = "tenorstaff" \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
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
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
      \override Script #'direction = #UP
      \override DynamicLineSpanner #'direction = #UP
      %\override Slur #'direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Timing_translator"
      \consists "Default_bar_line_engraver"
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
      \override InstrumentName.self-alignment-X = #RIGHT
      \override InstrumentName.padding = #1.0
      \remove "Metronome_mark_engraver"
      \remove "Timing_translator"
      \remove "Default_bar_line_engraver"
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
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
