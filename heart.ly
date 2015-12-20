
\header {
  title = "If I Only Had a Heart"
  subtitle = "for Guillaume Dufay"
  %title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}
\include "stylesheet.ly"


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
%%%%%lickMe = \relative c { \times 16/23 { b8 fis16 ais fis' e c8 f,16 g d'8 cis16 e, f' d8 e16 gis, g g' ais, \tag #'bass { e ~ } \tag #'tenorTag { b' ~ } } } 

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

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 1\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
}

sadThatIHaveToDoThisKludge = #(define-event-function (parser location) ()
   ; ugh...dummy event...should be nothing
   (make-music 'AnnotateOutputEvent)
   )


oS = \sadThatIHaveToDoThisKludge
cS = \sadThatIHaveToDoThisKludge

pizz = \markup \null
arco = \markup \null


\include "heart.ily"

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \keepWithTag #'lyrix \sopranoFirst
      } {
	\scorePrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \keepWithTag #'lyrix \mezzoFirst
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \keepWithTag #'lyrix { \Red \altoFirst }
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        %%%%%%% UGHHHH
        \clef "treble_8"
        \keepWithTag #'lyrix { \keepWithTag #'tenorTag { \removeWithTag #'viola \tenorFirst } }
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsFirst
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \keepWithTag #'lyrix \bassFirst
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsFirst
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override Script #'direction = #UP
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
      \override DynamicText #'direction = #UP
      \override DynamicLineSpanner #'direction = #UP
      \override Hairpin #'direction = #UP
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

%{
\score {
  \new PianoStaff <<
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \sopranoFirst
      } \\ { \mezzoFirst } \\ { \altoFirst } {
	\scorePrefatoryMatter
        \marks
      } >> }
    }
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \tenorFirst
      } \\ \\ { \bassFirst } {
	\scorePrefatoryMatter
        \marks
      } >> }
    }
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
%}

%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzoFirst
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \altoFirst
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \keepWithTag #'tenorTag { \removeWithTag #'viola { \tenorFirst } }
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsFirst
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
