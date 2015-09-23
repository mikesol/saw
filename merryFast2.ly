%{
  Ha ha ha (feathered slow then fast)
  Ha ha ha, ho.. (crazy 8ths)
  [16 m again][(back and forth)(accents on odd places in the grid)]
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

  hmmm
  one way of going about it is to have 2 groups of 8 where I present the material
  then 4 groups of 8 (E|E|A/B|E) where it is constructed.

%}
%1,2,3,5,7
\version "2.17.0"
\include "defs-devel.ly"
\include "merryFastCanonSketch.ly"
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

solo = \markup \italic "solo"
ord = \markup \italic "ord."

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
  \tempo "Fast" 2=168
  s1*96 \bar "||"
}

prefatoryMatter = {
  \key e \major
  %#(set-accidental-style 'modern-cautionary)
}
% ba -- by boy, beau, bare boned ba -- boo
% big bell's bye bye, blessed be bad bum
% bab -- bling bar -- bate blabs back
% damn dat deft darn dan -- dy dog
% darn di -- dact dis -- dains dead days
% da -- dy's dull dusk died
alto = \relative c'' {
  \prefatoryMatter
  \clef treble
  r2 \times 2/3 { gis4^\f a gis } |
  b2.^\fermata ( \times 2/3 { a8 b a ) } |
  gis4 ( e ) d ( b ) |
  d2 e ~ |
  e4 r4 r2 |
  r2. e4 ~ |
  e4 r cis'2 ~ |
  \times 2/3 { cis2 b cis }
  gis4 ( fis e ) r |
  R1 |
  \clef "treble_8"
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
  gis4 r r2 |
  r4. ais8 ~ ais b a b |
  \tupFrac
  \times 16/21 { e4 gis, a b %{%} e gis, a ais b %{%} e b d cis b fisis %{%} gis b gis e b e } |
  r8 b'4 cis8 b gis fis b, |
  gis'8 b gis \tupFrac \times 5/8 { e4 a gis fis } |
  R1 |
  \clef "treble_8"
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
  \clef treble
  r4. dis''8 ~ dis2 |
  cis4 ais fis gis |
  ais fis b r |
  r2 \tupFrac \times 7/13 { ais2 b bis cis r1 gis2 a ais b r1. } |
  r8 gis, b cis e a, c d |
  f ais, cis fisis ~ fisis ais4 fisis8 |
  gis b, cis e a c, ees ais %{fis%} |
  %{ais%} r b4 cis8 b fis cis b |
  e fis gis b r cis4 gis8 |
  a fis dis b cis e fis b8 |
  r b4 cis8 b gis fis b, |
  gis' b gis e ~ e a gis fis |
  e4 e gis, r |
  \times 4/5 { b4 r cis r e } |
  \times 4/5 { r fis r g \glissando e } |
  \times 15/17 { r4 g g g g
  g g g g g
  g g g g g
  g g } gis |
  gis r b,8 b4 b8 ~ |
  b r g'4 g g |
  r b,8 b ~ b b4 r8 |
  b4 e fis r |
  gis8 b4 cis8 ~ cis r b4 |
  gis fis r e8 fis ~ |
  fis gis4 b8 ~ b cis4 b8 ~ |
  b d4 cis8 ~ cis b4 gis8 |
  r4 gis a gis |
}

endingPropositionOne = \relative c' {
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
  r2.. g8^\mf ~ |
  \times 15/17 { g8 r g4 g g g
  g g g g g
  g g g g g
  g g } gis |
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
  Wiz and %{oh%} what a
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
  He was in -- cre -- di -- ble while un -- der the gun
  He was gi -- vin me a hell of a run
  He would au -- thor -- ize a mil -- li -- on bucks
   for un -- reason -- na -- able ex -- pen -- di -- tures
  Fly like an ul -- ti -- ma -- tum at the U N
   while say -- in
  Ha ha ha
  Ho and a cou -- ple of
  That's how we laugh the day a -- way in the mer -- ry old land of Oz
  ha ha
  Ho ho ho
  And a cou -- ple of tra
  la las that's how we laugh
  The day a way in the mer -- ry Old land of Oz, no
  Show me the
}

firstPropositionEndingLyrics = \lyricmode {
  Oh what a cream and what a clout
  I got -- ta scream, I got -- ta shout
  He's sim -- ply mar -- vel -- ous
  Shout he's just fan -- ta -- bu -- lous
  Shout he's dis -- com -- bo -- bu -- lous
  Shout
  las
  That's how we laugh the day a -- way in the mer -- ry old land of Oz
  ha ha Ho dee ho
  \repeat unfold 3 { Ha ha ha Ho dee ho }
  Ha ha ha
  \repeat unfold 5 No
  Show me the  
}

comp = \relative c' {
  \prefatoryMatter
  \clef "treble_8"
  R1*3 |
  R1*49 |
  <d e>4^\f <d e> <cis e> r |
  <b e>8 <b e>4 <cis e>8 ~ <cis e>4. r8 |
  R1*6
  <d e>4 <d e> <cis e> r |
  <b e>8 <b e>4 <cis e>8 ~ <cis e>8 <cis e>4 q8 |
  <d e>8 q q4 <cis e>8 <cis e>4 <b e>8 ~ |
  <b e>2. r4 |
  R1*4 |
  r2. <ais cis e>4 |
  R1*3 |
  <dis a' cis>4 q4 \times 7/13 { r1 r1 <dis fis a>2 <b dis fis>2 r\breve <cis fis a>2^\> <b e gis> <a dis fis> } |
  <gis b e>^\p <b d gis> |
  <a cis fis> <cis e a> |
  <b dis gis>^\< <d fis b> |
  <cis e a> \clef treble <a' dis gis> |
  <gis cis e>^\f <eis gis b> |
  <cis fis a> \clef "treble_8" <a dis fis> |
  <b e gis>^\> <a cis fis> |
  <gis b e> <fis a cis> |
  <d' e>4^\mf q <cis e> r |
  <b e>8 q4 <cis e>8 ~ q q8 q q |
  <d e> q q4 <cis e>8 q4 <b e>8 ~ |
  \tupFrac \times 15/17 { q8 r <cis e>4 <d e> q <cis e> 
   <cis e> <b e> <b e> <cis e> <cis e>
  <cis e> <d e> <d e> <d e> <cis e>
  <cis e>4 <b e> } <d e>
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
  R1*3 |
  R1*49 |
  e4 gis b r |
  a8 b4 gis8 ~ gis4. r8 |
  R1*6
  e4 gis b r |
  a8 b4 gis8 ~ gis8 fis4 fis8 |
  e8 e e4 gis8 b4 a8 ~ |
  a2. r4 |
  R1*4 |
  R1*4 |
  R1*4 |
  R1*8
  e4 gis b r |
  a8 b4 gis8 ~ gis gis fis fis |
  e e e4 gis8 b4 a8 ~ |
  \tupFrac \times 15/17 { a8 r b4 e, gis b
  e cis dis e a,
  a gis gis gis a
  fis4 e } gis |
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
  %{Ha%} ha ha
  Ho dee ho and a
  cou -- ple of tra la las
  That's how we laugh the day a -- way in the mer -- ry old land of Oz
}


bass = \relative c, {
  \prefatoryMatter
  \clef "bass"
  R1*3 | \barNumberCheck #4
  R1*24 | \barNumberCheck #28
  e4^\mf^\< r gis r |
  a r ais r |
  b^\f r e r |
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
  dis4 r e r |
  fis r dis r | \barNumberCheck #44
  cis r b r |
  gis r e r |
  fis r g r |
  gis r cis r | \barNumberCheck #48
  b r a r |
  gis r e r |
  fis r a r |
  gis r b r | \barNumberCheck #52
  a r fis r |
  e r gis r |
  fis r a r |
  gis r g r | \barNumberCheck #56
  fis r a r |
  gis r d' r |
  cis r c r |
  b r gis r | \barNumberCheck #60
  a r cis r |
  b r gis r |
  fis r a r |
  gis r b r | \barNumberCheck #64
  a r cis r |
  b r a r |
  gis r e' r |
  cis r b r | \barNumberCheck #68
  gis r g r |
  fis r ais r |
  gis r g r |
  fis r cis' r |
  c r b r |
  ais r fis r |
  e r gis r |
  fis r cis' r |
  a r b r |
  e, fis gis e |
  fis cis' b a |
  gis a b gis |
  a e' cis c |
  b gis fis e |
  fis cis' b ais |
  b e, gis fis |
  e gis a b |
  e, r gis r |
  fis r a r |
  gis r d' r |
  cis r c r |
  b r bes r |
  a r g r |
  gis r b r |
  a r fis r |
  gis r b r |
  fis r a r |
  gis r b r |
  a r ais r |
  b r gis r |
  fis r a r |
  gis r cis r |
  b r r2 |
}

bassWords = \lyricmode {
  Wi -- zard is my re -- ve -- la -- tion
  fills me up with joy and un -- re -- mit -- ting
  love it's so out -- rage -- ous haven't you heard,
  It's so re -- mar -- ka -- ble the Wi -- zard's mirth is
  e -- per -- ves -- cent light he's quite a won -- drous chap, says
  Ha ha ho he steals the show al -- lu -- ring mis -- tic po -- wer Wiz -- ard
  Ha ha
  ho And tra -- la la that's how we laugh the day a -- way in Oz
  No he's my Wi -- zard
  He's my lu -- min -- es -- cent won -- der Wiz of
  Ha ha ha and ho ho ho and cou -- ple tra la las that's how we 
  laugh that's how we laugh the day a -- way right here in
  Oz the land of
  Ha ha Ho ho cou -- ple tra la las
  that's how we laugh the day a -- way in
  mer -- ry land of Oz
  that's how we laugh the day a -- way
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
    \new DrumStaff \drummode { s1*3 \repeat unfold 97 { r4 hhc r4 hhc } }
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

%%%%% second part

nothingSecondPart = {}

marksSecondPart = {
  
  \time 2/2
  \once \override Score.TimeSignature.stencil = ##f
  \set Score.currentBarNumber = #101
  \tempo "Freely" 2=84
  \bar ""
  \unfoldChange #168 #120 #48
  \time 4/4
  \tempo "Slow" 4=48
  s1*8 \bar "||"
  \time 2/2
  %\tempo \markup { "Freely" \note #"4" #UP = \note #"2" #UP }
  \tempo 2=56
  \set Score.tempoWholesPerMinute = #(ly:make-moment 112 4 0 0)
  s1 |
  \time 3/4
  s2. |
  \time 4/4
  s1*8 |
  \mark "accel. poco a poco"
  \unfoldChange #112 #150 #64
  \unfoldChange #150 #160 #32
  \unfoldChange #160 #220 #32
  \unfoldChange #220 #336 #128
  \tempo "Fast" 2=168
  s1 |
}

prefatoryMatterSecondPart = {
  \key e \major
  #(set-accidental-style 'modern-cautionary)
}

sopranoSecondPart = \relative c' {
  \prefatoryMatterSecondPart
  r4 fis-- fis2--^\> ~ |
  fis4^\mp r r2 |
  r4 cis cis r |
  r gis'^\mf ~ gis2 |
  r2 << { fis } { s4.^\> s8^\p } >> |
  R1 |
  %r4 c'4 ~ c8 c8 ~ c4 |
  R1 |
  R1 |
  \lo r8 \sh e^\mp^\< \lo fis \sh cis' b4 a |
  \times 2/3 { d,8--^\f d-- r } \lo r \sh fis^\mf \times 2/3 { r8 c'4 } \times 2/3 { r8 c4^\< } |
  \times 2/3 { b8--^\f b-- b-- } \times 2/3 { b-- r4 } \times 2/3 { r8 a8^\mf a } \times 2/3 { r dis,4 } |
  \lo d8^\< \sh e \lo e \sh b \lo d^\f b4 \sh cis8 |
  \lo e8 \sh fis8 \lo e \sh d \lo ais'^\mp \sh a \times 2/3 { gis8^\< g e }
  dis4^\> d \lo cis8^\mf \sh g' \lo fis \sh f8 |
  r4 dis'--^\mf dis-- r |
  \times 2/3 { dis-- dis-- r } r |
  dis-- r4 r2 |
  r2 \lo r8 \sh fisis,8^\mp ~ fisis4^\< |
  \lo gis8^\mf \sh gis r4 r2 |
  r4 a2^\> fisis4^\< |
  \lo fis8^\mf \sh fis r4 r2 |
  r2 \lo r8 fis4-- \sh fis8 |
  \lo dis8-- \sh r g'4-.^\sf r4 \lo r8 \sh fis8-> |
  r2 e4--^\p r |
  \lo r8 \sh d-- r4 r4 cis4-- |
  r4 \lo r8 \sh c-- r2 |
  b4-- r \lo r8 \sh a-- r4 |
  r4 gis4-- r4 \lo r8 \sh dis'8-- |
  r2 d4-\bendAfter #-2 r4 |
  \lo r8 \sh cis-. r4 r4 c-\bendAfter #-2 |
  r4 \lo r8 \sh b-. r2 |
  cis4-\bendAfter #-2 r \lo r8 \sh dis-. r4 |
  r4 d4^\mp-\bendAfter #-2 r4 \lo r8 \sh cis8-. |
  r2 dis4-\bendAfter #-2 ^\crpoco r4 |
  \lo r8 \sh e-. r4 r4 f-\bendAfter #-2 |
  r4 \lo r8 \sh fis-. r2 |
  g4-\bendAfter #-2 r \lo r8 \sh gis-. r4 |
  r4 a4-\bendAfter #-2 r4 \lo r8 \sh fis8-. |
  r2 g4-\bendAfter #-2 r4 |
  \lo r8 \sh gis-. r4 r4 fis-\bendAfter #-2 |
  r4 \lo r8 \sh f-. r2 |
  e4-^^\f r4 r2 | % 1
  R1 |
  r4 \transpose c c { << { \subdXA } { s4^\p } >> |
  \subdXB
  \subdXC
  \subdXD
  \subdXE
  }
  %R1*3 |
  %r8 fis ~ fis4 e e |
  %e4 r e8 e4 e8 ~ |
  %e e4 e8 e8 e e4 |
  %e8 e4 e8 ~ e2 ~ |
  %e8 r8 e4 e4. e8 |
  %e4 e4 e8 e4 e8 ~ |
  %e8 e8 ~ e4 e2 |
  %e2 ~ e8 e ~ e4 |
  fis,4 r fis fis | % 1
  r4. f8 ~ f f f f | % 2
  fis4 fis fis r4 | % 3 
  g8 g4 g8 ~ g g g g | % 4
  gis8 gis gis4 gis gis8 gis8 ~ | % 5
  gis4 gis gis gis | % 6
  r4. gis8 ~ gis4 gis4 | % 7
  r8 gis8 ~ gis4 ~ gis8 gis4. | % 8
  R1*5 |
  r2 bis,2 |
  cis1 ~ |
  cis2 r |
  %r2 bis |
  %cis c |
  %b2 ais |
  %a gis |  
  a ais |
  R1*4
  %R1 |
  r4 gis' r2 |
  r8 fis4 r8 r2 |
  R1 |
  %R1 |
  %R1 |
  r2. fis'4^\p^\< ~ |
  fis1 ~ |
  fis4 g2. ~ |
  g2. gis4^\> ~ |
  gis1 |
  R1\! |
  R1|
  r4 g,^\mf g r |
  gis8 gis4 gis8 ~ gis8 gis4 gis8 |
  b2 e |
  cis4 dis2 e4 ~ 
  e a,2 a4 |
  gis cis4 dis e4 ~ 
  e a,2 a4 |
  \times 2/3 { gis2 gis4 } gis2 |
  a2 ~ a8 fis ~ fis4 |
  %\times 2/3 { e gis b ~ } |
  %\times 2/3 { b a b } |
  %\times 2/3 { gis2 fis4 fis e e } |
  %\times 2/3 { e2 gis b } |
  %a1 |
  \times 4/6 { e4 gis b2 a4 b } |
  %!\times 4/6 { gis4 fis8 fis e e e4 gis b } |
  %!a2 \times 2/3 { b4 e,4. gis8 } | %
  \times 4/6 { %{b4%} gis e' cis8 dis4 e4 a,4 a8 } | %
  \times 4/6 { gis8 gis gis4 a fis r2 } | %
  %gis1 |
  %\times 2/3 { gis2 b1 } |
  %\times 2/3 { e1 cis2 } |
  %\times 2/3 { dis1 e2 ~ } |
  %\times 2/3 { e2 cis1 } |
  %\times 2/3 { cis b b } |
  %\times 2/3 { b1 cis2 ~ } |
  %\times 2/3 { cis2 a1 } |
  %gis4
}

sopranoWordsSecondPart = \lyricmode {
  The way
  wi -- zard
  I know
  %wiz -- ard
  He is a
  Wi -- zard
  ev -- er a
  Wi -- zard
  ev -- er, oh ev
  Wi -- zard
  We're off to see the Wi -- zard
  The won -- der -- ful Wiz
  What a won -- der -- ful Wi -- zard won -- der -- ful the
  The way
  The way
  way
  Ho cou -- ple
  He's my Wi -- zard
  in the mer cold cause
  no
  ba -- by boy, beau, bare ba -- boo
  big bell's bye -- bye, blessed be bad bum
  be -- bop's black beard bu -- bles
  Bus -- by's bi -- ble brings back blue
  Don't need a quiz
  Look how he fiz -- 
  zles gon -- na siz --
  le what a wiz
  we're say -- in'
  Ha
  ha ha
  ho dee and a
  ha ha ha
  ho ho ho dee and a
  cou -- ple of tra la las
  ha ha ha
  ha ha
  ha ha
}

mezzoSecondPart = \relative c' {
  \prefatoryMatterSecondPart
  r4 d--^\> d2-- ~ |
  d4^\mp r r2 |
  r4 a a r |
  r e'4^\mf ~ e2 |
  r2 << { cis } { s4.^\> s8^\p } >> |
  %r4 fis4 ~ fis8 fis8 ~ fis4 |
  r4 fisis4 ~ fisis8 fisis ~ fisis4 |
  R1 |
  R1 |
  r2 g,4^\mp^\< e' |
  \times 2/3 { b8--^\f b-- r } \lo r8 \sh b^\mf \times 2/3 { r8 d4 } \times 2/3 { r8 d4^\< } |
  \times 2/3 { e8--^\f e-- e-- } \times 2/3 { e-- r g^\mp^\< } g4 \lo fis8 \sh g |
  \times 2/3 { e8^\> b b } \times 2/3 { b^\mf r b8 } b8^\markup \italic "not swung" e fisis gis |
  \times 2/3 { d4 ( cis2 ) } \times 2/3 { eis4 fis4 eis8 e } |
  \times 2/3  { cis8 a4 } \lo r8^\markup \italic "swung" \sh b^\< \lo e^\f \sh e \lo e \sh b |
  r4 a'--^\mf a-- r |
  \times 2/3 { a-- a-- r } r |
  a-- r4 r2 |
  r2 \lo r8 \sh dis,8^\mp ~ dis4^\< |
  \lo d8^\mf \sh d r4 r2 |
  r4 cis2^\> dis4^\< |
  \lo d8^\mf \sh d r4 r2 |
  \lo g8 fis4 \sh e8 ~ \lo e dis4-- \sh d8 |
  \lo cis8-- \sh r dis'4-.^\sf r4 \lo r8 \sh c8-> |
  r2 bes4--^\p r |
  \lo r8 \sh gis-- r4 r4 gis4-- |
  r4 \lo r8 \sh fis-- r2 |
  g4-- r \lo r8 \sh e-- r4 |
  r4 eis-- r \lo r8 \sh a-- |
  r2 eis4-\bendAfter #-2 r |
  \lo r8 \sh fis-. r4 r4 dis-\bendAfter #-2 |
  r4 \lo r8 \sh eis-. r2 |
  dis4-\bendAfter #-2 r4 \lo r8 \sh f-. r4 |
  e4^\solo^\mf gis b2 |
  \lo a8 b4 \sh gis8 ~ \lo gis fis4 \sh fis8 |
  \lo e \sh e e4 \lo gis \sh b ~ b4 |
  a2 r4 b4 |
  e,4 gis b e |
  \lo cis8 dis4 \sh e8 ~ \lo e a,4 \sh a8 |
  \lo gis \sh gis gis4 a fis |
  e1^\< \glissando |
  e'4 gis b2 |
  a4^\f-^ r4 r2 |
  R1 |
  R1 |
  r4 \transpose c c' {
    << { \tonXA } { s4^\p } >>
    \tonXB
    \tonXC
    \tonXD
  }
  d,,4 d d r | %1
  cis8 cis4 cis8 ~ cis cis4 cis8 | %2
  d8 d d4 d4 d8 dis ~ | %3
  dis2 ~ dis8 r dis4 | %4
  d8 d4 d8 ~ d r d8 d8 ~ | % 5
  d8 d4 r8 d8 d4 d8 ~ | % 6
  d r d8 d8 ~ d r d4 ~ | % 7
  d8 d8 ~ d4 ~ d8 d4. |
  %d4. d8 d4 d^"the" | %5
  %d d d4.^"way" d8^"in" ~ |%6
  %d4 d^"the" ~ d d^"me" ~ | %7
  %d4. d8^"ry" ~ d2 | %8
  R1*5 |
  r2 dis |
  e1 |
  R1*2 |
  R1 |
  r4 cis r2 |
  r8 c4 r8 r2 |
  R1 |
  \times 2/3 { r2 a' r } |
  \times 2/3 { ais r b } |
  \times 2/3 { r cis r } |
  \times 2/3 { d r g, } |
  \times 2/3 { r fis r } |
  \times 2/3 { e r a } |
  \times 2/3 { r b r }
  ais4 ais b r |
  c8 c4 cis8 ~ cis cis4 cis8 |
  d d d4 dis8 e4 f8 ~ |
  \times 2/3 { f2 e fis,2 } |
  e2. e4 |
  gis2 b |
  a4 b2 cis4 ~ |
  cis fis,2 fis4 |
  \times 2/3 { e2 e4 } e2 |
  fis2 ~ fis8 dis ~ dis4 |
  \times 4/6 { b4 d fis2 e4 fis } |
  \times 4/6 { cis4 cis8 cis b b b4 d fis } |
  e2 \times 2/3 { fis4 d4. e8 } |
  \times 4/6 { fis4 a gis8 a4 b4 fis4 fis8 } |
  \times 4/6 { e8 e e4 fis d r2 }
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
  The way
  The way
  way
  Ho cou -- ple
  He's my Wi -- zard
  day a -- way in the mer
  cold cause no
  ba -- by boy, beau, bare ba -- boo
  big bell's bye -- bye, blessed be 
  Ha ha ha
  Ho ho ho
  And a cou -- ple of tra la las
  That's how we laugh the day a -- way in the mer -- ry old land of  
  Oz ha ha ha
  dew
  Look how he fiz -- 
  zles gon -- na siz --
  le what a wiz
  we're say -- in'
  ha ha ha
  ho ho ho and a cou -- ple of tra la las
  that's \repeat unfold 5 { how we laugh } how we
}

altoSecondPart = \relative c'' {
  \prefatoryMatterSecondPart
  \clef "treble_8"
  b2. \times 2/3 { a8 ( b a ) } |
  gis4^\> ( e ) d ( b ) |
  \times 2/3 { cis^\mp e r } \lo r8 \sh r8 e4  |
  cis'2^\< ~ \times 2/3 { cis4 b cis } |
  gis8^\mf ( fis e4 ~ e8 ) b^\mp d b |
  d ( e16 d ) b4 ~ \times 2/3 { b b b } |
  \lo e8 \sh e \lo e8 \sh b \lo d b4 \sh b8 |
  \lo e8 \sh fis8 \times 2/3 { e ( b ) d ~ } \times 2/3 { d8 r e } \lo fis \sh a |
  gis2 fis4 fisis |
  \times 2/3 { gis8 gis a, } \lo b \sh a' \lo gis \sh fis r16 e ( fis e ) |
  g4 ~ \times 2/3 { g8 a b } \times 2/3 { cis4 ( b ) a } |
  \lo g8 ( \sh e ~ e4 ~ e8 ) r \times 2/3 { e ( fis e ) } 
  g4 ~ \times 2/3 { g8 a b } \lo cis8 ( b4 ) \sh gis8 \glissando |
  b2 ~ b8 r8 r16 gis a gis |
  b4 r r cis8 b |
  \times 2/3 { r2 gis4 } a8 gis |
  r4 b ~ b2 ~ |
  b1 ~ |
  b4 r \times 2/3 { r4 a4 ( b ) } |
  gis4 e ~ ( \lo e8 \sh cis8 b4 ) |
  \lo b8 \sh b r4 \lo r8 \sh e8 ~ e4 |
  cis'2 ~ \times 2/3 { cis4 b cis } |
  \times 2/3 { g4 ( fis e ~ } \lod e4. ) \sh dis8-> |
  r2 g4--^\p r4 |
  \lo r8 \sh e-- r4 r4 eis4-- |
  r4 \lo r8 \sh d-- r2 |
  cis4-- r \lo r8 \sh d-- r4 |
  r4 cis4-- r4 \lo r8 \sh fis-- |
  \clef treble
  r4 g4^\espressivo \lo r8 \sh gis8-- r4 |
  g4^\espressivo \lo r8 \sh bes-- r4 eis,^\espressivo |
  \lo r8 \sh e-- r4 g4^\espressivo \lo r8 \sh fis8-- |
  r4 gis4^\espressivo \lo r8 \sh g8-- r4 |
  gis4^\mp^\espressivo \lo r8 \sh a-- r4 eis^\espressivo |
  \lo r8 \sh e-- r4 fis^\espressivo^\crpoco \lo r8 \sh c8-- |
  r4 g'4^\espressivo \lo r8 \sh gis8-- r4 |
  %\mark "?"
  eis4^\espressivo \lo r8 \sh g-- r4 fis^\espressivo |
  \lo r8 \sh g-- r4 d^\espressivo \lo r8 \sh gis8-- |
  r4 g4^\espressivo \lo r8 \sh fis8-- r4 |
  %\mark "?"
  e4^\espressivo \lo r8 \sh fis-- r4 a^\espressivo |
  \lo r8 \sh ais-- r4 a^\espressivo \lo r8 \sh g8-- |
  r4 gis4^\espressivo \lo r8 \sh g8-- r4 |
  %\mark "@"
  \lo gis8^\f-^^\> \sh b \lo gis \sh fis \lo e \sh cis \lo e \sh fis |
  \lo gis^\mp \sh b, \lo c \sh cis \lo d \sh b \lo ais \sh a |
  \lo gis8 \sh bis \lo cis \sh g' \lo gis \sh fis \lo e \sh cis |
  b4-. \lo r8 \sh b' ~ \lo b \sh gis8 \lo e \sh d8 |
  cis4 \transpose c c' { \subdXA |
  \subdXB
  \subdXC
  }
  % used to noodle on G GIS A AIS
  %gis'4 r fis fis | % 1
  %fis r f8 f4 f8 ~ | % 2
  %f f f f e e e4 | % 3
  %e8 e4 f8 ~ f2 | % 4
  %fis4 fis fis r | % 5
  %eis8 eis4 eis8 ~ eis eis eis eis | % 6
  %fis fis fis4 fis8 fis4 g8 ~ | % 7
  %g2 ~ g8 g ~ g4 | % 8
  gis'4 gis gis r | % 1
  g8 g4 g8 ~ g g4 g8 | % 2
  gis8 gis gis4 gis4 gis8 a ~ | % 3
  a2 ~ a8 r a4 | % 4
  ais4 ais ais r | % 5
  ais4. ais8 ~ ais4 r8 ais ~ | %6 
  ais4. ais8 ~ ais4 r4 | % 7
  ais4. ais8 ~ ais4 ais4 | % 8
  R1 | % 1
  fis2 fis ~  | % 2
  fis cis | % 3
  e1 | % 4
  cis1 ~ | % 5
  cis2 r | % 6
  fis1 | % 7
  gis2 fis2 | % 8
  cis2 e | % 9 !!
  b'8 gis a b gis e d b |
  fis' f d b bes d e gis |
  g e cis b a b d f |
  e4 r f r | %1
  fis r g r | %2
  gis r a r | %3
  ais r b r | %4
  e r cis r | %5
  b r a r | %6
  gis r fis r | %7
  \times 2/3 { e2 gis a } |
  \times 2/3 { gis b1 ~ } |
  \times 2/3 { b1 a4 b } |
  \times 2/3 { gis2 e d }
  \times 2/3 { b d e } |
  r2 e |
  r4 cis'2. ~ |
  \times 2/3 { cis2 b cis } |
  \times 2/3 { g fis e ~ } |
  e1 |
  R1*6 |
}

altoWordsSecondPart = \lyricmode {
  way oh
  migh -- ty wi -- zard
  Now I got -- ta know
  Are you my wi -- zard
  No, We're off to see the Wi -- zard
  The won -- der -- ful Wiz
  He is a wiz
  Wi -- zard ev -- er
  He is a wi -- zard
  If ev -- er a wiz there was
  The wi -- zard of Oz is one
  Show me the way
  Show me Show me the way
  oh migh -- ty Wi -- zard
  Now I need to know cause
  no
  ba -- by boy, beau, bare ba -- boo
  damn dat deft darn dan -- dy dog
  darn di -- dact dis -- dains dead days
  dad -- dy's dull dusk dwin -- dled, dimmed, died
  dips down, dives deep, dee -- ded dae -- dal
  dank, damp, da -- da dew
  oh what a sil -- ly lit -- tle thing
  oh what a pre -- cious lit -- tle swing
  oh what a naugh -- ty lit -- tle fling
  ding the Wi -- zard fiz --
  zles gon -- na siz --
  le what a wiz
  we're say -- in'
  ha ha ha
  ho ho ho and a cou -- ple of tra la las
  that's how we laugh
  day a -- way in the mer -- ry
}

tenorSecondPart = \relative c' {
  \prefatoryMatterSecondPart
  \clef "treble_8"
  r4 gis--^\> gis2-- ~ |
  gis4^\mp gis fis ( d ) |
  e fis fis r |
  r fis^\mf ~ fis2 |
  r2 << { a } { s4.^\> s8\p } >> |
  r4 dis4 ~ dis8 dis8 ~ dis4 |
  \lo r \sh b \lo gis \sh a \lo b e4 \sh b |
  \times 2/3 { cis8^\< b a } \times 2/3 { gis a fis } \lod e4.^\> \sh e8 |
  \lo e^\p^\< \sh e \lo e' \sh e \times 2/3 { dis dis dis } \lo cis \sh cis |
  \times 2/3 { fis^\mp fis fis } \lo fis \sh dis b4 \lo r8 \sh b |
  \times 2/3 { cis--^\mf cis-- cis-- } \times 2/3 { cis-- cis^\mp dis } \lo e \sh b \lo gis \sh b |
  \times 2/3 { a a gis } \lo fis \sh a \lo gis \sh fis \lo e \sh e |
  \lo e \sh e \lo e' \sh e \lo dis \sh dis \lo cis \sh cis |
  fis2 r2 |
  r4 fis^\mf-- fis-- r |
  \times 2/3 { fis-- fis-- r } r |
  fis-- r r d^\p |
  \lod cis4. \sh c8^\< ~ c2 |
  \lo b8^\mf \sh b r4 r2 |
  r4 g2^\> a4^\< |
  \lo gis8^\mf \sh gis r4 r d' |
  \lo cis8 d4 \sh cis8 ~ \lo cis c4-- \sh c8 |
  \lo a8-- \sh r a'4-.^\sf r4 \lo r8 \sh gis8-> |
  R1 |
  e,4^\mp^\solo gis b2 |
  \lo a8 b4 \sh gis8 ~ \lo gis fis4 \sh fis8 |
  \lo e \sh e e4 \lo gis \sh b ~ b4 |
  a2 r4 b4 |
  e,4 gis b e |
  \lo cis8 dis4 \sh e8 ~ \lo e a,4 \sh a8 |
  \lo gis \sh gis gis4 a fis |
  gis4 b cis c |
  r4 b^\ord^\mp^\mordent r2 |
  \lo r8 \sh cis-_^\crpoco r4 r2 |
  cis4^\mordent r4 \lod r4. \sh c8-_ |
  r2. d4^\mordent |
  r2 \lo r8 \sh a-_ r4 |
  r2 b4^\mordent r |
  \lod r4. \sh bes8-_ r2 |
  r4 c^\mordent r2 |
  \lo r8 \sh b-_ r4 r2 | % 1
  cis4^\f-^ r4 r2 | % 2
  r4 \transpose c c { << { \tonXA } { s4^\p } >> |
  \tonXB
  \tonXC
  \tonXD
  \tonXE
  \tonXF }
  b r d4 d | % 1
  %\lo cis8 \sh ais ~ ais4 b4 b |
  %bes4 r b8 b4 c8 ~ |
  %c c4 c8 cis8 cis cis4 |
  %c8 c4 b8 ~ b2 ~ |
  %b8 r8 c4 b4. b8 |
  %ais4 ais4 b8 b4 c8 ~ |
  %c8 c8 ~ c4 c2 |
  %b2 ~ b8 c ~ c4 |
  r2 r8 ais4. |
  r4 b2. |
  c2 cis |
  r4 c b r |
  c8 c4 c8 ~ c8 c4 c8 |
  r4 b b r |
  c4. c8 ~ c4 c4 |
  R1*2 |
  r2 gisis |
  ais1 |
  fis2 e ~ |
  e2 gisis |
  ais1 |
  ais2 r |
  b c |
  cis c b ais a gis |
  R1 |
  r8 e'4 r8 r8 dis4 r8 |
  r8 d4 r8 r8 cis4 r8 |
  r8 c4 r8 r8 b4 r8 |
  r8 ais4 r8 r8 a4 r8 |
  r8 gis4 r8 r8 g4 r8 |
  r8 fis4 r8 r8 b4 r8 |
  r8 ais4 r8 r8 a4 r8 |
  r8 gis4 r8 r8 b ~ b4 |
  a8 b4 gis8 ~ gis fis4 fis8 |
  e8 e8 e4 gis8 b4 a8 ~ |
  \times 2/3 { a1 b2 } |
  b2. b4 |
  e2 gis |
  e4 e2 a4 ~ |
  a cis,2 cis4 |
  \times 2/3 { b2 b4 } b2 |
  b2 ~ b8 a ~ a4 |
  %gis1 |
  % %%%% %% % % % %
  %b1 |
  %\times 2/3 { b2 e1 }
  %\times 2/3 { gis1 e2 } |
  %\times 2/3 { e1 a2 ~ } |
  %\times 2/3 { a e1 } |
  %\times 2/3 { e2 e e } |
  \times 4/6 { gis4 b d2 cis4 d } |
  \times 4/6 { b4 a8 a gis gis gis4 b d } |
  cis2 \times 2/3 { d4 gis,4. b8 } |
  \times 4/6 { d4 fis a,8 b4 cis4 c4 c8 } |
  \times 4/6 { b8 b b4 cis b r2 }
}

tenorWordsSecondPart = \lyricmode {
  The way
  migh -- ty
  wiz
  wi -- zard
  I know
  wiz -- ard
  to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  The way
  The way
  way
  ha ho ho
  cou -- ple
  He's my Wi -- zard
  the day a -- way in the mer
  cold cause
  Ha ha ha
  Ho ho ho
  And a cou -- ple of tra la las
  That's how we laugh the day a -- way in the mer -- ry old land of
  mer -- ry land of
  chat, chafe, chide, chime, chip, charm, chant, chug, chuck, chop, chew
  He's on the riz
  Don't need a quiz
  Look how he fiz -- 
  zles gon -- na siz --
  le what a wiz
  we're say -- in'
  Ha ha ha
  ho the Wi -- zard
  we laugh
  day a -- way in the
  mer -- ry
  the mer -- ry
}
%  You know the biz
%  He's on the riz
%  Don't need a quiz
%  Look how he fiz -- 
%  zles gon -- na siz --
%  le as it is
%  Oh what a wiz
%biz, fizz, quiz, is, wiz, riz, siz -- zle
bassSecondPart = \relative c {
  \prefatoryMatterSecondPart
  \clef bass
  r4 d--^\> d2-- ~ |
  d4^\mp r r2 |
  r4 a a r |
  r ais^\mf ~ ais2 |
  r4 b4 ~ b4. r8 |
  r4 b4^\mp ~ b8 b ~ b4 |
  %%%%%
  \lod r4. \sh b8 \lo f' \sh d \lo cis8 \sh fisis, |
  \lo gis \sh b d4 g, \lo cis8 \sh g |
  \lo gis \sh b d4^\< a4 \lo ais8 \sh cis |
  \times 8/9 { b8^\f^\markup \italic "solo" e16 gis,16. fis e16 gis b }   \lo d8^\>^\markup \italic "ord." \sh b^\mf \times 2/3 { r8 gis e' } |
  a,4 ~  \times 2/3 { a8 e' bes } \times 2/3 { d8 gis,  a } \lo cis \sh bis |
  \lo cis \sh d \lo b \sh dis, \lo e \sh d' \lo cis \sh b |
  \times 2/3 { a8 a a } \times 2/3 { a r a } \times 2/3 { g' cis, r  } \times 2/3 { dis ais cis } |
  \lo b \sh b \lo b \sh fis \lo a cis4 \sh c |
  r4 b--^\mf b-- r |
  \times 2/3 { b-- b-- r } r |
  b-- r b2^\p^\<^\solo |
  \lo a8^\mf \sh b8 ~ b4 gis4 \lo g8 \sh fis8 |
  \lo e8 \sh e e4 gis4 b |
  a2 ~ \lo a8 \sh r8 b4 |
  \lod e,4. \sh gis8 b4 e |
  \lo a,8 b4 \sh cis8 ~ \lo cis a4 \sh a8 |
  \lo b8 \sh b r4 r \lo b8-- \sh r |
  \lodd r2.. \sh b8^\p^\ord |
  e4 dis d cis |
  c b dis b |
  a gis b eis, |
  fis4 c' b4 fisis |
  gis d' cis gis |
  a4 gis fis d' |
  cis c b dis, |
  e d' bes a |
  \lo cis8^\crpoco \sh e d4 cis g4 |
  fis c' b g |
  gis4 g bes eis, |
  fis b c cis |
  d bes g b |
  e, bes' a eis |
  fis c' b a |
  gis g fis a |
  gis d' cis \lo c8 \sh eis, |
  fis4^\f
    \transpose c c, {
    << { \subdXA } { s4^\p } >>
    \subdXB
    \subdXC
    \subdXD
    \subdXE
    \subdXF
    \subdXG
  }
  gis d' b gis |
  a fis cis' c |
  b e bes a |
  gis g fis a |
  gis b cis a |
  d cis b ais |
  b e b a |
  gis dis e eis |
  fis2 r |
  R1*4 |
  r2 dis' |
  cis1 ~ |
  cis2 r |
  R1 |
  b4 fis ais a |
  gis e cis g' |
  fis d' cis g |
  \times 2/3 { gis2 a ais } |
  \times 2/3 { b c cis } |
  \times 2/3 { d cis c } |
  \times 2/3 { b bes a } |
  \times 2/3 { gis b e } |
  \times 2/3 { cis b eis, } |
  \times 2/3 { fis a cis } |
  b4 a gis fis |
  e r gis r |
  fis r a r |
  gis r b r |
  cis r a r |
  gis r g r |
  fis r a r |
  gis r b r |
  a r fisis r |
  gis r e r |
  fis r a r |
  gis r b r |
  a r cis r |
  b r bes r |
  a r gis r |
  fis r b r |
}

bassWordsSecondPart = \lyricmode {
  The way
  wi -- zard
  I know
  wi -- zard
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
  The way
  The way
  way
  ha
  Ho ho ho
  And a cou -- ple of tra la las
  That's how we laugh the day a -- way in the mer -- ry
  of
  \repeat unfold 72 ○
  You know the biz
  He's on the riz
  Don't need a quiz
  Look how he fiz -- 
  zles gon -- na siz --
  le what a wiz
  we're say -- in'
  \repeat unfold 33 ○
}

%%% SCORE
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
    \new Staff \with { midiInstrument = #"alto sax" instrumentName = #"Bitch" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \sopranoSecondPart
      } {
        \marksSecondPart
      } >> }
    >>
    \new Staff \with { midiInstrument = #"trumpet" instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzoSecondPart
      }
    >>
    \new Staff \with { midiInstrument = #"tenor sax" instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \altoSecondPart
      }
    >>
    \new Staff \with { midiInstrument = #"baritone sax" instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenorSecondPart
      }
    >>
    \new Staff \with { midiInstrument = #"electric bass (finger)" instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \bassSecondPart
      }
    >>
  >>
  \midi {}
}
