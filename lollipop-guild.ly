\version "2.17.0"
\include "stylesheet.ly"
\include "characterNames.ly"
ntrill = \override TrillSpanner #'bound-details #'left  #'text = #'()

legero = \markup \italic "legero"

\header {
  title = "The Lollipop Guild" %(1)"
  subtitle = \markup { for Mark Applebaum }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

metronomeMarkOne = \markup {
    \score {
        \new RhythmicStaff \with {
            \remove Time_signature_engraver 
            \remove Staff_symbol_engraver
            fontSize = #-1
        }
        {
            \times 2/3 { c4 }
        }
        \layout { 
            ragged-right = ##t
            indent = #0
        }
    }
}

metronomeMarkTwo = \markup {
    \score {
        \new RhythmicStaff \with {
            \remove Time_signature_engraver 
            \remove Staff_symbol_engraver
            fontSize = #-1
        }
        {
            \times 4/7 { c8. }
        }
        \layout { 
            ragged-right = ##t
            indent = #0
        }
    }
}



marksLollipop = {
  \time 5/6
  \tempo "With urgency" 4=200
  s2. s4*1/3 | % we represent the lollipop guild
  \time 9/20
  \bar ".|:" s4 s4*4/5 | \bar ":|."  % the lollipop guild
  \time 5/8
  s4. % the lollipop 
  \mark \markup \override #'(thickness . 2.0) \box \pad-markup #1.5 \line { \general-align #Y #DOWN \metronomeMarkOne  = \general-align #Y #DOWN \metronomeMarkTwo } 
  s4 | % guild
  \time 4/4
  \once \override Staff . TimeSignature #'stencil =
  #(lambda (grob) (grob-interpret-markup grob (markup #:override '(baseline-skip . 0) #:center-column (#:override '(font-size . 4.5) "π" #:number "4" ))))
  s1 | % and in the name of the
  \time 4/4
  \once \override Staff . TimeSignature #'stencil =
  #(lambda (grob) (grob-interpret-markup grob (markup #:override '(baseline-skip . 0) #:center-column (#:override '(font-size . 1.5) #:bold "?" #:number "16"))))
  s1 | % the lullaby league, we
  \time 4/4
  % wish to welcome you, to
  \once \override Staff . TimeSignature #'stencil =
  #(lambda (grob) (grob-interpret-markup grob (markup #:override '(baseline-skip . 0) #:center-column (#:number "1" #:number "0"))))
  % munchkin land
  s1 \bar "|."
}

prefatoryMatterLollipop = {
  %\key aes \major
  #(set-accidental-style 'modern-cautionary)
}

sopranoLollipop = \relative c''' { \autoBeamOff
  \prefatoryMatterLollipop
  \clef "treble^8"
  cisih8. \times 4/5 { d16 ~ \times 2/3 { d8 cis cih ~ } } \times 4/7 { cih4 bis8. ~ } \times 2/3 { bis8 ~ } bis16 |
  \times 4/5 { aih16 e'8 ~ \times 2/3 { e8 eeh16 ~ } \times 4/5 { eeh gisih,8. eih'16 } } |
  \override Beam.grow-direction = #LEFT
  a32-. [ a-. aih-. ais-.   aisih-. ais-. aih-. a-.   aeh-. aes-. aeseh-. aeh-.   beh,-.-> aeh'-. aes-. aeseh-.   ] aes aeh a aih |
  dis4 e cis
}

sopranoLollipopWords = \lyricmode {
  We re -- pre -- sent the
  lol -- li -- pop guild, the
  lol -- li -- pop guild, and
}

mezzoLollipop = \relative c''' { \autoBeamOff
  \prefatoryMatterLollipop
  \clef "treble^8"
  c4
}

mezzoLollipopWords = \lyricmode {
}

altoLollipop = \relative c''' { \autoBeamOff
  \prefatoryMatterLollipop
  \clef "treble^8"
  c4
}

altoLollipopWords = \lyricmode {
}

tenorLollipop = \relative c'' {
  \autoBeamOff
  \clef "treble"
  \prefatoryMatterLollipop
  c4
}

tenorLollipopWords = \lyricmode {
}

bassLollipop = \relative c { \autoBeamOff
  \prefatoryMatterLollipop
  \clef bass
}

bassLollipopWords = \lyricmode {
}

%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoLollipop" { << { \numericTimeSignature
        \sopranoLollipop
      } {
        \marksLollipop
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoLollipop" {
        \sopranoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoLollipop" { << { \numericTimeSignature
        \mezzoLollipop
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoLollipop" {
        \mezzoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoLollipop" { << { \numericTimeSignature
        \altoLollipop
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoLollipop" {
        \altoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorLollipop" { << { \numericTimeSignature
        \tenorLollipop
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorLollipop" {
        \tenorLollipopWords
      }
    >>
%    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
%} <<
%      \new Voice = "bassLollipop" { << { \numericTimeSignature
%        \bassLollipop
%      } {
%        \nothing
%      } >> }
%      \new Lyrics \lyricsto "bassLollipop" {
%        \bassLollipopWords
%      }
%    >>
  >>
  \layout {
    \context {
      \Voice
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \override DynamicLineSpanner.direction = #UP
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

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \sopranoLollipop \marksLollipop >> }
      \new Voice = "2" { \voiceTwo \mezzoLollipop }
      \new Voice = "3" { \voiceThree \altoLollipop }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorLollipop }
      \new Voice = "5" { \voiceTwo \bassLollipop }
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
      \override Hairpin.direction = #UP
      \override DynamicText.direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override DynamicLineSpanner.direction = #UP
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
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoLollipop" { << { \numericTimeSignature
        \sopranoLollipop
      } {
        \marksLollipop
      } >> }
      \new Lyrics \lyricsto "sopranoLollipop" {
        \sopranoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoLollipop" { \numericTimeSignature
        \mezzoLollipop
      }
      \new Lyrics \lyricsto "mezzoLollipop" {
        \mezzoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoLollipop" { \numericTimeSignature
        \altoLollipop
      }
      \new Lyrics \lyricsto "altoLollipop" {
        \altoLollipopWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorLollipop" { \numericTimeSignature
        \tenorLollipop
      }
      \new Lyrics \lyricsto "tenorLollipop" {
        \tenorLollipopWords
      }
    >>
%    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
%} <<
%      \new Voice = "bassLollipop" { \numericTimeSignature
%        \bassLollipop
%      }
%      \new Lyrics \lyricsto "bassLollipop" {
%        \bassLollipopWords
%      }
%    >>
  >>
  \midi {}
}
