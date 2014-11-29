% FILE SPECIFIC
%oS =  #(make-span-event 'SlurEvent START)
%cS = #(make-span-event 'SlurEvent STOP)

%pizz = \markup \italic "pizz."
%arco = \markup \italic "arco"

qtPx = #(make-articulation "portato"
            'midi-length
            (lambda (len context)
             (ly:moment-mul len (ly:make-moment 3/4))))
qtTx = #(make-articulation "tenuto")
qtXx = #(make-articulation "accent"
           'midi-extra-velocity 20)

qtCr = #(make-span-event 'CrescendoEvent START)
qtDcr = #(make-span-event 'DecrescendoEvent START)
qtECr = #(make-span-event 'DecrescendoEvent STOP)
qtEDcr = #(make-span-event 'CrescendoEvent STOP)

qtPp = #(make-dynamic-script "pp")
qtMf = #(make-dynamic-script "mf")
qtMp = #(make-dynamic-script "mp")
qtP = #(make-dynamic-script "p")
qtF = #(make-dynamic-script "f")

wCresc = #(make-span-event 'CrescendoEvent START)
wDim = #(make-span-event 'DecrescendoEvent START)

tranquillo = \markup \italic "tranquillo"

solo = \markup \italic "solo, swung"
endsolo = \markup \italic "(end solo)"

%parDyn = \once \override DynamicText.stencil = #(parenthesize-callback ly:text-interface::print)
parDyn = {}

theVoid = #(define-event-function (parser location) ()
   ; ugh...dummy event...should be nothing
   (make-music 'AnnotateOutputEvent)
   )

sCr = \theVoid % do nothing - singer crescendo
swCresc = \theVoid % uggghhh
sDcr = \theVoid % do nothing - singer crescendo

railroad =  {
  \once \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
  \breathe
}
myred = \once \override NoteHead #'color = #red

php = \once \override Hairpin.stencil = #(parenthesize-callback ly:hairpin::print)

prefatoryMatter = {
  \key b \minor
  \time 2/4
}

scorePrefatoryMatter = {
  \prefatoryMatter
  \autoBeamOff
}

midiPrefatoryMatter = {
  \prefatoryMatter
}

stringPrefatoryMatter = {
  \prefatoryMatter
}

marks = {
  \tempo "Largo, sempre legato" 4=50
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
  \unfoldChange #52 #58 #7
  s8
  \tempo "Adagio" 4=50
  s2*8
  \mark \markup \italic "più mosso"
  \unfoldChange #50 #55 #24
  \tempo "" 4=55
  s2*27
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
  r4 \hairlen #7 e8\mp\qtCr \oS c' |
  a\qtDcr fis4. \cS | 
  b8\qtCr \oS g a b |
  a\! g fis\qtDcr e ~ |
  e4 \cS e'\qtCr ~ \oS |
  e d\qtDcr ~ |
  d \cS c\qtCr ~ \oS |
  c b\qtDcr ~ |
  b \cS cis\qtCr ~ |
  cis2 ~ |
  cis\qtDcr ~ |
  cis4 r\! |
  R2 |
  R2 |
  R2 |
  r4 a\mf\qtCr ~ \oS |
  a8 g\! fis\qtDcr e ~ |
  e4 \cS b'8\qtCr \oS a |
  g\qtDcr fis e\qtCr d \cS |
  a'4\qtDcr \oS cis\qtCr |
  b\sCr ais |
  a?4\> \cS b,^\solo ~ |
  b\! fis'8 \oS e |
  ais,2 ~ |
    \footnote "" #'(0 . 0) "* Pronounced \"beetle\"."
      ais8 \cS b \oS cis d \cS |
  fis \oS e d4 ~ |
  d \cS cis \oS |
  b4 \cS r |
  R2 |
  r4 b ~ |
  b fis'8 \oS e |
  ais,2 ~ |
  ais8 \cS
    \footnote "" #'(0 . 0) "* Pronounced \"sea\"."
       b \oS cis d \cS |
    \footnote "" #'(0 . 0) "* Pronounced \"purty\"."
      fis \oS e d4 ~ |
  d \cS cis \oS |
    \footnote "" #'(0 . 0) "* Pronounced \"own\"."
    d2 ~ |
  d4 \cS r |
  r4 b'4\f ~ \oS |
  b a8 g |
  fis2 \cS |
  gisis8\qtPx fisis\qtPx bis\qtPx ais\qtPx |
  a?4\qtTx g ~ \oS |
  g fis8 e |
  d2 ~ |
  d4 \cS r |
  r4
    \footnote "" #'(0 . 0) "* Pronounced \"spare\"."
      b'4 ~ \oS |
  b
    \footnote "" #'(0 . 0) "* Pronounced \"gel\"."
      a8 g |
  fis2 \cS |
  R2 |
  r4 g\> ~ \oS |
  g fis8 e ~ |
  e8 d4.\mp \cS |
  R2^\endsolo |
  r8 d\< \oS e fis \cS |
  eis \oS fis gis a |
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
  << { gis2\f ~ |
  gis8 \cS a ~ \times 2/3 { a cis \oS b } |
  eis,4 \cS } { s4 s4\qtDcr s4\qtCr s8*2/3 s4*2/3\qtDcr s4 }
    >> \times 2/3 { r8\! gis'\qtCr \oS fis } |
  e4\qtF\qtDcr d\qtCr ~ |
  d\qtDcr \cS cis |
  r8\! a,\qtCr \oS b cis |
  gis'4\qtDcr fis \cS |
  d'4\qtCr \oS c4 \cS |
  b8 \oS c b \cS fis \oS |
  a\qtF\qtDcr g4. \cS |
  r8\! d'8\qtCr \oS c8 gis |
  b8\! a \cS e\qtDcr \oS g |
  gis\!\swCresc a
    \footnote #"" #'(0 . 0) #"Pronounced \"with you\"."
      b4\qtCr ~ |
  b a\qtDcr \cS |
  b8\qtCr \oS c d4 ~ |
  d dis ~ |
  dis8 \cS r8\! f4\qtXx\ff ~ |
  f e8 \oS
      \footnote #"" #'(0 . 0) "Pronounced \"beetle\"."
    b \cS |
  r8 cis4.\qtTx ( ~ |
  cis8 b8 ) r4 |
%sopranoBalise
fis2\qtMp\> | R2\! | R2 | R2 |
r8 g\mp\qtCr \oS a b |
d\qtDcr c \cS g'\qtCr \oS fis \cS |
c\qtDcr \oS b \cS fis'\qtCr \oS e | 
d8\qtCr c b a \cS |
g4\sCr\qtDcr \oS b |
cis2\qtCr \cS |
  %%%%%gis4\mf a |
  %%%%%g4. a8 |
  %%%%%g4. fis8 ~ |
  %%%%%fis4 eis |
  %%%%%e4 b'8 e ~ |
  %%%%%e4 d8 c ~ |
  %%%%%c8\> b4. ~ |
  %%%%%b4 a |
  %%%%%g4\< b |
  %%%%%cis2 |
  d2\mf\qtCr ~ |
  d8 e4. |
  fis2\qtDcr ~ |
  fis4 b,8\qtCr \oS a ~ |
  a \cS gis4.\qtDcr ~ |
  gis8 fis4.\qtCr ~ |
  fis4\qtDcr gis4 |
  e8\qtCr \oS d cis b |
  a2\qtDcr \cS |
  R2\! |
  r4 a'4\qtCr ~ \oS |
  a8\qtMf\qtDcr g fis e ~ |
  e4\qtCr \cS fis \oS |
  g8\qtDcr fis e d ~ |
  d4\qtCr \cS fis8 [ \oS g ] |
  fis4 \cS b ~ |
  b ais ~ |
  ais b ~ |
  b cis ~ |
  cis b |
  dis2 |
  e2\qtDcr ~ |
  e4 r\! |
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
  r8 d\swCresc\qtCr \oS fis a, |
  d2\qtDcr \cS |
  cis2\qtCr \oS |
  d4\! \cS a'\qtMf ~ |
  a4.\qtCr g8 ~ |
  g4 fis ~ |
  fis e ~ \oS |
  e dis \cS |
  e2\qtXx\ff\wDim ~ \oS |
  e ~ |
  e4 d \cS |
  c \oS b |
  a g |
  fis2 \cS |
  g ~ |
  g |
  fis2\mp |
  R2 |
  << {
       a2\espressivo ~ |
       a ~ |
       a4 fis |
       gis2\espressivo |
  } {
  s2. s4.\qtCr s4.\qtDcr s4\!
  } >>
  << {
    cis2 ~ |
    cis4 gis ~ |
    gis2 |
    cis2 ~ |
    cis ~ |
    cis |
  } {
    s2.\qtCr s2.\qtDcr s2.\qtCr s2.\qtDcr
  } >>
  r4\! b\qtMp^\tranquillo \oS |
  a g |
  fis2 ~ |
  fis4 \cS a \oS |
  g fis ~ |
  fis \cS cis'\qtCr \oS |
  d\qtMf b |
  a\qtDcr g |
  fis2\qtMp ~ |
  fis4 \cS b\qtCr \oS |
  a\qtDcr g |
  fis\! \cS ais ~ |
  ais2\qtCr |
  g4\qtDcr \oS fis |
  e2 |
  d2\! \cS |
  e4 \oS d ~ |
  d4. \cS r8 |
  b'2\qtP ~ |
  b2 ~ |
  b2 |
  R2 |
  b2\espressivo\fermata |
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
  [shoots]
  %%%%%[shoots] [the] [ar] [rows]
  %%%%%[in] [young] [boy]
  %%%%%Where [I'd]
  %%%%%Where I'd be young
  %%%%%[on] [ly]
  %%%%%be -- cause
  spar* man's young
  heart could chip low
  be with me Where
  heart be with hu*
  man
  be cause
  love
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
  r4. \hairlen #7 g8\mp \oS |
  e cis4.\qtDcr \cS |
  fis8\qtCr \oS d e4\qtDcr |
  e8\qtCr d\qtDcr cis b ~ |
  b8 \cS r4.\! |
  r4 dis8\qtMf\qtDcr \oS b ~ |
  b4 \cS r8\! e\qtCr \oS |
  dis4.\qtDcr \cS r8\! |
  R2 |
  g8\qtMf\qtDcr \oS fis e d ~ |
  d2 \cS |
  r8\! e4\qtMp\qtCr \oS cis8 ~ |
  cis d4.\qtDcr \cS |
  e8\qtMf\qtDcr \oS d cis b |
  ais2\qtCr ~ |
  ais2\qtDcr \cS |
  R2\! |
  R2 |
  R2 |
  R2 |
  e'2\mf\qtDcr |
  d8 \oS cis d\qtCr cis |
  e \cS fis4. ~ |
  fis2\qtDcr |
  gis4\< \oS g |
  fis2\> ~ |
  fis8\! \cS r4. |
  %r4.
  %r8
  %\php
  % gis4.\< |
  %\php
  %g2\> |
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
  r4. fis8\qtCr ~ |
  fis2 ~ |
  fis2\qtDcr |
  R2\! |
  r4 e\< \oS |
  ais fis8 [ a ~ ] |
  a8 cis4.\> ~ |
  cis4 \cS r\! |
  r4 a8\qtMf \oS g \cS |
  dis4 \oS e |
  a2\wCresc \cS |
  gis \oS |
  g?4 fis ~ |
  fis8 \cS e4 \oS ais8 ~ |
  ais4 \cS cis,\f \oS |
  c4 cis ~ |
  cis4 d \cS |
  %ais'8 gis cis b |
  %d8 e fis g |
  ais8\qtPx dis\qtPx fis\qtPx g\qtPx |
  fis8\qtTx\qtDcr \oS a4. \cS |
  ais2\qtCr ~ |
  %ais4 b |
  %c c |
  \times 2/3 { ais4\mf fis8 } \times 2/3 { e' \oS d cis ~ }
  \times 2/3 { cis \cS a \oS g } \times 2/3 { fis8 a b, }
  ais'8 b8 \cS g4\qtDcr ~ |
  g4 r4\! |
  r8 e'\qtCr \oS d cis |
  b a g4\qtDcr \cS |
  ais2\sDcr ~ \oS |
  ais4 b4 |
  fis2\mp \cS |
  R2 | R2 |
  b,4\< eis ~ \oS |
  eis2\f ~ |
  eis8 fis4.\qtDcr \cS |
  \times 2/3 { r8\! e'8\qtCr \oS d } gis,4\qtDcr \cS |
  r8 fis\qtCr \oS gis a |
  cis\qtF\qtDcr b a4 ~ |
  a\qtCr \cS gis \oS |
  eis4\! e\qtDcr ~ |
  e8 \cS dis8\qtCr \oS fis g8 |
  a4\f g8 \cS d8\qtMf\qtCr \oS |
  fis8 dis8 e fis |
  eis8 e4.\qtF\qtDcr ~ |
  e8 \cS c\qtCr \oS b a |
  ais\qtF\swCresc \cS f'\qtMf\qtCr \oS e b |
  d\qtF c4 \cS cis8 \oS |
  d8 dis \cS b'4\qtMf\qtCr \oS |
  a8 bes4 a8 ~ |
  a8 \cS r\! gis4\ff\qtXx |
  g? fis |
  fis2 ~ |
  fis4 r |
%mezzoBalise
e2\qtMf\> | R2\! | R2 | %r4 e'4\mp ~ |
%e2 ~ |
%e4 d ~ |
%d4. c8 |
R2*3 |
%r4. c'8\mp
%b a g fis |
%e4\< fis ~ |
R2*2 |
r4 fis\mp\< ~ \oS |
fis8 g4. \cS |
  %%%%%%%eis4\mf fis |
  %%%%%%%e dis |
  %%%%%%%fis4 e |
  %%%%%%%dis cis |
  %%%%%%%\times 2/3 { b'4 e g } |
  %%%%%%%c,4 b8 a ~
  %%%%%%%a8\> fis4. ~ |
  %%%%%%%fis2 |
  %%%%%%%e2\< |
  %%%%%%%g |
  fis4.\mf\qtDcr g8 ~ |
  g2\qtCr |
  fis2\qtDcr |
  a8\qtCr \oS g fis e |
  fis4\qtDcr \cS e ~ \oS |
  e8\qtCr dis4. \cS 
  b4\! fis' ~ \oS |
  fis\qtDcr e \cS |
  e2\! |
  g8\qtMf\qtDcr \oS fis e d ~ |
  d2\! \cS |
  fis4\qtMf\qtDcr \oS d8 cis ~ |
  cis2\! \cS |
  e8\qtMf\qtDcr \oS d cis b ~ |
  b4\qtCr cis ~ |
  cis\qtDcr \cS r\! |
  a'4\qtCr \oS g |
  fis \cS a \oS |
  g \cS ais \oS |
  gis4.\! a8 ~ |
  a8 gis e\qtDcr d \cS |
  << {
       r\! fis \oS g a \cS |
       r a \oS g fis ~ |
       fis4\swCresc d \cS |
       r8 e \oS a c, |
       eis2 \cS |
    } { s8 s8.\qtCr s8.\qtDcr
          s8\! s4.\qtCr s2\qtDcr s8\! s4.\qtCr s2\qtDcr } >>
  fis2\qtCr ~ |
  %{
    g2 |
    fis2 |
    e4 g |
    ais a |
  %}
  fis8\! g \oS d' e, |
  b'4. cis8 ~ |
  cis \cS e,8\qtCr \oS g fis |
  ais4 a \cS |
  c\qtXx\ff\wDim \oS b ~ |
  b fis ~ |
  fis g \cS |
  e \oS d |
  e2 ~ |
  e8 d cis4 \cS |
  d2 ( ~ |
  d4 cis ) |
  b2\mp |
  R2 |
  b\espressivo ~ |
  b4 << { e |
  d2 | } { s4.\qtCr s4.\qtDcr } >>
  dis2\!\espressivo |
  << { fis2 ~ |
       fis4 dis ~ |
       dis4 ais |
       gis'2 ~ |
       gis4 fis4 ~ |
       fis2 |
  } { s2.\qtCr s2.\qtDcr s2.\qtCr s2.\qtDcr } >>
  fis4\!\qtMp^\tranquillo \oS g |
  fis e |
  d2 ~ |
  d ~ |
  d4 \cS cis ~ |
  cis2 |
  cis ~ |
  cis |
  r4 a'\qtCr ~ \oS |
  a g\! |
  fis\qtDcr e ~ |
  e2\! \cS |
  d2\qtCr ~ \oS |
  d8 cis4.\qtDcr |
  b4 ais4 ~ |
  ais2\! \cS |
  cis ~ |
  cis4. r8 |
  g2\qtP ~ |
  g ~ |
  g |
  R2 |
  fis'2\espressivo\fermata |
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
  [on]
  [love]
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
  [shoots]
  %%%%%%[shoots] [the] [ar] [rows]
  %%%%%%[in] [man's] [young] [boy]
  %%%%%%[Where] [I'd] [be] [Where] [I'd] [be] [young]
  %%%%%%[be] [cause]
  %Where I could
  %[Where] [heart] [be] [with] [hu]
  %I should be
  [be] [cause]

  [love]
  chip 
  [I]
  sweet man per ty low
  [man's] [stay] [a] [bove]
  [boy]
  [sings]
  voice I'd be Just
  [zip] [should] [be]
  [spar*] [an] [e] [ter]
  his
  %[a] [beat] [boy] [with]
  [young] [boy] [had]
  [art] [with] [me]
  [his] [emp] %[ty]
  %[He] [ter*] [could]
  %[be] [fore]
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
  R2 |
  R2 |
  r4. fis8\mp ~ |
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
  fis8 d4.\wCresc ~ |
  d4 b ~ |
  b4. cis8 ~ |
  cis2 |
  d2\mf ~ |
  d8 b4. ~ |
  b4 d ~ |
  d4. a8 |
  a a a a |
  d2\< ~ |
  d8\> cis4. ~ |
  cis4\! b4 ~ |
  b4. %\php
      b'8 ~ |
  b2 |
  %\php
  a2 ~ 
  a8 g4. ~ |
  g4 fis4\< ~ |
  fis4. e8 ~ |
  e2\> |
  d\! ~ |
  d8 cis4. ~ |
  cis4 cis' ~ |
  cis4.\wCresc b8 ~ |
  b2 |
  a ~ |
  a8 g4. ~ |
  g4 fis4\f ~ |
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
  e4. fis8\> ~ |
  fis2 |
  d ~ |
  d8 e4.\mp ~ |
  e4 fis ~ |
  fis4.\< d8 ~ |
  d2 |
  b\f ~ |
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
  b4\wCresc a ~ |
  a4. g8 ~ |
  g2 |
  fis ~ |
  fis8 e4.\f ~ |
  e4 d ~ |
  d4. cis8 ~ |
  cis8. cis16 ~ cis4 |
  cis'2\mp ~ |
  cis8 b4. ~ |
  b4 a ~ |
  a4. g8 ~ |
  g2 |
  fis2 ~ |
  fis8 e4. ~ |
  e4 d8 d |
  d\< d d d8 ~ |
  d8. d16 ~ d4 |
  b'2\mf ~ |
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
  e4.\wCresc fis8 ~ |
  fis2 |
  a2 ~ |
  a8 b4. ~ |
  b4 e,4 ~ |
  e4. a8 ~ |
  a2 |
  fis2 ~ |
  fis8\ff\wDim g4. ~ |
  g4 a ~ |
  a4. fis8 ~ |
  fis2 |
  d ~ |
  d8 e4. ~ |
  e4 fis ~ |
  fis4. d8 ~ |
  d2\mp |
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
  \tag #'tenorTag { \clef "treble_8" }
  \tag #'viola { \clef "alto" }
  r8 \hairlen #5 d\mp\qtCr \oS b4\qtDcr ~ |
  << { b4 \cS ais8 \oS fis ~ | } { s8 s4\qtCr s8\qtDcr } >>
  fis2 ~  |
  fis8 ais4\qtCr \oS b8\qtDcr ~ |
  b2 ~ |
  b2\pp \cS |
  R2 |
  r4. b8\qtCr ~ \oS |
  b cis\qtMf\qtDcr b a ~ |
  a2 \cS |
  c8\qtMf\qtDcr \oS b a g ~ |
  g2 \cS |
  b8\qtMf\qtDcr \oS ais g fis ~ |
  fis2 \cS |
  R2\! |
  << { r8 b\qtP \oS cis d \cS |
   r8 d \oS cis b \cS |
   r cis \oS d e \cS |
     \footnote "" #'(0 . 0) "* Pronounced \"heater\"."
      r e \oS d cis |
      fis4\mf e8 d |
      bes d4. \cS } 
    { s8 \hairlen #5 s8.\qtCr s8.\qtDcr
      s8\! s8.\qtCr s8.\qtDcr
      s8\! s8.\qtCr s8.\qtDcr
      s8\! s4.\qtCr
      s2
      s2\qtDcr
    } >> |
  g,4.\qtCr \oS a8 |
  b c4.\qtDcr ~ |
  c8 \cS g'\qtCr \oS fis e |
  eis4\sCr e ~ |
  e2\> \cS |
  R2\! |
  %r4. \php
  %    fis8\< ~ |
  %fis2  |
  %R2\! |
  R2*3 |
  ais,2 \oS |
  a?4 \cS c\< \oS |
  cis d |
  %ais8 a4. |
  %fis'2 |
  cis2\> \cS |
  %\transpose c g \removeWithTag #'bass \lickMe |
  %R2*2 |
  r8\! e,4. | % ~ |
  %e r |
  R2 | R2 |
  r16 %fis,16
    b'8.\wCresc \oS ~ b4 |
  fis4. e8 \cS |
  b'4 \oS c ~ |
  c8 b8 cis4 |
  e2\f ~ |
  e4 \cS a, \oS |
  gis a \cS |
  fis8\qtPx bis\qtPx ais\qtPx ais\qtPx |
  b2\qtTx |
  r8 cis4. ~ |
  cis2 |
  d4 \oS ees \cS |
  c8 ( d4 ) cis8 ~ |
  cis g4 ais8 \oS ~ |
  ais8 a b8 a8 |
  g fis b4 \cS |
  d2\> \oS |
  cis |
  ais4\mp \cS b8 \oS g' |
  e cis ais fis \cS |
  a2\< ~ \oS | 
  a4 gis \cS |
  \parDyn
  cis8\f\qtCr \oS a gis cis, \cS |
  e4\qtDcr \oS dis |
  d?\! \cS b'\qtCr ~ \oS |
  b4 ais8 a |
  gis8\qtF \cS cis,8\qtMf\qtCr \oS dis eis |
  b'4\qtF \cS eis, \oS |
  cis'2\qtDcr \cS |
  c?4\qtCr \oS ais |
  b8\! \cS g4\qtMf \oS a8 ~ |
  a4 b \cS |
  c8\qtCr [ \oS b ] a b |
  gis\qtF\qtDcr a4 \cS e8\qtCr ~ \oS |
  e\swCresc cis'4.\qtDcr \cS |
  b4\qtCr \oS fis8 b\qtF \cS |
  r8 fis'\qtMf\qtCr \oS eis ais, |
  d\qtF\qtDcr cis4 \cS b8\! \oS |
  d4\qtCr \cS b\qtXx\ff \oS |
  c4 bes4 |
  b4. a8 ~ |
  a4 \cS r |
%tenorBalise
r8 a\mp\qtCr \oS b cis \cS |
e\qtDcr \oS dis \cS a'\qtCr \oS gis \cS |
dis\qtDcr \oS cisis \cS gis'\qtCr \oS fis \cS |
d\qtCr \oS cis \cS fis \oS e \cS |
d\qtDcr \oS c b a |
b4\qtMp \cS a \oS |
gis2 \cS |
a4 \oS b ~ |
b4.\< \cS g8 \oS |
ais8 b cis d |
  %%%%%%%e'4\mf dis |
  %%%%%%%ais4 a |
  %%%%%%%b4 c |
  %%%%%%%b4 c ~ |
  %%%%%%%\times 2/3 { c4 b a ~ } |
  %%%%%%%a4 b8 c ~ |
  %%%%%%%c8\> d4. |
  %%%%%%%c4 bes |
  %%%%%%%b?\< g |
  %%%%%%%ais8 b cis d |
  \parDyn
  cis8\mf\qtCr d b4 \cS |
  e8 \oS cis4.\! \cS |
  e8 \oS d cis b ~ |
  b2\qtDcr \cS |
  d4.\! \oS cis8 |
  b4. a8 \cS |
  d2\qtCr \oS |
  cis\qtDcr \cS |
  d8\qtMf\qtDcr \oS cis b a ~ |
  a4\qtCr \cS b \oS |
  c8\qtMf\qtDcr b a g ~ |
  g2\! \cS |
  b8\qtMf\qtDcr \oS ais g fis ~ |
  fis2\! \cS | 
  ais8\qtMf\qtDcr \oS g fis4\! \cS |
  << { r8 b \oS cis d \cS |
       r8 d \oS cis b \cS |
       r cis \oS d e \cS |
       r e \oS d cis \cS |
       r dis \oS e fis ~ |
       fis8 \cS a,4 \oS ais8 |
       b4 \cS bes \oS|  
       c4 bes |
       b?2\swCresc \cS } {
     s8 s8.\qtCr s8.\qtDcr
     s8\! s8.\qtCr s8.\qtDcr
     s8\! s8.\qtCr s8.\qtDcr
     s8\! s8.\qtCr s8.\qtDcr
     s8\! s4.\qtCr
     s8\qtF s4.\qtMf\qtCr
     s2\qtDcr
     s2\!
     } >> |
  gis4\qtCr \oS a |
  b8\! \cS cis \oS gis' a, |
  cis4\qtDcr b \cS |
  e8\qtCr \oS d c b8 |
  a8 \cS g \oS d' d, \cS |
  ais'8 \oS b cis ais |
  cis4 c \cS |
  b2\qtXx\ff\wDim  |
  c |
  bes |
  aes |
  g4 \oS bes |
  a g \cS |
  b2 ( |
  ais ) |
  b\mp |
  R2 |
  g\espressivo ~ |
  g4 << { gis ~ |
  gis8 g4. } { s4.\qtCr s4.\qtDcr } >> |
  a2\!\espressivo ~ |
  << { a4 gis ~ |
    gis4 a ~ |
    a2 ~ |
    a2
    e'4 \oS d | 
  cis4 b ~ | } { s2.\qtCr s2.\qtDcr s2.\qtCr s2.\qtDcr } >> |  
  b4\! \cS d\qtMp^\tranquillo ~ |
  d2 |
  a4 \oS g |
  fis e \cS |
  b'2 |
  ais |
  b ~ |
  b |
  b2 |
  g |
  b2 |
  gis4\qtCr \oS fis |
  fis4\qtDcr e ~ |
  e2\! \cS |
  g2 ~ |
  g | 
  ais2 ~ |
  ais4. r8 |
}

tenorTenorKludge = \relative c {
  fis4\qtP \oS d | |
  cis \cS b |
  ais2 \cS |
  R2 |
  \absolute { cis'2\espressivo\fermata } |
}

tenorViolaKludge = \relative c {
  fis4\qtP \oS d | |
  cis \cS b' \oS |
  ais2 \cS |
  R2 |
  \absolute { cis'2\espressivo\fermata } |
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
  %%%%%[shoots] [the] [ar] [rows]
  %%%%%[in] [man's] [young]
  %%%%%[boy] [I'd] [be]
  %%%%%[I'd] [be]
  %%%%%[young] [on] [ly]
  %%%%%[be] [cause]
  %%%%%a young boy met

  feel young be
  Where art sweet a
  art ture* a rows
  be de* per ty
  Just be cause I'm

  sen ding
  [voice]
  When stay man


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
  r8 g\mp\qtDcr \oS fis e |
  d2\wCresc \cS |
  eis |
  fis |
  ais \oS |
  a?4.\mf \cS r8 |
  r4 gis, |
  e' a, |
  d aes \oS |
  g2\qtCr \cS |
  cis4\sCr fis, |
  b4.\>^\pizz g8 |
  fis8\! ais b fis |
  r8 cis'4 g8 |
  fis4 f |
  e g8 a |
  fis4 e' |
  d aes\< |
  g ais8 fis ||
  %\removeWithTag #'tenor \lickMe |
  %r16 %e,16
    %g8. ~ g4 |
  b4.\> fis8 |
  b4\! c8 fis, |
  cis'4 g |
  f' bes, |
  e\wCresc fis,8 f |
  \times 2/3 { e4 ais fis } |
  g a |
  e ees8 d |
  fis8 g4.\f ~ |
  g8 e'4 fis,8 |
  ais4 b |
  dis8\qtPx gis,\qtPx cis\qtPx fis,\qtTx ~ |
  fis g4 cis8 |
  fis,4 e' |
  ais, b |
  fis' f |
  e8 g,4 ais8 |
  e8 gis a fis |
  cis'8 b4 eis,8 |
  fis4 d' |
  \times 2/3 { cis\> d, e } |
  fis ais |
  b2\mp ~ |
  b4. r8 |
  R2 |
  gis4\<^\arco \oS cis |
  fis,2\f ~ |
  fis ~ |
  fis ~ |
  fis2 ~ |
  fis2\qtDcr \cS |
  r4\! gis8 \oS cis ~ |
  cis8 \cS fis,\qtCr \oS gis a |
  b4 dis |
  fis4\qtF\qtDcr e4 \cS |
  d4.\qtCr \oS c8 |
  gis4\qtF a\qtDcr ~ |
  a8 b c4\! \cS |
  d2\wCresc ~ |
  d8 eis,4 dis'8 ~ \oS |
  dis e4. ~ |
  e8 \cS fis,4 eis'8 ~ |
  eis8 r\! c4\ff ~ |
  c8 aes4. |
  g2 ~ |
  g4 r |
%bassBalise
fis'2\qtMp\qtDcr |
b, ~ |
b4\qtPp r |
R2*3 |
r8 cis\mp\qtCr \oS d e |
fis4\qtDcr f |
e8\< \cS g \oS fis e |
d cis ais fis |
  %%%%%%%fis'2\mf |
  %%%%%%%b, |
  %%%%%%%e ~ |
  %%%%%%%e4 bes |
  %%%%%%%a4. d8 |
  %%%%%%%d2 ~ |
  %%%%%%%d8 r8 gis4\> |
  %%%%%%%a c,  |
  %%%%%%%cis2\<  |
  %%%%%%%fis,2 |
  b4\mf \cS b'\qtMp\qtCr ~ \oS |
  b4 ais8 fis \cS |
  cis'8\qtMf\qtDcr \oS b a g |
  fis\! e d cis \cS |
  e8\qtCr \oS fis gis a |
  b\! b, cis dis |
  e \cS fis \oS e d |
  cis b a g |
  a2\qtDcr \cS |
  R2\! |
  R2 |
  R2 |
  R2 |
  R2 |
  r4. e'8\qtMp \oS |
  d2\qtCr \cS |
  eis |
  fis |
  g |
  a |
  b, |
  c4. \oS d8  |
  e fis \cS aes,4 \oS |
  g2\qtDcr \cS |
  R2\! |
  r4 fis\swCresc\qtCr \oS |
  b8\! \cS fis' \oS d' d, \cS |
  g\qtMf\qtCr \oS fis e d |
  c b a g \cS |
  fis4 \oS ais8 cis |
  d8 \cS fis \oS b b,\ff \cS |
  R2 |
  R2 |
  R2 |
  R2 |
  R2 |
  R2 |
  cis2\> ( |
  fis, ) |
  b2\mp |
  R2 |
  e2\espressivo ~ |
  e4 a, ~ |
  a2 |
  b\espressivo |
  << {
    e ~  |
    e4 b ~ |
    b2 |
    e,2 ~ |
    e4 a ~ |
    a d |
  } { s2.\qtCr s2.\qtDcr s2.\qtCr s2.\qtDcr } >>
R2\! R2 R R R
R R R
  g,2\qtP |
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
  b'2\espressivo\fermata |
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
  [shoots] [the]
  %%%%%[shoots] [the] [ar] [rows]
  %%%%%Where I'd [If]
  %%%%%[young] [on] [ly]
  %%%%%%[be] [cause] [love]
  lock men Where
  Jeal* I
  fore rows in That
  I'd be a low
  [love] [love]
  a rows
  boy I'm torn chip in Where I'd be
  %How should a man's stay with boy Just

  How when should a man's stay boy Just
  fore low That the boy A part man sings
  That heart
  I
  should sum*
  feel me
  could [if] [a] [sweet]
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
