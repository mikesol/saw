%{
  Ha ha ha (feathered slow then fast)
  Ha ha ha, ho.. (crazy 8ths)
  [16 m again][(back and forth)(same phrase that slows down, but w/ accompagniment so not boring...)]
  Ha ha ha (triplet speed all together - pony trick)
  Ha ha ha (now 4., at end Mike \times 4/6 {No4 No No No No No } )
  xxxxx we're off to see the Wizard xxxxx
  ooooo show me the way ooooo [with hocket]
  fast out of the gate, stabalize to something as crazy as the end of previous merry (of course w/ random long note...)
  Ha ha ha (something forceful, 4 part)
  déborde, ensuite groupes de 3 (w/ words coming apart) -.-.-. || -.-.-. || -.-.-. || -.-.-.
     {show me the way lovely} Ahmad's blues (pulcinela?) ending
       -1 ..--..--..--
       -2 ..--..--..
       -3 ..--..--..--..--..-
          FAS#%@#%@#T OZ!!!!! (oz (cute))
%}
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
  \time 4/4
  \tempo "Hors temps"
  \set Score.tempoWholesPerMinute = #(ly:make-moment 120 4 0 0)
  s1*3 |
  \time 2/2
  \tempo "Really fucking fast" 2=172
}

prefatoryMatter = {
  \key e \major
  #(set-accidental-style 'modern-cautionary)
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
  \times 9/14 { g,,2 e gis2 e a2 e ais2 }
      b4 ~ |
  b8 b ~ b4 ~ b4 a8 b |
  gis e cis b gis a b cis |
  e4 fis r cis' ~ |
  cis b gis e |
  \tupFrac
  \times 4/7
  {
    r1
    e'2. r4
    cis2. r4
    \times 2/3 { b1 dis,2 }
    \times 2/3 { e gis b }
    \times 2/3 { d1 cis2 }
    \times 2/3 { b1 gis2 }
    %%%%%d4 cis2 b2
    %%%%%gis4 fis4 gis4
  } |
  b4 b2 a8 b |
  gis e d b gis a b cis |
  e4 fis r8 cis'4 b8 ~ |
  b gis4 e8 ~ e r r8 fis ~ |
  %fis
  %fis2 r4 ^2 _4 ^2 _4 ^2 _4 ^2 _4 &4 &4 &4 where & is chromatic descent to target
  % just thinking...
  % no he is a won -- der ba -- by have -- n't you heard
  % 16
  \tupFrac
  \times 8/9 { fis2 r4 gis2 g4 fis2 cis4 fis2 gis4 ais2 b4 dis4 d cis } |
  % and then why not...gumshoe!
  % b4 b a a gis gis8 fis ~ fis b4 \glissando b, b' \glissando b, b' \glissando b, b'8 cis b a gis fis e
  % but above, only do two slides, slower and can have complete bottom, so 2 in the space of three...
  % in theory shouldn't have too much of the slow jerky stuff - need to field test
  b4 b a a |
  gis gis8 fis ~ fis4 \tupFrac \times 3/4 { b2 \glissando
      b,4 r b'2 \glissando b,4 r } b'8 cis b a gis fis |
  r4 gis4 r2 |
  r4. ais8 ~ ais b a b |
  \tupFrac
  \times 8/11 { e4 gis, a ais b %{%} e gis, a ais b %{%} e b d cis b fisis %{%} gis b gis e b e } |
  r8 b'4 cis8 b gis fis b, |
  gis'8 b gis \tupFrac \times 5/8 { e4 a gis fis } |
  R1 |
  r2 r8 b4 b8 ~ |
  b8 b gis b gis e cis c |
  b cis dis e r b'4 b8 ~ |
  %%%%% space is 32
  %%%%% 27
  %b
  %  b a b gis e cis b
  %  gis b cis e
  %  a b cis fis
  %  b cis dis
  %  gis e dis b
  %  a b cis dis
  %x x x x x
  %x x
  %x x x x
  %x x x
  %x x x x
  %x x x x x
  % credit of 5 8ths here...
  %b b a b gis e cis b 
  %gis b cis e
  %a b cis fis8.
  %e8. fis8. g8.
  %gis4 e8. cis8. b8. gis8. a b cis
  % credit of 9 8ths here...
  % and we go over by 4
  %b b a b gis e cis b
  %\times 2/3 { gis4 b cis } \times 2/3 { e a, b }
  %\times 2/3 { cis fis e } fis8. g8. gis8 ~
  %gis16 e8. \times 2/3 { cis4 b gis } a8 b |
  %cis e r4 r2 |
  % same as above but starts a bit sooner...
  % and we go over by 4
  b b a b gis e \times 2/3 { cis4 b gis } \times 2/3 { b cis e }
  \times 2/3 { a, b cis } \times 2/3 { fis } e8. fis8. g8.
  gis8. \times 2/3 { e4 cis } \times 2/3 { b gis a } |
  b8 cis e r r2 |
  R1 |
  R1 |
}

%{
  %old after second ha ha ha
  %r8 g4 r8 r gis4 r8 |
  %a4 r8 b ~ b r8 g4 |
  %r8 gis4 r8 a4 r8 b ~ |
  %b r g4 r8 gis4 r8 |
  %a4 r8 b ~ b8 fis a gis |
  %g ees bes gis' e cis bes g |
  %e' ais, b fis' dis b g f |
  %d fis g e' c a f d |
  %ees g bes d cis a fis d |
  %cis d r4 r2 |

%}

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
  be -- cause of all the
      %%%%%%%%%%%%%%%%%%%%%%%%heal -- in'
  ra -- di -- a -- ting po -- wer that he's send -- ing
  Ne -- ver end -- ing %{ love = arrival %} love
  Gosh he is a won -- der ba -- by have -- n't you heard
  The wi -- zard flipped the bird dash -- ing smash -- ing
  would -- n't e -- ver wan -- na stop
  go -- in' he's my
  %5
  Wiz and oh what a
  %5
  Wiz and show me the
  %6
  Wi -- zard's cre -- a -- tion your
  on -- ly sal -- va -- tion is
  %%
  tak -- ing off al -- though you want -- ed to wait
  it's too late
  Oh ne -- ver was a Wi -- zard e -- ver steal -- in the show
  Al -- lu -- ring was the mis -- ty -- fy -- ing au -- ra he gave
  Home of the brave
  Oh how I crave
  The Wi -- zard's ac -- cu -- men to save
}

comp = \relative c {
  \prefatoryMatter
  \clef "treble_8"
  R1*3 |
  R1*49 |
  <e d' e>4 <gis d' e> <b cis e> r |
  <a b e>8 <b b e>4 <gis cis e>8 ~ <gis cis e>4. r8 |
  R1*6
  <e d' e>4 <gis d' e> <b cis e> r |
  <a b e>8 <b b e>4 <gis cis e>8 ~ <gis cis e>8 <fis cis' e>4 q8 |
  <e d' e>8 q q4 <gis cis e>8 <b cis e>4 <a b e>8 ~ |
  <a b e>2. r4 |
}

compWords = \lyricmode {
  Ha ha ha
  Ho dee ho
  Ha ha ha
  Ho dee ho
  And a cou -- ple of tra la las
}

bass = \relative c, {
  \prefatoryMatter
  \clef "bass"
  R1*3 |
  R1*24 |
  e4 r gis r |
  a r ais r |
  b r e r |
  cis r b r |
  gis r e r |
  fis r a r |
  gis r cis r |
  b r gis r |
  e r gis r |
  fis r ais r |
  cis r dis r |
  e r dis r |
  cis r ais r |
  b r cis r |
  dis r e r |
  fis r dis r |
  cis r b r |
  gis r e r |
  fis r g r |
  gis r cis r |
  b r a r |
  gis r b r |
  fis r a r |
  gis r e r |
  cis' r b r |
  e, r gis r |
  fis r a r |
  gis r g r |
  fis r a r |
  gis r cis r |
  b r a r |
  gis r e r |
  fis r a r |
  gis r e r |
  fis r a r |
  gis r b r |
  a r cis r |
  b r gis r |
  a r fis r |
  gis r b r |
  e, r f r |
  fis r ais r |
  gis r g r |
  fis r cis' r |
  c r b r |
  ais r fis r |
  e r gis r |
  fis
}

bassWords = \lyricmode {
  \repeat unfold 16 ○
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    %\new DrumStaff \drummode { \repeat unfold 32 { r4 hhc r4 hhc } }
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \alto
      } {
        \marks
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \markup \right-column { "Bitch" Dörty "Fakbyd" } %shortInstrumentName = #"R."
} <<
      \new Voice = "comp" { << { \numericTimeSignature
        \comp
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "comp" {
        \compWords
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

%%% MIDI

\score {
  \transpose c c \new ChoirStaff <<
    \new DrumStaff \drummode { \repeat unfold 60 { r4 hhc r4 hhc } }
    \new Staff \with { midiInstrument = #"tenor sax" instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      { \marks }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { midiInstrument = #"baritone sax" instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "comp" { \numericTimeSignature
        \comp
      }
      \new Lyrics \lyricsto "comp" {
        \compWords
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
