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
  subtitle = "for Gene Peurling, Guillaume Dufay and Mark Kibble"
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
  max-systems-per-page = #2
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
solo = \markup \italic "solo"
endsolo = \markup \italic "(end solo)"
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

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)

railroad =  {
  \once \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
  \breathe
}
myred = \once \override NoteHead #'color = #red

php = \once \override Hairpin.stencil = #(parenthesize-callback ly:hairpin::print)

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 1\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
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
  \tempo "Largo" 4=50
  s2*15 |
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup \italic "più mosso"
  \unfoldChange #50 #52 #16
  \tempo "" 4=52
  s2*5
  \mark \markup \italic "più mosso"
  \unfoldChange #52 #55 #8
  \tempo "" 4=55
  s2*13
  \mark \markup \italic "più mosso"
  \unfoldChange #55 #58 #8
  \tempo "" 4=58
  s2*12
  \mark \markup \italic "meno mosso"
  \unfoldChange #58 #55 #8
  \tempo "" 4=55
  s2*16
  \mark \markup \italic "meno mosso"
  \unfoldChange #55 #52 #16
  \tempo "" 4=52
  s2*2
  \mark \markup \italic "più mosso"
  \unfoldChange #52 #58 #8
  \tempo "" 4=58
  s2*8
  \mark \markup \italic "meno mosso"
  \unfoldChange #58 #55 #8
  \tempo "" 4=55
  s2*31
  \mark \markup \italic "più mosso"
  \unfoldChange #55 #58 #16
  \tempo "" 4=58
  \mark \markup \italic "meno mosso"
  \unfoldChange #58 #55 #16
  \tempo "" 4=55
  \mark \markup \italic "più mosso"
  \unfoldChange #55 #58 #32
  \tempo "" 4=58
  s2*4
  \mark \markup \italic "meno mosso"
  \unfoldChange #58 #55 #16
  \tempo "" 4=55
  s2*8
  \mark \markup \italic "meno mosso"
  \unfoldChange #55 #46 #16
  \tempo "" 4=46
  s2*2 |
  \tempo "Grave" 4=42
  s2*4 |
  \set Score.tempoWholesPerMinute = #(ly:make-moment 36 4 0 1)
  s2 \bar "|."
}

sopranoFirst = \relative c' {
  R2*4 |
  r4 e8^\mp c' |
  a fis4. |
  b8 g a b |
  a g fis e ~ |
  e4 e' ~ |
  e d ~ |
  d c ~ |
  c b ~ |
  b cis ~ |
  cis2 ~ |
  cis ~ |
  cis4 r |
  R2 |
  R2 |
  R2 |
  r4 a^\mf ~ |
  a8 g fis e ~ |
  e4 b'8 a |
  g fis e d |
  a'4 cis |
  b^\< ais |
  a?4^\> b,^\solo ~ |
  b\! fis'8 e |
  ais,2 ~ |
  \footnote "" #'(0 . 0) "* Pronounced \"beetle\"." 
  ais8 b cis d |
  fis e d4 ~ |
  d cis |
  b4 r |
  R2 |
  r4 b ~ |
  b fis'8 e |
  ais,2 ~ |
  ais8 \footnote "" #'(0 . 0) "* Pronounced \"sea\"."  b cis d |
  \footnote "" #'(0 . 0) "* Pronounced \"purty\"." fis^\cresc e d4 ~ |
  d cis |
  \footnote "" #'(0 . 0) "* Pronounced \"own\"." d2 ~ |
  d4 r |
  r4 b'4^\f ~ |
  b a8 g |
  fis2 |
  gisis8 fisis bis ais |
  a?4 g ~ |
  g fis8 e |
  d2 ~ |
  d4 r |
  r4 \footnote "" #'(0 . 0) "* Pronounced \"spare\"."  b'4 ~ |
  b \footnote "" #'(0 . 0) "* Pronounced \"gel\"."   a8 g |
  fis2 |
  R2 |
  r4 g^\> ~ |
  g fis8 e ~ |
  e8 d4.^\mp |
  R2^\endsolo |
  r8 d^\< e fis |
  eis fis gis a |
%%%%%%%%%%%%%%%%%%%%%%%
  %fis2 ~ |
  %fis4 cis'8 b |
  %eis,2 ~ |
  %eis8 fis gis a |
  %cis b a4 ~ |
  %a4 gis ~ |
  %gis fis |
  %e8 dis c' b |
  %a g e4 ~ |
  %e b'8 ais ~ |
  %ais dis,4. ~ |
  %dis8 e fis g |
%%%%%%%%%%%%%%%%%%%%%%%
  gis2^\mf ~ |
  gis8 a ~ \times 2/3 { a cis b } |
  eis,4 \times 2/3 { r8 gis' fis } |
  e4 d ~ |
  d cis |
  r8 a, b cis |
  gis'4 fis |
  d'4 c4 |
  b8 c b fis |
  a g4. |
  r8 d'8 c8 gis |
  b8 a e g |
  gis^\cresc a \footnote #"" #'(0 . 0) #"Pronounced \"with you\"." b4 ~ |
  b a |
  b8 c d4 ~ |
  d dis ~ |
  dis8 r8 f4^\f ~ |
  f e8 \footnote #"" #'(0 . 0) "Pronounced \"beetle\"." d |
  r8 cis4. ( ~ |
  cis8 b8 ) r4 |
  gis4^\mf a |
  g4. a8 |
  g4. fis8 ~ |
  fis4 eis |
%sopranoBalise
  e4 b'8 e ~ |
  e4 d8 c ~ |
  c8^\> b4. ~ |
  b4 a |
  g4^\< b |
  cis2 |
  d2^\mf ~ |
  d8 e4. |
  fis2 ~ |
  fis4 b,8 a |
  gis2 |
  dis |
  fis |
  e8 d cis b |
  a2 |
  R2 |
  R2 |
  a'8 g fis e ~ |
  e4 fis |
  g8 fis e d ~ |
  d4 g |
  fis b ~ |
  b ais ~ |
  ais b ~ |
  b cis ~ |
  cis b |
  dis2 |
  e2 ~ |
  e4 r |
  %%%%%%%%%
    %r8 d8 fis a, |
    %d2 |
    %cis ~ |
    %cis4 e ~ |
    %e2 |
    %b4 c |
    %cis2 ~ |
    %cis4 dis |
  %%%%%%%%
  r8 d^\cresc fis a, |
  d2 |
  cis2 |
  d4 a' ~ |
  a4. g8 ~ |
  g4 fis ~ |
  fis e ~ |
  e dis |
  e2^\ff^\dim ~ |
  e ~ |
  e4 d |
  c b |
  a g |
  fis2 |
  g ~ |
  g |
  fis2^\mp |
  R2 |
  a2 ~ |
  a ~ |
  a4 fis |
  gis2 |
  cis ~ |
  cis4 gis ~ |
  gis2 |
  cis2 ~ |
  cis ~ |
  cis |
  r4 b |
  a g |
  fis2 ~ |
  fis4 a |
  g fis ~ |
  fis cis' |
  d b |
  a g |
  fis2 ~ |
  fis4 b |
  a g |
  fis ais ~ |
  ais2 |
  g4 fis |
  e2 |
  d2 |
  e4 d ~ |
  d4. r8 |
  b'2 ~ |
  b2 ~ |
  b2 |
  R2 |
  b2^\fermata |
}

sopranoWordsFirst = \lyricmode {
  I could feel When
  friends \footnote "" #'(0 . 0) "* Pronounced \"spare\"." spar* love on part be low That
  I had
  could stay shoots
  zip per me and
  friends sweet voice should Ro And man's
  boy with a love

  stay low How a
  young be tle*
  rows And met with me.

  friends I'd be a
  sy* boy Pic per ty* heart
  his on*

  beat torn man should
  [on] [ly] [had] [a] [heart]
  spar* Jeal* I had
  cause I'm to low
  rows Just fore men

  be Where when
  I hear a sweet
  a
  love shoots cause I
  [shoots] [cause] [I]
  [hear] %[a]
  [love]
  [hear] [a] [sweet] [boy] [on] [love] [a] [rows]
  could beat a real man
  [could] [beat] [a] [real] [man]
  He rows
  a part with hu*
  [a] [part] [with] [hu*]
  I be tle* boy
  [shoots] [the] [ar] [rows]
  [in] [young] [boy]
  Where [I'd]
  Where I'd be young
  [on] [ly]
  be -- cause love
  How I'd
  stay sweet
  [low] [ny] [a] 
  boy A part man sings
  zip -- per should be
  Just spar* an e ter*
  to gen tle a beat boy with art
  rows
  I'd hear me men
  [a] [beat] [a] [how] [sweet] 
  [Just] [to]
  That I'd be with mans spar* rows
  [mo] [tion] 
  love should
  hear
  boy
  hear
  young
  spar* Jeal* I had
  [boy] be on
  [young] [boy] [his] [torn] [man] [should]
  [should] 
  zip [me] a [boy] voice
  If I be Pic [love]
  [I] [heart]
}

mezzoFirst = \relative c'' {
  r4. g8^\mp |
  e cis4. |
  fis8 d e4 |
  e8 d cis b ~ |
  b8 r4. |
  r4 dis8 b ~ |
  b4 r8 e |
  dis4. r8 |
  R2 |
  g8 fis e d ~ |
  d2 |
  r8 e4 cis8 ~ |
  cis d4. |
  e8 d cis b |
  ais2 ~ |
  ais2 |
  R2 |
  R2 |
  R2 |
  R2 |
  e'2^\mf |
  d8 cis d cis |
  e fis4. ~ |
  fis2 |
  gis4^\< g |
  fis2^\> ~ |
  fis8\! r4. |
  %r4.
  %r8
  %\php
  % gis4.^\< |
  %\php
  %g2^\> |
  %r4 ais ~ |
  %ais c, |
  %r4 cis,4
  %d c |
  %R2\! |
  %r4 c, |
  %ais' fis8 [ ( a ~ ] |
  %a8 ) cis4. ~ |
  %cis4 r |
  %R2*6 |
  r4. fis8 ~ |
  fis2 ~ |
  fis2 |
  R2 |
  r4 e^\< |
  ais fis8 [ a ~ ] |
  a8 cis4.^\> ~ |
  cis4\! r |
  r4 a8 g |
  dis4 e |
  a2^\cresc |
  gis |
  g?4 fis ~ |
  fis8 e4 ais8 ~ |
  ais4 cis,^\f |
  c4 cis ~ |
  cis4 d |
  %ais'8 gis cis b |
  %d8 e fis g |
  ais8 dis fis g |
  fis8 a4. |
  ais2 ~ |
  %ais4 b |
  %c c |
  \times 2/3 { ais4 fis8 } \times 2/3 { e' d cis ~ }
  \times 2/3 { cis a g } \times 2/3 { fis8 a b, }
  ais'8 b8 g4 ~ |
  g4 r4 |
  r8 e' d cis |
  b a g4 |
  ais2^\> ~ |
  ais4 b4 |
  fis2^\mp |
  R2 | R2 |
  b,4^\< eis ~ |
  eis2^\mf ~ |
  eis8 fis4. |
  \times 2/3 { r8 e'8 d } gis,4 |
  r8 fis gis a |
  cis b a4 ~ |
  a gis |
  eis4 e ~ |
  e8 dis8 fis g8 |
  a4 g8 d8 |
  fis8 dis8 e fis |
  eis8 e4. ~ |
  e8 c b a |
  ais^\cresc f' e b |
  d c4 cis8 |
  d8 dis b'4 |
  a8 bes4 a8 ~ |
  a8 r gis4^\f |
  g? fis |
  fis2 ~ |
  fis4 r |
  eis4^\mf fis |
  e dis |
  fis4 e |
  dis cis |
  \times 2/3 { b'4 e g } |
  c,4 b8 a ~
  a8^\> fis4. ~ |
  fis2 |
  e2^\< |
  g |
  fis4.^\mf g8 ~ |
  g2 |
  fis2 |
  a8 g fis e |
  fis2 ~ |
  fis |
  gis ~ |
  gis4 e |
  e2 |
  g8 fis e d ~ |
  d2 |
  fis4 d8 cis ~ |
  cis2 |
  e8 d cis b ~ |
  b4 cis ~ |
  cis4 r |
  r g' ~ |
  g fis4 ~ |
  fis4 ais ( |
  gis ) a |
  r8 gis e d |
  r fis g a |
  r a g fis ~ |
  fis4^\cresc d |
  r8 e a c, |
  eis2 |
  fis2 ~ |
  %{
    g2 |
    fis2 |
    e4 g |
    ais a |
  %}
  fis8 g d' e, |
  b'4. cis8 ~ |
  cis e,8 g fis |
  ais4 a |
  c^\ff^\dim b ~ |
  b fis ~ |
  fis g |
  e d |
  e2 ~ |
  e8 d cis4 |
  d2 ( ~ |
  d4 cis ) |
  b2^\mp |
  R2 |
  b ~ |
  b4 e |
  d2 |
  dis2 |
  fis2 ~ |
  fis4 dis ~ |
  dis4 ais |
  gis'2 ~ |
  gis4 fis4 ~ |
  fis2 |
  fis4 g |
  fis e |
  d2 ~ |
  d ~ |
  d4 cis ~ |
  cis2 |
  cis ~ |
  cis |
  r4 a' ~ |
  a g |
  fis e ~ |
  e2 |
  d2 ~ |
  d8 cis4. |
  b4 ais4 ~ |
  ais2 |
  cis ~ |
  cis4. r8 |
  g2 ~ |
  g ~ |
  g |
  R2 |
  fis'2^\fermata |
}

mezzoWordsFirst = \lyricmode {
  chip That lock
  should I be
  That heart with me
  art stay
  be art
  voice I'd be Just
  and with a
  how men lock me a
  He had that [friends] [sweet] fore When
  [with] [a] [love]

  [I'm]
  [and] [met] [with] [me]


  %[I'm] [pre]
  %[with] [me]
  %[and] [met] [with] [me]
  
  %[me]
  
  [I'd] [be]
  [a] [sy*] [boy]
  [his]
  [per] [ty*] [heart] [his] %%%%%%%%%%%%%%%[on*]
  [beat] [torn] [man] [should]
  
  [on] 
  [ly] [had] [a] [heart]
  [spar*]
  [spar*] [spar*] [Jeal] [I] [had]
  [Jeal] [I] [had] [cause] [I'm]
  [to] [low] [cause] 
  %[cause]
  %[When] [a] [man's] [an] [emp] [ty]
  [part] [met] [lock] [cause] [I'm] [to] [low]
  [fore] [heart]

  friends I
  [love]
  [shoots] [cause] [I]
  hear a sweet boy on love
  a rows
  [on] [love]
  [hear]
  [a] [sweet]
  [boy]  [a] [real]
 
  [could] [be] [a] [real] [man]
  %[man] [He] [rows] [a]
  [could] [beat] [a] [real]
  [could] [beat] [a] [real] [man]
  [hu]
  [a] [part] [with] [man] [with] [hu]
  [I] [be] [tle*] [boy]
  [shoots] [the] [ar] [rows]
  [in] [man's] [young] [boy]
  [Where] [I'd] [be] [Where] [I'd] [be] [young]
  [be] [cause] [love]
  chip 
  [I]
  sweet man per ty low
  [a]
  [bove]
  [sings]
  voice I'd be Just
  [zip] [should] [be]
  [spar*] [an] [e] [ter]
  his
  [a] [beat] [boy] [with]
  a Where I'd
  If a sweet
  man's voice should
  be

  that part could I [beat]
  man I'd be young
  [sweet]
  [young] [be] [ten*] a part
  be cause When a ty ture* %teacher
  I tle* could [mo] [tion]  %idle
  [love] [shoots] [that] [hear]
  [boy] [hear]
  [a] [young] [torn]
  [should]
  [spar*] [Jeal] [I] [had]
  [on]
  [men]

  chip [should] [zip] I Just lock me a
  [love]
  [I] [heart]
}


altoFirst = \relative c' {
  \Red
  R2 |
  R2 |
  r4. fis8^\mp ~ |
  fis2 |
  g2 ~ |
  g8 a4. ~ |
  a4 fis ~ |
  fis4. d8 ~ |
  d2 |
  e ~ |
  e8 fis4. ~ |
  fis4 d ~ |
  d4. e8 ~ |
  e2 |
  fis2 ~ |
  fis8 d4.^\cresc ~ |
  d4 b ~ |
  b4. cis8 ~ |
  cis2 |
  d2^\mf ~ |
  d8 b4. ~ |
  b4 d ~ |
  d4. a8 |
  a a a a |
  d2^\< ~ |
  d8^\> cis4. ~ |
  cis4\! b4 ~ |
  b4. %\php
      b'8 ~ |
  b2 |
  %\php
  a2 ~ 
  a8 g4. ~ |
  g4 fis4^\< ~ |
  fis4. e8 ~ |
  e2^\> |
  d\! ~ |
  d8 cis4. ~ |
  cis4 cis' ~ |
  cis4.^\cresc b8 ~ |
  b2 |
  a ~ |
  a8 g4. ~ |
  g4 fis4^\f ~ |
  fis4. e8 ~ |
  e2 |
  d8 d d d |
  d fis4. ~ |
  fis4 g ~ |
  g4. a8 ~ |
  a2 |
  fis ~ |
  fis8 d4. ~ |
  d4 e ~ |
  e4. fis8^\> ~ |
  fis2 |
  d ~ |
  d8 e4.^\mp ~ |
  e4 fis ~ |
  fis4.^\< d8 ~ |
  d2 |
  b^\mf ~ |
  b8 cis4. ~ |
  cis4 d4 ~ |
  d4. b8 ~ |
  b2 |
  d2 ~ |
  d8 a8 a a |
  a a cisis4 ( |
  d4. ) cis8 ~ |
  cis2 |
  b ~ |
  b8 b'4. ~ |
  b4^\cresc a ~ |
  a4. g8 ~ |
  g2 |
  fis ~ |
  fis8 e4.^\f ~ |
  e4 d ~ |
  d4. cis8 ~ |
  cis8. cis16 ~ cis4 |
  cis'2^\mf ~ |
  cis8 b4. ~ |
  b4 a ~ |
  a4. g8 ~ |
  g2 |
  fis2 ~ |
  fis8^\> e4. ~ |
  e4 d8 d |
  d^\< d d d8 ~ |
  d8. d16 ~ d4 |
  b'2^\mf ~ |
  b8 ais4. ~ |
  ais4 b ~ |
  b4. cis8 ~ |
  cis2 |
  a ~ |
  a8 b4. ~ |
  b4 \tupFrac \times 5/6 { g4 g
  g4 } a8 ~ |
  a2 |
  fis2 ~ |
  fis8 e4. ( ~ |
  e4 d ~ |
  d4. ) e8 ~ |
  e2 |
  d2 ~ |
  d8 e4. ( ~ |
  e4 d ~ |
  d4. ) e8 ~ |
  e2 |
  fis ~ |
  fis8 d4. ~ |
  d4 e ~ |
  e4.^\cresc fis8 ~ |
  fis2 |
  a2 ~ |
  a8 b4. ~ |
  b4 e,4 ~ |
  e4. a8 ~ |
  a2 |
  fis2 ~ |
  fis8^\ff^\dim g4. ~ |
  g4 a ~ |
  a4. fis8 ~ |
  fis2 |
  d ~ |
  d8 e4. ~ |
  e4 fis ~ |
  fis4. d8 ~ |
  d2^\mp |
  %{
    e ~ |
    e8 fis4. ~ |
    fis4 d ~ |
    d4. b8 ~ |
    b2 |
    cis2 ~ |
    cis8 d4. ~ |
    d4 b ~ |
    b4. d8 ~ |
    d2 |
    a8 a a a |
    a d'4. ~ |
    d4 cis ~ |
    cis4. b8 ~ |
    b2 |
    b'2 ~ |
    b8 a4. ~ |
    a4 g4 ~ |
    g4. fis8 ~ |
    fis2 |
    e ~ |
    e8 d4. ~ |
    d4 cis ~ |
    cis4. cis'8 ~ |
    cis2 |
    b ~ |
    b8 a4. ~ |
    a4 g ~ |
    g4. fis8 ~ |
    fis2 |
    e ~ |
    e8 d8 d d |
    d d r4 |
    R2 |"
  %}
  fis2 ~ |
  fis8 d4. ~ |
  d4 b ~ |
  b4. cis8 ~ |
  cis2 |
  d ~ |
  d8 b4. ~ |
  b4 d ~ |
  d4. a8 |
  a a a a |
  d2 ~ |
  d8 cis4. ~ |
  cis4 b ~ |
  b4. b'8 ~ |
  b2 |
  a ~ |
  a8 g4. ~ |
  g4 fis4 ~ |
  fis4. e8 ~ |
  e2 |
  d ~ |
  d8 cis8 ~ cis8. cis16 ~ |
  cis4 cis'4 ~ |
  cis4. b8 ~ |
  b2 |
  a ~ |
  a8 g4. ~ |
  g4 fis4 ~ |
  fis4. e8 ~ |
  e2 |
  d8 d d d |
  d r4.
  R2 | R2 |
}

altoWordsFirst = \lyricmode {
When a man's an em -- pty ket -- tle
He should be on his met -- tle
And yet I'm torn a -- part
Just be -- cause I'm pre -- su -- min'
That I could be a hu -- man
If I on -- ly had a heart

I'd be ten -- der, I'd be gen -- tle
And aw -- ful sen -- ti -- men -- tal
Re -- gar -- ding love and art
I'd be friends with the spar -- rows 
And the boy that shoots the ar -- rows
If I on -- ly had a heart

Pic -- ture me a bal -- co -- ny
A -- bove a voice sings low

Where -- fore art thou, Ro -- me -- o?

I hear a beat, how sweet!

Just to re -- gis -- ter e -- mo -- tion, jea -- lou -- sy, de -- vo -- tion
And real -- ly feel the part
I could stay young and chip -- per
And I'd lock it with a zip -- per
If I on -- ly had a heart
}



tenorFirst = \relative c' {
  \clef "treble_8"
  r8 d^\mp b4 ~ |
  b ais8 fis ~ |
  fis2 ~ |
  fis8 ais4 b8 ~ |
  b2 ~ |
  b |
  R2 |
  r4. b8 ~ |
  b cis b a ~ |
  a2 |
  c8 b a g ~ |
  g2 |
  b8 ais g fis ~ |
  fis2 |
  R2 |
  r8 b^\cresc cis d |
  r8 d cis b |
  r cis d e |
  \footnote "" #'(0 . 0) "* Pronounced \"heater\"." r e d cis |
  fis4^\mf e8 d |
  bes d4. |
  g,4. a8 |
  b c4. ~ |
  c8 g' fis e |
  eis4^\< e ~ |
  e2^\> |
  R2\! |
  %r4. \php
  %    fis8^\< ~ |
  %fis2  |
  %R2\! |
  R2*3 |
  ais,2 |
  a4 c^\< |
  cis d |
  %ais8 a4. |
  %fis'2 |
  cis2^\> |
  %\transpose c g \removeWithTag #'bass \lickMe |
  %R2*2 |
  r8\! e,4. | % ~ |
  %e r |
  R2 | R2 |
  r16 %fis,16
    b'8.^\cresc ~ b4 |
  fis4. e8 |
  b'4 c ~ |
  c8 b8 cis4 |
  e2^\f ~ |
  e4 a, |
  gis a |
  fis8 bis ais ais |
  b2 |
  r8 cis4. ~ |
  cis2 |
  d4 ees |
  c8 ( d4 ) cis8 ~ |
  cis g4 ais8 ~ |
  ais8 a b8 a8 |
  g fis b4
  d2^\> |
  cis |
  ais4^\mp b8 g' |
  e cis ais fis |
  a2^\< ~ | 
  a4 gis |
  cis8^\mf a gis cis, |
  e4 dis |
  d? b' ~ |
  b4 ais8 a |
  gis8 cis,8 dis eis |
  b'4 eis, |
  cis'2 |
  c?4 ais |
  b8 g4 a8 ~ |
  a4 b |
  c8 [ b ] a b |
  gis a4 e8 ~ |
  e^\cresc cis'4. |
  b4 fis8 b |
  r8 fis' eis ais, |
  d cis4 b8 |
  d4 b^\f |
  c4 bes4 |
  b4. a8 ~ |
  a4 r |
  e'4^\mf dis |
  ais4 a |
  b4 c |
  b4 c ~ |

%tenorBalise
  \times 2/3 { c4 b a ~ } |
  a4 b8 c ~ |
  c8^\> d4. |
  c4 bes |
  b?^\< g |
  ais8 b cis d |
  cis8^\mf d b4 |
  e8 cis4. |
  e8 d cis b ~ |
  b2 |
  d4. cis8 |
  b4. a8 |
  d2 |
  cis
  d8 cis b a ~ |
  a4 b |
  c8 b a g ~ |
  g2 |
  b8 ais g fis ~ |
  fis2 |
  ais8 g fis4 |
  r8 b cis d |
  r8 d cis b |
  r cis d e |
  r e d cis |
  r dis e fis ~ |
  fis8 a,4 ais8 |
  b4 bes |
  c4 bes |
  b?2^\cresc |
  gis4 a |
  b8 cis gis' a, |
  cis4 b |
  e8 d c b8 |
  a8 g d' d, |
  ais'8 b cis ais |
  cis4 c |
  b2^\ff^\dim |
  c |
  bes |
  aes |
  g4 bes |
  a g |
  b2 ( |
  ais ) |
  b^\mp |
  R2 |
  g ~ |
  g4 gis ~ |
  gis8 g4. |
  a2 ~ |
  a4 gis ~ |
  gis4 a ~ |
  a2 ~ |
  a2 |
  e'4 d |
  cis b ~ |
  b d ~ |
  d2 |
  a4 g |
  fis e |
  b'2 |
  ais |
  b ~ |
  b |
  b2 |
  g |
  b2 |
  gis4 fis |
  fis4 e ~ |
  e2 |
  g2 ~ |
  g | 
  ais2 ~ |
  ais4. r8 |
  fis4 d | |
  cis b |
  ais2 |
  R2 |
  cis'2^\fermata |
}

tenorWordsFirst = \lyricmode {
  Pic me
  a rows
  a beat
  on his sen ding
  be a sweet man
  stay a bove me
  young boy had
  art with me
  his emp ty
  He ter* could 
  hear
  How Just a heart
  young [sweet] [voice] [should]
  voice low where %I be
  [with] [a]
  %[I'm]
  [with] [me]
  [and] [met] [with] [me]
  [friends]
  [boy] [heart] [his]
  [per] [ty*] [heart] [his] [on*]
  [torn] [man] [should]
  [on] [ly] [had] [a] [heart]
  [Jeal*]
  [Jeal*] [I] [had]
  [cause] [to] [low]
  [part] [met] [lock] [cause] [I'm] [to] [low]
  [fore] [heart]
  me chip that lock a rows
  torn
  a co ding a
  boy Where art met me
  [a] [sweet] [boy]
  [hear] [a] [sweet] [boy] [on] [love]
  [love] [a]
  [boy] [could] [a] [man]
  [could] [be] [a] [real] [man]
  [a]
  [rows] [part]
  [art] [I]
  [could] [beat] [a] [real] [man]
  [a] [real]
  [I] [be] [tle*]
  [boy] [boy]
  [shoots] [the] [ar] [rows]
  [in] [man's] [young]
  [boy] [I'd] [be]
  %%%%%%%%[where]
  [I'd] [be]
  [young] [on] [ly]
  [be] [cause]
  a young boy met
  [love]
  Pic me
  that lock
  boy I'm torn chip
  [low] [man's] [stay]
  [A] [bove] [me]
  heart his sen ding
  me
  be a sweet man
  stay a bove me
  a rows in
  young boy had
  art with me
  his emp ty
  He ter* could
  be fore me
  man's a beat a be a young
  I could sy
  that a man's his friends
  [voice] [low] [How] [I] [could]
  chip art had a
  young be ten* [a] [part]
  [be] [cause] [ty] [ture*] [man's] [spar*] [rows] [e] [mo] [tion]
  [love] [young] man could Just be
  [beat] [torn] [man] [should] [spar*]
  [spar*] [Jeal*] [I] [had] [be] [on] [the] [boy]
  %I'm
  a rows
  man and to [love]
  [could]
  ty
  a boy with a [heart]
  [heart]
}

bassFirst = \relative c' {
  \clef "bass"
  R2*14 |
  r8 g^\mp fis e |
  d2^\cresc |
  eis |
  fis |
  ais |
  a?4.^\mf r8 |
  r4 gis, |
  e' a, |
  d aes |
  g2 |
  cis4^\< fis, |
  b4.^\> g8 |
  fis8\! ais b fis |
  r8 cis'4 g8 |
  fis4 f |
  e g8 a |
  fis4 e' |
  d aes^\< |
  g ais8 fis ||
  %\removeWithTag #'tenor \lickMe |
  %r16 %e,16
    %g8. ~ g4 |
  b4.^\> fis8 |
  b4\! c8 fis, |
  cis'4 g |
  f' bes, |
  e^\cresc fis,8 f |
  \times 2/3 { e4 ais fis } |
  g a |
  e ees8 d |
  fis8 g4.^\f ~ |
  g8 e'4 fis,8 |
  ais4 b |
  dis8 gis, cis fis, ~ |
  fis g4 cis8 |
  fis,4 e' |
  ais, b |
  fis' f |
  e8 g,4 ais8 |
  e8 gis a fis |
  cis'8 b4 eis,8 |
  fis4 d' |
  \times 2/3 { cis^\> d, e } |
  fis ais |
  b2^\mp ~ |
  b4. r8 |
  R2 |
  gis4^\< cis |
  fis,2^\mf ~ |
  fis ~ |
  fis ~ |
  fis2 ~ |
  fis2 |
  r4 gis8 cis ~ |
  cis8 fis, gis a |
  b4 dis |
  fis4 e4 |
  d4. c8 |
  gis4 a ~ |
  a8 b c4 |
  d2^\cresc ~ |
  d8 eis,4 dis'8 ~ |
  dis e4. ~ |
  e8 fis,4 eis'8 ~ |
  eis8 r c4^\f ~ |
  c8 aes4. |
  g2 ~ |
  g4 r |
  fis'2^\mf |
  b, |
  e ~ |
  e4 bes |
%bassBalise
  a4. d8 |
  d2 ~ |
  d8 r8 gis4^\> |
  a c,  |
  cis2^\<  |
  fis,2 |
  b4^\mf b' ~ |
  b4 ais8 fis |
  cis'8 b a g |
  fis e d cis |
  e8 fis gis a |
  b b, cis dis |
  e fis e d |
  cis b a g |
  a2 |
  R2 |
  R2 |
  R2 |
  R2 |
  R2 |
  r4. e'8 |
  d2 |
  eis |
  fis |
  g |
  a |
  b, |
  c |
  d4 aes |
  g2 |
  R2 |
  r4 fis^\cresc |
  b8 fis' d' d, |
  g fis e d |
  c b a g |
  fis4 ais8 cis |
  d8 fis b b,^\ff |
  R2 |
  R2 |
  R2 |
  R2 |
  R2 |
  R2 |
  cis2^\> ( |
  fis, ) |
  b2^\mp |
  R2 |
  e2 ~ |
  e4 a, ~ |
  a2 |
  b |
  e ~  |
  e4 b ~ |
  b2 |
  e,2 ~ |
  e4 a ~ |
  a d |

R2 R2 R R R
R R R
  g,2 |
  e'
  a, 
  d |
  g, ~ |
  g |
  c ~ |
  c |
  b2 ~ |
  b4. r8 |
  e,2 ~ |
  e ~ |
  e |
  R2 |
  b'2^\fermata |
}

bassWordsFirst = \lyricmode {
  a der \footnote "" #'(0 . 0) "* Pronounced \"dirty\"." ty* heart
  I \footnote "" #'(0 . 0) "* Pronounced \"gel\"."  Jeal* a part
  a \footnote "" #'(0 . 0) "* Pronounced \"aware\"."  Where* the heart a voice
  [with] [a] [love]
  \repeat unfold 15 "()"
  [and] [met] [with] "()" [me]
  \repeat unfold 14 "()"
  [per] [ty*] [heart] "()" [his] [on*]
  [beat]
  \repeat unfold 4 "()"
  [on] [ly] [had] [a] [heart]
  \repeat unfold 5 "()"
  [Jeal*] [I]
  \repeat unfold 17 "()"
  [heart]
  a boy when
  a boy
  [hear] [a] [sweet] [love] [a]
  [rows] [could] %[beat]
  [real] [a] 
  %[could] [beat] [a] [man]
  [real] [man]
  [a] [man]
  [rows] [a] [part] [with] [a] [part]
  [I] [be] [boy]
  [shoots] [the] [ar] [rows]
  Where I'd [If]
  [young] [on] [ly]
  [be] [cause] [love]
  [love]
  a rows
  boy I'm torn chip in Where I'd be
  %How should a man's stay with boy Just

  How when should a man's stay boy Just
  fore low That the boy A part man sings
  That heart
  I
  should sum*
  feel me
  could I
  a voice
  gen tle
  should Pic -- ture
  voice low How I could beat love man
  If a boy had men tion with
  [mo] [tion]
  [love] [man] [could] [just]
  [beat] [torn] [man] [should]
  %[the] [spar*] [Jeal] [on] [the]
  [boy]
  [his] [low] [man] voice could [love]
  [I] [heart]
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \sopranoFirst
      } {
	\scorePrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzoFirst
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \altoFirst
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenorFirst
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \bassFirst
      }
      \new Lyrics \lyricsto "bass" {
        \bassWordsFirst
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
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
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
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzoFirst
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \altoFirst
      }
      \new Lyrics \lyricsto "alto" {
        \altoWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenorFirst
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWordsFirst
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
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
