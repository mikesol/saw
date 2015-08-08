#(set-global-staff-size 15.87)
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
\include "note_list.ly"

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
  title = "If I Only Had a Heart"
  %subtitle = "for Henry Purcell, J.S. Bach, Michel Legrand, Guillaume Dufay and G.F. Händel"
  subtitle = "for Gene Peurling and Guillaume Dufay"
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
  \tempo "Moderato" 4=52
  s2 |
}

sopranoFirst = \relative c' {
  r8 d b g' |
  e cis ais fis |
  fis' d e fis |
  e d cis b ~ |
  b g' e c' |
  a fis dis b |
  b' g a b |
  a g fis e |
  d cis b a |
  g' fis e d |
  c b a g |
  fis' e d cis |
  b ais g fis |
  e' d cis b |
  ais g fis e |
  d b' cis d |
  eis, d' cis b |
  fis cis' d e |
  ais, e' d cis |
  fis d cis b |
  a' g fis e |
  d cis b' a |
  g fis e d |
  cis b a' g |
  fis4 e |
  cis'4 b, ~ |
  b fis'8 e |
  ais,2 ~ |
  ais8 b cis e |
  fis e d4 ~ |
  d cis |
  b2 ~ |
  b4 r |
  b2 ~ |
  b4 fis'8 e |
  ais,2 ~ |
  ais8 b cis e |
  fis e d4 ~ |
  d cis |
  d2 ~ |
  d4 r |
  r4 b' ~ |
  b a8 g |
  fis2 ~ |
  fis4 r |
  r g ~ |
  g fis8 e |
  d2 ~ |
  d4 r |
  r4 b' ~ |
  b a8 g |
  fis2 ~ |
  fis4 r |
  r g ~ |
  g fis8 e |
  d4 b8 g' |  
  e cis ais fis |
  fis' d e fis |
  eis fis gis4 |
  fis2 ~ |
  fis4 cis'8 b |
  eis,2 ~ |
  eis8 fis gis a |
  cis8 b a4 ~ |
  a gis |
  fis2 |
  \parenthesize e4 \parenthesize dis
  e2 ~ |
  e4 b'8 a |
  dis,2 ~ |
  dis8 e fis g |
  b a g4 ~ |
  g fis |
  g2 ~ |
  g4 r |
  e'2 ~ |
  e4 d8 c |
  b2 ~ |
  b4 r |
  cis2^\markup \column { "F# min" "not dim here" "make it work" } ~ |
  cis4 b8 a |
  g2 ~ |
  g4 r |
  e'2 ~ |
  e4 d8 c |
  b2 ~ |
  b4 r |
  r a ~ |
  a g |
  fis8 d b g' |
  e cis ais fis |
  fis' d e fis |
  e d cis b |
  b'^\markup \column { "em here" "but going to am" "allows for C# to" "make sense" } g e d |
  c e g b |
  a e fis g |
  a g fis e |
  d cis b a |
  g' fis e d |
  c b a g |
  fis' e d cis |
  b ais g fis |
  e' d cis b |
  ais g fis e |
  d b' cis d |
  eis, d' cis b |
  fis cis' d e |
  g, e' d cis |
  a d e fis |
  b, fis' e d |
  c fis g a |
  d, c' b a |
  <g, g'>2 |
  gis |
  <a c> |
  <b d> |
  c |
  cis |
  d |
  dis^"B7" |
  e2 ~ |
  e2 ~ |
  e2 ~ |
  e2 |
  fis^"make mod work" ~ |
  fis |
  gis ~ |
  gis ~ |
  <\parenthesize cis, gis'>^\markup \column { "c# not really yet" "let hesitation" "clear D" } ~ |
  cis4 gis'8 fis |
  bis2 ~ |
  bis4 e |
  gis8 fis e4 ~ |
  e dis |
  cis2^"lines up!" ~ |
  cis8 r4. |
  r4 cis ~ |
  cis gis'8 fis |
  bis,2 |
  r8 cis8 dis e |
  gis fis e4 ~ |
  e dis |
  e2 ~ |
  e4 r |
  r4 cis'4 ~ |
  cis4 b8 a ~ |
  a4 fisis^"oh the tangled webs..." ~ |
  fisis4. gis8 ~ |
  gis8 a4. ~ |
  a4 gis8 fis |
  e2^"lines up!" |
  r4 cis4 ~ |
  cis4 b8 a |
  gis2 ~ |
  gis4 r |
  r4 a4 ~ |
  a fisis4 ~ |
  fisis4. gis8 ~ |
  gis2 |
  <cis, e>2 ~ |
  <cis e>8 r4.^\markup \column { "chord w/" "D as m9" } |
  s2 |
}

sopranoWordsFirst = \lyricmode {
}

mezzoFirst = \relative c' {
  R2 |
  R2 |
  r4.
  fis1*5/8 g a fis d e fis d e fis d b cis d b d a
  d cis b b' a g fis e d cis cis' b a g fis e
  d
  
  fis1*5/8 g a fis d e fis d e fis d b cis d b d a
  d cis b b' a g fis e d cis cis' b a g fis e
  d

  d %%%%%%%%%%%%%%%%%%%%

 
  b' ais b cis a b g a fis
  e d e d e d e fis d
  e fis a b
  %%%%%%%%%%%%%%%%%%%fis e d a'
  e, a
  
  fis1*5/8 g a fis d e fis d e fis d b cis d b d a
  d cis b b' a g fis e d cis cis' b a g fis e
  d
  r4 |
  %%%%%%%%%%%%%%%%%
  \bar "|."
}

mezzoWordsFirst = \lyricmode {
}

funTimesWithSkips = {
  %\repeat unfold 1 { \repeat unfold 8 { s2 \noBreak } s2 \break }
  %\repeat unfold 15 { \repeat unfold 9 { s2 \noBreak } s2 \break }
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Tops" %shortInstrumentName = #"E."

} << { #(skip-of-length mezzoFirst) }
    >>
    \new Staff \with { instrumentName = #"Main idea" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \sopranoFirst
      } {
	\scorePrefatoryMatter
        \marks
      } {
        \funTimesWithSkips
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Cantus Firmus" %shortInstrumentName = #"E."

} <<
      \new Voice = "mezzo" \with{\remove "Note_heads_engraver" \consists "Completion_heads_engraver"} { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzoFirst
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Bottoms" %shortInstrumentName = #"E."

} << { \clef bass #(skip-of-length mezzoFirst) }
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
      \override LyricText #'whiteout = ##t
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
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzoFirst
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsFirst
      }
    >>
  >>
  \midi {}
}
