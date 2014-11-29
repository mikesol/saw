#(set-global-staff-size 15.87)
\paper {
  #(define fonts
    (set-global-fonts
    #:music "cadence"
    #:factor (/ staff-height pt 20)
  ))
}
\header {
  title = "If I Only Had a Heart"
  subtitle = "for Guillaume Dufay"
  %title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}
\paper {
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
  %max-systems-per-page = #2
  %oddHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
  %evenHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
}



%{
  ais a in tenor
  change for "and met..." in ten/alto
  spare jel I had
  rose could man

  bass part for ugly transition
  where i'd be in mezzo (now B instead of G)

  m. 83 kinda sucks in general...

  95 crap
  zipper in 101 needs to be corrected in mezzo
  love 130ish soprano F# at end
  F# before "spar*" 141 ish mezzo
  145 G in B
  sop in 145 (NOT DONE YET)
  scrub D# in 156 (NOT DONE YET)
%}
%%%%solo = \markup \italic "solo"
%%%%%endsolo = \markup \italic "(end solo)"
lickMe = \relative c { \times 16/23 { b8 fis16 ais fis' e c8 f,16 g d'8 cis16 e, f' d8 e16 gis, g g' ais, \tag #'bass { e ~ } \tag #'tenor { b' ~ } } } 

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

#(ly:set-option 'point-and-click #t)

#(set-global-staff-size 20)

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 1\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
}

oS =  #(make-span-event 'SlurEvent START)
cS = #(make-span-event 'SlurEvent STOP)

pizz = \markup \italic "pizz."
arco = \markup \italic "arco"

\include "heart.ily"

\score {
%{
  <<
    \new Staff \with { instrumentName = #"Mike" shortInstrumentName = #"Mk."
      \override DynamicText #'direction = #UP
      \override DynamicLineSpanner #'direction = #UP
      \override Hairpin #'direction = #UP
} <<
      \new Voice = "alto" { \numericTimeSignature
	\stringPrefatoryMatter
        \removeWithTag #'lyrix \altoFirst
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsFirst
      }
    >>
%}
      \new Staff \with { instrumentName = #"Violon I" shortInstrumentName = #"Vn.I"
  } <<
        \new Voice = "soprano" { << { \numericTimeSignature
          \stringPrefatoryMatter
          \removeWithTag #'lyrix {
  \override Score.Hairpin #'minimum-length = #5
  \override Score.Hairpin #'springs-and-rods = #ly:spanner::set-spacing-rods
             \compressFullBarRests \sopranoFirst
          }
        } {
          \stringPrefatoryMatter
          \marks
        } >> }
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
      \remove "Footnote_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}

