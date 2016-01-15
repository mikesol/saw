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


railroad =  {
  \once \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
  \breathe
}
myred = \once \override NoteHead #'color = #red



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
  << { \repeat unfold 31 { \repeat unfold 5 { s2 } \break } 
  } { \unfoldChange #52 #56 #360 } 
  >> |
}

talea = \relative c' {
 r8
  %&1
  fis cis' b, |
  fis' d' r
    %!
    fis, |
    cis' b, fis' b |
    d, e r
  %&2
  fis |
  cis' b, a' d |
  r
    %!
    fis, cis' b, |
    fis' b a, d |
    e r
  %&3
  fis cis' |
  e, a d r |
    %!
    fis, cis' b, fis' |
    b a, d b |
    e r
  %&4
  g cis |
  e, a d r |
    %!
    fis, cis' b, fis' |
    b a, d b |
    a' e r
  %&5
  g |
  b e, a d |
  r
    %!
    fis, cis' e, |
    b fis' b a, |
    d b a' e |
    r
  %&6
  g b e, |
  a cis r
    %!
    fis, |
    cis' e, b' b, |
    fis' b a, d |
    b a' e r |
  %&7
  g b e, ais |
  cis r
    %!
    fis, cis' |
    e, b' d, b |
    fis' b a, d |
    b a' e r |
  %&8
  g b d, ais' |
  cis r
    %!
    a fis |
    cis' e, b' d, |
    b fis' b a, |
    d b a' e |
    r
  %&9
  fis b d, |
  ais' cis r
    %!
    a |
    fis cis' e, b' |
    d, b fis' b |
    e, a, d b |
    a' e r
  %&10
  fis |
  e' d, ais' cis |
  r
    %!
    a fis cis' |
    e, b' d, a' |
    b, fis' b e, |
    a, d b a' |
    e r
  %&11
  fis e' |
  d, ais' d r |
    %!
    e, a fis cis' |
    e, b' d, a' |
    b, fis' b e, |
    a, d b a' |
    e r
  %&12
  fis e' |
  d, a' d r |
    %!
    e, a fis cis' |
    a e b' d, |
    a' b, fis' b |
    e, a, d b |
    a' e r
  %&13
  fis |
  e' e, a d |
  r
    %!
    e, a fis |
    cis' a e b' |
    fis d a' b, |
    fis' b e, a, |
    d b a' e |
    r
  %&14
  g e' e, |
  a d r
    %!
    e, |
    a fis cis' a |
    e b' fis d  |
    a' b, fis' b  |
    e, a a, d |
    b a' e r |
  %&15
  g cis e, a |
  d r
    %!
    e, a |
    fis cis' a e |
    b' fis d a' |
    b, fis' b e, |
    a fis a, d |
    b a' e r |
  %&16
  g cis e, a |
  e' r
    %!
    e, a |
    fis cis' a e |
    b' fis d a' |
    e b fis' b |
    e, a fis a, |
    d b a' e |
    r
  %&
  g cis e, |
  ais e'  r 
}

taleaWords = \lyricmode {
If lock A in heart I'd it young %
If bal men thou When be A torn %
had per could tal Jeal a ar heart %
I ket lock I gar be Jeal be %
I'm I'd stay real a friends And per %
be Where a ture low his a Jeal %
friends art heart tion part And spar stay %
And part a Jeal could And I'm Just %
tle hu heart tle the I man beat %
ty man's his ket it be the I'm %
an tion sweet tle bal hu ty rows %
cause Ro a de I'd that He tal %
ter sy in sy the met on gar %
I bove a And a it part If %
shoots And tle I A me a ly %
be stay ten I If stay tle a %
it a gen it I bal on young %
rows a I torn heart the torn That %
When And I'd a that the in be %
And tal Just hu tion me friends I %
sings tle the a I gis That I %
a men I a gen ti I sen %
tle and friends gen with He a ly %
young ny And Jeal How on art emp %
fore the gen shoots part He a had %
sings the mo on ty sweet on tle %
love How der And I sweet ou be %
feel If be love fore stay gis ture %
zip a rows tal How I'm a tion %
ten thou to be Where man's a fore %
and Jeal be and He friends low a %
ny on If me And a ten emp %
a zip And a ti e sweet ly %
And a Just be ny And a hear %
had part A If tal ty ten an %
man's ture a and ty voice be Ro %
the I thou ding hear shoots sweet fore %
sy Just I'd and I bal Jeal friends %
ty ding I'd a ly young ly ty %
sum co That a fore
}

mezzoFirst = \relative c'' {
  R2*16 |
  fis2 ~ |
  fis4 e ~ |
  e2 ~ |
  e4 d4 ~ |
  d2 ~ |
  d4 ais ~ |
  ais4. g8 ~ |
  g2 ~ |
  g4 r |
  fis2 ~ |
  fis4. r8 |
  R2*6 |
  r4 fis'4 ~ |
  fis2 |
  e ~ |
  e4. r8 |
  d2 ~ |
  d ~ |
  d4 cis ~ |
  cis8 b4. ~ |
  b8 r r4 |
  g'2 ~ |
  g |
  e ~ |
  e4. r8 |
}

mezzoWordsFirst = \lyricmode {
}

altoFirst = \relative c' {
  R2 |
  R2 |
  r4.
  fis1*5/8 g a fis d e fis d e fis d b cis d b d a8 a a a a
  d1*5/8 cis b b' a g fis e d cis cis' b a g fis e
  d8 d d d d
  
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
  R2*2 |
  \bar "|."
}

altoWordsFirst = \lyricmode {
When a man's an em -- pty ket -- tle
He should be on his met -- tle
And yet I'm torn a -- part
Just be -- cause I'm pre -- su -- min'
That I could be a hu -- man
If I on -- ly had a heart

}

bassFirst = \relative c' {
  \clef bass
  R2*7 |
  r4. gis8 ~ |
  gis2 ~ |
  gis2 ~ |
  gis ~ |
  gis4 r |
  r4. g?8 ~ |
  g2 ~ |
  g2 ~ |
  g2 ~ |
  g4 r |
  gis2 ~ |
  gis2 |
  a ~ |
  a |
  R2*3 |
  r4. e8 ~ |
  e2 ~ |
  e2 |
  r4 eis ~ |
  eis2 ~ |
  eis4. fis8 ~ |
  fis2 ~ |
  fis2 ~ |
  fis4 r |
  r gis4 ~ |
  gis2 |
  g? ~ |
  g4 r |
  ais2 ~ |
  ais4. r8 |
  R2 |
  r4 c ~ |
  c2 ~ |
  c4. r8 |
  r4 gis ~ |
  gis2 |
  a ~ |
  a8 ais4. ~ |
  ais2 |
  b2 |
  e |
}

bassWordsFirst = \lyricmode {
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Soprano" %shortInstrumentName = #"E."

} <<
      \new Voice = "soprano" \with{\remove "Note_heads_engraver" \consists "Completion_heads_engraver"} { \numericTimeSignature
	\scorePrefatoryMatter
        << { \marks } { \talea } >>
      }
      \new Lyrics \lyricsto "soprano" {
        \taleaWords
      }
    >>
    \new Staff \with { instrumentName = #"Mezzo" %shortInstrumentName = #"E."

} <<
      \new Voice = "mezzo" \with{\remove "Note_heads_engraver" \consists "Completion_heads_engraver"} { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzoFirst
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Alto" %shortInstrumentName = #"E."

} <<
      \new Voice = "alto" \with{\remove "Note_heads_engraver" \consists "Completion_heads_engraver"} { \numericTimeSignature
	\scorePrefatoryMatter
        \altoFirst
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Bass" %shortInstrumentName = #"E."

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
\midi{}
}

