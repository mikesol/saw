\version "2.17.0"
\include "defs-devel.ly"
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

legero = \markup \italic "legero"
bendHack = \once \override BendAfter.extra-offset = #'(-1 . 0) 
\header {
  title = "Come Out" %(1)"
  subtitle = \markup { for Massive Attack }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

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
            c4
        }
        \layout { 
            ragged-right = ##t
            indent = #0
        }
    }
}

metronomeMarkThree = \markup {
    \score {
        \new RhythmicStaff \with {
            \remove Time_signature_engraver 
            \remove Staff_symbol_engraver
            fontSize = #-1
        }
        {
            c8.
        }
        \layout { 
            ragged-right = ##t
            indent = #0
        }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% first

nothing = {}

sshe = \lyricmode {
  She
}

bbrings = \lyricmode {
  brings
}

uus = \lyricmode {
  us
}

ggood = \lyricmode {
  good
}

nnews = \lyricmode {
  news
}

oor = \lyricmode {
  or
}

hhave = \lyricmode {
  have
}

hhavent = \lyricmode {
  have -- n't
}

yyou = \lyricmode {
  you
}

hheard = \lyricmode {
  heard?
}

sheBringsUs = \lyricmode {
  \sshe \bbrings \uus
}
sheBringsUsGood = \lyricmode {
  \sheBringsUs \ggood
}

sheBringsUsGoodNews = \lyricmode {
  \sheBringsUsGood \nnews
}

goodNews = \lyricmode {
  \ggood \nnews
}

sheBringsUsGoodNewsOr = \lyricmode {
  \sheBringsUsGoodNews \oor
}

sheBringsUsGoodNewsOrHavent = \lyricmode {
  \sheBringsUsGoodNewsOr \hhavent
}

sheBringsUsGoodNewsOrHaventYou = \lyricmode {
  \sheBringsUsGoodNewsOrHavent \yyou
}

sheBringsUsGoodNewsOrHaventYouHeard = \lyricmode {
  \sheBringsUsGoodNewsOrHaventYou \hheard
}

orHaventYouHeard = \lyricmode {
  \oor \hhavent \yyou \hheard
}

tptext =
#(define-music-function
     (parser location nr mk)
     (number? markup?)
#{
  \once \override TupletBracket.direction = #UP
  \once \override TupletBracket.bracket-flare = #'(0.5 . 0.5)
  \once \override TupletBracket.positions = #position-hack
  \once \override TupletBracket.bracket-visibility = ##t 
  \once \set tupletFullLength = ##t
  %\set tupletFullLengthNote = ##t
  \once \override TupletNumber.text = $mk
  \times 1/1 { \repeat unfold $nr s4 }
#})

marksComeout = {
  \time 3/4
  \tempo "Andante, molto rubato" %4=112
  \partial 4 s4
  %%%%%%%
  s2.*21 |
  s2 \noBreak \bar "!" \mark \markup \override #'(thickness . 2.0) \box \pad-markup #1.5 \line { \general-align #Y #DOWN \metronomeMarkOne  = \general-align #Y #DOWN \metronomeMarkTwo } s4 |
         %%%%%%\mark "(triolet=noire)" %{\tempo 4=168%} s4 |
  s2.*21
  %s2 \noBreak \bar "!" \mark \markup \override #'(thickness . 2.0) \box \pad-markup #1.5 \line { \general-align #Y #DOWN \metronomeMarkTwo  = \general-align #Y #DOWN \metronomeMarkThree } s4 |
  %       %%%%%%%mark "(noire=croche pointée)" %{%\tempo 4=112%} s4 |
  s2. |
  s2.
  \tempo "rit."
  s2.*2
  \tempo "meno mosso"
  s2.*6
  s2
  \bar "|."
}

prefatoryMatterComeout = {
  %\key d \major
  #(set-accidental-style 'modern-cautionary)
  \autoBeamOff
}

%\times 15/9 { b4 b4 e4 cis4. b2. }
sopranoComeout = \relative c'' { \prefatoryMatterComeout
  r4 |
  R2.*13 |
  gis4^\mf gis eis |
  fis gis2 |
  R2.*2 |
  r2 fis4 |
  fis dis2 |
  r2 << { dis4 |
     dis bis cis |
     dis2 } { \tptext #6 #"delayed" } >> g4 |
  g e fis4 |
  fis4. dis |
  e4. fis  ~ |
  fis4. r8 \times 5/6 { b,4
    b gis a
    b2 } \times 6/5 { b4^\cresc b4 e4 cis4. b2. }
      r4 a'4 |
  a fis r |
  \times 9/8 { cis4 cis ais b cis  %{%} dis8 ~ dis dis4 bis }
  e4^\ff e cis |
  d e2 |
  \times 8/7 { r4 b' b
    e cis b ~
    b8 r } b8 b |
  e4^\> e, e |
  e fis gis |
  \repeat unfold 3 { \bendInto a-\bendAfter #-2 } |
  r4\!
    \times 9/8 { \bendHack \bendInto gis4^\p-\bendAfter #-2 \bendInto gis4-\bendAfter #-2 
      \bendHack \bendInto gis4-\bendAfter #-2 \bendInto gis4-\bendAfter #-2 \bendInto gis4-\bendAfter #-2
      \bendHack \bendInto gis4-\bendAfter #-2 \bendInto gis4-\bendAfter #-2 \bendInto gis8-\bendAfter #-2 ~ gis8 } 
    a4^\mp a |
  fis r2 |
  \times 7/12 { \repeat unfold 5 { \bendInto b2^\p-\bendAfter #-2 } \bendInto b4-\bendAfter #-2 ~ b } r2 |
  R2. |
  r4 dis,^\p dis |
  b2^\fermata 
}
%%132
sopranoComeoutWords = \lyricmode {
  \sheBringsUsGoodNews
  \sheBringsUs
  \sheBringsUsGoodNews
  \sheBringsUs
  \sheBringsUsGoodNews
  \sheBringsUsGoodNewsOrHaventYouHeard
  \sheBringsUs
  \sheBringsUsGoodNews
  \sheBringsUs
  \sheBringsUsGoodNewsOrHaventYouHeard
  When she fell out of Kan -- sas a \repeat unfold 3 mir
  \repeat unfold 8 \sshe
  \sheBringsUs
  \repeat unfold 6 \sshe
  \sheBringsUs
}


mezzoComeout = \relative c'' {   \prefatoryMatterComeout
  a4^\mp |
  a fis r4 |
  R2. |
  r2 a4 |
  a fis r4 |
  R2. |
  r4 a4 a
  fis2 r4 |
  r2 a4 |
  a fis2 |
  r2 a4 |
  a4 fis r4 |
  R2. |
  a4 a fis |
  R2. |
  a4^\mf a fis |
  g a2^\< |
  a4 a^\> d |
  b a2 |
  R2.\! |
  << { gis4 gis eis } { \tptext #3 #"delayed" } >> |
  fis \tupFrac \times 9/8 { gis4 \bendHack \bendInto cis,^\mp-\bendAfter #-2
  \bendHack \bendInto cis-\bendAfter #-2 \bendInto cis-\bendAfter #-2 } a'8^\mf ~ |
  a a4. fis4 ~ |
  fis8 g4. \tupFrac \override TupletBracket #'direction = #UP \times 11/12 { \bendInto a4^\>-\bendAfter #-2 \repeat unfold 11 { \bendInto a4-\bendAfter #-2 } }
     \tupFrac \tupFrac \override TupletBracket #'direction = #UP \times 8/11 { \bendInto b4.^\p^\<-\bendAfter #-2 \bendInto b4.-\bendAfter #-2  \repeat unfold 8 { \bendInto b4-\bendAfter #-2 } } |
  g4 g e |
  f4^\f^\cresc g2 |
  g4 r g4 |
  g e f |
  \times 2/3 { r8 gis4 ~ } \times 2/3 { gis4 gis2 } |
  eis4^\ff fis gis |
  % 9 or 18!!
  % 3 3 3 3 2 2 2 2 = 20
  \times 9/10 { \bendHack \bendInto gis4.-\bendAfter #-2 ^\> \bendInto gis4.-\bendAfter #-2 \bendInto gis4.-\bendAfter #-2 \bendHack \bendInto gis4.-\bendAfter #-2 \bendHack \bendInto ais4-\bendAfter #-2 \bendHack \bendInto ais4-\bendAfter #-2 \bendInto ais4-\bendAfter #-2 \bendInto ais4-\bendAfter #-2 } |
  g4^\mf g e |
  f g a4 |
  a fis fis^\mp ~ |
  fis8 fis4. dis4 ~ |
  dis4    \times 7/6 { \bendHack \bendInto dis4^\p-\bendAfter #-2 \bendInto dis-\bendAfter #-2
   \bendHack \bendInto dis-\bendAfter #-2 }     dis4^\mp dis8 ~ |
  dis8 bis2 r8 |
  R2. |
  r4 fis'4 fis |
  dis2 r4 |
  R2. |
  r4. \bendHack \bendInto fis^\pp-\bendAfter #-2 |
  \bendHack \bendInto fis-\bendAfter #-2 \bendInto fis-\bendAfter #-2 |
  \bendHack \bendInto fis-\bendAfter #-2 \bendInto fis-\bendAfter #-2 |
  r2
}

mezzoComeoutWords = \lyricmode {
  \sheBringsUs
  \sheBringsUs
  \sheBringsUs
  \sheBringsUs
  \sheBringsUs
  \sheBringsUs
  \sheBringsUsGoodNewsOrHaventYouHeard
  \sheBringsUsGoodNews
  \repeat unfold 3 \hhave
  \sheBringsUsGood
  \repeat unfold 12 \nnews
  \repeat unfold 10 \nnews
  \sheBringsUsGoodNewsOr
  \sheBringsUsGood
  \sheBringsUsGoodNews
  \repeat unfold 8 \sshe
  \sheBringsUsGoodNews
  \sheBringsUs
  \sheBringsUs
  \repeat unfold 3 \yyou
  \sheBringsUs
  \sheBringsUs
  \repeat unfold 5 \sshe
}

altoComeout = \relative c' {
  \prefatoryMatterComeout
  r4 |
  r2 fis4^\mp |
  fis dis2 |
  R2. |
  R2. |
  R2. |
  R2. |
  r4 fis4 fis |
  dis2 r4 |
  R2. |
  R2. |
  r2 c'4^\mf |
  c a d |
  c2 r4 |
  R2. |
  r2 e,4 |
  e cis fis |
  e2 cis4 ~ |
  cis8 cis4. ais4 |
  dis cis2^\< |
  cis4 cis^\> fis |
  dis \times 2/3 { fis4^\mf fis8 ~ } \times 2/3 { fis4 dis8 ~ } |
  \times 2/3 { dis4 gis8 ~ } \times 2/3 { gis4 gis8 ~ } gis4 |
  eis fis gis ~  |
  gis ais ais |
  fis r4 << { gis4 |
      gis eis ais |
      gis2^\< gis4 |
      gis^\> cis ais |
      gis2^\mf } { \tptext #12 #"slower" } >>
  \times 9/8 { ais4^\cresc
    ais fisis gis8. ~ gis16 }
    ais8 ~ ais2 |
  r4 b b |
  gis a b ~ |
  b a a |
  fis r2 |
  a4^\ff a fis |
  g^\f g e |
  f g2
  d4^\mf d b |
  e d2 ~ |
  d8 \times 7/8 {
       \bendHack \bendInto cis4.-\bendAfter #-2 ^\mp \bendInto cis4.-\bendAfter #-2 d4 \repeat unfold 3 { \bendInto d4-\bendAfter #-2 } r4 }
   cis4^\mf^\> fis8 ~ |
  fis cis4 fis4 cis8 ~ |
  cis8 fis4 cis4 fis8 ~ |
  fis8 cis4^\pp r8 \bendHack \bendInto dis4-\bendAfter #-2 ^\p  ~ |
  dis8 \bendHack \bendInto dis8-\bendAfter #-2 ~ dis2 |
  \bendHack \bendInto dis2.-\bendAfter #-2 |
  R2. |
  r4. \bendInto a'^\pp-\bendAfter #-2 |
  \repeat unfold 5 { \bendInto a-\bendAfter #-2 } 
    r |
  r2
}

altoComeoutWords = \lyricmode {
  \sheBringsUs
  \sheBringsUs
  \sheBringsUsGoodNews
  \sheBringsUsGoodNews
  \sheBringsUsGoodNewsOrHaventYou
  \sheBringsUs
  \sheBringsUsGoodNews
  \sheBringsUs
  \sheBringsUsGoodNewsOrHaventYouHeard
  \sheBringsUsGoodNews
  \sheBringsUsGoodNews
  \sheBringsUs
  \sheBringsUs
  \sheBringsUsGoodNews
  \sheBringsUsGoodNews
  %%%
  \repeat unfold 2 \nnews
  \oor \repeat unfold 3 \hhave
  \repeat unfold 4 \hhavent
  \hhave
  \repeat unfold 3 \yyou
  \repeat unfold 6 \sshe
}

tenorComeout = \relative c' {   \prefatoryMatterComeout
  \clef "treble_8"
  r4 |
  R2. |
  R2. |
  R2. |
  r2 e4^\mp |
  e cis2 |
  R2. |
  R2. |
  R2. |
  r2 dis4^\mf |
  dis bis cis |
  dis2 r4 |
  R2.*5 |
  \clef treble
  r4 b' b |
  gis a b ~ |
  b r b |
  b gis r |
  a a fis |
  \times 2/3 { \clef "treble_8" cis4 cis8 ~ } \times 2/3 { cis4 ais8 ~ } ais4 |
  dis4. cis4. ~ |
  cis8 r4 dis4. |
  dis4. bis4. |
  cis4. dis ~ |
  dis4 eis eis |
  cisis dis a' ~ |
  a8 a4. fis4 ~ |
  fis8 r cis4^\cresc cis |
  ais dis cis ~ |
  cis r e4 |
  e cis d |
  e2 r4 |
  \clef treble
  cis'4^\ff cis ais |
  dis4^\> cis4. e,8 ~ |
  e e4 cis ais'8 ~ |
  ais ais4 fisis4. |
  gis4 \bendHack \bendInto ais-\bendAfter #-2 ^\mp \bendInto ais-\bendAfter #-2 |
  \bendHack \bendInto ais-\bendAfter #-2 \times 2/3 { \bendInto b2^\>-\bendAfter #-2 \bendInto b4-\bendAfter #-2 ~ } | % 2 3 3 3 1  = 12 , 9 had or 18 b2 b b b b b b b b
  \times 2/3 { b4 \bendInto b2-\bendAfter #-2 } \bendInto b4-\bendAfter #-2 ~ |
  \times 2/3 { b8 \bendInto b4-\bendAfter #-2 ~ } \times 2/3 { b \bendInto b2-\bendAfter #-2 } |
  \times 2/3 { \bendInto b2-\bendAfter #-2 \bendInto b4-\bendAfter #-2 ~ } \times 2/3 { b4 \bendInto b8-\bendAfter #-2 ~ } |
  b4^\pp \times 2/3 { gis2^\mf gis4 ~ } |
  \times 2/3 { gis eis2 } fis4 ~ |
  \times 2/3 { fis8 gis4 ~ } gis2 |
  ais,4^\mp bis2 |
  R2.*2 |
  r4 a'4 a |
  fis4 r2 |
  R2.*2 |
  r2
}

tenorComeoutWords = \lyricmode {
  \sheBringsUs
  \sheBringsUsGoodNews
  \sheBringsUsGoodNews
  \sheBringsUs
  \sheBringsUs
  \sheBringsUsGoodNews
  \sheBringsUsGoodNews
  \sheBringsUsGood
  \sheBringsUs
  \sheBringsUsGoodNews
  \sheBringsUsGoodNews
  \sheBringsUsGoodNews
  \sheBringsUs
  \sheBringsUsGood
  \repeat unfold 3 \nnews
  \repeat unfold 9 \hhave
  \sheBringsUsGoodNews
  \goodNews
  \sheBringsUs
}

bassComeout = \relative c' {   \prefatoryMatterComeout
  \clef "treble_8"
  r4 |
  R2.*8 |
  R2.*3 |
  r2 dis4^\mf |
  dis bis cis |
  dis2 r4 |
  R2. |
  r4 bis4 bis |
  gisis ais bis ~ |
  bis r2 |
  %%%
  \clef treble r4 \times 2/3 { b'2^\p^\< b4 ~ } | %10
  \times 2/3 { b4 b2 } b4 ~ |
  \times 2/3 { b8 b4 ~ } \times 2/3 { b4 b2^\mf^\> } |
  \times 2/3 { b2 b4 ~ } b4 |
  b2 b4 ~ |
  b4\p \times 2/3 { cis,2^\< cis4 ~ } |
  \times 2/3 { cis fis2 } dis4^\> ~ |
  \times 2/3 { dis8 \bendHack \bendInto cis4-\bendAfter #-2 ~ } \times 2/3 { cis \bendInto cis2-\bendAfter #-2 } |
  \times 2/3 { dis2^\mf dis4 ~ } \times 2/3 { dis4 bis8 ~ } |
  bis4 \times 2/3 { cis2 dis4 ~ } 
  dis2 \times 9/8 { eis4
     eis cisis dis
     eis2 eis4
     eis4 } ais4 |
  \repeat unfold 3 { \bendHack \bendInto fisis^\>-\bendAfter #-2 \repeat unfold 2 { \bendInto fisis-\bendAfter #-2 } }
  \bendHack \bendInto fisis-\bendAfter #-2 \bendInto fisis^\p-\bendAfter #-2  b4^\f |
  b gis a |
  b2 cis4 |
  cis ais b |
  cis2 cis,4^\> |
  cis ais b |
  \times 2/3 { \bendHack \bendInto cis2-\bendAfter #-2 ^\mp \bendInto cis4-\bendAfter #-2 ~ } \times 2/3 { cis \bendInto cis8-\bendAfter #-2 ~ } |
  cis4 b'^\mf b |
  gis a b ~ |
  b4. r4. |
  bis,4^\mp bis gisis ~ |
  gisis r2 |
  dis'4 dis bis |
  cis dis2 ~ |
  dis2. |
  R2.*3 |
  r2
}

bassComeoutWords = \lyricmode {
  \sheBringsUsGoodNews
  \sheBringsUsGoodNews
  \repeat unfold 10 \sshe
  \orHaventYouHeard \hheard
  \sheBringsUsGoodNews  
  \sheBringsUsGoodNewsOrHavent
  \repeat unfold 11 \yyou
  \sheBringsUsGoodNews  
  \sheBringsUsGoodNews  
  \sheBringsUsGood
  \repeat unfold 3 \nnews
  \sheBringsUsGoodNews  
  \sheBringsUs
  \sheBringsUsGoodNews  
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoComeout" { << { \numericTimeSignature
        \sopranoComeout
      } {
        \marksComeout
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoComeout" {
        \sopranoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoComeout" { << { \numericTimeSignature
        \mezzoComeout
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoComeout" {
        \mezzoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoComeout" { << { \numericTimeSignature
        \altoComeout
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoComeout" {
        \altoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorComeout" { << { \numericTimeSignature
        \tenorComeout
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorComeout" {
        \tenorComeoutWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassComeout" { << { \numericTimeSignature
        \bassComeout
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bassComeout" {
        \bassComeoutWords
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override BendAfter.after-line-breaking = #kill-second-spanner
      \override TupletNumber #'text = #tuplet-number::calc-fraction-text
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \override DynamicLineSpanner.direction = #UP
      \remove "Forbid_line_break_engraver"
      %tupletFullLength = ##t
      %tupletFullLengthNote = ##t
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
      \new Voice = "1" { \voiceOne << \sopranoComeout \marksComeout >> }
      \new Voice = "2" { \voiceTwo \mezzoComeout }
      \new Voice = "3" { \voiceThree \altoComeout }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorComeout }
      \new Voice = "5" { \voiceTwo \bassComeout }
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
      \override TupletNumber #'text = #tuplet-number::calc-fraction-text
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
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoComeout" { << { \numericTimeSignature
        \sopranoComeout
      } {
        \marksComeout
      } >> }
      \new Lyrics \lyricsto "sopranoComeout" {
        \sopranoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoComeout" { \numericTimeSignature
        \mezzoComeout
      }
      \new Lyrics \lyricsto "mezzoComeout" {
        \mezzoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoComeout" { \numericTimeSignature
        \altoComeout
      }
      \new Lyrics \lyricsto "altoComeout" {
        \altoComeoutWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorComeout" { \numericTimeSignature
        \tenorComeout
      }
      \new Lyrics \lyricsto "tenorComeout" {
        \tenorComeoutWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassComeout" { \numericTimeSignature
        \bassComeout
      }
      \new Lyrics \lyricsto "bassComeout" {
        \bassComeoutWords
      }
    >>
  >>
  \midi {}
}
