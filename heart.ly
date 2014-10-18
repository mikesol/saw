#(set-global-staff-size 15.87)
solo = \markup \italic "solo"
%{
When a man's an empty kettle
He should be on his mettle
And yet I'm torn apart
Just because I'm presumin'
That I could be a human
If I only had a heart

I'd be tender, I'd be gentle
And awful sentimental
Regarding love and art
I'd be friends with the sparrows 
And the boy that shoots the arrows
If I only had a heart

Picture me a balcony
Above a voice sings low

(Snow White)
Wherefore art thou, Romeo?

(Tin Man)
I hear a beat, how sweet!

Just to register emotion, jealousy, devotion
And really feel the part
I could stay young and chipper
And I'd lock it with a zipper
If I only had a heart
%}
% 
\version "2.19.0"
\include "defs-devel.ly"

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)

%{
\paper {
  #(define fonts
    (set-global-fonts
    #:music "profondo"
    #:factor (/ staff-height pt 20)
  ))
}
%}
%{
\paper {
  #(define fonts
    (set-global-fonts
    #:music "haydn"
    #:brace "gonville"
    #:factor (/ staff-height pt 20)
  ))
}
%}

railroad =  {
  \once \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
  \breathe
}
myred = \once \override NoteHead #'color = #red

php = \once \override Hairpin.stencil = #(parenthesize-callback ly:hairpin::print)

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 1\mm
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
  title = "If I Only Had a Heart"
  subtitle = "for Gene Peurling, Guillaume Dufay and Mark Kibble"
  %title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}

prefatoryMatter = {
  \key b \minor
  \autoBeamOff
  \time 2/4
}

scorePrefatoryMatter = {
  \prefatoryMatter
}

midiPrefatoryMatter = {
  \prefatoryMatter
}

marks = {
  \tempo "Largo" 4=48
  s2 |
}

sopranoFirst = \relative c' {
  R2*4 |
  r4 e8^\mp c' |
  a fis4. |
  b8 g a b |
  a g fis e ~ |
  e4 e' ~ |
  e d ~ |
  d c ~ |
  c b ~ |
  b cis ~ |
  cis2 ~ |
  cis ~ |
  cis4 r |
  R2 |
  R2 |
  R2 |
  r4 a ~ |
  a8 g fis e ~ |
  e4 b'8 a |
  g fis e d |
  a'4 cis |
  b ais |
  a4 b,^\solo ~ |
  b fis'8 e |
  ais,2 ~ |
  \footnote "" #'(0 . 0) "* Pronounced \"beetle\"." 
  ais8 b cis d |
  fis e d4 ~ |
  d cis |
  b4 r |
  R2 |
  r4 b ~ |
  b fis'8 e |
  ais,2 ~ |
  ais8 \footnote "" #'(0 . 0) "* Pronounced \"sea\"."  b cis d |
  \footnote "" #'(0 . 0) "* Pronounced \"purty\"." fis e d4 ~ |
  d cis |
  \footnote "" #'(0 . 0) "* Pronounced \"own\"." d2 ~ |
  d4 r |
  r4 b'4 ~ |
  b a8 g |
  fis2 |
  gisis8 fisis bis ais |
  a?4 g ~ |
  g fis8 e |
  d2 ~ |
  d4 r |
  r4 \footnote "" #'(0 . 0) "* Pronounced \"spare\"."  b'4 ~ |
  b \footnote "" #'(0 . 0) "* Pronounced \"gel\"."   a8 g |
  fis2 |
  R2 |
  r4 g ~ |
  g fis8 e ~ |
  e8 d4. |
  R2 |
  r8 d e fis |
  gis4 a |
%%%%%%%%%%%%%%%%%%%%%%%
  %fis2 ~ |
  %fis4 cis'8 b |
  %eis,2 ~ |
  %eis8 fis gis a |
  %cis b a4 ~ |
  %a4 gis ~ |
  %gis fis |
  %e8 dis c' b |
  %a g e4 ~ |
  %e b'8 ais ~ |
  %ais dis,4. ~ |
  %dis8 e fis g |
%%%%%%%%%%%%%%%%%%%%%%%
  gis2 ~ |
  gis8 a ~ \times 2/3 { a cis b } |
  eis,4 \times 2/3 { r8 gis' fis } |
  e4 d ~ |
  d cis |
  r8 a, b cis |
  gis'4 fis |
  d'4 c4 |
  b2 |
  s2 |
  \times 2/3 { r8 fis' a } \times 2/3 { g ais, b } |
  fis'4 e | 
}

sopranoWordsFirst = \lyricmode {
  I could feel When
  friends \footnote "" #'(0 . 0) "* Pronounced \"spare\"." spar* love on part be low That
  I had
  could stay shoots
  zip per me and
  friends sweet voice should Ro And man's
  boy with a love

  stay low How a
  young be tle*
  rows And met with me.

  friends I'd be a
  sy* boy Pic per ty* heart
  his on*

  beat torn man should
  [on] [ly] [had] [a] [heart]
  spar* Jeal* I had
  cause I'm to low
  rows Just fore men

  be Where when a man's a
  love shoots cause I
  [shoots] [cause] [I]
  [hear] %[a]
  [love]
  [hear] [a] [sweet] [boy] [on] [love] [a] [rows]
}

mezzoFirst = \relative c'' {
  r4. g8^\mp |
  e cis4. |
  fis8 d e4 |
  e8 d cis b ~ |
  b8 r4. |
  r4 dis8 b ~ |
  b4 r8 e |
  dis4. r8 |
  R2 |
  g8 fis e d ~ |
  d2 |
  r8 e4 cis8 ~ |
  cis d4. |
  e8 d cis b |
  ais2 ~ |
  ais2 |
  R2 |
  R2 |
  R2 |
  R2 |
  e'2 |
  d8 cis d e ~ |
  e fis4. ~ |
  fis2 |
  gis4 g |
  fis2 ~ |
  fis8 r4. |
  %r4.
  R2 |
  %r8
  %\php
  % gis4.^\< |
  %\php
  %g2^\> |
  %r4 ais ~ |
  %ais c, |
  %r4 cis,4
  %d c |
  %R2\! |
  %r4 c, |
  %ais' fis8 [ ( a ~ ] |
  %a8 ) cis4. ~ |
  %cis4 r |
  R2*5 |
  r8 fis4. ~ |
  fis8 r4. |
  r4 a8 g |
  dis4 e |
  a2 |
  gis |
  g?4 fis ~ |
  fis8 e4 ais8 ~ |
  ais4 cis, |
  c4 cis ~ |
  cis4 d |
  %ais'8 gis cis b |
  %d8 e fis g |
  ais8 dis fis g |
  fis8 a4. |
  ais2 ~ |
  %ais4 b |
  %c c |
  \times 2/3 { ais4 g'8 } \times 2/3 { fis fis, e' ~ }
  e16 d d, a' \times 2/3 { cis8 b a }
  ais8 b8 r e ~ |
  e8 r4. |
  r4 d8 cis |
  b a g4 |
  ais2 ~ |
  ais4 b4 |
  fis2 |
  R2 | R2 |
  r8 b, cis d |
  eis2 ~ |
  eis8 fis4. |
  \times 2/3 { r8 e'8 d } gis,4 |
  r8 fis gis a |
  cis b a4 ~ |
  a gis |
  eis4 e |
  dis8 e fis8 a ~ |
  a4 g |
}

mezzoWordsFirst = \lyricmode {
  chip That lock
  should I be
  That heart with me
  art stay
  be art
  voice I'd be Just
  and with a
  how men lock me a
  He had that be fore When
  [with] [a] [love]
  %[I'm] [pre]
  %[with] [me]
  %[and] [met] [with] [me]
  [me]
  [I'd] [be]
  [a] [sy*] [boy]
  [his]
  [per] [ty*] [heart] [his] %%%%%%%%%%%%%%%[on*]
  [beat] [torn] [man] [should]
  
  [on] 
  [ly] [had] [a] [heart]
  [spar*]
  [spar*] [spar*] [Jeal] [I] [had]
  [spar*] [Jeal] [I] [had] [cause] [I'm]
  [to] [low] [cause] 
  %[cause]
  %[When] [a] [man's] [an] [emp] [ty]
  [met] [lock] [cause] [I'm] [to] [low]
  [fore] [heart]

  a boy And I
  [love]
  [shoots] [cause] [I]
  hear a sweet boy on love
  a rows
}


altoFirst = \relative c' {
  R2 |
  R2 |
  r4. fis8^\mp ~ |
  fis2 |
  g2 ~ |
  g8 a4. ~ |
  a4 fis ~ |
  fis4. d8 ~ |
  d2 |
  e ~ |
  e8 fis4. ~ |
  fis4 d ~ |
  d4. e8 ~ |
  e2 |
  fis2 ~ |
  fis8 d4. ~ |
  d4 b ~ |
  b4. cis8 ~ |
  cis2 |
  d2 ~ |
  d8 b4. ~ |
  b4 d ~ |
  d4. a8 |
  a a a a |
  d2 ~ |
  d8 cis4. ~ |
  cis4 b4 ~ |
  b4. %\php
      b'8 ~ |
  b2 |
  %\php
  a2 ~ 
  a8 g4. ~ |
  g4 fis4 ~ |
  fis4. e8 ~ |
  e2 |
  d ~ |
  d8 cis4. ~ |
  cis4 cis' ~ |
  cis4. b8 ~ |
  b2 |
  a ~ |
  a8 g4. ~ |
  g4 fis4 ~ |
  fis4. e8 ~ |
  e2 |
  d8 d d d |
  d fis4. ~ |
  fis4 g ~ |
  g4. a8 ~ |
  a2 |
  fis ~ |
  fis8 d4. ~ |
  d4 e ~ |
  e4. fis8 ~ |
  fis2 |
  d ~ |
  d8 e4. ~ |
  e4 fis ~ |
  fis4. d8 ~ |
  d2 |
  b ~ |
  b8 cis4. ~ |
  cis4 d4 ~ |
  d4. b8 ~ |
  b2 |
  d2 ~ |
  d8 a8 a a |
  a a cisis4 ( |
  d4. ) cis8 ~ |
  cis2 |
}

altoWordsFirst = \lyricmode {

When a man's an em -- pty ket -- tle
He should be on his met -- tle
And yet I'm torn a -- part
Just be -- cause I'm pre -- su -- min'
That I could be a hu -- man
If I on -- ly had a heart

I'd be ten -- der, I'd be gen -- tle
And aw -- ful sen -- ti -- men -- tal
Re -- gar -- ding love and art
I'd be friends with the spar -- rows 
And the boy that shoots the ar -- rows
If I on -- ly had a heart

Pic -- ture me a bal -- co -- ny
A -- bove a voice sings low

Where -- fore art thou, Ro -- me -- o?

I hear a beat, how sweet!

Just to re -- gis -- ter e -- mo -- tion, jea -- lou -- sy, de -- vo -- tion
And real -- ly feel the part
I could stay young and chip -- per
And I'd lock it with a zip -- per
If I on -- ly had a heart
}

lickMe = \relative c { \times 16/23 { b8 fis16 ais fis' e c8 f,16 g d'8 cis16 e, f' d8 e16 gis, g g' ais, \tag #'bass { e ~ } \tag #'tenor { b' ~ } } } 

tenorFirst = \relative c' {
  \clef "treble_8"
  r8 d^\mp b4 ~ |
  b ais8 fis ~ |
  fis2 ~ |
  fis8 ais4 b8 ~ |
  b2 ~ |
  b |
  R2 |
  r4. b8 ~ |
  b cis b a ~ |
  a2 |
  c8 b a g ~ |
  g2 |
  b8 ais g fis ~ |
  fis2 |
  R2 |
  r8 b cis d |
  r8 d cis b |
  r cis d e |
  \footnote "" #'(0 . 0) "† Pronounced \"heater\"." r e d cis |
  fis4 e8 d |
  bes d4. |
  r4 bes8 b ~ |
  b c4. ~ |
  c8 g' fis e |
  eis4 e ~ |
  e2 |
  R2 |
  %r4. \php
  %    fis8^\< ~ |
  %fis2  |
  %R2\! |
  R2*3 |
  ais,2 |
  a4 e' |
  d ais |
  %ais8 a4. |
  %fis'2 |
  cis2 |
  %\transpose c g \removeWithTag #'bass \lickMe |
  %R2*2 |
  r8 e,4. | % ~ |
  %e r |
  R2 | R2 |
  r16 %fis,16
    b'8. ~ b4 |
  fis4. e8 |
  b'4 c ~ |
  c8 b8 cis4 |
  e2 ~ |
  e4 a, |
  gis a |
  fis8 bis ais ais |
  b2 |
  r8 cis4. ~ |
  cis2 |
  d4 ees |
  c8 ( d4 ) cis8 ~ |
  cis g4 ais8 ~ |
  ais8 b4 a8 |
  g fis e4
  d'2 |
  cis |
  ais4 b8 g' |
  e cis ais fis |
  a2 ~ | 
  a4 gis |
  cis8 a gis cis, |
  e4 dis |
  d? b' ~ |
  b4 ais8 a |
  gis8 cis,8 dis eis |
  b'4 eis, |
  cis'2 ~ |
  cis4 ais |
}

tenorWordsFirst = \lyricmode {
  Pic me
  a rows
  a beat
  on his sen ding
  be a sweet man
  stay a bove me
  young boy had
  art with me
  his emp ty
  He ter† could 
  hear
  How Just a heart
  a \footnote "" #'(0 . 0) "* Pronounced \"sea\"." sy* could
  voice low where %I be
  [with] [a]
  %[I'm]
  [with] [me]
  [and] [met] [with] [me]
  [friends]
  [boy] [heart] [his]
  [per] [ty*] [heart] [his] [on*]
  [torn] [man] [should]
  [on] [ly] [had] [a] [heart]
  [Jeal*]
  [Jeal*] [I] [had]
  [cause] [to] [low]
  [met] [lock] [cause] [I'm] [to] [low]
  [fore] [heart]
  me chip that lock a rows
  torn
  a co ding a
  boy Where art met me
  [a] [sweet] [boy]
  [hear] [a] [sweet] [boy] [on] [love]
}

bassFirst = \relative c' {
  \clef "bass"
  R2*14 |
  r8 g^\mp fis e |
  d2 |
  eis |
  fis |
  ais |
  a?4. r8 |
  r4 gis, |
  e' a, |
  d aes |
  g2 |
  cis4 fis, |
  b4. fis8 |
  b4 cis |
  d g, |
  e' d |
  cis g |
  fis e' |
  d aes |
  e' cis8 [ fis, ] |
  %\removeWithTag #'tenor \lickMe |
  %r16 %e,16
    %g8. ~ g4 |
  b4. fis8 |
  b4 c |
  cis g |
  f' bes, |
  e f, |
  e fis |
  g a |
  e d |
  g2 ~ |
  g8 e'4 f,8 |
  ais4 b |
  dis8 gis, cis fis, ~ |
  fis g4 cis8 |
  fis,4 e' |
  ais, b |
  fis' f |
  e8 g,4 e'8 |
  e,4 a |
  e'8 d fis,4 |
  g b |
  cis e, |
  fis ais |
  b2 ~ |
  b4. r8 |
  R2 |
  gis4 eis' |
  fis,2 ~ |
  fis ~ |
  fis ~ |
  fis2 ~ |
  fis8 r4. |
  r4 gis8 cis ~ |
  cis8 fis, gis a |
  e'4 dis |
  fis8 e4. |
}

bassWordsFirst = \lyricmode {
  a der \footnote "" #'(0 . 0) "* Pronounced \"dirty\"." ty* heart
  I \footnote "" #'(0 . 0) "* Pronounced \"gel\"."  Jeal* a part
  a \footnote "" #'(0 . 0) "* Pronounced \"aware\"."  Where* the heart a voice
  [with] [a] [love]
  \repeat unfold 12 "()"
  [and] [met] [with] [me]
  \repeat unfold 11 "()"
  [per] [ty*] [heart] [his] [on*]
  \repeat unfold 4 "()"
  [on] [ly] [had] [a] [heart]
  \repeat unfold 5 "()"
  [Jeal*] [I]
  \repeat unfold 14 "()"
  [heart]
  a boy when
  a boy
  [hear] [a] [sweet] [love] [a]
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \sopranoFirst
      } {
	\scorePrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzoFirst
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \altoFirst
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenorFirst
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \bassFirst
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsFirst
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
}
%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\midiPrefatoryMatter
        \sopranoFirst
      } {
	\midiPrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzoFirst
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \altoFirst
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenorFirst
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\midiPrefatoryMatter
        \bassFirst
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsFirst
      }
    >>
  >>
  \midi {}
}
