%{
  Ha ha ha (feathered slow then fast)
  Ha ha ha, ho.. (crazy 8ths)
  [16 m again][(back and forth)(same phrase that slows down, but w/ accompagniment so not boring...)]
  Ha ha ha (triplet speed all together - pony trick)
  Ha ha ha (now 4., at end Mike \times 4/6 {No4 No No No No No } )
  ooooo show me the way ooooo
  xxxxx we're off to see the Wizard xxxxx
  ooooo show me the way ooooo [with hocket]
  fast out of the gate, stabalize to something as crazy as the end of previous merry (of course w/ random long note and/or drop out...)
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
  %top-margin = 0.5\in
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
  \tempo "Freely" 2=60
  s1*3 |
  \time 2/2
  \tempo "Fast" 2=172
  s1*96 \bar "||"
}

prefatoryMatter = {
  \key e \major
  %#(set-accidental-style 'modern-cautionary)
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
  \times 8/15 { fis1 r2 gis2 ~ gis g2 fis1 g2 gis1 a2 dis d cis } |
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
  r8 dis,8 e eis fis e fis g |
  gis e fis gis a fis gis a |
  b e b a gis b, cis dis |
  e fis gis a ais cis b g |
  gis e d c b cis dis e |
  fis4-. r r2 |
  r4. dis''8 ~ dis2 |
  cis4 ais fis gis |
  ais fis b r |
  r2 \tupFrac \times 7/13 { ais2 b bis cis r1 gis2 a ais b r1. } |
  %{e,8%} r8 gis, b cis fis a, c d |
  fis ais, cis dis fisis b, d e |
  \times 4/6 { gis4 a b gis e ees } |
  d4 r gis a |
  b gis e ees |
  \times 2/3 { d4 gis2 a b4 ~ } |
  \times 2/3 { b gis2 e dis4 ~ } |
  \times 2/3 { dis4 d2 r gis4 } |
  R1 |
  R1 |
  r2.. g8 ~ |
  \times 4/5 { g8 r g4 g g g } |
  \times 4/5 { g g g g g } |
  \times 4/5 { g g g g g } |
  \times 4/5 { g g r8 } gis4 gis |
  gis r b,8 b4 b8 ~ |
  b r g'4 g g |
  r b,8 b ~ b b4 r8 |
  gis'4 gis gis r |
  b,8 b4 b8 ~ b r gis'4 |
  gis gis r b,8 b ~ |
  b b4 r8 gis'4 gis |
  \times 4/6 { gis4 d d d d d } |
  r4 gis a gis |
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
  Gosh he is a won -- der %{ba -- by%} have -- n't you heard
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
  A bu -- sy bea -- ver
  A de -- cei -- ver
  A be -- lie -- ver
  %Not a grie -- ver
  An im -- pos -- si -- ble in -- fu -- sion of in -- cin -- di -- a -- ry
  rhe -- to -- ric and pau -- ci -- ty of ve -- ri -- ty was he.
  Gen -- ui -- ine op -- ti -- mis -- tic verve
  Oh how sa -- vante
  A di -- la -- tente
  Oh what a cream and what a clout
  I got -- ta scream, I got -- ta shout
  He's sim -- ply mar -- vel -- ous
  Shout he's just fan -- ta -- bu -- lous
  Shout he's dis -- com -- bo -- bu -- lous
  Shout
  las
  That's how we laugh the day a -- way in the mer -- ry old land of Oz
  \repeat unfold 4 { Ha ha ha Ho dee ho }
  Ha ha ha
  \repeat unfold 5 No
  Show me the  
}

comp = \relative c' {
  \prefatoryMatter
  \clef "treble_8"
  R1*3 |
  R1*49 |
  <d e>4 <d e> <cis e> r |
  <b e>8 <b e>4 <cis e>8 ~ <cis e>4. r8 |
  R1*6
  <d e>4 <d e> <cis e> r |
  <b e>8 <b e>4 <cis e>8 ~ <cis e>8 <cis e>4 q8 |
  <d e>8 q q4 <cis e>8 <cis e>4 <b e>8 ~ |
  <b e>2. r4 |
  R1*4 |
  r2. <ais cis e>4 |
  R1*3 |
  <dis a' cis>4 q4 \times 7/13 { r1 r1 <dis fis a>2 <b dis fis>2 r\breve <cis fis a>2 <b e gis> <a dis fis> } |
  <gis b e> <b d gis> |
  <a cis fis> <cis e a> |
  <b dis gis> <d fis b> |
  <cis e a> \clef treble <a' dis gis> |
  <gis cis e> <eis gis b> |
  <cis fis a> \clef "treble_8" <a dis fis> |
  <b e gis> <a cis fis> |
  <gis b e> <fis a cis> |
  <d' e>4 q <cis e> r |
  <b e>8 q4 <cis e>8 ~ q q8 q q |
  <d e> q q4 <cis e>8 q4 <b e>8 ~ |
  \times 4/5 { q8 r <cis e>4 <d e> q <cis e> } |
  \times 4/5 { <cis e> <b e> <b e> <cis e> <cis e> } |
  \times 4/5 { <cis e> <d e> <d e> <d e> <cis e> }
  \times 4/5 { <cis e>4 <b e> r8 } <d e>4 <d e> |
  %
  <cis e> r <b e>8 <b e>4 <cis e>8 ~ |
  \times 2/3 { <cis e>4 <cis e> <cis e> } \times 2/3 { <d e>2 q4 ~ } |
  \times 2/3 { q4 q2 } \times 2/3 { <cis e>2 q4 ~ } |
  \times 2/3 { q4 <b e>2 } \times 2/3 { <cis e>2 <d e>4 ~ } |
  \times 2/3 { q4 q2 } \times 2/3 { <cis e>2 q4 ~ } |
  \times 2/3 { q4 <b e>2 } \times 2/3 { q2 <cis e>4 ~ } |
  \times 2/3 { q4 q2 } \times 2/3 { q2 <d e>4 ~ } |
  \times 2/3 { q4 q2 } \times 2/3 { q2 <cis e>4 } |
  R1 |
}

tenMel = \relative c {
  s1*3 |
  s1*49 |
  e4 gis b r |
  a8 b4 gis8 ~ gis4. r8 |
  s1*6
  e4 gis b r |
  a8 b4 gis8 ~ gis8 fis4 fis8 |
  e8 e e4 gis8 b4 a8 ~ |
  a2. r4 |
  s1*4 |
  s1*4 |
  s1*4 |
  s1*8
  e4 gis b r |
  a8 b4 gis8 ~ gis gis fis fis |
  e e e4 gis8 b4 a8 ~ |
  \times 4/5 { a8 r b4 e, gis b } |
  \times 4/5 { e cis dis e a, } |
  \times 4/5 { a gis gis gis a } |
  \times 4/5 { fis4 e r8 } e4 gis |
  b r a8 b4 gis8 ~ |
  \times 2/3 { gis4 fis fis } \times 2/3 { e2 e4 ~ } |
  \times 2/3 { e4 e2 } \times 2/3 { gis2 b4 ~ } |
  \times 2/3 { b4 a2 } \times 2/3 { b2 e,4 ~ } |
  \times 2/3 { e4 gis2 } \times 2/3 { b2 e4 ~ } |
  \times 2/3 { e4 cis2 } \times 2/3 { dis2 e4 ~ } |
  \times 2/3 { e4 a,2 } \times 2/3 { a2 gis4 ~ } |
  \times 2/3 { gis4 gis2 } \times 2/3 { gis2 a4 } |
  R1 |
}

compWords = \lyricmode {
  Ha ha ha
  Ho dee ho
  Ha ha ha
  Ho dee ho
  And a cou -- ple of tra la las
  Wow!
  Gee whiz
  A -- men
  A di -- la
  ten -- der, joy -- ous
  glee -- ful mirth my
  Wi -- zard is my
  Own re -- birth, sing
  Ha ha ha
  Ho dee ho dee and a
  cou -- ple of tra la las
  That's how we laugh the day a -- way in the mer -- ry old land of Oz
  Ha ha ha
  Ho dee ho and a
  cou -- ple of tra la las
  That's how we laugh the day a -- way in the mer -- ry old land of Oz
}


bass = \relative c, {
  \prefatoryMatter
  \clef "bass"
  R1*3 | \barNumberCheck #4
  R1*24 | \barNumberCheck #28
  e4 r gis r |
  a r ais r |
  b r e r |
  cis r b r | \barNumberCheck #32
  gis r e r |
  fis r a r |
  gis r cis r |
  b r gis r | \barNumberCheck #36
  e r gis r |
  fis r ais r |
  cis r dis r |
  e r dis r | \barNumberCheck #40
  cis r ais r |
  b r cis r |
  dis r e r |
  fis r dis r | \barNumberCheck #44
  cis r b r |
  gis r e r |
  fis r g r |
  gis r cis r | \barNumberCheck #48
  b r a r |
  gis r b r |
  fis r a r |
  gis r e r | \barNumberCheck #52
  cis' r b r |
  e, r gis r |
  fis r a r |
  gis r g r | \barNumberCheck #56
  fis r a r |
  gis r cis r |
  b r a r |
  gis r g r | \barNumberCheck #60
  fis r a r |
  gis r e r |
  fis r a r |
  gis r b r | \barNumberCheck #64
  a r cis r |
  b r gis r |
  a r fis r |
  gis r b r | \barNumberCheck #68
  e, r f r |
  fis r ais r |
  gis r g r |
  fis r cis' r |
  c r b r |
  ais r fis r |
  e r gis r |
  fis r cis' r |
  gis r fis r |
  e fis gis e |
  fis cis' b a |
  gis a b gis |
  a e' cis c |
  b gis fis e |
  fis cis' b ais |
  b e, gis fis |
  e gis a b |
}

bassWords = \lyricmode {
  \repeat unfold 16 ○
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    %\new DrumStaff \drummode { \repeat unfold 32 { r4 hhc r4 hhc } }
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
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
    \new Staff \with { printPartCombineTexts = ##f instrumentName = \markup \right-column { "Bitch" Dörty "Fakbyd" } %shortInstrumentName = #"R."
} << \new Voice { \partcombine
      { \numericTimeSignature
        \comp
      } {
        \tenMel
      } }
    \new NullVoice = "comp" \comp
    \new Lyrics \lyricsto "comp" {
      \compWords
    } >>
    \new Staff = "realBass" \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
    \new DrumStaff \drummode { \repeat unfold 90 { r4 hhc r4 hhc } }
    \new Staff \with { midiInstrument = #"tenor sax" instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      { \marks }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { midiInstrument = #"baritone sax" instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "comp" { \numericTimeSignature
        \comp
      }
      \new Lyrics \lyricsto "comp" {
        \compWords
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)" instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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

%%%%% second part

nothingSecondPart = {}

marksSecondPart = {
  
  \time 2/2
  \once \override Score.TimeSignature.stencil = ##f
  \set Score.currentBarNumber = #101
  \tempo "Freely" 2=60
  \bar ""
  s1*6 |
  \time 4/4
  \tempo "Slow" 4=40
}

prefatoryMatterSecondPart = {
  \key e \major
  #(set-accidental-style 'modern-cautionary)
}

sopranoSecondPart = \relative c' {
  \prefatoryMatterSecondPart
  r4 fis fis2 ~ |
  fis4 r r2 |
  r4 cis cis r |
  r gis' ~ gis2 |
  r2 fis |
  r4 c'4 ~ c8 c8 ~ c4 |
  R1 |
  R1 |
  \lo r8 \sh e, \lo fis \sh cis' b4 a |
  \times 2/3 { d,8 d r } \lo r \sh fis \times 2/3 { r8 c'4 } \times 2/3 { r8 c4 } |
  \times 2/3 { b8 b b } \times 2/3 { b r4 } \times 2/3 { r8 a8 a } \times 2/3 { r dis,4 } |
  \lo d8 \sh e \lo e \sh b \lo d b4 \sh cis8 |
  \lo e8 \sh fis8 \lo e \sh d \lo ais' \sh a \times 2/3 { gis8 g e }
  dis4 d \lo cis8 \sh g' \lo fis \sh f8 |
}

sopranoWordsSecondPart = \lyricmode {
  The way
  wi -- zard
  I know
  wiz -- ard
  He is a
  Wi -- zard
  ev -- er a
  Wi -- zard
  ev -- er, oh ev
  Wi -- zard
  We're off to see the Wi -- zard
  The won -- der -- ful Wiz
  What a won -- der -- ful Wi -- zard won -- der -- ful the

}

mezzoSecondPart = \relative c' {
  \prefatoryMatterSecondPart
  r4 d d2 ~ |
  d4 r r2 |
  r4 a a r |
  r e'4 ~ e2 |
  r2 cis |
  r4 fis4 ~ fis8 fis8 ~ fis4 |
  R1 |
  R1 |
  r2 g,4 e' |
  \times 2/3 { b8 b r } \lo r8 \sh b \times 2/3 { r8 d4 } \times 2/3 { r8 d4 } |
  \times 2/3 { e8 e e } \times 2/3 { e r g } g4 \lo fis8 \sh g |
  \times 2/3 { e8 b b } \times 2/3 { b r b8 } b8^\markup \italic "not swung" e fisis gis |
  \times 2/3 { d4 ( cis2 ) } \times 2/3 { eis4 fis4 eis8 e } |
  \times 2/3  { cis8 a4 } \lo r8^\markup \italic "swung" \sh b \lo e \sh e \lo e \sh b |
}

mezzoWordsSecondPart = \lyricmode {
  The way
  wi -- zard
  I know
  wiz -- ard
  Wi -- zard
  ev -- er a
  Wi -- zard
  ev -- er, oh ev a wiz
  there The
  Wi -- zard of Oz is one be -- cause be -- cause
  Wi -- zard
  Wiz the won -- der
  We're off to see the
}

altoSecondPart = \relative c'' {
  \prefatoryMatterSecondPart
  \clef "treble_8"
  b2. \times 2/3 { a8 ( b a ) } |
  gis4 ( e ) d ( b ) |
  \times 2/3 { cis e r } r e |
  cis'2 ~ \times 2/3 { cis4 b cis } |
  gis8 ( fis e4 ~ e8 ) b d b |
  d ( e16 d ) b4 ~ b fisis |
  \lo gis8 \sh e' \lo e8 \sh b \lo d b4 \sh b8 |
  \lo e8 \sh fis8 \times 2/3 { e ( b ) d ~ } \times 2/3 { d8 r e } \lo fis \sh a |
  gis2 fis4 fisis |
  \times 2/3 { gis8 gis a, } \lo b \sh a' \lo gis \sh fis r16 e ( fis e ) |
  g4 ~ \times 2/3 { g8 a b } \times 2/3 { cis4 ( b ) a } |
  \lo g8 ( \sh e ~ e4 ~ e8 ) r \times 2/3 { e ( fis e ) } 
  g4 ~ \times 2/3 { g8 a b } \lo cis8 ( b4 ) \sh gis8 \glissando |
  b2 ~ b8 r8 r16 gis a gis |
}

altoWordsSecondPart = \lyricmode {
  way oh
  migh -- ty wi -- zard
  Now I got -- ta know
  Are you my wi -- zard
  We're off to see the Wi -- zard
  The won -- der -- ful Wiz
  He is a wiz
  Wi -- zard ev -- er
  He is a wi -- zard
  If ev -- er a wiz there was
  The wi -- zard of Oz is one
  Show me the way
}

tenorSecondPart = \relative c' {
  \prefatoryMatterSecondPart
  \clef "treble_8"
  r4 gis gis2 ~ |
  gis4 gis fis ( d ) |
  e fis fis r |
  r fis ~ fis2 |
  r2 a |
  r4 dis4 ~ dis8 dis4 b8 |
  \lo e \sh b \lo gis \sh a \lo b e4 \sh b |
  \times 2/3 { cis8 b a } \times 2/3 { gis a fis } \lod e4. \sh e8 |
  \lo e \sh e \lo e' \sh e \times 2/3 { dis dis dis } \lo cis \sh cis |
  \times 2/3 { fis fis fis } \lo fis \sh dis b4 \lo r8 \sh b |
  \times 2/3 { cis cis cis } \times 2/3 { cis cis dis } \lo e \sh b \lo gis \sh b |
  \times 2/3 { a a gis } \lo fis \sh a \lo gis \sh fis \lo e \sh e |
  \lo e \sh e \lo e' \sh e \lo dis \sh dis \lo cis \sh cis |
  fis2 r2 |
}

tenorWordsSecondPart = \lyricmode {
  The way
  migh -- ty
  wiz
  wi -- zard
  I know
  wiz -- ard
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
 
}

bassSecondPart = \relative c {
  \prefatoryMatterSecondPart
  \clef bass
  r4 d d2 ~ |
  d4 r r2 |
  r4 a a r |
  r ais ~ ais2 |
  r4 b4 ~ b4. r8 |
  b2 ~ \times 2/3 { b4 cis fis, } |
  %%%%%%
  \lod r4. \sh b8 \lo f' \sh d \lo cis8 \sh fisis, |
  \lo gis \sh b d4 g, \lo cis8 \sh g |
  \lo gis \sh b d4 a4 \lo ais8 \sh cis |
  \times 8/9 { b8 e16 gis,16. fis e16 gis b }   \lo d \sh b \times 2/3 { r8 gis e' } |
  a,4 ~  \times 2/3 { a8 e' bes } \times 2/3 { d8 gis,  a } \lo cis \sh bis |
  \lo cis \sh d \lo b \sh dis, \lo e \sh d' \lo cis \sh b |
  \times 2/3 { a8 a a } \times 2/3 { a r a } \times 2/3 { g' cis, r  } \times 2/3 { dis ais cis } |
  \lo b \sh b \lo b \sh fis \lo a cis4 \sh c |
}

bassWordsSecondPart = \lyricmode {
  The way
  wi -- zard
  I know
  wiz No we're
  %off to see, see the won -- der
  %wiz a wiz he's a wiz -- ard, he's the Wiz -- zard
  %We're off to see the
  %%%
  We're off to see the
  Won -- der -- ful Wi -- zard of Oz of Oz
  Hear is a Wiz he is a won -- der -- ful Wi -- zard
  Wiz if
  ev -- er, oh ev -- er a wiz the Wiz of Oz is one be -- cause
  be -- cause of the won the Wi -- zard things that
  We're off to see the won -- der -- ful
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"(B.)" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \sopranoSecondPart
      } {
        \marksSecondPart
      } {
        \nothingSecondPart
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsSecondPart
      }
    >>
    \new Staff \with { instrumentName = #"(D.)" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \mezzoSecondPart
      } {
        \nothingSecondPart
      } >> }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsSecondPart
      }
    >>
    \new Staff \with { instrumentName = #"(T.)" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \altoSecondPart
      } {
        \nothingSecondPart
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWordsSecondPart
      }
    >>
    \new Staff \with { instrumentName = #"(F.)" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \tenorSecondPart
      } {
        \nothingSecondPart
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsSecondPart
      }
    >>
    \new Staff = "realBass" \with { instrumentName = #"(W.)" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \bassSecondPart
      } {
        \nothingSecondPart
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWordsSecondPart
      }
    >>
  >>
  \layout {
    indent = #0
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
    \new Staff \with { midiInstrument = #"alto sax" instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \sopranoSecondPart
      } {
        \marksSecondPart
      } >> }
    >>
    \new Staff \with { midiInstrument = #"trumpet" instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzoSecondPart
      }
    >>
    \new Staff \with { midiInstrument = #"tenor sax" instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \altoSecondPart
      }
    >>
    \new Staff \with { midiInstrument = #"baritone sax" instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenorSecondPart
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)" instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \bassSecondPart
      }
    >>
  >>
  \midi {}
}
