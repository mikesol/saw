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
  R2*2 |
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
}
%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        << { \marks } { \mezzoFirst } >>
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsFirst
      }
    >>
  >>
  \midi {}
}
