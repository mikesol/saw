%<ees d' f a f'> d bes c d bes
%#(set-global-staff-size 14.14)
#(set-global-staff-size 15.87)
%{
\paper {
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
  max-systems-per-page = #2
}
\header{
  title = "If I Only Had a Brain"
  subtitle = "for me"
  %title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}
%}
%%%%%% ending with E major
%%%%%% then D major
%%%%%% then B major (if happy)
%%%%%% then D major (why oh why)
%%%%%% C-major happy going down

\version "2.17.0"
\include "defs-devel.ly"

swung = \markup \italic "swung"
notswung = \markup \italic "not swung"

%#(load "swing.scm")

tripletFeel = #(define-music-function (parser location n m) (number? ly:music?)
m)

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)

railroad =  {
  \once \override BreathingSign.text = \markup \musicglyph #"scripts.caesura.straight"
  \breathe
}
myred = \once \override NoteHead #'color = #red

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
}

%{
\paper {
  #(define fonts
    (set-global-fonts
    #:music "cadence"
    #:factor (/ staff-height pt 20)
  ))
}
%}

prefatoryMatter = {
  \key ees \major
  \autoBeamOff
}

scorePrefatoryMatter = {
  \prefatoryMatter
  \partial 4
}

midiPrefatoryMatter = {
  \prefatoryMatter
  r2.
  %\partial 4
}

marks = {
  \tempo "Adagio" 4=52
  s4 |
  %s1*31 |
  %\unfoldChange #52 #60 #8
  %\tempo "più mosso" 4=60
  %s1
  s1*48
  %\tempo "meno mosso" 4=52
  %s1*4
  %s1*2
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup \italic "rall."
  \unfoldChange #52 #40 #32
  \bar "|."
}

soprano = {
  \relative c'' \tripletFeel 8 {
    r4 |
    R1 |
    R1 |
    r2. \myred g8^\swung^\mf aes |
    bes g ees f g ees4 f8 |
    g ees c d ees c4 ees8 |
    bes4 bes \myred d'8 c bes aes |
    g f \myred g aes bes g ees f |
    g ees4 f8 g ees bes aes |
    \myred d'8 ees f d bes c d bes ~ |
    bes c d bes \myred g aes bes g |
    ees f \myred g aes bes g ees f |
    g8 ees
  }
  \relative c'' {
    \times 2/3 { \myred g^\notswung aes bes } \times 2/3 { g8 ees f } \times 2/3 { g8 ees4 ~ }
    \times 2/3 { ees8 f g } \times 2/3 { ees8 c d } \times 2/3 { ees c4 ~ } c8 ees |
    bes4 bes  ~  \times 4/7 { bes8 \myred d'8 c bes aes g f }
  }
  \relative c' \tripletFeel 8 {
    ees8^\swung ees ees ees
  }
  \relative c' {    
    ees8^\notswung \myred g16 aes bes g ees f |
    g16 ees8 f16 \times 4/5 { g16 ees g16^\< f ees16 } \times 4/5 { ees ees ees ges8 ~ }  ges bes ~ |
    %bes4 r r2 |
    << { bes2 } { s4. s8^\f } >> \times 2/3 { r8 a4 ~ } \times 2/3 { a8 g f  } |
    %f'2 ~ | %r16 f'8. ~ f4 ~ |
    \times 2/3 { r8 f' [ ees ] } \times 2/3 { d [ c ] bes } aes g bes a |

    %r16 g [ f ees d c bes aes ] g [ ees' d c bes aes g ees ] |
    \times 2/3 { f8 [ ( aes c ] } ees16 [ f, aes c ] g'8 [ f16 ees ) ] d [ c ] bes aes |
    %bes16 [ bes' a g f ees d c ] d [ g f ees d c b a ] |

    bes16 [ ees d c bes aes g f ]    \myred g^\> aes bes g ees f g ees
  }
  \tripletFeel 8 \relative c' {
    \myred d8^\mf^\swung c d c d c d ees |
    d4 \myred g8 aes bes8 g ees d |
    ees4-. r4 r2 |
    r4. \myred g8^\< f ees bes'4 | 
  }
  \relative c'' {
    ges4^\f^\notswung fes \times 2/3 { \myred g8 aes bes } \times 2/3 { g ees f }
    g16 ees8 f16 g ees c d ees c8. \times 2/3 { ees8 bes bes } |
    \myred c'8 [ d16 ] bes16   ees, g aes f    d f8.   \times 2/3 { d8 ees c } |
    \times 2/3 { bes c d } bes d ~ d ees4 c8 |
    \times 2/3 { c4 ( bes' ) d, } c \times 2/3 { ees4 c8 ~ } |
    \times 2/3 { c d4 } \times 2/3 { bes \myred g'8 ~ } \times 2/3 { g8 d4 } f4 ~ |
    \times 4/5 { f16 \myred g ees f g } ees16 f g32 aes bes aes g16 f ees8 ~ \times 2/3 { ees bes c } |
    \times 2/3 { bes'4^\> g f ~ } f-.\! \myred ees-.^\mp |
  }
  \relative c'' {
    c2 ~ c8 bes c d |
    bes2. c4 |
    aes aes aes bes |
    g2. g8 g |
    f ees f ees f ees f g |
    ees2 ~ ees8 ees g bes |
  }
  \tripletFeel 8 \relative c'' {
    c4-. r4 r4. g8^\swung^\cresc |
    f8 f bes aes g f ees d |
    c c c c c4 \myred g'8 aes |
    bes g ees f g ees4 f8 |
    g ees c d ees c \myred ees4 |
    c'2 ~ c8 bes c d |
    bes2.^\ff c4 |
    aes aes aes bes |
    g2.^\> g8 g |
    f8 ees f ees f ees f g |
  }
  \relative c' {
    ees2^\notswung^\mf ~ ees8 ees g bes |
    c8 c bes8 aes g f ees d |
    g4 \myred g8 aes bes g ees d |
    << { a'1^\fermata } { s2..^\> s8\! } >> |
  }
}

sopranoWords = \lyricmode {
  I could wile a -- way the ho -- urs
  Con -- fer -- rin' with the flow -- ers
  my thoughts were
  bu -- sy hat -- chin' if I
  I could wile a -- way the ho -- urs
  Con -- fer -- rin' with the
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny
  I'd un -- ra -- vel a -- ny
  I'd un -- ra -- vel a -- ny rid -- dle
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny in -- di -- vi -- d'le
  In trou -- ble
  no -- ther Lin -- coln
  If I on -- ly had a brain.
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny
  If I on -- ly had a brain
  Oh
  I tell you
  could tell you why
  could tell you 
  o -- cean's near the shore
  I would wile a -- way the ho -- urs
  think of things I ne -- ver thunk be -- fore
  I'd un -- ra -- vel a -- ny sit
  And think some more
  I would
  I would not be just a no -- thin'
  My head all full of stuf -- fin'
  My heart all
  I would not be just a no -- thin'
  My head all full of stuf -- fin
  My heart all full of pain.
  I would dance and be mer -- ry,
  be just a no -- thin'
  My head all full of stuf -- fin
  My heart all full of pain
  Oh I could tell you why
  The o -- cean's near the shore
  I could think of things I ne -- ver thunk be -- fore
  And then I'd sit and be a -- no -- ther Lin -- coln
  If I on -- ly had a brain
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny in -- di -- vi -- dle
  Oh I could tell you why
  The o -- cean's near the shore
  I could think of things I ne -- ver thunk be -- fore
  And then I'd be a
  ding -- a -- der -- ry, If I
  o I would wile a -- way the brain
}

mezzo = {
  \relative c'' \tripletFeel 8 {
    \myred g8^\swung^\mf aes |
    bes g ees f g ees4 f8 |
    g ees c d ees ces4 ees8 |
    bes bes bes bes bes2 ~ |
    bes4 \myred g8 aes bes g \myred ees'8 d |
    c4 c'8 bes aes g f ees |
    d d d' c bes aes g f |
    ees ees ees ees ees2 ~ |
    ees2. r4
    \myred bes'8 c d bes \myred g aes bes g |
    \myred g aes bes g ees f g ees ~ |
    ees g d d \myred bes'8 c d bes |
    \myred d ees f d bes4 \myred ees,8 d |
    c4 \times 2/3 { r8 \myred c'8 bes } aes8 g f ees |
    d8.
  }
  \relative c' {
    \myred d'16^\notswung   c bes aes g   f ees ees ees    ees ees \myred g f^"!" |
    g%{^"|"%} g ees f \times 4/5 { g ees8 f16 g } \times 4/6 { ees c d ees c8 } \times 4/5 { ees16 bes bes bes bes } |
    bes8 ees16 bes    bes bes bes bes  ~ \times 2/3 { bes8 \myred ees4^\< ~ } \myred ees |
  }
  \tripletFeel 8 \relative c'' {
    c2^\swung^\f ~ c8 bes c d |
    bes2. c4 |
    aes4 aes aes bes |
    g2. g8^\> g |
    f8^\mf ees f ees f ees f g |
    ees2 ~ ees8 ees g bes |
    c4-. r4 r8 g f ees |
    bes'2.^\< \myred g8 aes |
  }
  \tripletFeel 8 \relative c'' {
    ces^\f aes ~ \times 2/3 { aes g f } d8 des'8 ~
  }
  \relative c'' {
    des8^\notswung ces16 [ des32 ces ] |
  }
  \tripletFeel 8 \relative c'' {
    bes8^\swung g ~ \times 2/3 { g f ees } d d' bes8 [ g ] |
    aes g ~ \times 2/3 { g f ees } d c' ~ \times 2/3 { c bes aes } |
    \times 2/3 { g [ ( ees g ] } \times 2/3 { bes [ ees ces ] } d [ c ] ) g ges |
    f4 f'8 ees d c ~ \times 2/3 { c bes aes } |
    g8 g \times 2/3 { g' [ d ] f } ees16 [ b d ] c g8 ges |
    f ees' ~ \times 2/3 { ees d c } bes aes g f |
    \times 2/3 { bes8^\> d,4 ~ } d4 bes4-.^\! r4 | %bes-. |
  }
  \relative c' {
    r2. \myred bes4^\notswung^\mp |
    g'2 ~ g8 f g aes |
    f2. g4 |
    ees ees ees f |
    c8 c d c d c d c |
    d ees c2. |
  }
  \tripletFeel 8 \relative c'' {
    g4-. c8^\swung bes aes g^\cresc f ees |
    bes'2. \myred g8 aes |
    bes g ees f g ees4 f8 |
    g ees c d ees c4 ees8 |
    bes bes bes bes bes2 ~ |
    bes2. \myred ees8 d |
    c4^\ff c'8 bes aes g f ees |
    d d d' c bes aes g f |
    ees^\> ees ees ees ees2 ~ |
    ees2. ees8 d |
  }
  \relative c' {
    c4^\notswung^\mf c'8 bes aes g f ees |
    d d d' c bes aes g f |
    ees ees ees ees ees2 |
    \railroad
    \railroad
    << { \myred f'8 d bes c d bes ~ bes4^\fermata } { s2..^\> s8\! } >> |
  }
}

mezzoWords = \lyricmode {
  I could wile a -- way the ho -- urs
  Con -- fer -- rin' with the flow -- ers
  Con -- sul -- tin' with the rain
  I could wile a
  And my head I'd be scratch -- in'
  While my thoughts were bu -- sy hat -- chin'
  If I on -- ly had a brain

  I'd un -- ra -- vel
  I'd un -- ra -- vel
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny
  I'd un -- ra -- vel
  I'd un -- ra -- vel an
  With the thoughts I'd be think -- in'
  I could be 'no -- ther Lin -- coln
  If I on -- ly had a brain
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny in -- di -- vi -- d'le
  In trou -- ble or in pain
  In trou -- ble or in pain
  Oh
  I could tell you why
  The o -- cean's near the shore
  I could think of things I ne -- ver thunk be -- fore
  And then I'd sit and think some more.
  
  I would not be just a no -- thin'
  My head all full of stuf -- fin'
  My heart all full of pain
  all full of pain.
  I would dance and be mer -- ry,
  Life would be a ding -- a -- der -- ry,
  If I on -- ly had a brain.
  on -- ly had a brain brain.
  %Oh
  Oh I could tell you why
  The o -- cean's near the
  I could think of things I ne -- ver thunk be -- fore
  sit I'd be think and think some more.
  I could wile a -- way the ho -- urs
  Con -- fer -- rin' with the flow -- ers
  Con -- sul -- tin' with the rain

  And my head I'd be scratch -- in'
  While my thoughts were bu -- sy hat -- chin'
  If I on -- ly had a brain

  I would dance and be mer -- ry
  Life would be a ding -- a -- der -- ry,
  If I on -- ly had a brain,
  wile a -- way the ho -- urs.
}

alto = {
  \relative c' \tripletFeel 8 {
    \clef "treble_8"
    r4 |
    R1 |
    r4 \myred g8^\swung^\mf aes bes ces4 ces8 |
    bes4 \myred g8 aes bes g ees f |
    g8 ees4 f8 ees4 g |
    aes4 aes'8 g f ees d c |
    bes aes g aes bes c \myred d c |
    bes aes g f ees ees ees ees |
    ees4 \myred g8 aes bes g \myred g'8 aes |
    bes g ees f g ees4 f8 |
    g ees c d ees c4 ees8 |
    \myred bes8 c d bes \myred d8 ees f d %\myred g aes bes g |
    bes c d bes \myred ees8 d c4 |
    c'8 bes aes g f ees d c |
  }
  \relative c'' {
    \times 2/3 { \myred d^\notswung c bes } \times 2/3 {  aes \myred d, c } \times 2/3 { bes aes g }
  }
  \tripletFeel 8 \relative c'' { \myred g^\swung aes | 
    bes8 g ees f g ees4 f8 |
    g ees c d \times 2/3 { ees4^\< des f ~ } |
  }
  \relative c' {
    f8 ees8^\notswung^\f ( g [ bes ] ) \times 2/3 { r8 ees,4 } bes |
    %f8 ees16 [ ( g ] bes4 ) \times 2/3 { r8 a4 ~ } \times 2/3 { a8 g f  } |
    %r8 ees16 g \times 2/3 { bes4 ees,8 } \times 2/3 { r8 a8 aes } ges8 bes |
    %f8 d^"oh" aes'16 g^"tell" f f^"u" \times 4/5 { ees16^"y" g^"I" f ees d^"u" } ees8^"y" d16 bes |
    %c8 ges' f c bes d f f |
    %\times 2/3 { d4 f16 d } \times 4/6 { c4 d16 aes } bes16 [ ees d c ] bes8 ees |
  }
  \tripletFeel 8 \relative c'' {
    \myred bes8^\swung g ees f g ees4 f8 |
    g ees c d ees c4 ees8 |
    bes bes bes bes bes4^\> \myred ees, |
    c'2^\mf ~ c8 b c d |
    \myred bes'8 g ees f g ees4 f8 |
    g ees c d ees c4 ees8 |
    bes^\< bes bes bes bes \myred g'8 f ees ~ |
    ees d4^\f c8 ~ c f8 ~ f4 |
  }
  \relative c'' {
    \myred g,16^\notswung aes bes g   ees f g ees   f g ees c \times 2/3 { d8 ees c } |
    \times 2/3 { ees8 bes bes } bes \myred bes'8 ~ \times 2/3 { \times 2/3 { \myred bes16 c bes } aes8 ( [ g ] } \times 4/5 { aes [ bes f16 ~ ] } |
    \times 4/5 { f [ aes8 g ) ] } \times 2/3 { ees4 g8 ~ } \times 2/3 { g ees4 } \times 2/3 { bes'4 g8 ~ } |
    \times 4/7 { g4 \myred g'8 f ees d c } bes8. g16 ~ \times 4/5 { g \myred g aes bes g } |
    \times 4/5 { ees f g ees f } \times 4/5 { g ees c d ees } c16 ees bes bes   \times 2/3 { bes8 bes bes }  |
    g'16 ees8 g16 ~    g bes,8 bes16   bes bes' bes8 ~ bes8 f' |
    \times 2/3 { ees8^\> [ bes8 ] g' } \times 2/3 { ees bes' g } d'4-.\! g,,-.^\mp |
    r4 \myred aes ees'2 ~ |
    ees8 d ees f d2 ~ |
    d4 ees4 c c |
    c d bes2 |
    r4 bes8 bes aes g aes g |
    aes g aes bes g2 |
    a4-. r4 r4 \myred c^\cresc |
    aes aes aes bes
  }
  \tripletFeel 8 \relative c' {
    g4 \myred g8^\swung f ees g bes aes |
    g bes4 aes8 g bes d c |
    bes d4 bes8 ees ees ees ees |
    ees4 \myred f aes,2 ~ |
    aes8 bes^\ff aes g bes2 ~ |
    bes4 aes4 c c |
    c^\> bes d bes
    g bes d bes |
  }
  \relative c' {
    ees8^\notswung^\mf d ees8 d c bes aes g |
    f f f' ees d c bes aes |
    \myred bes g ees f g ees4 f8 |
    \railroad
    << { f'1^\fermata } { s2..^\> s8\! } >> |
  }
}

altoWords = \lyricmode {
  I could wile I could wile
  I could wile a -- way the ho -- urs
  Con -- fer -- in'
  head I'd be scratch -- in'
  While my thoughts were bu -- sy hat -- chin'
  bu -- sy hat -- chin' if I on -- ly had a brain
  I'd un -- ra -- vel
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny in -- di -- vi -- d'le
  In
  I'd un -- ra -- vel
  I'd un -- ra -- vel a -- ny rid -- dle
  With the thoughts I'd be think -- in'
  I could be a -- no -- ther Lin -- coln
  no -- ther Lin -- coln If
  I'd un -- ra -- vel a -- ny rid -- dle
  For a -- ny in -- di -- vi -- d'le
  Oh, Oh I could
  wile a -- way the ho -- urs
  Con -- fer -- rin' with the flow -- ers
  Con -- sul -- tin' with the rain
  Oh I could tell you
  ra -- vel a -- ny rid -- dle
  For a -- ny in -- di -- vi -- d'le
  In trou -- ble or in pain and think some
  more I would
  I would not be just a no -- thin'
  My head all full of stuf -- fin'
  My heart all full
  all full of pain.
  I would dance and be 
  I would dance and be mer -- ry
  I would not be just a no -- thin'
  My head all full of stuf -- fin'
  My heart all full of pain
  Dance and be mer -- ry
  Life would be
  If I on -- ly had a brain
  Oh
  Oh I could tell you why
  The o -- cean's near the shore
  I could think of things I ne -- ver thunk be -- fore
  sit
  The o -- cean's near the shore
  I would not be just a no -- thin'
  My head all full of stuf -- fin
  My heart all full of pain
  Oh I could tell you why
  The o -- cean's near the
  If I on -- ly had a
  I would and be mer -- ry
  Life would be a ding -- a -- der -- ry,
  If I wile a -- way the ho -- urs a
  brain
}

tenor = {
  \relative c' \tripletFeel 8 {
    \clef "treble_8"
    r4 |
    r2. \myred g8^\swung^\mf aes |
    bes g ees f g aes4 \myred ces8 |
    g g ees f g ees4 f8 |
    g ees c d ees c4 d8 |
    ees4 \myred aes8 bes c aes f g |
    aes f4. ~ f4 r |
    \myred d'8 c bes aes g4 \myred g8 aes |
    bes g ees d c ees4 f8 |
    g4 \myred g8 aes bes g \myred g aes |
    bes g ees f g ees \myred g aes |
    bes g ees f g ees \myred g aes |
    bes g ees f g ees4 d8 |
    ees8 d c4 \times 2/3 { r8 \myred c'8 bes } aes16 g f ees |
    f4 d \myred d'8 c bes aes |
    g ees c d ees c \myred g' aes |
    bes g ees f \times 2/3 { g4^\notswung^\< a b ~ } |
  }
  \relative c' {
    \times 2/3 { b8 c4^\f ~ } c8 g'8 \times 2/3 { r8 ges4 ~ } \times 4/6 { ges16 f [ ees ] d [ c ] bes } |
    aes8 ees g bes d16 ees, g bes ees [ d ] c [ bes ] |
    aes8 [ g' ] f [ ees ] c [ bes ] aes' \myred d, ~ |
    \times 2/3 { \myred d ees f } \times 2/3 { d bes c } \times 2/3 { d4^\> bes4 \myred c, } |
  }
  \tripletFeel 8 \relative c' {
    aes2^\mf ~ aes8 g^\swung aes bes |
    g2. bes4 |
    a4-. r4 r4. \myred g8 |
    f ees \myred c'8^\< aes f g aes f |
  }
  \relative c' {
     c8.^\notswung \myred f,16 ees g bes aes g bes8. \times 2/3 { aes8 g bes } |
     \times 4/5 { d16 c bes d8 } bes ees \times 2/3 { bes4 bes g }
     bes8 c g4 aes8 f \times 2/3 { d'4 bes8 ~ } |
     \times 2/3 { bes8 \myred ees [ ( bes ] } \times 2/3 { g ) ees4 ~ } \times 2/3 { ees8 f g ~ } \times 2/3 { g ees4 } |
     bes'8 ees, c'4 g bes |
     \times 2/3 { \myred c8 d bes }   g8 aes8   \times 2/3 { bes g8 aes }  \times 4/7  { \myred c8 aes16 f g aes f } |
     d16 f bes, bes'    \times 4/7 { aes16 g f ees8 f8 } \times 4/5 { bes,8 d' g, ~ \times 2/3  { g16 ees f } g8 } |
     r16 d^\> g8 d16 aes'8 d,16 ~ d g8.-.\! r4 |
     R1 |
     r4 \myred ees^\mp c'2 ~ |
     c8 bes c d bes2 ~ |
     bes4 c aes aes |
     aes r f8 g f ees |
     f ees f ees f g ees4 |
   }
   \tripletFeel 8 \relative c {
     ees-. r4 r2 |
     d8^\swung^\cresc d d' c bes aes g f |
     ees ees ees ees ees2 ~ |
     ees4 \myred g8 f ees g bes aes |
     g bes4 aes8 g bes d c |
     bes d4 bes8 ees8 ees ees ees |
     ees4^\ff \myred ees,8 d c4 c'8 bes |
     aes g f ees d d d' c |
     bes^\> aes g f ees ees ees ees |
     g1 |
  }
  \relative c' {
     g2^\notswung^\mf f'8 ees d c |
     bes bes aes g f ees f \myred f |
     c'2 ~ c8 bes c d |
    \railroad
     << { bes1^\fermata } { s2..^\> s8\! } >> |
   }
}

tenorWords = \lyricmode {
  I could wile a -- way the ho -- urs
  could wile a -- way the ho -- urs
  Con -- fer -- rin' with the flow -- ers
  Con -- sul
  I could wile a -- way the ho -- urs
  bu -- sy hat -- chin'
  If
  I could wile a -- way the ho -- urs
  Con -- fer
  I'd un -- ra -- vel
  I'd un -- ra -- vel a -- ny rid -- dle
  I'd un -- ra -- vel a -- ny rid -- dle
  I'd un -- ra -- vel a -- ny rid -- dle
  For
  With the thoughts I'd be think -- in'
  I could be a -- no -- ther Lin -- coln
  a -- ny in -- di -- vi -- d'le
  I'd un -- ra -- vel a -- ny rid -- dle
  Oh I Oh I could tell you why
  could tell you why could tell you why
  The o -- cean's near the
  I'd un -- ra -- vel a -- ny rid -- dle
  Oh I could tell you why the o
  and think some not be just a no -- thin'
  I would not be just a no -- thin'
  My head all full of stuf -- fin
  My heart all full of pain
  My heart
  My heart
  My heart
  My heart all full of pain
  would dance and be
  would not be just a no -- thin'
  My
  I would not be just a no -- thin'
  My head all full of stuf -- fin
  My heart all full of pain
  Oh I could tell you why
  Oh I could tell you why 
  The o -- cean's near
  I could think of things I ne -- ver thunk be -- fore
  sit
  be a -- no -- ther Lin -- coln
  If I on -- ly had a brain
  I could wile a -- way the ho -- urs
  Con -- fer -- rin' with the flow -- ers
  Con -- sul -- tin' with the rain
  With the thoughts I'd be think -- in'
  I could be a -- no -- ther Lin -- coln
  If I on -- ly had a brain
  dance mer -- ry
  Life would be a ding -- a -- der -- ry,
  If
  Oh I could tell you
  brain
}

bass = {
  \relative c' \tripletFeel 8 {
    \clef bass
    r4 |
    r4 \myred g8^\swung^\mf aes bes g ees d |
    c2 ces4 aes8 f |
    g2 c |
    f,2 bes |
    aes2 ~ \times 2/3 { aes4 c f, } |
    bes2 g |
    c2 f,2 |
    bes g |
    f bes |
    ees4 \myred g,8 aes bes g bes4 |
    f2 bes |
    ees g, |
    aes c |
    f, bes |
    ees2 aes,4 bes |
    g ees ees'4^\< ces8 g8 ~ |
    \times 2/3 { g8 aes4^\f ~ } aes4 f4. f8 ~ |
    \times 2/3 { f8 bes4 ~ } \times 2/3 { bes8 g4 } c g8 [ ges ] |
  }
  \relative c, {
    %f16 [ ees' d c bes aes g f ] f' [ ees d c ] bes [ aes g f ]
    f2^\notswung ~ ( f16 [ ees' d c ) ] bes [ aes ] g f |
    \times 4/5 { g8 [ aes ] bes c d } ees4^\> \myred aes,8 bes |
    \times 2/3 { c8^\mf aes f } \times 2/3 { g aes f } g4 d'8 g, |
    c4. d8 ees8 c g ges |
    f4-. r4 r2 |
  }
  \tripletFeel 8 \relative c {
    r8 \myred g^\<^\swung f ees bes'2 | %bes'4. c8 |
    %d4 g,8 ges8 f4 fis |
    %\times 4/5 { g8 ees' g,16 } \times 4/5 { aes bes g ees f } g ees8. ~ \times 2/3 { ees8 f g } |
    %aes4 bes f d' |
    %\times 2/3 { bes8 g ees } \times 2/3 { f g ees ~ } \times 2/3 { ees f g } \times 2/3 { ees' c d }
    %\times 4/5 { des8 c e g, c } \times 4/5 { ges' fes g bes, g } |
    %\times 2/3 { aes8 bes f } \times 2/3 { ees' g, bes } aes16 g' f ees d c bes aes |
    %g ees' d c bes aes g f g ees8. ~ ees4 |
    g4^\f aes bes aes |
    g4 ees ees' bes |
    aes f bes aes |
    d bes \myred f'16 [ ees ] d [ c ] bes4 |
    aes2 f |
    bes4 g c g |
    f2 bes |
    ees4^\> bes ees-.\! r |
    aes,2^\notswung^\mp f |
    bes4 g c aes |
    f2 bes |
    ees2. aes,4 |
    d2 g, |
    c4 d ees c |
    f, r4 r2 |
    r4 d'^\cresc bes \myred g |
    c2^\swung ~ c8 bes c d |
    bes2. c4 |
    aes aes aes bes |
    g2. g8 g |
    aes2^\ff f |
    bes g |
    c^\> f,4 bes |
    ees bes ees2 |
  }
  \relative c {
    aes2.^\mf f8^\notswung g |
    aes aes bes c d ees aes, bes |
    c4 f f, bes |
    \railroad
    << { ees1^\fermata } { s2..^\> s8\! } >> |
   }
}

bassWords = \lyricmode {
  I could wile a -- way the ho -- urs I
  Con -- fer -- rin' with the rain
  I'd be scratch -- in'
  If I on -- ly had a brain
  I'd un -- ra -- vel
  In trou -- ble pain
  With thoughts I'd be a brain
  I'd un -- ra -- vel a -- ny
  Oh I, I could tell you why
  The o -- cean's near the
  o -- cean's near the shore
  I would wile a -- way the ho -- urs
  I'd ne -- ver thunk be -- fore
  And then I'd sit and think some more %would
  not be just a no -- thin' my head
  full of stuf -- fin'
  heart all full of pain
  I would dance be mer -- ry
  If I had a brain
  I could tell you why the o near shore.
  Oh I could thunk be -- fore I'd sit
  And think
  Oh I could tell you why
  The o -- cean's near the shore
  I would dance and me -- ry
  I had a had a brain
  dance
  Life would be a ding -- a -- der -- ry,
  If I on -- ly had a brain.
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \soprano
      } {
	\scorePrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \bass
      }
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
%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\midiPrefatoryMatter
        \soprano
      } {
	\midiPrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\midiPrefatoryMatter
        \bass
      }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
  >>
  \midi {}
}
