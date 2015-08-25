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
maybeStemUp =  { %{\stemUp%} }
maybeStemDown =  { %{\stemDown%} }
maybeStemNeutral = { %{\stemNeutral%} }
#(ly:set-option 'point-and-click #f)
sim = \markup \italic "sim."
MyRed = \Red
MyBlack = \Black
myred = \once \override NoteHead.color = #red
myblack = \revert NoteHead.color
%MyRed = \revert NoteHead.color
%MyBlack = \revert NoteHead.color
%myred = \revert NoteHead.color
%myblack = \revert NoteHead.color

%{
  repeated note
  repeated lick
  digs, scoops, etc
  rests in strange places...
  
%}

\header {
  title = "The Merry Old Land of Oz" %(1)"
  subtitle = \markup { for Jon Hendricks }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 2/2
  \tempo "Fast" 2=160
}

prefatoryMatter = {
  \key e \major
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c' {
  \prefatoryMatter
}

sopranoWords = \lyricmode {
}

mezzo = \relative c' {
  \prefatoryMatter
}

mezzoWords = \lyricmode {
}

alto = \relative c'' {
  \prefatoryMatter
  \clef "treble_8"
  r2 \times 2/3 { gis4 a gis } |
  b2.^\fermata ( \times 2/3 { a8 b a ) } |
  gis4 ( e ) d ( b ) |
  d2 e ~ |
  e4 r4 r2 |
  r2. e4 ~ |
  e4 r cis'2 ~ |
  \times 2/3 { cis2 b cis }
  gis4 ( fis e ) r |
  R1 |
  r2. gis,4 ~ |
  gis2 b4 cis |
  e4 e2. |
  d2 r2 |
  r2 r8 gis,8 b cis |
  e8 d4 b8 ~ b e, fis gis |
  b4 b ~ b8 e, fis gis |
  ais8 a4 gis8 ~ gis ais, b cis |
  e4 e d8 b gis r |
  \clef "bass"
  \times 4/5 { b4 bes a f e ~ } |
  e
    \clef treble
    r4 r4 e''''4 ~  |
  e-\bendAfter #-3 r
  \clef "treble_8"
  % 3 3 3 2 = 11
  \tupFrac
  \times 9/11 { g,,2 e4 gis2 e4 a2 e4 ais2 }
      b4 ~ |
  b8 b ~ b4 ~ b4 a8 b |
  gis e cis b gis a b cis |
  e4 fis r cis' ~ |
  cis b gis e |
  \tupFrac
  \times 8/7 {
    r2
    e'4. r8
    cis4. r8 
    \times 2/3 { b2 dis,4 }
    \times 2/3 { e gis b }
    d8 cis4 b4
     gis8 fis gis } |
  b4 b2 a8 b |
  gis e d b gis a b cis |
  e4 fis r8 cis'4 b8 ~ |
  b gis4 e8 ~ e r r4 |
  %fis
  %fis2 r4 ^2 _4 ^2 _4 ^2 _4 ^2 _4 &4 &4 &4 where & is chromatic descent to target
  % just thinking...
  % no he is a won -- der ba -- by have -- n't you heard
  % 16
  \tupFrac
  \times 8/9 { fis2 r4 gis2 g4 fis2 cis4 fis2 gis4 a2 ais4 dis4 d cis } |
  % and then why not...gumshoe!
  % b4 b a a gis gis8 fis ~ fis b4 \glissando b, b' \glissando b, b' \glissando b, b'8 cis b a gis fis e
  % but above, only do two slides, slower and can have complete bottom, so 2 in the space of three...
  % in theory shouldn't have too much of the slow jerky stuff - need to field test
  b4 b a a |
  gis gis8 fis ~ fis4 \tupFrac \times 3/4 { b2 \glissando
      b,4 r b'2 \glissando b,4 r } b'8 cis b a gis fis |
  gis4 r r2 |
  r4. ais8 ~ ais b a b |
  \tupFrac
  \times 8/11 { e4 gis, a ais b %{%} e gis, a ais b %{%} e b d cis b fisis %{%} gis b gis e b e } |
  r8 b'4 cis8 b gis fis b, |
  gis'8 b gis \tupFrac \times 5/8 { e4 a gis fis } |
}

altoWords = \lyricmode {
  Show me the way
  migh -- ty wi -- zard
  Now I wan -- na know
  You are my source of hope
  You are my te -- thered rope
  With you I cope, no, 
  You know that I ain't dope
  I ne -- ver mope when I got your
  E -- ver clea -- nin' soap
  Nope
  Wheel -- in deal -- in steal -- in that
  % b b
  Wi -- zard was a hap -- py lit -- tle won -- der for my spi -- rit
  % cis b gis e
  Let me hear it
  % out of time
  Wiz of Oz
  You know that he's one be -- cause
  be -- cause of all the heal -- in' ra -- di -- a -- ting po -- wer that he's send -- ing
  Ne -- ver end -- ing %{ love = arrival %} love
  Gosh he is a won -- der ba -- by have -- n't you heard
  The wi -- zard flipped the bird dash -- ing smash -- ing
  would -- n't e -- ver wan -- na stop
}

tenor = \relative c' {
  \prefatoryMatter
  \clef "treble_8"
}

tenorWords = \lyricmode {
}

bass = \relative c, {
  \prefatoryMatter
  \clef "bass"
}

bassWords = \lyricmode {
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    %\new DrumStaff \drummode { \repeat unfold 32 { r4 hhc r4 hhc } }
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
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
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
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
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
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
    \new Staff = "realBass" \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
  \transpose c c \new ChoirStaff <<
    \new DrumStaff \drummode { \repeat unfold 32 { r4 hhc r4 hhc } }
    \new Staff \with { midiInstrument = #"alto sax" instrumentName = #"Bitch" %shortInstrumentName = #"M."
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
    \new Staff \with { midiInstrument = #"trumpet" instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { midiInstrument = #"tenor sax" instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { midiInstrument = #"baritone sax" instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)" instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
