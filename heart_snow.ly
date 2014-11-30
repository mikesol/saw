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
  %max-systems-per-page = #2
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
  \repeat unfold 31 { \repeat unfold 5 { s2 } \break } |
}

talea = \relative c' {
  r8 fis cis' b, |
  fis' d' r
    %!
    fis, |
  cis' b, fis' b |
  d, e r
    %&
    fis |
  cis' b, a' d |
  r
    %!
    fis, cis' b, |
  fis' b a, d |
  e r
    %&
    fis cis' |
  e, a d r |
    %!
    fis, cis' b, fis' |
  b a, d b |
  e r
    %&
    fis cis' |
  b, fis' d' r |
  fis, cis' b, fis' |
  b a, d b |
  a' e r fis |
  cis' b, fis' d' |
  r fis, cis' e, |
  b fis' b a, |
  d b a' e |
  r fis cis' b, |
  fis' d' r fis, |
  cis' e, b' b, |
  fis' b a, d |
  b a' e r |
  fis cis' b, fis' |
  d' r fis, cis' |
  e, b' d, b |
  fis' b a, d |
  b a' e r |
  fis cis' b, fis' |
  d' r a fis |
  cis' e, b' d, |
  b fis' b a, |
  d b a' e |
  r fis cis' b, |
  fis' d' r a |
  fis cis' e, b' |
  d, b fis' b |
  e, a, d b |
  a' e r fis |
  cis' b, fis' d' |
  r a fis cis' |
  e, b' d, a' |
  b, fis' b e, |
  a, d b a' |
  e r fis cis' |
  b, fis' d' r |
  e, a fis cis' |
  e, b' d, a' |
  b, fis' b e, |
  a, d b a' |
  e r fis cis' |
  b, fis' d' r |
  e, a fis cis' |
  a e b' d, |
  a' b, fis' b |
  e, a, d b |
  a' e r fis |
  cis' b, fis' d' |
  r  e, a fis |
  cis' a e b' |
  fis d a' b, |
  fis' b e, a, |
  d b a' e |
  r fis cis' b, |
  fis' d' r e, |
  a fis cis' a |
  e b' fis d  |
  a' b, fis' b  |
  e, a a, d |
  b a' e r |
  fis  cis' b, fis' |
  d' r e, a |
  fis cis' a e |
  b' fis d a' |
  b, fis' b e, |
  a fis a, d |
  b a' e r |
  fis  cis' b, fis' |
  d' r e, a |
  fis cis' a e |
  b' fis d a' |
  e b fis' b |
  e, a fis a, |
  d b a' e |
  r fis cis' b, |
  fis' d'  r 
}

taleaWords = \lyricmode {
in shoots sen Jeal had rows be a Just on a And hear ti sen should heart per de stay in friends part ter How low co sy should heart Jeal could the der A and ly with thou should could stay should vo gis de a If sy I'm be beat re And I'd could with rows ou low shoots That bal rows bal sweet heart friends ten I If de stay If o If it I tal sy I'd beat and had a and ty mo be on Jeal on gen that be stay on a should young the ou a gar I
}

mezzoFirst = \relative c' {
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

mezzoWordsFirst = \lyricmode {
When a man's an em -- pty ket -- tle
He should be on his met -- tle
And yet I'm torn a -- part
Just be -- cause I'm pre -- su -- min'
That I could be a hu -- man
If I on -- ly had a heart

}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Cantus Firmus" %shortInstrumentName = #"E."

} <<
      \new Voice = "soprano" \with{\remove "Note_heads_engraver" \consists "Completion_heads_engraver"} { \numericTimeSignature
	\scorePrefatoryMatter
        << { \marks } { \talea } >>
      }
      \new Lyrics \lyricsto "soprano" {
        \taleaWords
      }
    >>
    \new Staff \with { instrumentName = #"Cantus Firmus" %shortInstrumentName = #"E."

} <<
      \new Voice = "mezzo" \with{\remove "Note_heads_engraver" \consists "Completion_heads_engraver"} { \numericTimeSignature
	\scorePrefatoryMatter
        << { \marks } { \mezzoFirst } >>
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
\midi{}
}

