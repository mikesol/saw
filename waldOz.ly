%%% RECURRENT "SOME" !!!
\include "stylesheet.ly"
\header {
  %title = "wal'dOz"
  %title = "rain real come"
  subtitle = "for Mirkku"
  title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
  %arranger = "arr. (anon)"
}
mkf = \once \set Score.markFormatter = #format-mark-box-letters

%{
  Mirku says...
  1) Use slurs AND beams instead of just beams.
  2) Beam according to measure
  3) LOOK INTO 7/8
  % 2.17.12 works
%}

%%%%%% ending with E major
%%%%%% then D major
%%%%%% then B major (if happy)
%%%%%% then D major (why oh why)
%%%%%% C-major happy going down

\version "2.17.0"
\include "defs-devel.ly"



%{
key =
#(define-music-function (parser location tonic pitch-alist music)
   ((ly:pitch? '()) (list? '()) ly:music?)
music)

accessoryKey =
#(define-music-function (parser location tonic pitch-alist music)
   ((ly:pitch? '()) (list? '()) ly:music?)
music)

hackKey =
#(define-music-function (parser location tonic pitch-alist)
   ((ly:pitch? '()) (list? '()))
#{

#})
%}

key =
#(define-music-function (parser location tonic pitch-alist music)
   ((ly:pitch? '()) (list? '()) ly:music?)
   (_i "Set key to @var{tonic} and scale @var{pitch-alist}.
If both are null, just generate @code{KeyChangeEvent}.")
;(format #t "TONIC ~a ~a ~a\n" tonic (ly:make-pitch -1 6 0) (equal? tonic (ly:make-pitch -1 6 0)))
(make-music 'SequentialMusic
'elements
(cons
   (cond ((null? tonic) (make-music 'KeyChangeEvent))
         ((null? pitch-alist)
          (ly:parser-error parser (_ "second argument must be pitch list")
                           location)
          (make-music 'SequentialMusic 'void #t))
         (else
          (ly:music-transpose
           (make-music 'KeyChangeEvent
                'tonic (ly:make-pitch 0 0 0)
                'pitch-alist pitch-alist)
           tonic)))
(ly:music-property music 'elements))))

accessoryKey =
#(define-music-function (parser location tonic pitch-alist music)
   ((ly:pitch? '()) (list? '()) ly:music?)
music)


hackKey =
#(define-music-function (parser location tonic pitch-alist)
   ((ly:pitch? '()) (list? '()))
#{

#})
%{
hackKey =
#(define-music-function (parser location tonic pitch-alist)
   ((ly:pitch? '()) (list? '()))
   (_i "Set key to @var{tonic} and scale @var{pitch-alist}.
If both are null, just generate @code{KeyChangeEvent}.")
   (cond ((null? tonic) (make-music 'KeyChangeEvent))
         ((null? pitch-alist)
          (ly:parser-error parser (_ "second argument must be pitch list")
                           location)
          (make-music 'SequentialMusic 'void #t))
         (else
          (ly:music-transpose
           (make-music 'KeyChangeEvent
                'tonic (ly:make-pitch 0 0 0)
                'pitch-alist pitch-alist)
           tonic))))

key =
#(define-music-function (parser location tonic pitch-alist music)
   ((ly:pitch? '()) (list? '()) ly:music?) 
  (if (or (equal? tonic (ly:make-pitch -1 5 -1/2))
          (or (equal? tonic (ly:make-pitch -1 6 -1/2))
              (or (equal? tonic (ly:make-pitch -1 2 -1/2)))))
      (make-music 'TransposedMusic
               'element (ly:music-transpose music (ly:pitch-diff (ly:make-pitch 0 1 1/2) (ly:make-pitch 0 2 -1/2))))
      music))

accessoryKey =
#(define-music-function (parser location tonic pitch-alist music)
   ((ly:pitch? '()) (list? '()) ly:music?) 
  (if (or (equal? tonic (ly:make-pitch -1 5 -1/2))
          (or (equal? tonic (ly:make-pitch -1 6 -1/2))
              (or (equal? tonic (ly:make-pitch -1 2 -1/2)))))
      (make-music 'TransposedMusic
               'element (ly:music-transpose music (ly:pitch-diff (ly:make-pitch 0 1 1/2) (ly:make-pitch 0 2 -1/2))))
      music))
%}

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)

%improv = \markup \italic "expressing an inner joy"

ksnote = \markup \justify {
  * Les tonalités aux bémols sont en fait des raccourcis enharmoniques pour
  des tonalités à plusieurs dièses et double dièses. Par exemple, \concat{si\hspace #0.2 \textFlat}
  majeur est toujours \concat{la \hspace #0.2 \textSharp} majeur, \concat {mi\hspace #0.2 \textFlat} égale \concat{re\hspace #0.2 \textSharp} et ainsi
  de suite. C'est pour cette raison que des fois il y a une liaison
  de prolongation enharmonique \concat{(la\hspace #0.2 \textSharp} lié à \concat{si\hspace #0.2 \textFlat ,} par exemple)
  que vous devriez interpréter comme une liaison normale entre deux notes
  pareilles.
}

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
}

marks = {

}

soprano = \relative c' {
  
}

sopranoWords = \lyricmode {
}

mezzo = \relative c' {
}

mezzoWords = \lyricmode {
}

alto = \relative c' { %\autoBeamOff
}

altoWords = \lyricmode {

}

tenor = \relative c' { %\autoBeamOff
}

tenorWords = \lyricmode {

}

bass = \relative c' {
}

bassWords = \lyricmode {
}

%%% 661
marksProof = {
  \tempo 2=40
  \time 4/4
  s1*3 |
  \tempo 2=72
  s1 |
  \mark "rall."
  \unfoldChange #144 #60 #54
    s4 |
}

sopranoProof = \relative c' {
   \key aes \major { \relative c' {
  R1\! |
  \times 2/3 { r2 ees2.^\pp r4 } |
  \times 2/3 { r2 ees4 } r2 |
  c'1^\f |
  c |
  ees |
  bes2 aes2 |
  aes,1 |
  aes' |
  g2 ees4 f |
  g2 } \relative c'' {
 b2 |
}}}

sopranoProofWords = \lyricmode {
  I'll
  a
  where you'll find me, oh
  Some -- where
  o -- ver the rain % -- bow
}

mezzoProof = \relative c' {
   \key aes \major { \relative c' {
  ees1^\subPd |
  \times 4/6 { aes,4 ( c ) ees g ( ees ) c } |
  \times 2/3 { a ( c ) ees } \mark "rall." aes4 \breathe  bes |
  \mark "a tempo"
  c^\mf^\< ( b bes a ) |
  aes ( g f ees ) |
  des\!\> ( c bes aes ) |
  g1\! |
  aes |
  R1 |
  r4 ees'2 r4 |
  \times 2/3 { r4 ees4 ees } \times 2/3 { ees r2 } |
}}}

mezzoProofWords = \lyricmode {
  Some day I'll wish u -- pon a star, that's
  where you'll find me
  Some
  o
  py py py
}

altoProof = \relative c' { %\autoBeamOff
   \key aes \major { \relative c' {
  %\clef treble %\clef alto
  R1\! |
  \times 2/3 { r4 c4^\pp ~ c1 } |
  \times 2/3 { r4 c2 } r2 |
  R1 |
  R1 |
  f1^\mf^\> |
  g2 ees |
  aes,1^\p |
  R1 |
  R1 |
  R1 |
  %r2. c4 |
}}}

altoProofWords = \lyricmode {
  day
  pon
  find me oh
  Some
}

tenorProof = \relative c' { %\autoBeamOff
   \key aes \major { \relative c' {
  %\clef "treble_8"
  R1\! |
  aes2^\pp ~ \times 2/3 { aes2 r4 } |  
  a2 r |
  ees'1^\mf^\> |
  ees |
  f4\!^\> ( ees des c ) |
  des2 c4 ( bes ) |
  aes1^\p |
  c1 |
  des |
  c4 ( bes ) aes ( ges ) |
}}}

tenorProofWords = \lyricmode {
  day
  pon
  where
  you'll find me, oh
  Some -- where o rain -- bow
}

bassProof = \relative c' {
  %\clef bass
   \key aes \major { \relative c' {
  R1\! |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  g4^\mf^\> ( f ) ees ( des ) |
  c^\p ( bes aes ges ) |
  f ( ees des c ) |
  \ottava #-1
  bes^"(!)" ( aes ) g f |
  ees ( des ) c ( bes ) |
  \ottava #0
}}}

bassProofWords = \lyricmode {
  me, oh
  Some -- where o -- ver the rain -- bow
}

midiBeginning = {
\tempo 2=136
\time 3/4
s2.*2 |
}

%%% 339
marksBeginning = {
  \tempo 2=136
  \time 2/4
  s2 |
  \time 3/4
  s2. |
  \time 5/8
  s1*5/8 |
  \tempo 4=180
  %\mark \markup \huge "*"
  \time 7/8
  s1*7/8
  \tempo 4.=88
  \time 3/8
  s4.*2 |
  \tempo 2=84
  \time 7/8
  s1*7/8 |
  \time 3/4
  s2. |
  \tempo 2=68
  \time 4/4
  s1 |
  \time 7/8
  s1*7/8 |
  \tempo 2=136
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  \time 6/8
  s2. |
  \time 6/4
  s1. |
  \time 5/8
  s1*5/8 |
  \time 2/4
  s2 |
  \time 3/4
  s2. |
}

sopranoBeginning = \relative c' { \autoBeamOff
  \hackKey b \major
\clef treble %@
   \key b \major {
  R2 |
  b2^\mf gis'4 |
  R1*5/8
}   \key ees \major { \relative c'' {
  %\footnote "" #'(0 . 0) \ksnote
  g4^\f ees8 f g4 aes8 |
  R4. |
  R4. |
  r4 f'8^\p ~ f4^\espressivo f,4^\mp |
}}   \key c \major {
  e4 g e-. |
  f2^\< g2 |
  a8^\f r r4 r4. |
}   \key b \major {
  R2. |
  R2 |
  b,2.^\mp |
  a1. |
  gis8 r4 r4 |
  ais'2^\f |
  cis2. |
}}

sopranoBeginningWords = \lyricmode {
  Birds fly
  o -- ver the rain -- bow
  I
  If hap -- py lit
  Why oh why
  there
  land
  once
  can't I
}

mezzoBeginning = \relative c' { \autoBeamOff
  \hackKey b \major
%\clef soprano %@
\clef treble
   \key b \major {
  R2 |
  gis2^\mf e'4 |
  R1*5/8 |
  %fis,4.^\mp dis'4 |
}   \key ees \major { \relative c' {
  ees4^\f ees4 ees4 ees8 |
  f4 d8 |
  bes8 [ bes' ] g |
  d4.^\trill^\> ~ d8^\mp r8 r4 |
}}   \key c \major {
  e4 ees d-. |
  r2 e2^\< |
  f8^\f r dis4 ~ dis4. |
}   \key b \major {
  R2. |
  fis,4^\mf^\> dis' |
  cis4.^\mp d |
  cis2 cis c |
  b8 r4 r4 | %cis8 r |
  g2^\f |
  fis2. |
}}

mezzoBeginningWords = \lyricmode {
  Birds fly,
  %Birds fly
  o -- ver rain -- bow
  Why, oh why can't
  I
  hap -- py lit
  oh why some
  way up high
  a land heard of once %once
  can't I
}

altoBeginning = \relative c { \autoBeamOff
  \hackKey b \major
%\clef alto %@
\clef "treble_8"
   \key b \major {
  R2 |
  e2^\mf b'4 |
  fis4.^\mp dis'4 |
}   \key ees \major { \relative c' {
  bes4^\f aes g4 r8 |
  r8 d'8 bes |
  aes [ f ] ees'
  bes4.^\> ~ bes8^\mp r8 r4 |
}}   \key c \major {
  c4 ces bes-. |
  f'4 ( e ) d ( c ) |
  b8 r r4 r4. |
}   \key b \major {
  b2^\mf gis'4 |
  fis2 |
  gis,4. e' |
  \times 3/5 { dis2 b cis dis e }
  cis8 r4 r4 |
  e2^\f |
  dis2. |
}}

altoBeginningWords = \lyricmode {
  Birds fly,
  Birds fly
  o -- ver rain
  why oh why can't
  I
  hap -- py lit
  why oh why
  way up high
  there's a land that I heard of once
  can't I
}

tenorBeginning = \relative c { \autoBeamOff
  \hackKey b \major
  \clef "treble_8"
%\clef tenor %@
   \key b \major {
  R2 |
  R2. |
  R1*5/8 |
  %r4. fis4^\mp | 
}   \key ees \major { \relative c' {
  des4^\f b4 d4 c8 |
  %r8 aes4 ~ |
  %aes8. r8. |
  r4 aes8 |
  f [ d ] c' |
  g4.^\> ~ g8^\p r8 r4 |
}}   \key c \major {
  R2. |
  r2 e'4.^\mf^\< d8 ~ |
  d8^\f r r4 r4. |
}   \key b \major {
  fis,4^\mf^\> ~ fis8 f ~ f4 |
  ais4.^\mp a8 ~ |
  a4 gis8 ~ gis4 g8 ~ |
  g4 fis2 a4 ~ a8 gis ~ gis4 |
  e8 r4 r4 |
  cis2^\f |
  b2. |
}}

tenorBeginningWords = \lyricmode {
  %fly
  o -- ver rain -- bow
  oh why can't
  I
  oh why
  way up high
  there's a land that heard of once
  can't I
}

bassBeginning = \relative c' { \autoBeamOff
  \hackKey b \major
  \clef bass
   \key b \major {
  \tag #'normal { \cricket \tri c2^\f^\markup \italic "bruit blanc" } \tag #'piano { R2 } |
  R2. |
  R1*5/8 |
}   \key ees \major { \relative c {
  \tag #'normal { \bNormal } \tag #'piano { }
  bes4 g c4. % r16
  %R1*15/16 |
  r8 bes4 ~ |
  bes8. r8. |
  r8 ees4 ~ ees8 r8 r4 |
}}   \key c \major {
  R2. |
  r4 d,4^\mp^\< ~ d2 ~ |
  d8 g,8^\f r4 r4. |
}   \key b \major {
  r8. a^\mf^\> dis f, |
  \times 2/3 { cis'4^\mp c gis } |
  cis8. bis fis f |
  \times 6/8 { bes4 a e aes g ees ges e } |
  d8 r4 r4 |
  r4 fis^\f |
  b2. |
}}

bassBeginningWords = \lyricmode {
  [shshsh]
  o -- ver rain
  why
  I
  why
  why
  dum dum dum
  dum dum dum dum dum dum dum
  dum dum dum dum dum dum dum dum dum
  can't I
}

%%% 287
marksTriumphal = {
  \tempo 4=72
  \time 4/4
  s1*11 |
  \time 5/4
  \tempo 2=64
  s4 \mark "rall." % s1 |
  \unfoldChange #128 #104 #8
  \time 6/4
  \tempo 2=52
  s1. |
  \time 3/4
  s2. |
  \tempo 4=74
  \time 2/4
  s2 |
  \tempo 4=172
  \time 5/4
  s1*5/4 |
  \tempo 4=96
  \time 2/4
  s2 |
  \time 3/4
  %\tempo 4=92
  s2. |
}

sopranoTriumphal = \relative c'' { %\autoBeamOff
   \key b \major {
  r2 b^\p |
  r2. a4 |
  R1 |
  R1 |
  r2 e4 ( fis ) |
  dis4 b8 cis dis4 e |
  cis4 ais8 b cis4 dis |
  b4.^\< ( cis8 \times 2/3 { dis [ e fis ] ) } gis16 [ a ] b cis |
  dis2^\mf ~ ( dis8 [ b ) ] \times 2/3 { gis b dis } |
  fis2 ~ ( fis8 [ dis ) ] \times 2/3 { b^\< dis fis } |
  ais2^\f ( a |
}   \key ees \major { \relative c''' {
  aes8 ) bes,^\mp c d ees f g aes bes c |
  d4 ( \glissando bes ) bes ( \glissando g ) g ( \glissando d ~ |
  d c2 ) |
}}   \key b \major {
  R2 |
}   \key ees \major {
  R1*5/4 |
}   \key b \major {
  R2 |
}   \key d \major {
  r2 r32 fis,8..^\pp |
}}

sopranoTriumphalWords = \lyricmode {
  where
  bow
  a dream that I heard of
  once in a lul -- la -- by.
  A lul -- la -- by.
  A lul -- la -- by.
  A lul -- la -- by.
  lu u u u u u u u u u u u 
}

mezzoTriumphal = \relative c'' { %\autoBeamOff 
   \key b \major {
  R1 |
  ais4^\p ~ \times 2/3 { ais8 fis gis } ais4 b |
  r2 gis2 |
  r4 fis2 r4 |
  r2 cis |
  b4 r2. |
  r2 ais4 b |
  a2^\< ( \times 2/3 { b8 [ cis dis ] ) } e16 [ fis ] gis a |
  b2.^\mf ~ \times 2/3 { b8 gis b } |
  dis2. ~ \times 2/3 { dis8^\< b dis } |
  fis1^\f ~ |
}   \key ees \major { \relative c''' {
  ges8 r8 r4 r2 r4 |
  r4 f4^\mp ~ f4. r8  r8 f'4. ~ ( |
  f8 \glissando d ~ d4 ) r4 |
}}   \key b \major {
  R2 |
}   \key ees \major { \relative c'' {
  aes4^\mf g ees8 f g4 aes |
}}   \key b \major {
  R2 |
}   \key d \major {
  R2. |
}}

mezzoTriumphalWords = \lyricmode {
  o -- ver the rain -- bow
  up high
  a dream
  lul -- la -- by.
  A lu -- la -- by.
  lu -- la -- by.
  lu -- la -- by.
  u u
  the dreams that you dare to
}

altoTriumphal = \relative c' { %\autoBeamOff
   \key b \major {
  %\clef treble %\clef alto
  R1 |
  r4 \times 2/3 { r8 fis^\p f } e4 dis |  
  r2 e |
  r4 dis2 r4 |
  gis,2 ais |
  fis4 r fis gis |
  e r fis gis |
  fis2^\< ~ fis8 b4 dis8 |
  gis1^\mf |
  b |
  dis^\f ~ |
}   \key ees \major { \relative c'' {
  ees8 r8 r4 r2 r4 |
  g,2^\mp\trill^\espressivo bes\trill^\espressivo d4 ( c |
  bes aes g ) |
}}   \key b \major {
  R2 |
}   \key ees \major {  \relative c' {
  f4^\mf ees ees ees r |
}}   \key b \major {
  gis,,2^\p |
}   \key d \major {
  R2. |
}}

altoTriumphalWords = \lyricmode {
  ver the rain -- bow
  up high.
  There's a dream
  heard of once
  lul -- la -- by.
  lul -- la by.
  by.
  by.
  u u u 
  the dreams you dare
  and
}

tenorTriumphal = \relative c' { %\autoBeamOff
  %\clef "treble_8"
   \key b \major {
  b2^\p r |
  R1 |
  gis2 r |
  r4 bis2 r4 |
  e,2 g |
  ais4 b8 ais a4 gis4 |
  gis ais8 gis fis4 e |
  dis2.^\< fis4 |
  e8^\mf b' e2 ~ e8 fis |
  g2.. a8 |
  b1^\f ~ |
}   \key ees \major { \relative c' {
  ces'8 r8 r4 r2 r4 |
  r2 r4 d,^\mp ( \glissando bes ) bes ( \glissando |
  g4. \glissando bes8 ~ bes4 ) |
}}   \key b \major {
  gis,2^\p |
}   \key ees \major {
  R1*5/4 |
}   \key b \major {
  e2^\p |
}   \key d \major {
  R2. |
}}

tenorTriumphalWords = \lyricmode {
  Some
  way
  high.
  There's a dream that I heard of
  once in a lul -- la -- by.
  a lul -- la -- by.
  la -- by.
  la -- by.
  u
  u
  and
  and
}

bassTriumphal = \relative c { %\autoBeamOff
  %\clef bass
   \key b \major {
  R1 |
  R1 |
  e2^\p r |
  R1 |
  R1 |
  r2. gis,4 |
  cis4. r8 fis4 fis, |
  b2^\< ~ b8 fis' b16 a gis fis |
  e4.^\mf b8 e,2 ~ |
  e8 r8 e'2 b'4^\< |
  f'4^\f ( e ) ees d |
}   \key ees \major { \relative c' {
  des8 r8 r4 r2 r4 |
  r4 ees,4^\mp ~ ees2 ~ ees ~ |
  ees4. r8 r4 |
}}   \key b \major {
  e,2^\p |
}   \key ees \major { \relative c {
  f4^\mf bes b d c |
}}   \key b \major {
  R2 |
}   \key d \major {
  e4^\mf^\< cis8 [ d ] e8\! r8 |
}}

bassTriumphalWords = \lyricmode {
  way
  of once
  lul -- la -- by
  la -- by a lul -- la -- by. a -- by.
  lul -- la -- by.
  lul -- la -- by.
  u
  and
  the dreams you dare to
  why oh why
}

%%% 358
marksDecel = {
  \tempo 4=92
  \time 4/4
  s1 |
  \time 5/4
  s1*5/4 |
  \time 4/4
  s1 |
  \time 3/4
  s2. |
  s2. |
  s2. |
  s2. |
  \time 4/4
  s1 |
  s1 |
  s1 |
  s1 |
  \time 6/4
  s1. |
  \time 4/4
  s1 |
  \time 5/4
  s1*5/4 |
  \time 4/4
  s1*4 |
}

sopranoDecel = \relative c'' { %\autoBeamOff
   \key aes \major { \relative c'' {
  R1 |
  R1*5/4 |
  R1 |
  R2. |
  R2. |
  c2. |
  g |
  R1 |
  aes,2. ~ aes4 \glissando |
  aes''4-. r2. |
  R1 |
  bes,2 bes des4-. r4 |
}}   \key b \major {
  R1 |
  R1*5/4 |
  R1*4 |
}}

sopranoDecelWords = \lyricmode {
  find me
  some -- where
  blue -- birds find
}

mezzoDecel = \relative c' { %\autoBeamOff 
   \key aes \major { \relative c' {
  ees1^"not nec full mes" |
  aes8 aes g g f f ees ees des des |
  \times 2/3 { c4 bes bes' } g4 gis |
  a2. |
  a |
  f |
  e |
  r4 ees2. |
  aes,2. ~ aes4 \glissando |
  aes'4-. r2. |
  g1^\espressivo |
  bes4 ( a ) aes ( g ) ges4-. r4 |
}}   \key b \major {
  r2 e |
  dis4 b8 ( cis ) dis4 gis2 |
  eis4 gis4 r2 |
  eis4 gis r2 |
  eis2 r2 |
  R1 |
}}

mezzoDecelWords = \lyricmode {
  some day I'll wish u -- pon a star and
  wake up where the clouds are that's
  where you'll find me.
  Oh some -- where o
  blue -- birds find
  then oh why can't if
  hap -- py
  hap -- py
  ha
}

altoDecel = \relative c' { %\autoBeamOff
   \key aes \major { \relative c' {
  R1 |
  R1*5/4 |
  r2. des4 |
  f4. ( e ) |
  d ( c ) |
  f4. ( e ) |
  d ( cis ) |
  R1 |
  aes1 |
  aes4-. r2. |
  g1^\espressivo |
  r1 fes'4-. r4 |
}}   \key b \major {
  gis,2 ais |
  cis8 ( b ) ais ( b ) fisis4 r2  |
  eis'4 eis r2 |
  eis4 eis r2 |
  eis2 fis, |
  dis' cis |
}}

altoDecelWords = \lyricmode {
  that's where you'll find me.
  some -- where o
  find
  why then oh why can't
  hap -- py
  hap -- py
  ha way up high
}

tenorDecel = \relative c' { %\autoBeamOff
  %\clef "treble_8"
   \key aes \major { \relative c' {
  R1 |
  c8 c bes bes aes aes g g f f |
  \times 2/3 { ees4 des d } ees e |
  f2. |
  fis |
  ais |
  b |
  R1 |
  R1 |
  R1 |
  R1 |
  r1 des4-. r4 |
}}   \key b \major {
  e,2 g |
  r2 ais4 r2 |
  eis'4 cis r2 |
  eis4 cis r2 |
  eis2 dis, |
  b ais |
}}

tenorDecelWords = \lyricmode {
  day I'll wish u -- pon a star and
  wake up where the clouds are that's
  where you'll find me.
  find
  why then can't
  hap -- py
  hap -- py
  ha
  way up high
}

bassDecel = \relative c' { %\autoBeamOff
  %\clef bass
   \key aes \major { \relative c' {
  R1 |
  R1*5/4 |
  R1 |
  R2. |
  R |
  g2. |
  gis |
  R1 |
  aes2. ~ aes4 \glissando |
  aes,4-. r2. |
  g1^\espressivo |
  R1. |
}}   \key b \major {
  cis2 e |
  R1*5/4 |
  R1 |
  R1 |
  r2 b |
  eis, fis |
}}

bassDecelWords = \lyricmode {
  find me.
  some -- where o
  why then
  way up high
}

%%% 504
marksCartoon = {
  \tempo 4=108
  \time 2/4
  s2 |
}

sopranoCartoon = \relative c'' { %\autoBeamOff
   \key b \major {
  b2^\mf |
}}

sopranoCartoonWords = \lyricmode {
  If
}

mezzoCartoon = \relative c'' { %\autoBeamOff 
   \key b \major {
  a2^\mf |
}}

mezzoCartoonWords = \lyricmode {
  If
}

altoCartoon = \relative c' { %\autoBeamOff
   \key b \major {
  fis2^\mf |
}}

altoCartoonWords = \lyricmode {
  If
}

tenorCartoon = \relative c' { %\autoBeamOff
  %\clef "treble_8"
   \key b \major {
  dis2^\mf |
}}

tenorCartoonWords = \lyricmode {
  If 
}

bassCartoon = \relative c { %\autoBeamOff
  %\clef bass
   \key b \major {
  R2 |
}}

bassCartoonWords = \lyricmode {
}

%%% 600
%% ugh...kinda sux...fix
marksRestarts = {
  \tempo 4=84
  \time 5/8
  s1*5/8 |
  \tempo 2=88
  \time 4/4
  s1 |
  \time 5/4
  s1*5/4
  \time 2/4
  s2 |
  \time 5/8
  s1*5/8 |
}

sopranoRestarts = \relative c'' { %\autoBeamOff
   \key cis \major {
  gis4 eis8.-. gis8. |
}   \key c \major {
  R1 |
  R1*5/4
  R2 |
  %r4. e8-.^\mp e-. e-. r8 |
  r4 r16 gis16-.^\pp gis-. gis-. r8
  %R1*5/8 |
}}

sopranoRestartsWords = \lyricmode {
  Some day I'll
  py py py
}

mezzoRestarts = \relative c' { %\autoBeamOff 
   \key cis \major {
  disis4 eis8.-. disis8. |
}   \key ees \major { \relative c'' {
  r8 g4^\mf e8 \times 2/3 { a4 ( g ) f }
  \times 2/3 { d4^\mp ees f ~ } f8 g4 ees8
}} \key c \major { a'4^\f |
  fis8 a gis fis |
  << { e4. ~ e8 dis8 
} { 
s2^\> %s8
s8^\p 
} >> |
}}

mezzoRestartsWords = \lyricmode {
  Some day I'll
  some day
  rain -- bow
  in a lul -- la -- by
  Some day I'll wish u -- pon
  that's
}

altoRestarts = \relative c' { %\autoBeamOff
   \key cis \major {
  r4 r8. bis8. |
}   \key ees \major { \relative c' {
  r2 \times 2/3 { f4^\mf ( e ) d } |
  \times 2/3 { bes^\mp c d ~ } d8 ees4 d8 r4 |
  r4. } \key c \major { a8^\f |
  %<< { gis2 ~ gis4. ~  } { s2.^\> s8^\p } >> |
  << { gis4. ~ gis4 ~
} { 
s2^\> %s8
s8^\p 
} >> |
}}}

altoRestartsWords = \lyricmode {
  I'll
  rain -- bow in a lul -- la -- by
  u -- pon
}

tenorRestarts = \relative c' { %\autoBeamOff
  %\clef "treble_8"
   \key cis \major {
  gis4 cis8.-. gis8. |
}   \key ees \major { \relative c' {
  R1 |
\tupFrac
  \times 7/8 { aes4^\mp g f bes } g8 } \key c \major { a4 |
  d4 b^\f |
%  << { b2 ~ b4. |  } { s2.^\> s8^\p } >> |
  << { b4. ~ b4
} { 
s2^\> %s8
s8^\p 
} >> |
}}}

tenorRestartsWords = \lyricmode {
  Some day I'll
  in a lul -- la -- by some -- day wish on
}

bassRestarts = \relative c { %\autoBeamOff
  %\clef bass
   \key cis \major {
  R1*5/8 |
}   \key ees \major { \relative c' {
  r8 g4^\mf cis,8 d2 |
  f2^\mp bes,4. ees8 } \key c \major { r4 |
  d^\f dis |
%  << { e2 ~ e4. |  } { s2.^\> s8^\p } >> |
  << { e4. ~ e4
} { 
s2^\> %s8
s8^\p 
} >> |
}}}

bassRestartsWords = \lyricmode {
  some day rain lul -- la -- by day wish on
}

%%% 688
marksSurprises = {
  \time 2/4
  \tempo 2=60
  s2*2 |
  \time 5/8
  s1*5/8 |
  s1*5/8 |
  \time 4/4
  \tempo 2=88
  s1 |
  \time 2/4
  s2 |
  \time 4/4
  \mark "accel."
  << { \unfoldChange #172 #224 #20 } {
  s1 |
  \time 6/4
  s1. | } >>
  \time 4/4
  \tempo 2=112
  s1 |
  \time 6/4
  \mark "accel."
  \unfoldChange #224 #320 #24
  %s1.*2 |
  \tempo 2=80 % { \mark "city lights" %}
  \time 4/4
  s1*7 |
  \time 3/4
  s2. |
}

sopranoSurprises = \relative c'' { %\autoBeamOff
  \key e \major {
  a2 | % B7
  gis8. b16 ~ b4 |
  ais4 fis4 a8 | % ais4 fis8 gis ais4 b |
  b4 gis4. | % up -- on
  g2 a | % Why oh Why can't
  fis4 a | % day I (wish u...)
  gis4 e fis gis |
  a^\< fis dis e fis gis |
  e e fis gis |
  e b' gis b gis b |
  cis b gis b ais cis |
  b4^\f r8 b8 ~ b4 a |
  r4 d4 ~ d8 c4. |
  \times 2/3 { b4 a r } \times 2/3 { r cis e } |
  \times 2/3 { cis e cis } r8 d4 c8 |
  r4 cis4 r8 f ~ f4 |
  \times 2/3 { e g e } r8 d4 c8 |
  b4 a8 r r gis'4 fis8 ~ |
  fis4^\< e d4 |
}}

sopranoSurprisesWords = \lyricmode {
  if hap -- py
  blue -- birds fly
  be -- yond
  where o
  a -- bove
  trou -- bles melt like le -- mon drops
  and wake up where
  and wake up where
  the trou -- bles melt like le -- mon drops and wake up
  where where the
  where the trou -- bles
  trou -- bles melt like lem
  where the where like le -- mon drops
  where the trou -- bles
  where the trou -- bles
}

mezzoSurprises = \relative c' { %\autoBeamOff 
   \key e \major {
  R2 |
  R2 |
  R1*5/8 |
  R1*5/8 |
  e2 fis
  d4 c
  dis d cis d |
  cis^\< e dis cis e e e e e e |
  e4 dis e fis e fis gis fis e fis fis ais |
  a4^\f r8 fis8 ~ fis4 e |
  r4 a4 ~ a8 g4. |
  \times 2/3 { fis4 e r } \times 2/3 { r fis g } |
  \times 2/3 { a b a } \times 2/3 { g fis g }
  r8 fis ~ fis4 e8 r4 a8 ~ |
  \times 2/3 { a4 g fis } e8 fis4 e8 |
  d4 c8 r ais'2 ~ |
  ais4.^\< ais8 ais ais |
  %\times 2/3 { e4 g e } r8 d4 c8 |
  %b4 a8 r r gis'4 fis8 ~ |
  %fis4 e d4 |
}}

mezzoSurprisesWords = \lyricmode {
  where o
  a -- bove
  trou -- bles melt like
  le -- mon drops and wake up where and wake up where
  the trou -- bles melt like le -- mon drops and wake up
  where where the
  where the trou -- bles
  trou -- bles melt like le -- mon drops a -- way
  a
  where the trou -- bles
  where the trou -- bles
  where py py py
}

altoSurprises = \relative c' { %\autoBeamOff
   \key e \major {
  R2 |
  R2 |
  R1*5/8 |
  R1*5/8 |
  R1 |
  R2 |
  r2. e4 |
  e^\< cis a a cis cis b a cis cis |
  b b b b b b |
  b b b b cis e |
  dis4.^\f cis8 ~ cis4 r |
  cis4 e4 ~ e4. d8 ~ |
  d4 c fis e |
  d4. fis8 ~ fis a4 r8 |
  \times 2/3 { c,2 c4 } \times 2/3 { d e fis }
  \times 2/3 { g fis r } fis4 e8 d |
  \times 2/3 { gis4 b r } r8 fis4 e8 ~ |
  e^\< d4 c b8 |
}}

altoSurprisesWords = \lyricmode {
  like le -- mon drops and wake up where and wake up
  where
  the trou -- bles melt like le -- mon drops and wake up
  where the
  where the clouds are far be trou -- bles
  bove chim trou -- bles melt like le -- mon where the trou
  that's where where trou -- bles trou -- bles
}

tenorSurprises = \relative c' { %\autoBeamOff
  %\clef "treble_8"
   \key e \major {
  R2 |
  e8. dis16 ~ dis4 |
  cis4 ais dis8 |
  d4 d4 cis8 |
  c4 ( e ) d ( c ) |
  ais a |
  c b ais b |
  b^\< a gis fis a a |
  gis fis a a |
  gis a gis fis cis' a |
  gis a b a gis ais |
  b4.^\f a8 ~ a4 r4 |
  \times 2/3 { g4 b d ~ } \times 2/3 { d cis b } |
  \times 2/3 { a2 a r } |
  d4. c8 ~ \times 2/3 { c4 a b } |
  \times 2/3 { c d c } \times 2/3 { b a2 }
  \times 2/3 { c2 e4 } \times 2/3 { r b c } |
  \times 2/3 { d e2 ~ } \times 2/3 { e4 fis2 ~ } |
  \times 2/3 { fis4^\< gis2 ~ } gis4 |
}}

tenorSurprisesWords = \lyricmode {
  hap -- py
  blue -- birds fly
  be -- yond the
  where o
  a -- bove
  trou -- bles melt like le -- mon drops
  and wake up where
  and wake up where
  the trou -- bles melt like le -- mon drops and wake up
  where the
  trou -- bles melt like le -- mon drops
  that's where trou -- bles melt like le -- mon drops that's where
  where you
  where you'll find me
}

bassSurprises = \relative c { %\autoBeamOff
   \key e \major {
  R2 |
  r4 b4 ~ |
  b8 b4. r8 |
  fis16 gis b4. b8 |
  r8 fis8 b4 ~ b8 b4 r8 |
  r4 b |
  r2 b2 |
  b4^\< cis fis cis a b
  e cis a b |
  e4 fis, e dis cis dis
  e fis gis fis e fis |
  b^\f b b r |
  b c d e |
  r d c r |
  r b b r |
  r a b c |
  d r b b |
  r d4 c c |
  b8.^\< c d e |
}}

bassSurprisesWords = \lyricmode {
  hap -- py
  rai -- ny hap -- py
  so hap -- py hap
  like
  le -- mon drops and wake up where and wake up where
  the trou -- bles melt like le -- mon drops and wake up where
  the trou
  trou -- bles melt like
  trou -- bles
  trou -- bles
  trou -- bles melt like
  trou -- bles
  where you'll like trou -- bles melt like
}


%%% 651
marksOpera = {
  \tempo 2=80
  \time 4/4
  %\mark "accel."
  s1
  %\unfoldChange #80 #152 #8 %s1*4
  %\tempo 2=80
  \time 3/4
  s2. |
  \time 4/4
  s1*2
  \tempo 1=76
  s1*5 |
  \tempo 2=64
  \time 2/4
  s2 |
}

sopranoOpera = \relative c' { %\autoBeamOff
   \accessoryKey d \major {
  d2^\f^\> b'4 ( cis ) |
}   \key e \major {
  b ( bes a ) | %fis ) |
  dis,2^\mp a'4 ( b ) |
  gis e8 fis gis4 a^. |
} \key d \major {
  fis4^\mf a fis a |
  fis a g a |
  \times 2/3 { b,1 b'2 } |
  \times 2/3 { a2^> a^> a^> }
  \times 2/3 { a^> b,1 } |
} \key ees \major {
  c'4^\f^\> f, |
}}

sopranoOperaWords = \lyricmode {
  Skies are blue
  And the dreams that you dare to
  %hap -- py ha -- py
  %ha be -- yond the
  \repeat unfold 4 { hap -- py }
  Schloß where
  py py py py
  Some up fly
}

mezzoOpera = \relative c' { %\autoBeamOff 
   \accessoryKey d \major {
  \times 2/3 { d4^\> ( cis c ) } b2 |
} \key e \major {
  d4 ( cis c ) % e ) |
  b2^\mp fis' |
  e4 e8 dis cis4 cis^. |
  } \key d \major {
  d4^\mf fis d fis |
  d fis e fis |
  \times 2/3 { b,1 b'2 } |
  \times 2/3 { fis^> fis^> fis^> } |
  \times 2/3 { fis^> b,1 } |
} \key ees \major {
  aes'4^\f r |
}}

mezzoOperaWords = \lyricmode {
  Skies are blue
  And the dreams that you dare to
  %hap -- py hap -- py hap be -- yond the
  \repeat unfold 4 { hap -- py }
  Schloß where py py py py
  Some
  up
}

altoOpera = \relative c' { %\autoBeamOff
   \accessoryKey d \major {
  d2^\> fis |
} \key e \major {
  fis4 ( f e ) |
  dis2^\mp dis |
  e4 r r g4^. |
} \key d \major {  R1*5 |
 } \key ees \major { ees4^\f^\> aes, |
}}

altoOperaWords = \lyricmode {
  skies are blue
  and the
  dreams to
  up fly
}

tenorOpera = \relative c { %\autoBeamOff
   \accessoryKey d \major {
  %\clef "treble_8"
  d2^\> d' |
} \key e \major {
  a4 ( gis g\! ) |
  fis2^\mp a |
  b4 r %{ e4 %} r cis4^. |
} \key d \major {  d4^\mf r d r |
  d r d r |
  \times 2/3 { b1 b,2 } |
  \times 2/3 { a'^> a^> a^> } |
  \times 2/3 { a^> b1 } |
  } \key ees \major {
  c4^\f r4 |
}}

tenorOperaWords = \lyricmode {
  skies
  are blue and the dreams
  %{ dare %} to
  hap hap hap hap
  Schloß where py py py py some up
}

bassOpera = \relative c { %\autoBeamOff
  %\clef bass
   \accessoryKey d \major {
  b4^\> ( a ) gis ( b ) |
}  \key e \major {
  a ( cis e ) | %cis ) |
  dis^\mp ( fis ) cis' ( c ) |
  b %{bis cis%} r4 r a,^. |
} \key d \major {  R1*5 |
} \key ees \major {
  R2 |
}}

bassOperaWords = \lyricmode {
  skies are
  blue and the dreams %{ you dare %} to
}

%%% 518
marksStutter = {
  \time 7/8
  \tempo 2=84
  s1*7/8 |
  \time 4/4
  \tempo 2=96
  s1 |
  \tempo 2=84
  s1 |
  \time 2/4
  s2 |
  \time 3/4
  s2. |
  \tempo 2=112
  \time 4/4
  s1*4 |
  \time 3/4
  \tempo 2=60
  s2. |
}

sopranoStutter = \relative c' { %\autoBeamOff
   \key d \major {
  R1*7/8 |
  R1 |
  R1 |
  R2 |
  R2. |
  R1 |
  R1 |
  R1 |
  r2 fis |
  R2. |
}}

sopranoStutterWords = \lyricmode {
  ooo
}

mezzoStutter = \relative c' { %\autoBeamOff 
   \key d \major {
  e4-.^\mf e-. e-. e8 |
  e4 cis8 [ d ] e4 fis |
  \times 2/3 { d2 d d } |
  a'2 |
  fis4 r ais4^\f |
  gis^\mf fis e d |
  cis b ais g' |
  fis e d cis |
  d r cis'2 |
  a2 b4 |
}}

mezzoStutterWords = \lyricmode {
  fly fly fly why
  why oh why can't I I I
  If hap
  If hap -- py lit -- tle blue -- birds fly
  bey -- ond the rain -- bow why ooo
  if where
}

altoStutter = \relative c' { %\autoBeamOff
   \key d \major {
  d4-.^\mf d-. d-. r8 |
  b2 cis |
  r4. e8 ~ e cis ( d ) e |
  r4 a |
  fis r ais^\f |
  gis4^\mf fis e d |
  cis b ais g' |
  fis fis, gis ais |
  b4 r ais'2 |
  dis,2 dis4 |
}}

altoStutterWords = \lyricmode {
  fly fly fly
  why oh why oh why
  if hap If hap -- py lit -- tle blue birds fly bey -- ond the rain -- bow 
  why ooo
  if where
}

tenorStutter = \relative c' { %\autoBeamOff
   \key d \major {
  b4-.^\mf b-. b-. r8 |
  g2 a |
  \times 2/3 { cis cis cis } |
  R2 |
  r2 ais4^\f ~ |
  ais r4 r2 |
  R1 |
  R1 |
  r2 d2 |
  fis,2. |
}}

tenorStutterWords = \lyricmode {
  fly fly fly
  why why
  I I I
  If
  ooo
  if
}

bassStutter = \relative c' { %\autoBeamOff
  %\clef bass
   \key d \major {
  g4-.^\mf g-. g-. r8 |
  e,2 a |
  \times 2/3 { a' a a } |
  a4 a |
  r2 ais,4^\f |
  R1 |
  R1 |
  R1 |
  R1 |
  r8 b4 b b8 |
}}

bassStutterWords = \lyricmode {
  fly fly fly
  why why
  I I I I I
  If
  if where where
}

%%% 469
marksTrecartin = {
  \time 3/4
  \tempo 2=88
  s2. |
  \time 4/4
  s1*2 |
  %\tempo 2=96
  \time 3/4
  s2.*2 |
  \tempo 2=112
  \time 4/4
  s1 |
  s1 |
  \time 3/4
  s2. |
}

sopranoTrecartin = \relative c'' { %\autoBeamOff
   \key d \major {
  gis8 [ %{^"choppy/chinese/trecartin" %} fis gis fis ] a4 |
  r8 b a b a b a4 |
  r b ~ \times 2/3 { b4 gis b } |
  r4 cis bis |
  r4 cis bis |
  dis ( cis dis cis ) |
}   \key e \major {
  b2 gis4 b |
  r gis g |
}}

sopranoTrecartinWords = \lyricmode {
  Some day
  I'll wish u -- pon a star
  and wake up
  be -- hind be -- hind
  far
  where trou -- bles melt like
}

mezzoTrecartin = \relative c' { %\autoBeamOff 
   \key d \major {
  e4 ( dis ) dis |
  r8 gis fis gis fis gis f4 |
  r4 fis ~ \times 2/3 { fis fis f } |
  r4 a2 |
  a2 gis4 |
  r4 cis ( b cis ) |
}   \key e \major {
  r4 fis,2 dis4 |
  fis dis d |  
}}

mezzoTrecartinWords = \lyricmode {
  Some day
  I'll wish u -- pon a star
  and wake up
  where
  clouds are
  far
  where trou -- bles melt like
}

altoTrecartin = \relative c' { %\autoBeamOff
   \key d \major {
  R2. |
  r4 c2. |
  a4 r r2 |
  b4. g8 ~ g a8 |
  b4. ais8 ~ ais4 |
  r4 fis2 ~ fis8 a ~ |
}   \key e \major {
  a g ~ g4 r8 gis4. ~ |
  gis4 r8 f ~ f4 |
}}

altoTrecartinWords = \lyricmode {
  some day
  o -- ver the
  rain -- bow
  way up high
  where where
}

tenorTrecartin = \relative c { %\autoBeamOff
  %\clef "treble_8"
   \key d \major {
  r2 fis4 |
  dis fis dis2 |
  d1 |
  r2 fis4 ~ |
  fis4 fis'2 |
  eis2 dis, ~ |
}   \key e \major {
  dis4 b'2. |
  cis4 ais cis
}}

tenorTrecartinWords = \lyricmode {
  some day I'll wish u
  some where o there's a
  some day I'll
}

bassTrecartin = \relative c { %\autoBeamOff
  %\clef bass
   \key d \major {
  %b a c |
  R2. |
  b4. ais8 ~ ais a4 gis8 ~ |
  gis4 e b' gis |
  r8 b a b r4 |
  r8 a b a b r |
  R1 |
}   \key e \major {
  r4 b e fis |
  gis b b |
}}

bassTrecartinWords = \lyricmode {
  %some some day
  some day I'll wish
  and wake up
  some day I'll
  wish u -- pon a
  where trou -- bles melt melt like
}


%%% 458
marksRamp = {
  \tempo 2=100
  \time 4/4
  s1*2 |
  \tempo 4=148
  \time 3/4
  s2. |
  \time 5/8
  s1*5/8
  \time 2/4
  s2 |
  \time 7/8
  s1*7/8 |
  \tempo 2=88
  s1*7/8 |
  \time 3/4
  \tempo 4=148
  s2. |
  \tempo 4=116
  s2. |
  \time 3/8
  s4. |
}

sopranoRamp = \relative c' { %\autoBeamOff
   \key c \major {
  R1 |
  e4^\mp^\< dis dis gis |
}   \key fis \major {
  g8^\f b4. b4 |
  fis4 eis8 dis eis ~ |
}   \key cis \major {
  eis r eis4  |
}   \key b \major {
  r8 fis ~ fis4 ~ fis4 r8 |
}   \key bes \major { \relative c' {
  bes2^\mf^\> ees4. |
}}   \key e \major {
  e4 dis8 cis dis4 |
}   \key ees \major { \relative c' {
  d4^\mp bes8 c d4 |
  R4. |
}}}

sopranoRampWords = \lyricmode {
  where you'll find that's
  where where you'll
  o -- ver the rain
  are
  dreams
  way up
  high ver the rain
  once in a lul
}

mezzoRamp = \relative c' { %\autoBeamOff 
   \key c \major {
  e4^\< f fis g |
  gis8 [ g ] a4 gis ais |
}   \key fis \major {
  b-.^\f g a |
  gis4 eis8 fis gis |
}   \key cis \major {
  cis,4 ais' |
}   \key b \major {
  r8 ~ cis ~ cis4 ~ cis r8 |
}   \key bes \major { \relative c' {
  bes2^\mf^\> g'4. |
}}   \key e \major {
  fis,4 dis8 e fis4 |
}   \key ees \major { \relative c' {
  f4^\mp d8 ees f4 |
  r8 bes,4 |
}}}

mezzoRampWords = \lyricmode {
  where you'll find that's
  where you'll find that's where
  clouds are o -- ver the rain
  skies are dreams
  way up
  high ver the rain
  once in a lul by
}

altoRamp = \relative c' { %\autoBeamOff
   \key c \major {
  gis4 r4 r2 |
  d'4^\mp^\< cis e2 |
}   \key fis \major {
  e4^\f fis e
  dis4 r r8 |
}   \key cis \major {
  r4 cis |
}   \key b \major {
  r8 dis ~ dis4 ~ dis r8 |
}   \key bes \major { \relative c' {
  r2 c4.^\mf^\> |
}}   \key e \major {
  cis4 a b |
}   \key ees \major { \relative c' {
  c^\mp bes aes |
  R4. |
}}}

altoRampWords = \lyricmode {
  where you'll find
  where clouds are o
  are
  dreams
  up
  high ver
  rain
  once in lul
}

tenorRamp = \relative c' { %\autoBeamOff
  %\clef "treble_8"
   \key c \major {
  bes4^\< a c b bes a cis c |
}   \key fis \major {
  c4^\f b cis |
  b4 r8 b4 |
}   \key cis \major {
  ais4 fisis |
}   \key b \major {
  r8 ais ~ ais4 ~ ais r8 |
}   \key bes \major { \relative c' {
  g4^\mf^\> ( ees ) beses'4. ~ |
}}   \key e \major {
  a8 gis fis e dis4^\mp ~ | % MAKE TIE!!!!
}   \key ees \major { \relative c {
  ees2 c4 |
  r4 g'8 ~ |
}}}

tenorRampWords = \lyricmode {
  where you'll find that's where you'll find that's
  where clouds are o rain
  skies are
  dreams
  way up
  ver there's a rain lul
  by
}

bassRamp = \relative c { %\autoBeamOff
  %\clef bass
   \key c \major {
  r8 gis^\< d' cis c fis, b bes |
  a e gis g r fis^\f r4 |
}   \key fis \major {
  r8 d'4 r8 r4 |
  b4 gis cis8 ~
}   \key cis \major {
  cis fis,4 r8 |
}   \key b \major  {
  r8 b ~ b4 ~ b r8 |
}   \key bes \major {
  R1*7/8 |
}   \key e \major {
  fis2^\mf^\> b4^\mp |
}   \key ees \major {
  R2. |
  R4. |
}}

bassRampWords = \lyricmode {
  dum dum dum dum dum dum dum
  dum dum dum dum dum
  where
  o -- ver rain
  skies
  dreams
  high
  rain
}

%%% 431
marksIfhap = {
  \time 5/4
  \tempo 4=92
  s4*5 |
}

sopranoIfhap = \relative c' { %\autoBeamOff
   \key ees \major { \relative c' {
  c4 ees c ees c | 
}}}

sopranoIfhapWords = \lyricmode {
  lit -- tle
  blue -- birds fly
}

mezzoIfhap = \relative c' { %\autoBeamOff 
   \key ees \major { \relative c' {
  c4 ees c ees c |
}}}

mezzoIfhapWords = \lyricmode {
  hap -- py lit -- tle
  blue
}

altoIfhap = \relative c' { %\autoBeamOff
   \key ees \major { \relative c' {
  r4 ees4 c ees c |
}}}

altoIfhapWords = \lyricmode {
  If hap -- py lit
}

tenorIfhap = \relative c' { %\autoBeamOff
  %\clef "treble_8"
   \key ees \major { \relative c' {
  r2. ees4 c |
}}}

tenorIfhapWords = \lyricmode {
  If hap
}

bassIfhap = \relative c { %\autoBeamOff
  %\clef bass
   \key ees \major { \relative c' {
   R4*5
}}}

bassIfhapWords = \lyricmode {
}

%%% 419
marksElan = {
  \tempo 1=116
  \time 4/4
  s1*6 |
  \tempo 2=116
  << { s32
  \mark "accel."
  s2.... |
  s1 |
  } { \unfoldChange #232 #384 #16 } >>
  << {
  \tempo 1=96
  s32
  \mark "rall."
  s2.... |
  } { \unfoldChange #384 #164 #8 } >>
  \tempo 2=82
  s1 |
  \time 3/4
  s2. |
  \tempo 2=96
  \time 8/8
  s1 |
  \tempo 2.=72
  \time 3/4
  s2. |
  \tempo 4=96
  s2.
  \tempo 4=120
  \time 4/4
  s1 |
  \time 2/4
  s2 |
  \time 4/4
  s1 |
  \time 5/8
  s1*5/8 |
}

sopranoElan = \relative c' { %\autoBeamOff
   \key e \major {
  e4 e d fis d d c c |
  bes bes a a g b c d |
  e1 d2 c2 |
}   \key f \major {
  bes4^\< a g c |
  aes' g fis ais |
}   \key a \major {
  b a gis a |
}   \key e \major {
  cis2^\f e |
  dis4 b8 cis dis4 |
  bis,4.^\mp gis'4. ais4 |
}   \key b \major {
  gis2^\> g4 |
  fis2 ~ fis8\! r |
}   \key d \major {
  e4^\p cis8 [ d ] e4 fis |
  d^\< a' |
  fis8.^\> a16 ~ a4 fis4\! a |
  fis^_^\p fis^_ fis8^_ |
}}

sopranoElanWords = \lyricmode {
  Some day I'll wish u -- pon a star
  And wake up where the clouds are far be -- hind me a
  way a -- bove the chim -- ney tops
  that's where you'll find me some -- where
  o -- ver the rain blue -- birds fly
  birds fly o
  why oh why can't I
  If hap -- py lit -- tle
  blue blue blue
}

mezzoElan = \relative c' { %\autoBeamOff 
   \key e \major {
  r4 e2^\pp e4 |
  r2 fis2 ~ |
  fis4 e2 d4 ~ |
  d2 c ~ |
  c4 bes4 ~ bes2 ~ |
  bes4 c4 ~ c2 |
}   \key f \major {
  r8 c4^\< cis8 r4 d ~ |
  d dis ~ dis8 r fis4 |
}   \key a \major {
  gis fis e d |
}   \key e \major {
  cis-.^\f e e2 |
  fis4 b8 a gis4 |
  ais,4.^\mp eis' fisis4 |
}   \key b \major {
  r4 gis,^\> e' |
  dis2 ~ dis8\! r |
}   \key d \major {
  b4^\p g8 [ a ] b4 cis |
  c^\< c |
  b8.^\> b16 ~ b4 bes\! bes |
  a^_^\p a^_ a8^_ |
}}

mezzoElanWords = \lyricmode {
  Some day
  I'll wish u -- pon 
  a star
  way a
  chim -- ney
  that's
  where you'll find me
  some some -- where
  o -- ver the rain
  blue -- birds fly
  birds fly
  o
  why oh why can't I If hap -- py
  lit -- tle
  blue blue blue
}

altoElan = \relative c' { %\autoBeamOff
   \key e \major {
  R1 |
  r2 d^\pp ~ |
  d4 c2 r4 |
  R1 |
  r4 gis'2. |
  fis2 e |
}   \key f \major {
  ees4 r r8 a4 r8 |
  R1 |
}   \key a \major {
  r4 e2^\< b4 ~ |
}   \key e \major {
  b a2^\f a'4 ~ |
  a2 b4 |
  g,4.^\mp dis' d4 |
}   \key b \major {
  cis2.^\> |
  R2.\! |
}   \key d \major {
  R1 |
  r4 fis^\< |
  d8.^\> fis16 ~ fis4^\! r2 |
  r4 d4^_^\p d8^_ |
 }}

altoElanWords = \lyricmode {
  I'll wish
  hind me a -- way
  a
  where
  you'll
  some -- where
  rain blue -- birds fly
  birds
  If hap -- py
  blue blue
}

tenorElan = \relative c' { %\autoBeamOff
  %\clef "treble_8"
   \key e \major {
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
}   \key f \major {
  r2 bes4^\< a |
  g c aes' g |
}   \key a \major {
  gis, a b cis |
}   \key e \major {
  dis2^\f cis |
  b4 e, eis | % do we want repeated C? % changed now
  fis4.^\mp bis ais4 |
}   \key b \major {
  r2 ais4^\> |
  b2 ~ b8\! r |
}   \key d \major {
  g4^\p e8 [ fis ] g4 a |
  a^\< a |
  a8.^\> r16\! r4 r2 |
  R1*5/8 |
}}

tenorElanWords = \lyricmode {
  way a -- bove the chim -- ney
  where you'll find me some -- where
  o -- ver rain
  blue -- birds fly
  fly o
  why oh why can't I If ha
}

bassElan = \relative c { %\autoBeamOff
  %\clef bass
   \key e \major {
  r4 b4^\pp e bes |
  d cis g c |
  b fis b f |
  bes a f e |
  \times 2/3 { gis2 g dis } |
  \times 2/3 { fis f d } |
}   \key b \major { %\key bes \major { %%% CHECK <------ MS MS MS
  f4.^\< e8 ~ e r f4 |
  r8 f8 ~ f4 r e |
}   \key a \major {
  e4. e'8 ~ e2^\f |
}   \key e \major {
  \times 2/3 { r4 b ( ais } \times 2/3 {  gis ) fis2 } |
  fis4 fisis gis |
  R1 |
}   \key b \major {
  r4 cis^\mp fis |
  R2. |
}   \key d \major {
  e,2^\p a |
  d4^\< fis |
  g1^\> |
  r2\! d8^_^\p |
}}

bassElanWords = \lyricmode {
  \repeat unfold 21 dum
  way a a way a some -- where
  some -- where o -- ver rain
  birds fly
  why why
  I If ha
  blue
}


%%% 408
% follow with "where somewhere over the"
marksChimney = {
  \time 1/4
  s4 |
  \time 4/4
  s1*6 |
}

sopranoChimney = \relative c' { %\autoBeamOff
   \key b \major {
  fis4
  e fis e fis |
  e fis e fis |
  gis2. gis4 ~ |
  gis2 r |
  bis,1 |
  bis1 |
}}

sopranoChimneyWords = \lyricmode {
  and wake up where the le -- mon -- drops are
  chim -- ney
  chim -- ney
}

mezzoChimney = \relative c' { %\autoBeamOff 
   \key b \major {
  r4 |
  b1 |
  cis |
  dis ~ |
  dis2 r |
  s1*2 |
}}

mezzoChimneyWords = \lyricmode {
}

altoChimney = \relative c' { %\autoBeamOff
   \key b \major {
  r4 |
  gis1 |
  ais |
  cis ~ |
  cis2 r |
  s1*2 |
}}
	
altoChimneyWords = \lyricmode {
}

tenorChimney = \relative c { %\autoBeamOff
  %\clef "treble_8"
   \key b \major {
  r4 |
  e1 |
  fis |
  gis ~ |
  gis2 r |
  s1*2 |
}}

tenorChimneyWords = \lyricmode {
}

bassChimney = \relative c { %\autoBeamOff
  %\clef bass
   \key b \major {
  \marksChimney
}}

bassChimneyWords = \lyricmode {
}


%%% 408
% follow with "where somewhere over the"
marksSugar = {
  \tempo 4=108
  << { \unfoldChange #108 #72 #14 } {
  \time 4/4
  s2 \mark "rall."
  s2 |
  \time 3/4
  s2. | } >>
  \time 4/4
  \tempo 4=72
  s1 |
  s2 \tempo 4=92 s2 |
  \time 2/4
  s2 |
  \time 4/4
  \tempo 4=120
  s1 |
  \tempo 4=92
  s1 |
  \time 3/4
  << {
  \tempo 4=72
  %\mark "rall."
  s2. |
  \time 4/4
  s1 | } { \unfoldChange #72 #72 #14 } >>
  \time 5/8
  \tempo 4=72
  s1*5/8 |
}

sopranoSugar = \relative c'' { %\autoBeamOff
   \accessoryKey d \major {
  g4^\mp fis8 [ e ] d4 ( fis ) |
  g b, cis |
  a'2\trill d2^\espressivo |
  e,4^. r d'2^\espressivo |
  eis,4^. r |
  fis4^.^\p fis^. fis8^. fis^. fis16^. fis^. fis^. fis^. |
  fis4^. r d'2^\mp^\espressivo |
  g,4 r gis8^\< [ ( cis ~ ] |
  cis [ b ) ] cis [ d ] e [ d ] cis b |
  \times 2/3 { ais4^\f ais8 } d8^\mf d,8 r |
}}

sopranoSugarWords = \lyricmode {
  blue -- birds fly why oh why I
  Some -- where
  Some -- where
  whe -- e -- e -- e -- e -- e -- e -- e -- ere
  Some -- where
  where you'll find me oh Some -- where
  Some -- where %o
}

mezzoSugar = \relative c' { %\autoBeamOff 
   \accessoryKey d \major {
  d4^\mp d8 [ cis ] b4 ( dis ) |
  d4 b bes |
  fis'2\trill gis^\espressivo |
  d4^. r fis2^\espressivo |
  d4^. r |
  d4^.^\p d^. d8^. d^. d16^. d^. d^. d^. |
  d4^. r r2 |
  d4^\mp r4 f8^\< [ a ~ ] |
  a4 a8 [ b ] cis [ b ] ais gis |
  \times 2/3 { fisis4^\f fisis8 } d^\mf d' cis |
}}

mezzoSugarWords = \lyricmode {
  blue -- birds fly
  why oh why
  I Some -- where Some -- where  
  whe -- e -- e -- e -- e -- e -- e -- e -- ere
  where
  where you'll find me oh Some -- where
  Some -- where o
}

altoSugar = \relative c' { %\autoBeamOff
   \accessoryKey d \major {
  b4^\mp b8 [ bes ] a4 ( b ) |
  b g g |
  cis4\trill ( cis16 [ b a g ) ] e'2^\espressivo |
  b4^. r dis2^\espressivo |
  b4^. r |
  R1 |
  R1 |
  b4^. r4 d8^\< [ fis ~ ] |
  fis4. f8 e [ f ] fis f |
  \times 2/3 { e4^\f e8 } d8^\mf d cis |
}}
	
altoSugarWords = \lyricmode {
  blue -- birds fly
  why oh why
  I Some -- where Some -- where  
  where
  where you'll find me oh Some -- where
  Some -- where o
}

tenorSugar = \relative c { %\autoBeamOff
  %\clef "treble_8"
   \accessoryKey d \major {
  fis4^\mp a8 [ g ] g4 ( a ) |
  g e ees |
  d ( d' ) c2^\espressivo |
  g4^. r c2^\espressivo |
  gis4^. r |
  a4^.^\p a^. a8^. a^. a16^. a^. a^. a^. |
  a4^. r r2 |
  e4^\mp r b'8^\< [ ( e ] |
  dis [ d ) ] cis [ b ] ais [ b ] cis d |
  \times 2/3 { cis4^\f cis8 } d8^\mf d, cis' |
}}

tenorSugarWords = \lyricmode {
  blue -- birds fly
  why oh why
  I Some -- where Some -- where  
  whe -- e -- e -- e -- e -- e -- e -- e -- ere
  where
  where you'll find me oh Some -- where
  Some -- where o
}

bassSugar = \relative c { %\autoBeamOff
  %\clef bass
   \accessoryKey d \major {
  b4^\mp a g ( fis )
  e2 a4 |
  d2 dis^\espressivo |
  e4^. r ais,2^\espressivo |
  eis'4^. r |
  d4^.^\p a^. d8^. a^. d^. a^. |
  d4^. r r2 |
  g,4^\mp r \once \override Slur #'direction = #UP e4^\< ( |
  a2 e2 ) |
  ees4^\f d''8^\mf d,, cis'' |
}}

bassSugarWords = \lyricmode {
  blue -- birds fly
  why why
  I Some -- where Some -- where  
  whe -- e -- e -- e -- e -- e -- ere
  where
  where
  Some Some -- where o
}


%%% 381
% follow with "where somewhere over the"
marksWortspiel = {
  \tempo 2=84
  \time 5/4
  s1*5/4 |
  \time 4/4
  s1*2 |
  \tempo 2=72
  \mkf \mark \default
  s1 |
  \mark "rall."
  \unfoldChange #144 #88 #16
  %s1*2 |
  \tempo 4=88
  s1 |
  \tempo 2=120
  s1 |
  \tempo 1=80
  s1 |
  \time 3/4
  \tempo 2=68
  s2.
  \time 2/4
  \tempo 2=72
  s2 |
  \time 4/4
  \tempo 2=80
  s1 |
  \time 2/4
  s2 |
  \time 4/4
  \tempo 2=68
  s1 |
  \tempo 2=84
  s1 |
  \mark "rall."
  \unfoldChange #168 #72 #8
  %s1 |
  \tempo 4=72
  \mkf \mark \default
  s1 |
  \time 3/4
  s2. |
}

sopranoWortspiel = \relative c' { %\autoBeamOff
   \key b \major {
  \times 2/3 { gis4^\subPd e' dis } b8 [ cis ] dis4 e |
  cis4 ais8 [ b ] cis4 dis |
  b r eis2^\< |
}   \key bes \major { \relative c' {
  d4^\mf f d f |
  d f ees f |
  g a2 r4 |
}}   \key b \major {
  b2 gis' |
}   \key d \major {
  r4 fis a fis |
}   \key b \major {
  gis,2 e' |
  dis4 b8 [ cis ] dis4 |
}   \key cis \major {
  gis2^\< |
  eis4 gis eis gis |
  fisis ais |
  \times 2/3 { bis2 bis r } |
  dis4 ( d ) cis bis |
  ais4 ( gis ) fisis ( dis ) |
}   \key fis \major {
  %fis2^\f fis' |
  fis8^\f [ gis16 ais b cis dis eis ] fis2 |
  eis4 cis8 dis eis4 |
}}

sopranoWortspielWords = \lyricmode {
  trou -- bles melt like le -- mon
  blue -- birds fly oh fly some
  o -- ver rain -- bow
  hap -- py blue -- birds fly can't
  there's a le -- mon drops
  some -- where skies are blue
  and the dreams that you
  way up
  land that I
  bow oh
  way up high
  there's a land if hap
}

mezzoWortspiel = \relative c' { %\autoBeamOff 
   \key b \major {
  r2.\! bis4^\p bis |
  b4 ais8 [ gis ] b4 ais8 [ gis ] |
  fis4 r4 r2 |
}   \key bes \major { \relative c' {
  R1 |
  r2 bes4^\mf bes |
  bes a2 r4 |
}}   \key b \major {
  gis2. ais4 |
}   \key d \major {
  R1 |
}   \key b \major {
  R1 |
  b2. |
}   \key cis \major {
  dis2^\< |
  eis4 dis cis eis |
  dis fisis |
  gis ( g ) fis ( ais ) |
  gis2 dis |
  bis cis |
}   \key fis \major {
  %fis8^\f [ gis16 ais b cis dis eis ] fis8 [ eis16 dis cis b ais gis ~ ] |
  fis2 ais4 ( a ) |
  gis4 b gis |
}}

mezzoWortspielWords = \lyricmode {
  le -- mon blue -- birds fly of fly
  blue -- birds fly can't
  there's a skies and the dreams that you way up
  land that
  I bow way up high there's a land hap
}


altoWortspiel = \relative c' { %\autoBeamOff
   \key b \major {
  \times 2/3 { gis4^\subPd g fis } fis4 fis fis |
  e4 fis gis ais |
  b^\< ( cis ) cisis ( dis ) |
}   \key bes \major { \relative c' {
  \times 2/3 { c^\mf ( bes c } \times 2/3 { bes c bes } 
  \times 2/3 { c bes c ) } c d |
  ees f2 r4 |
}}   \key b \major {
  R1 |
}   \key d \major {
  \times 2/3 { r4 d ( e } \times 2/3 { d e d ) } |
}   \key b \major {
  R1 |
  ais4 gis gis |
}   \key cis \major {
  bis2^\< |
  cis2 bis |
  ais |
  \times 4/5 { gis4 ( ais ) bis ( cis ) dis ( } |
  \times 4/5 { eis ) fisis ( gis2. ~ } |
  gis2\! ) ais,4 ( gis ) |
}   \key fis \major {
  ais2^\f cis2 |
  b4 dis8 d cis4
  %ais^\f ( eis ) dis ( disis ) |
  %eis4 gis8 fis eis4 |
}}
	
altoWortspielWords = \lyricmode {
  trou -- bles melt like le -- mon
  blue birds fly oh
  fly some
  ah blue -- birds fly can't
  ah
  skies are blue
  and dreams you
  way
  land that I bow up
  high there's a land if hap
}

tenorWortspiel = \relative c { %\autoBeamOff
  %\clef "treble_8"
   \key b \major {
  \times 2/3 { r4\! eis fis } dis gis^\p gisis |
  ais4 r r2 |
  ais4 r r2 |
}   \key bes \major { \relative c' {
  R1 |
  R1 |
  r4 ees2^\mf r4 |
}}   \key b \major {
  e2. r4 |
}   \key d \major {
  R1 |
}   \key b \major {
  gis2. g4 |
  fis4 r4 r |
}   \key cis \major {
  gis2 |
  R1 |
  R2 |
  \times 4/5 { r2 gis4^\< ( ais ) bis ~ } |
  bis1\! ~ |
  bis4 dis2 b4 |
}   \key fis \major {
  %fis,4^\f \times 2/3 { fis8 fis fis } ais4 ( cis ) |
  cis^\f ( eis ) dis ( disis ) |
  eis gis8 fis eis4 |
}}

tenorWortspielWords = \lyricmode {
  bles melt like le -- mon blue
  fly
  can't
  there's
  some -- where skies
  and
  land that
  oh up
  high there's
  a land if hap
}

bassWortspiel = \relative c { %\autoBeamOff
  %\clef bass
   \key b \major {
  R1*5/4\! |
  r2 fis4^\mf fis, |
  b4 r r2 |
}   \key bes \major {
  R1 |
  R1 |
  R1 |
}   \key b \major {
  R1 |
}   \key d \major {
  R1 |
}   \key b \major {
  cis2. ais4 |
  cis4 dis2 |
}   \key cis \major {
  R2 |
  R1 |
  R2 |
  dis4^\< ( cis ) bis ( ais ) |
  gis2. dis'4 |
  gis2.\! r4 |
}   \key fis \major {
  fis,2^\f fisis2 |
  gis4 gisis ais |
}}

bassWortspielWords = \lyricmode {
  fly oh fly
  some -- where skies are
  land that I oh way
  high there's a land hap
}

%%% 176
marksChipmunk = {
  \time 2/4
  s2 |
  \time 3/4
  s2.
  \time 2/4
  s2 |
  \time 4/4
  s1*6 |
}

sopranoChipmunk = \relative c'' { %\autoBeamOff
   \key aes \major { \relative c'' {
  ees2 |
  c4 ees c-. |
  b2 |
  gis4 b gis b |
  a b gis ais |
  fis gis e cis' |
  b4 gis8 [ a ] b4 cis |
  b,2 gis
  fis1 |
}}}

sopranoChipmunkWords = \lyricmode {
  if hap -- py lit
  if hap -- py lit -- tle blue -- birds fly
  be -- yond the rain -- bow why oh why can't
  way up
}

mezzoChipmunk = \relative c' { %\autoBeamOff 
   \key aes \major {
  \marksChipmunk
}}

mezzoChipmunkWords = \lyricmode {
}

altoChipmunk = \relative c' { %\autoBeamOff
   \key aes \major {
  \marksChipmunk
}}
	
altoChipmunkWords = \lyricmode {
}

tenorChipmunk = \relative c { %\autoBeamOff
  %\clef "treble_8"
   \key aes \major {
  \marksChipmunk
}}

tenorChipmunkWords = \lyricmode {
}

bassChipmunk = \relative c { %\autoBeamOff
  %\clef bass
   \key aes \major {
  \marksChipmunk
}}

bassChipmunkWords = \lyricmode {
}

%%% 176
marksSchloss = {
  \time 1/4
  s4
  \time 4/4
  s1 |
  \time 5/4
  s1*5/4 |
  \time 4/4
  s1*2 |
  \time 2/4
  s2 |
  s2 |
  \time 4/4
  s1*3 |
}

sopranoSchloss = \relative c'' { %\autoBeamOff
   \key b \major {
  b4
  b,2 gis' |
  a1 e4 |
  dis4 bis8 cis dis4 eis |
  cis4 r b'2 |
  gis16 b gis b gis b gis b |
  dis,4 bis8 [ cis ] |
  d4 b8 [ c ] d4 e |
  r2 dis' ~ |
  dis4 r2. |
}}

sopranoSchlossWords = \lyricmode {
  bow way up Schloß
  fly o -- ver the rain -- bow
  why if
  hap -- py hap -- py hap -- py hap -- py
  why oh why oh why can't I
}

mezzoSchloss = \relative c' { %\autoBeamOff 
   \key b \major {
  \marksSchloss
}}

mezzoSchlossWords = \lyricmode {
}

altoSchloss = \relative c' { %\autoBeamOff
   \key b \major {
  \marksSchloss
}}
	
altoSchlossWords = \lyricmode {
}

tenorSchloss = \relative c { %\autoBeamOff
  %\clef "treble_8"
   \key b \major {
  \marksSchloss
}}

tenorSchlossWords = \lyricmode {
}

bassSchloss = \relative c { %\autoBeamOff
  %\clef bass
   \key b \major {
  \marksSchloss
}}

bassSchlossWords = \lyricmode {
}

%%% 253
marksWinding = {
  \time 2/4
  s2
  \time 5/4
  s1*5/4 |
  \time 4/4
  s1 |
  \tempo 4=132
  \time 13/8
  s1*13/8 |
  \tempo 2=68
  \time 6/4
  s1.
  \time 4/4
  s1 |
}

sopranoWinding = \relative c' { %\autoBeamOff
   \key b \major {
  dis2 |
  \times 2/3 { fis4 b gis } e8. dis16 ~ dis cis8. ~ cis8 r |
  \times 2/3 { r4 ais bis } g' g |
  e2^\p dis2. fis4. |
  dis4 e \times 4/5 { d^\< f e fis gis ~ } |
  gis2^\> gis\! |
}}

sopranoWindingWords = \lyricmode {
  some dreams that you dare to dream
  real -- ly do come
  some -- day I'll wish you
  blue -- birds fly if hap -- py
}

mezzoWinding = \relative c' { %\autoBeamOff 
   \key b \major {
  R2 |
  \times 2/3 { r2 ais4 } \times 2/3 { bis gis' fis } e ~ |
  e8 dis8 ~ dis4 ~ dis8 cis ~ cis4 ~ |
  cis r b2 r4 r4. |
  b4 cis^\p \times 4/5 { b^\< cis c d e ~ } |
  e2^\> e\! |
}}

mezzoWindingWords = \lyricmode {
  some dreams that you dare to dream
  day
  wish you blue birds fly if hap -- py
}

altoWinding = \relative c' { %\autoBeamOff
   \key b \major {
  R2 |
  r1 b4 |
  r2 ais2^\p ~ |
  ais1 r4 r4. |
  b4 ais \times 4/5 { g^\< gis a r dis ~ } |
  dis2^\> cis\! |
}}
	
altoWindingWords = \lyricmode {
  dream
  some
  wish you blue birds fly hap -- py
}

tenorWinding = \relative c { %\autoBeamOff
  %\clef "treble_8"
   \key b \major {
  fisis8 r fis4 |
  gis2. a4. gis8 ~ |
  gis r8 r4 r2 |
  r2. fis2^\p ~ fis4. ~ |
  fis4 r \times 4/5 { r4 b^\< f gis r } |
  gis\! r r2 |
}}

tenorWindingWords = \lyricmode {
  some dreams
  to dream
  some birds fly if
  ha
}

bassWinding = \relative c { %\autoBeamOff
  %\clef bass
   \key b \major {
  \times 2/3 { r4 dis ( d ) } |
  cis4 dis4 e4 fis4 gis ~ |
  gis g fis4. fis,8 ~ |
  fis2 cis'2^\p ais gis8 ~ |
  gis4 r r2 r2 |
  R1 |
}}

bassWindingWords = \lyricmode {
  some
  dreams you dare to dream
  ly do
  some day I'll wish
}

%%% 1036
marksWow = {
  \time 7/8
  s1*7/8 |
  \time 2/4
  s2 |
  \time 4/4
  s1*2 |
}

sopranoWow = \relative c''' { %\autoBeamOff
   \key b \major {
  ais4 fis8 gis ais4 b8-. |
  b,,4 gis8 [ a ] |
  dis4 bis8 [ cis ] dis4 eis |
  ais,1 |
}}

sopranoWowWords = \lyricmode {
  o -- ver the rain -- bow
  why oh
  why oh why can't
  if
}

mezzoWow = \relative c' { %\autoBeamOff 
   \key b \major {
  \marksWow
}}

mezzoWowWords = \lyricmode {
}

altoWow = \relative c' { %\autoBeamOff
   \key b \major {
  \marksWow
}}
	
altoWowWords = \lyricmode {
}

tenorWow = \relative c { %\autoBeamOff
  %\clef "treble_8"
   \key b \major {
  \marksWow
}}

tenorWowWords = \lyricmode {
}

bassWow = \relative c { %\autoBeamOff
  %\clef bass
   \key b \major {
  \marksWow
}}

bassWowWords = \lyricmode {
}

%%% 1036
marksRealcome = {
  \tempo 2=84
  \time 5/4
  s1*5/4
  \tempo 4=60
  \time 5/8
  s1*5/8 |
  \tempo 4=80
  \time 7/8
  s1*7/8 |
}

sopranoRealcome = \relative c' { %\autoBeamOff
   \accessoryKey ees \major { \relative c' {
  f4^\mp^\< ees f g aes^\f
}}   \key a \major {
  d4^\mp^\< e fis8 |
}   \key cis \major {
  dis4^\> eis4 cis4.^\mp |
  %eis cisis8 dis eis4 fisis |
  %dis4 r4 ais'2 |
  %b,4 gis'2 |  
}}

sopranoRealcomeWords = \lyricmode {
  bey -- ond the rain -- bow
  why oh why
  rain real come
}

mezzoRealcome = \relative c' { %\autoBeamOff 
   \accessoryKey ees \major { \relative c' {
  r2 r4 f^\< ees^\f |
}}   \key a \major {
  cis8^\mp^\< b4 b4 |
}   \key cis \major {
  cis4^\> cis bis4.^\mp |
}}

mezzoRealcomeWords = \lyricmode {
  rain -- bow
  why oh why
  rain real come
}

altoRealcome = \relative c' { %\autoBeamOff
   \accessoryKey ees \major { \relative c' {
  bes2^\mp^\< c4 b c^\f |
}}   \key a \major {
  a^\mp^\< gis a8 |
}   \key cis \major {
  ais4^\> gis gis4.^\mp |
}}
	
altoRealcomeWords = \lyricmode {
  be the rain -- bow
  why oh why
  rain real come
}

tenorRealcome = \relative c' { %\autoBeamOff
   \accessoryKey ees \major { \relative c' {
  bes2^\mp^\< aes4 g f^\f |
}}   \key a \major {
  fis,4^\mp^\< e e8 |
}   \key cis \major {
  fis4^\> fis eis4.^\mp |
}}

tenorRealcomeWords = \lyricmode {
  be the rain -- bow
  why oh why
  rain real come
}

bassRealcome = \relative c { %\autoBeamOff
\accessoryKey ees \major { \relative c {
  g4^\mp^\< ~ g8 f ~ f4 d'4 f^\f |
}}   \key a \major {
  d4.^\mp^\< e,4 |
}   \key cis \major {
  gis4^\> gis cis4.^\mp |
}}

bassRealcomeWords = \lyricmode {
  be -- yond rain -- bow
  why oh
  rain real come
}

%%% not in orig...
marksLarge = {
  \tempo 4=120
  \time 5/8
  s1*5/8 |
  \time 1/4
  s4 |
  \tempo 4=104
  \time 3/4
  s2. |
}

sopranoLarge = \relative c' { %\autoBeamOff
   \key bes \major {
  R1*5/8 |
}   \key b \major {
  R4 |
}   \key a \major {
  R2. |
}}

sopranoLargeWords = \lyricmode {
}

mezzoLarge = \relative c' { %\autoBeamOff 
   \key bes \major {
  R1*5/8 |
}   \key b \major {
  R4 |
}   \key a \major {
  R2. |
}}

mezzoLargeWords = \lyricmode {
}

altoLarge = \relative c' { %\autoBeamOff
   \key bes \major {
  R1*5/8 |
}   \key b \major {
  R4 |
}   \key a \major {
  R2. |
}}
	
altoLargeWords = \lyricmode {
}

tenorLarge = \relative c' { %\autoBeamOff
  %\clef "treble_8"
   \key bes \major { \relative c' {
  c4^\mf a8 [ bes ] c8 |
}}   \key b \major {
  cis8.. ais32 |
}   \key a \major {
  b4^\> gis8 [ a\! ] r4 |
}}

tenorLargeWords = \lyricmode {
  Why oh why
  Why oh
  Why oh
}

bassLarge = \relative c, { %\autoBeamOff
  %\clef bass
   \key bes \major { \relative c, {
  ees2^\mf f8 |
}}   \key b \major {
  cis'4 |
}   \key a \major {
  d,^\> e4\! r |
}}

bassLargeWords = \lyricmode {
  Why oh Why Why oh
}


%%% not in orig...
marksDenouement = {
  \time 4/4
  \tempo 4=80
  s1*7
  \mark "rit."
  \unfoldChange #80 #60 #32
  \tempo 4=60
  s1*2
  \mark "(seagull and ocean obligato)"
  s1 \bar "|."
}

sopranoDenouement = \relative c'' { %\autoBeamOff
   \key b \major {
  ais4 fis8 gis b [ a ] gis [ fis ] |
  e2 g4 ( a ) |
  fis1 |
  gis4 ( b ) g ( a ) |
  fis4 dis8 e a4 gis |
  e4 cis8 [ d ] cis4 g' |
  fis2 a |
  gis4^\> g fis f |
  e2\!^\< fis |
  gis ais^\> |
  bis1^\p |
  gis,2^\pp gis2 |
  gis1^\< ~ |
  << { gis1 } { s2..^\> s8\! } >> |  
}}

sopranoDenouementWords = \lyricmode {
  o -- ver the rain -- bow
  blue -- birds fly
  birds fly %{ o py %} o -- ver the rain -- bow
  why oh why can't I if hap -- py lit -- tle
  why oh why can't I
  why can't I
}

mezzoDenouement = \relative c' { %\autoBeamOff 
   \key b \major {
  fis4 dis8 e dis4 dis |
  e8 [ dis cis b ] ais4 ( cis ) |
  dis8 [ cis b ais ] a4 ( dis ) |
  e2. cis4 |
  dis4 b8 cis dis4 e |
  cis4. b8 ais2 ~ |
  ais4 cis2 dis4 |
  e1^\> |
  cis2\!^\< dis |
  e dis^\> |
  dis1^\p |
  bis2^\pp bis2 |
  bis1^\< ~ |
  << { bis1 } { s2..^\> s8\! } >> |
}}

mezzoDenouementWords = \lyricmode {
  o -- ver the rain -- bow
  blue -- birds fly fly
  birds fly %{ o py %} o -- ver the rain -- bow
  why oh why I if hap
  why oh why can't I
  why can't I
}

altoDenouement = \relative c' { %\autoBeamOff
   \key b \major {
  dis4. cis8 b2 ~ |
  b1 ~ |
  b1 ~ |
  b2 cis |
  b2 r |
  ais4. gis8 fis4 ais |
  gis ( fis ) b ( bis ) |
  cis1^\> |
  b2\!^\< ais |
  b cis^\> |
  bis1^\p |
  R1 |
  \clef treble
  r4 dis' dis' cisis ~ |
  cisis2 r2 |
}}
	
altoDenouementWords = \lyricmode {
  o the rain
  fly o
  why oh why can't I if hap
  why oh why can't I
  some -- where o
}

tenorDenouement = \relative c { %\autoBeamOff
  %\clef "treble_8"
   \key b \major {
  fis8 [ gis ] ais4 a4. b8 |
  gis4 ( b ) cis ( e ) |
  dis2 cis2 |
  cis4. ( b8 ) ais2 |
  a4 gis fis b |
  gis4 fis e2 |
  dis2 fis |
  gis1^\> |
  gis2\!^\< fis |
  e fisis^\> |
  gis1^\p |
  dis2^\pp dis2 |
  dis1^\< ~ |
  << { dis1 } { s2..^\> s8\! } >> |  
}}

tenorDenouementWords = \lyricmode {
  o -- ver rain the
  blue -- birds
  blue -- birds
  birds fly
  %{ o py %} o -- ver rain -- bow
  why oh why
  I if hap
  why oh why can't I
  why can't I
}

bassDenouement = \relative c { %\autoBeamOff
  %\clef bass
   \key b \major {
  e2 dis4 fis |
  gis ( e ) dis ( cis ) |
  g' ( fis ) b, ( a ) |
  gis2 r4 e' |
  dis4. cis8 bis2 |
  cis2 fis, |
  b1 |
  e^\> |
  cis1\!^\< |
  fis,2^\> r2\! |
  R1 |
  gis2^\pp gis2 |
  gis1^\< ~ |
  << { gis1 } { s2..^\> s8\! } >> |  
}}

bassDenouementWords = \lyricmode {
  o rain -- bow
  blue birds
  blue birds
  birds fly o the rain
  why oh why hap
  why why
  why can't I
}

%%% not rec

marksFinale = \relative c'' {
  \tempo 2=76
  \time 2/4
  s2 |
  \time 3/4
  << { \unfoldChange #152 #192 #46 }
  { s2. |
  \time 6/4
  s1. |
  \time 4/4
  s1 |
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  \time 3/4
  s2. | } >>
  \time 4/4
  \tempo 1=76
  s1 |
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  \time 3/4
  \tempo 2=76
  s2. |
  \time 5/4
  \tempo 2=96
  s1*5/4 |
  \tempo 2=76
  \time 4/4
  s1 |
  \tempo 2=96
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  \time 3/4
  s2. |
  s2. |
  s2. |
  \tempo 2=112
  s2. |
  \tempo 2=96
  \time 2/4
  s2 |
}

sopranoFinale = \relative c'' {
  \key e \major {
    gis4 b |
  }
  \key d \major {
    a^\mf fis e'^\f |
  }
  \key b \major {
    dis fis dis fis dis fis
  }
  \key d \major {
    d2^\subPd^\< e |
    fis2 gis4^\ff |
  }
  \key c \major {
    b,2^\mf b4 e^\f |
  }
  \key b \major {
    dis4 fis dis
  }
  \key c \major {
    e,4^\p^\< g e g |
    e g e^\f |
    e4^\p^\< g e g^\f |
  }
  \key d \major {
    d'2 e4
  }
  \key ais \minor {
    ais,4^> ais^> ais^> ais^> ais^> |
  }
  \key d \major {
    d ( cis ) e dis | % why if hap (4, 3)
  }
  \key ees \major {
    ees,2^\mf c'4 |
    bes2 |
  }
  \key b \major {
    e,4 e'^\f dis |
  }
  \key d \major {
    d2 e4 |
  }
  \key e \major {
    cis8.^\> ( b cis b )
    gis2^\mf^\< b4 |
  }
  \key fis \major {
    ais^\f cis |
  }
}

sopranoFinaleWords = \lyricmode {
  If hap -- py
  If hap If
  hap -- py lit -- tle blue -- birds
  Why oh why can't
  where you'll
  If hap -- py lit
  hap -- py lit -- tle blue -- birds fly
  hap -- py lit -- tle
  Why oh
  py py py py py
  Why if hap
  Way up high
  Way If hap
  Why oh If hap -- py  
  hap -- py
}

mezzoFinale = \relative c' {
  \key e \major {
    e4 dis |
  }
  \key d \major {
    fis^\mf d cis'^\f |
  }
  \key b \major {
    b ais a gis f fis |
  }
  \key d \major {
    cis'2^\subPd^\< b |
    d cis4^\ff |
  } 
  \key c \major {
    e,2^\mf e4 g^\f |
  }
  \key b \major {
    fis b ais |
  }
  \key c \major {
    c,4^\p^\< c c c |
    c c c^\f |
    c^\p^\< c c c^\f |
  }
  \key d \major {
    d4 ( cis ) cis |
  }
  \key ais \minor {
    ais'4^> ais^> ais^> ais^> ais^> |
  }
  \key d \major {
    b2 b4 b |
  }
  \key ees \major {
    c,2^\mf aes'4 |
    g2 |
  }
  \key b \major {
    cis,4 c'^\f b |
  }
  \key d \major {
    cis2 b4 |
  }
  \key e \major {
    fis4.^\> ( dis ) |
    e4^\mf^\< ( dis ) cis | 
  }
  \key fis \major {
    e^\f dis
  }
}

mezzoFinaleWords = \lyricmode {
  hap -- py
  If hap If
  hap -- py lit -- tle blue -- birds
  Why oh why can't
  where you'll
  If hap -- py lit
  hap -- py lit -- tle blue -- birds fly
  hap -- py lit -- tle
  Why oh
  py py py py py
  Why if hap
  Way up high
  Way If hap
  Why oh If hap -- py  
  hap -- py
}

altoFinale = \relative c' { %\autoBeamOff
  \key e \major {
    R2 |
  }
  \key d \major {
    d8^\mf [ e ] fis [ d ] ais'4^\f |
  }
  \key b \major {
    dis b dis b cis dis |
  }
  \key d \major {
    fis,2^\subPd^\< gis |
    a2 a4\! |
  }
  \key c \major {
    g2^\mf g4 e^\f |
  }
  \key b \major {
    gis fis2 |
  }
  \key c \major {
    R1 |
    R2. |
    e4^\p^\< ees d cis^\f |
  }
  \key d \major {
    a4 ( b ) cis |
  }
  \key ais \minor {
    ais4^> ais^> ais^> ais^> ais^> |
  }
  \key d \major {
    a2 fis'4 fis |
  }
  \key ees \major {
    des4^\mf c c |
    \times 2/3 { c ( d ) c } |
  }
  \key b \major {
    gis4 fis^\f fis |
  }
  \key d \major {
    a a'2 |
  }
  \key e \major {
    fis2.^\> |
    e2.^\mf^\< |
  }
  \key fis \major {
    cis4^\f cis |
  }
}

altoFinaleWords = \lyricmode {
  If hap If
  hap -- py lit -- tle blue -- birds
  Why oh why can't where you'll If
  hap -- py
  hap -- py lit -- tle
  Why oh
  py py py py py
  Why if hap
  Way way up
  high if 
  Way if hap Why oh If hap
  hap -- py
}

tenorFinale = \relative c { %\autoBeamOff
  \key e \major {
    e4 gis |
  }
  \key d \major {
    b^\mf b eis^\f |
  }
  \key b \major {
    fis f e dis d cis |
  }
  \key d \major {
    e2^\subPd^\< d |
    d cis4^\ff |
  }
  \key c \major {
    c2^\mf c4 c^\f |
  }
  \key b \major {
    b dis fis |
  }
  \key c \major {
    c^\p^\< b bes a |
    aes a fis^\f |
    c'^\p^\< b bes a^\f |
  }
  \key d \major {
    fis2 e4 |
  }
  \key ais \minor {
    ais4^> ais^> ais^> ais^> ais^> |
  }
  \key d \major {
    fis'2 b,4 b |
  }
  \key ees \major {
    aes2^\mf fis4 |
    g4 ees |
  }
  \key b \major {
    gis4 cis^\f dis |
  }
  \key d \major {
    fis2. |
  }
  \key e \major {
    dis2.^\> |
    e2^\mf^\< e4 |
  }
  \key fis \major {
    ais,4^\f a |
  }
}

tenorFinaleWords = \lyricmode {
  hap -- py
  If hap If
  hap -- py lit -- tle blue -- birds
  Why oh
  why can't where you'll If hap -- py lit
  hap -- py lit -- tle blue -- birds fly
  hap -- py lit -- tle
  Why oh
  py py py py py
  Why if hap
  Way up Way up
  Way If hap
  Why
  If hap -- py
  hap -- py
}

bassFinale = \relative c {
  \key e \major {
    R2 |
  }
  \key d \major {
    g4^\mf g g^\f |
  }
  \key b \major {
    fis1. |
  }
  \key d \major {
    d'4^\subPd^\< a2 d4 ~ |
    d g,2^\ff |
  }
  \key c \major {
    d'4^\mf ( cis ) c e,^\f |
  }
  \key b \major {
    fis2. |
  }
  \key c \major {
    R1 |
    R2. |
    R1 |
  }
  \key d \major {
    b'4 ( a ) g | % why oh
  }
  \key ais \minor {
    ais,^> ais^> ais^> ais^> ais^> |
  }
  \key d \major {
    dis2 g,4 fis |
  }
  \key ees \major {
    aes2^\mf a4 |
    bes4 c |
  }
  \key b \major {
    e4 fis,^\f fis |
  }
  \key d \major {
    e' ( d ) d | % why oh
  }
  \key e \major {
    a2^\> b4 ~ |
    b^\mf^\< fis' e |
  }
  \key fis \major {
    g^\f fis |
  }
}

bassFinaleWords = \lyricmode {
  If hap If
  hap
  why why oh why
  where you'll if
  hap
  why oh
  py py py py py
  Why if hap
  Way up
  Way up
  Way If hap
  Why oh
  If hap -- py lit
  hap -- py
}

giantKludgyRewriteRightHand = {
  \key b \major
{
  R2 |
  <e' gis' b'>2 <b' e'' gis''>4 |
  fis'4. dis''4 |
}
  \key ees \major
{
  <<
     {\voiceOne
       g'4 ees'8 f' g'4 aes'8 |
       f'4
     } \\
     {\voiceTwo
       <bes des' ees'>4 <aes b ees'> <g d' ees'> <c' ees'>8 |
       r8 d'
     }
   >>
   <bes d'> |
   bes bes' g'  |
   r4 f''8 ~ f''4 f'4 |
}
  \key c \major
{
   <c' e'>4 <ces' ees' g'> <bes d' e'> |
   <<
     {
       f'2 <e' g'> |
     } \\
     {
       f'4 e' d' c' |
     }
   >>
   <b f' a'>8 r dis'4 ~ dis'4. |
}
  \key b \major
{
  b2 gis'4 |
  << {\voiceOne fis'2 } \\ {\voiceTwo fis4 dis' } >> |
  << { \voiceOne <gis cis'>4. <d' e'> } \\ {\voiceTwo b2. } >> |
  << {\voiceOne \times 3/5 { dis'2 b cis' dis' e' } } \\ {\voiceTwo cis'2 cis' c' } \\ {\voiceFour a1. } >> |
  <gis b cis'>8 r4 r |
  <e' ais'>2 |
  <dis' cis''>2. |
}
  \key cis \major
{
  <disis' gis'>4 eis'8. <disis' gis'> |
}
  \key ees \major
{
  r8 g'4 e'8 \times 2/3 { <f' a'>4 <e' g'> <d' f'> } |
  \times 2/3 { <bes d'> <c' ees'> <d' f'> ~ } q8 <ees' g'>4 <d' ees'>8
}
  \key c \major
{
  a'4 |
  fis'8 a' gis' <fis' a'> |
  << {\voiceOne gis'4 ~ gis'16 gis' gis' gis' r } \\ {\voiceTwo e'4. ~ e'8 dis' } >> |
  e'4 f' fis' g' |
  << {\voiceOne gis'8 [ g' ] } \\ {\voiceTwo <d' e'>4  } >> <cis' dis' a'>4 << {\voiceOne <d' gis'>4 <gis' ais'> } \\ {\voiceTwo e'2 } >> |
}
  \key fis \major {
  << {\voiceOne g'8 b'4. b'4 <fis' gis'>4 e'8 <dis' fis'> <e' gis'>8 |  } \\ {\voiceTwo <c' e' b'>4 <b fis' g'> <cis' e' a'> <b dis'>4 r8 b4 } >> |
}
  \key cis \major {
   cis'4 <cis' e' ais'> |
}
  \key b \major
{
  r8 <dis' fis' cis''>8 ~ q4 ~ q4 r8 |
}
  \key bes \major
{
  bes2 <c' ees' g'>4. |
}
  \key e \major
{
  << {\voiceOne <e' fis'>4 dis'8 <cis' e'> <dis' fis'>4 | } \\ {\voiceTwo cis'4 a b | } >>
}
  \key ees \major
{
  << {\voiceOne <d' f'>4 <bes d'>8 <c' ees'> <d' f'>4 | } \\ {\voiceTwo c'4 bes a | } >>
  r8 bes4 |
}
  \key b \major 
{
  dis'2 |
  %<< {\voiceOne \times 2/3 { fis'4 b' gis' } e'8. dis'16 ~ dis' cis'8. ~ cis'8 r }
  %<< {\voiceOne \times 2/3 { fis'4 b' gis' } \times 2/3 { e' dis' cis' ! } cis'4 }
  %\\ {\voiceTwo \times 2/3 { r2 a4 } \times 2/3 { bis4 gis' fis' } e'4  } >>
  \times 2/3 { fis'4 b' <a gis'> } \times 2/3 { <bis e'> <dis' gis'> <cis' fis'> } <b cis' e'> ~ |
  \stemDown e'8 \stemNeutral
  << {\voiceOne r8 ais8 [ bis8 ] g'4 g'4 e'2 dis'2. fis'4. } \\ {\voiceTwo s4. ais2 ~ ais1 } >>
  <b dis'>4 <ais cis' e'>4 \times 4/5 { <g b d'> <b gis cis' f'> <f a c' e'> <gis d' fis'> <dis' e' gis'> ~ } |
  <dis' e' gis'>2 <cis' e' gis'> |
}
  \key bes \major
{
  R1*5/8
}
  \key b \major
{
  R4
}
  \key a \major
{
  R2.
}
  \key b \major
{
  r2 b'2 |
  ais'4 ~ \times 2/3 { ais'8 fis' <e' gis'> } <e' ais'>4 <dis' a' b'> |
  r2 <e' gis'> |
  r4 <bis dis' fis'>2 r4 |
  r2 << { e'4 fis' } \\ { cis'2 } >>
  <b dis'>4 b8 cis' dis'4 e' |
  cis' ais8 b cis'4 dis' |
  << { \voiceOne b4. cis'8 } \\ {\voiceTwo a2 } >> <<{\voiceOne \times 2/3 { <b dis'>8 <cis' e'> <dis' fis'> } <e' gis'>16 [ <fis' a'> <gis' b'> <a' cis''> ] } \\ {\voiceTwo r8 b4 dis'8 } >> |
}
  << { <b' dis''>2. \times 2/3 { gis'8 <gis' b'> <b' dis''> } <dis'' fis''>2. \times 2/3 { b'8 <b' dis''> <dis'' fis''> } | ais''2 a'' | \key ees \major { aes''8 } } \\ { gis'1 b' <dis'' fis''> ~ | q8 } >>
  bes'8 c'' d'' ees'' f'' g'' aes'' bes'' c''' |
  << {\voiceOne d'''4 bes''4 bes''4 g''4 r8 f'''4. ~ f'''8 d''' ~ d'''4 r } \\ {\voiceTwo g''4 f'' ~ f''4. r8 <g'' d'''>4 <d'' c'''> ~ | <d'' bes''> <c'' aes''> ~ <c'' g''> | } >>
  \key b \major { R2 | }
  \key ees \major { << { aes'4 g' ees'8 f' g'4 aes' } \\ { f' ees' ees' ees' r } >> | }
  \key b \major { R2 } |
  \key d \major { r2 r32 fis'8.. } |
  \key e \major
{
  e'4 e' d' fis' |
  d' d' c 'c' |
  bes bes a a |
  g b c' d' |
  << { r4 g'2. } \\ { e'1 }>> |
  <d' fis'>2 <c' e'> |
}
  \key f \major
{
  <bes ees'>4 <a c'> <g b cis'> <a c' d' a'> ~ |
  <g d' aes'> <c' ees' g'> ~ <ees' fis' gis'> <fis' g' ais'>
}
\key a \major
{
  << {\voiceOne <gis' b'>4 <fis' a'> <e' gis'> <d' a'> | \key e \major { <cis' a'>2 } <e' e''> | <fis' dis''>4 b'8 <a' cis''> <gis' b' dis''>4 } \\ {\voiceTwo r4 e'2 b4 ~ b4 a2 a'4 ~ a'2 } >> |
}
  <g ais bis>4. <dis' eis' gis'> <d' fisis' ais'>4 |
  \key b \major
{
  << { gis'2 g'4 fis'2 ~ fis'8 r8 } \\ { r4 gis e' dis'2 ~ dis'8 r } >> 
}
  \key d \major
{
  <b e'>4 <g cis'>8 <a d'> <b e'>4 <cis' fis'> |
  <c' d'> <c' fis' a'> |
  <b d' fis'>8. <b fis' a'>16 ~ q4 <bes fis'>4 <bes a'>4 |
  <a fis'>4 <a d' fis> q8 |
  <b d' g'>4 <b d' fis'>8 <bes cis' e'> <a b d'>4 <b dis' fis'> |
  <b d' g'> <g b> <g bes cis'> |
  << { <fis' a'>2 <gis' d''> } \\ { cis'4 ~ cis'16 b a g e'2 } >> |
  <b d' e'>4 r <dis' fis' d''>2 |
  <b d' eis'>4 r |
  <a d' fis'>4 q4 q8 q8 q16 q16 q16 q16 |
  q4 r d''2 |
  <b d' g'>4 r
  << { gis'8 cis''8 ~ | cis''8 b' cis'' d'' e'' d'' cis'' b'  }
      \\ { <d' f'>8 <fis' a'> ~ <fis' a'>4. <f' b'>8 <e' cis''> <f' b'> <fis' ais'> <f' gis'> |  } >>
  \times 2/3 { <e' fisis' ais'>4 q8 } d''8 <d' d''> cis'' |
  << { d'2 b'4 cis'' } \\ { \times 2/3 { d' cis' c' } <b fis'>2 } >>
}
  \key e \major
{
  <d' fis' b'>4 <cis' f' bes'> <c' e' a> |
  <b dis'>2 << { a'4 b' } \\ { <dis' fis'>2 } >> |
  <e' gis'>4 e'8 <dis' fis'> <cis' gis'>4 <cis' g' a'> |
}
  \key d \major
{
  \repeat unfold 4 { <d' fis'>4 <fis' a'> } |
  \times 2/3 { b1 b'2 } \times 2/3 { <fis' a'>2 q q } \times 2/3 { q2 b1 } |
}
  \key ees \major
{
  <aes' c''>4 f' |
  f'4 ees' <c' f'> <b f' g'> <c' ees' aes'> |
}
  \key a \major
{
  << { <a d'>4 <gis e'> <a fis'>8 } \\ { cis'8 b4 b } >> |
}
  \key cis \major
{
  <ais cis' dis'>4 <gis cis' eis'>4 <gis bis cis'>4. |
}
  \key e \major
{
  a'2 |
  <e' gis'>8. <d' b'>16 ~ q4 |
  <cis' ais'>4 <ais fis'> <dis' a'>8 |
  << { b' gis'4. } \\ { d'4 d' cis'8 } >> |
  <e' g'>2 <fis' a'> |
  <d' fis'>4 <c' a'> |
  <dis' gis'>4 <d' e'> <cis' fis'> <d' gis'> |
  <cis' e' a'>4 <cis' e' fis'> <a dis'> <a cis' e'> <cis' e' fis'> <cis' e' gis'> |
  <b e'> <a e'> <cis' e' fis'> <cis' e' gis'> |
  <b e'> <b dis' b'> <b e' gis'> <b fis' b'> <b e' gis'> <b fis' b'> |
  <b gis' cis''> <b fis' b'> < b e' gis'> <b fis' b'> <cis' fis' ais'> <e' ais' cis''> |
  <a' b'>4 r8 <fis' b'>8 ~ q4 <e' a'> |
  cis'4 <e' a' d''> ~ q8 <g' c''>4. |
  \times 2/3 { <fis' b'>4 <e' a'> r } \times 2/3 { r <fis' cis''> <g' e''> } |
  << { \times 2/3 { cis'' e'' cis'' } r8 d''4 c''8 } \\ { \times 2/3 { a'4 b'4 a'4 } \times 2/3 { g' <fis' a'> g' } } >> |
  << { r4 cis'' r8 f''8 ~ f''4 \times 2/3 { e''4 g'' e'' } } \\ { r8 fis'8 ~ fis'4 e'8 r4 a'8 ~ \times 2/3 { <g' a'>4 <fis' g'> fis' } } >>
  e'8 <fis' d''>4 <e' c''>8 |
  << { \times 2/3 { gis'4 b' r } } \\ { <d' b'>4 <c' a'>8 r } >>
  << { r8 gis''4 fis''8 ~ fis''4 e''4 d'' | } \\ { \times 2/3 { e'4 fis'2 ~ } \times 2/3 { fis'4 gis'2 ~ } gis'4 | } \\ { ais'2 ~ ais'4. \autoBeamOff ais'8 ais' ais' \autoBeamOn | } >>
}
  \key b \major
{
  \times 2/3 { gis4 e' dis' } b8 cis' <bis dis'>4 <bis e'> |
  <b cis'>4 ais8 <gis b> <b cis'>4 << { dis'4 } \\ { ais8 gis } >> <fis b>4 r4 eis'2 |
}
  \key bes \major
{
  d'4 f' d' f' d' f' <c' ees'> <d' f'> <ees' g'> <ees' f' a'>2 r4 |
}
  \key b \major
{
  b2 gis' |
}
  \key d \major
{
  r4 fis' a' fis' |
}
  \key b \major
{
  gis2 e' |
  << { dis'4 b8 cis' dis'4 } \\ { b2. } >> |
}
  \key cis \major
{
  <dis' gis'>2
  eis'4 <dis' gis'> <cis' eis'> <eis' gis'> |
  <dis' fisis'> <fisis' ais'> |
  << { \times 2/3 { bis'2 bis' r } } \\ { gis'4 g' fis' ais' } >> |
  << { <eis' dis''>4 <fisis' d''> cis'' b' | ais'4 gis' <ais fisis'> <gis dis'> } \\ {\voiceTwo gis'2 <dis' gis'> ~ |
  <b gis'> cis'2 | } >>
}
  \key fis \major
{
  << { fis'8 gis'16 ais' b' cis'' dis'' eis'' <cis' fis''>2 } \\ { <ais fis'>2 ais'4 a' } >> |
  << { eis''4 cis''8 dis'' eis''4 } \\ { gis'4 b' gis' } >> |
}
  \key b \major
{
  <dis' fis' a' b'>2 |
}
  \key ees \major
{
  c'4 ees' c' ees' c' |
}
  \key aes \major
{
  ees'1 |
  \times 4/6 { aes4 c' ees' g' ees' c' } |
  \times 2/3 { a c' ees' } aes'4 bes' |
  << { c''1 c'' <f' ees''> <g' bes'>2 <ees' aes'> } \\ { c''4 b' bes' a' aes' g' f' ees' f' ees' des' c' des'2 c'4 bes } >> |
  aes1 |
  <c' aes'>1 |
  << { <ees' g'>2 ees'4 f' | } \\ { des'1 | } >> |
  << { g'2 b' | } \\ { c'4 <bes ees'> <aes ees'> ges | } >>
}
  \key e \major
{
  <e' gis'>4 <dis' b'> |
}
  \key d \major
{
  << { <fis' a'>4 <d' fis'> } \\ { d'8 [ e' ] fis' [ d' ] } >> <eis' ais' cis'' e''>4 |
}
  \key b \major
{
  <fis' b' dis''>4 <f' ais' b' fis''> <e' a' dis''> <dis' gis' b' fis''> <d' f' cis'' dis''> <cis' fis' dis'' fis''> |
}
  \key d \major
{
  <e' fis' cis'' d''>2 <d' gis' b' e''> |
  <d' a' d'' fis''> <cis' a' cis'' gis''>4 |
}
  \key c \major
{
  <c' e' g' b'>2 <c' e' g' b'>4 <c' e' g' e''> |
}
  \key b \major
{
  <fis' gis' dis''>4 <fis' b' fis''> <fis' ais' dis''> |
}
  \key c \major
{
  \repeat unfold 3 { <c' e'>4 <c' g'> } <c' e'> |
  \repeat unfold 2 { <c' e'>4 <c' g'> } |
}
  \key d \major
{
 <fis' d''>2 <e' e''>4
}
  \key cis \major
{
  ais'4 ais' ais' ais' ais' |
}
  \key d \major
{
  << { d''4 cis'' e'' dis'' } \\ { <a fis' b'>2 <b fis' b'>4 <b fis' b'> } >> |
}
  \key ees \major
{
  << { <c' ees'>2 <aes' c'>4 } \\ { des'4 c' c' } >> |
  << { <g' bes'>2 } \\ { \times 2/3 { c'4 d' c' } } >>
}
  \key b \major
{
  <cis' e'>4 <cis' c'' e''> <dis' b ' dis''> |
}
  \key d \major
{
  << { <cis'' d''>2 <b' e''>4 } \\ { a4 a'2 } >>
}
  \key e \major
{
  << { cis''8. b'8. cis'' b' gis'2 b'4 } \\ { fis'4. dis'4. e'4 dis' cis' } >>
}
  \key fis \major
{
  <ais cis' e' ais'>4 <a cis' dis' cis'> |
}
  \key d \major
{
  <g b d' e'>4 q4 q4 e'8 |
  e'4 cis'8 d' e'4 fis' |
  r4. e'8 ~ e' cis' d' e' |
  a'2 |
  fis'4 r ais' |
  gis' fis' e' d' |
  cis' b ais g' |
  fis' e' d' cis' |
  d' r <d' fis' ais' cis''>2 |
  <dis' a'>2 <dis' b'>4 |
}
  \key b \major
{
  << { ais'4 fis'8 gis' b' a' gis' fis' } \\ { <dis' fis'>4 dis'8 e' dis'4 dis' } >> | |
  << { e'2 g'4 a' | fis'1 } \\ { e'8 dis' cis' b ais4 cis' dis'8 cis' b ais a4 dis' } >> |
  << { gis'4 b' g' a' } \\ { e'2. cis'4 } >>
  <b dis' fis'>4 <b dis'>8 <cis' e'> <dis' a'>4 <e' gis'>4 |
  << { e'4 cis'8 d' cis'4 g'4 } \\ { <ais cis'>4. <gis b>8 <fis ais>4 ais4 } >> |
  << { fis'2 a' } \\ { gis4 <fis \tweak #'duration-log #1 cis'> b4 <bis dis'> } >> |
  << { gis'4 g' fis' f' } \\ { e1 } >> |
  <cis' e'>2 <dis' fis'> <e' gis'> <dis' ais'> |
  <dis' bis'>1 |
  R1 |
  r4 dis' dis'' cisis'' ~ | cisis''2 r |
}
}

%%%%%%%%% !
%%%%%%%%% !
%%%%%%%%% !
%%%%%%%%% !
%%%%%%%%% !

giantKludgyRewriteLeftHand = {
  \key b \major
{
  \clef bass
  R2 |
  R2. |
  R1*5/8 |
}
  \key ees \major
{
  bes,4 g, c4. |
  <<
     {\voiceOne
       r4 aes8 |
       <f aes> <d f> <c' ees'> |
     } \\
     {\voiceTwo
       r8 bes,4 ~ |
       bes,8. r |
     }
   >>
   << {\voiceOne <g bes d'>4. ~ q8 r r4 } \\ {\voiceTwo r8 ees4 ~ ees8 } >> |
}
  \key c \major
{
  R2. |
  <<
   {\voiceOne
     r2 e'4. d'8 ~ |
     d'8 r8 
   } \\
   {\voiceTwo
     r4 d ~ d2 ~ |
     d8 [ g, ]
   }
  >> r4 r4.
}
  \key b \major
{
  << {\voiceOne fis4. f4. ais a8 ~ | a4 gis8 ~ gis4 g8 ~ | g4 fis2 a4 ~ a8 gis ~ gis4 e8 r4 r | } \\
  {\voiceTwo r8. a, dis f, |
  \times 2/3 { cis4 c gis, } |
  cis8. bis, fis, f, |
  \times 6/8 { bes,4 a, e, aes, g, ees, ges, e, } |
  d,8 r4 r } >> |
  <<{\voiceOne <g cis'>2 } \\ {\voiceTwo r4 fis,4 }  >> |
  <b, fis b>2. |
} \key cis \major
{
  gis4 cis'8. gis |
}
  \key ees \major
{
  r8 g4 cis8 d2 |
  << {\voiceOne \times 7/8 { aes4 g f bes } g8 } \\ {\voiceTwo f2 bes,4. ees8 } >>
}
  \key c \major
{
  a4 |
  <d d'>4 <dis b> |
  <e b>4. ~ q4 |
  << {\voiceOne bes4 a c' b | bes a cis' c' | } \\ {\voiceTwo r8 gis, d cis c fis, b, bes | a, e, gis, g, r fis, r4 | } >>
}
  \key fis \major
{
  r8 d4 r8 r4 |
  b,4 gis, } << {\voiceOne s8 | ais4 fisis | } \\ { \voiceTwo cis8 ~ |
  \key cis \major
{
  cis8 fis,4 r8 |
} } >>
  \key b \major
{
  r8 <b, ais>8 ~ q4 ~ q4 r8 |
}
  << { \voiceOne \key bes \major
{
  \stemDown g4 ees a4. ~ |
} \key e \major {
  \stemUp a8 gis fis e dis4 ( |
} \key ees \major { ees2 ) c4 r4 g8 ~ | }
 \key b \major
{
  g8 r8 fis4 |
  gis2. a4. gis8 |
}  } \\ {\voiceTwo s4. s4 s4 fis,2 b,4 | s2. s4. | \times 2/3 { r4 dis4 d } cis dis e fis gis ~ gis }
>>
  << {\voiceOne r8 dis'8 ~ dis'4 ~ dis'8 cis'8 ~ cis'4 ~ cis'4 r b2 } \\ {\voiceTwo g4 fis4. fis,8 ~ fis,2 cis2 ais,2 gis,8 ~ | gis,4 } 
     \\ {\voiceThree s4 s s s s s fis2 ~ fis4. ~ | fis4 } >>
   r4 r2 r2 |
  gis4 r r2 |
  << { \key bes \major { c'4 a8 bes c'8 } \key b \major { cis'8.. ais32 | } \key a \major { b4 gis8 [ a ] } } \\ {e,2 fis,8 cis4 dis, e, } >> r4 |
  R1 |
  R1 |
  <e gis>2 r |
  R1 |
  <e gis>2 <g ais> |
  ais4 b8 ais a4 <gis, gis> |
  <cis gis> ais8 gis fis4 <fis, e gis> |
  <b, dis>2 ~ b,8 fis << { b16 a gis fis } \\ { fis4 } >> |
  << { s8 b8 e'2 ~ e'8 fis' g'2.. a'8 \clef treble b'1 ~ b'8 } \\ { e4. b,8 e,2 ~ | e,8 r e2 b4 | f' e' ees' d' | \key ees \major { des'8 } } >>
    r8 r4 r2 r4 |
  \clef bass
  << { r2. d'4 bes bes g4. bes } \\ { r4 ees ~ ees1 ~ ees4. r } >>
  \key b \major
{
  <e gis>2 |
}
  \key ees \major
{
  f4 bes b d' c' |
}
  \key b \major
{
  <e gis>2 |
}
  \key d \major
{
  e4 cis8 [ d ] e r |
}

  << {\voiceOne

    r4 e'2 e'4 |
    r2 <d' fis'> ~ | q4 <c' e'>2 d'4 ~ | d'2 c'2 ~ | c'4 bes2. ~ | bes4 c'2. |
  } \\ {\voiceTwo   \key e \major
{
  r4 b, e bes, |
} d4 cis g, c |

  b,4 fis, b, f, |
  bes, a, f, e, |
  \times 2/3 { gis,2 g, dis, } |
  \times 2/3 { fis, f, d, } |
  }  
  >>
  \key f \major { f,4. } e,8 ~ e, r f,4 |
  r8 f,8 ~ f,4 r e,4 |
  \key a \major {
    << { gis4 a b cis' } \\ { e,4. e8 ~ e2 } >> 
  }
  \key e \major
{
  << { dis'2 cis' } \\ { \times 2/3 { r4 b,4 ais, } \times 2/3 { gis,4 fis,2 } } >>
  <fis, b>4 <fisis, e> <gis, eis> |
  fis4. bis ais4 |
}
  \key b \major
{
  << { cis'2. } \\ { r4 cis <fis ais> } >>
  b2 ~ b8 r |
}
  \key d \major
{
  << { g4 e8 fis g4 a4 } \\ { e,2 a,2 } >>
  <d a>4 <fis a> |
  << { a4 r r2 } \\ { g1 } >>
  r2 d8 |
  << { fis4 a8 g g4 a } \\ { b, a, g, fis, } >> |
  << { g4 e ees } \\ { e,2 a,4 } >> |
  << { \mergeDifferentlyHeadedOn d4 d' c'2 } \\ { d2 dis2 } >> |
  \mergeDifferentlyHeadedOff
  <e g>4 r <ais, c'>2 |
  <eis gis>4 r |
  << { a4 a a8 a a16 a a a a4 } \\ { d4 a, d8 a, d a, d4 } >> r r2 |
  << { e4 r b8 e' } \\ { g,4 r e, | } >>
  << { dis'8 d' cis' b ais b cis' d' } \\ { a,2 e, | } >> |
  << { \times 2/3 { cis'4 cis'8 } } \\ { ees,4 } >> d'8 <d, d> cis' |
  << { d2 d'2 } \\ { b,4 a, gis, b, } >> |
}
  \key e \major
{
  <a, a>4 <cis gis> <e g> |
  << { fis2 cis'4 c' } \\ { d4 fis a2 } >>
  b4 r r <a, cis'> |
}
  \key d \major
{
  d'4 r d' r | d' r d' r |
  \times 2/3 { b1 b,2 } | \times 2/3 { a2 a a } | \times 2/3 { a b1 } |
}
  \key ees \major
{
  <c' ees'>4 aes |
  << { bes2 aes4 g f } \\ { g,4. f,4. d4 f } >> |
}
  \key a \major
{
  << { fis4 e e8 } \\ { d4. e,4 } >> |
}
  \key cis \major
{
  <gis, fis>4 <gis, fis> <cis eis>4. |
}
  \key e \major
{
  R2 |
  r4 b, ~ |
  b,8 b,4. r8 |
  fis,16 gis, b,4. b,8 |
  << { c'4 e' d' c' } \\ { r8 fis, b,4 ~ b,8 b,4 r8 } >> |
  ais4 <b, a> |
  << { c'4 b ais b } \\ { r2 b, } >> |
  <b, b>4 <cis a> < fis gis> <cis fis> <a, a> <b, a> |
  <e gis> <cis fis> <a, a> <b, a> |
  <e gis> <fis, a> <e, gis> <dis, fis> <cis, cis'> <dis, a> |
  <e, gis> <fis, a> <gis, b> <fis, a> <e, gis> <fis, ais> |
  << { <b dis'>4. <a cis'>8 ~ q4 r } \\ { b,4 b, b, r } >>
  << { \times 2/3 { g b d' ~ } \times 2/3 { <a d'> <a cis'> <b d'> ~ } d'4 c' fis' e' } \\ { b,4 c d e r d c r } >>
  << { d'4. <c' fis'>8 ~ \times 2/3 { q4 a b } } \\ { r4 b, b, r } >>
  << { \times 2/3 { c'4 d' c' } \times 2/3 { <b d'> <\tweak #'duration-log #1 a e'> fis' }} \\ { r a, b, c } >>
  << { \times 2/3 { c'2 e'4 } \times 2/3 { fis'4 <b e'> <c' d'> } } \\ { d4 r b, b, } >>
  << { \times 2/3 { d'4 \csmk e'2 ^\markup { \hspace #2 \raise #2 \draw-dashed-line #'(8 . 8) } } r8 fis'4 e'8 ~ e' d'4 c'4 b8 } \\ { r4 d4 c c b,8. c d e| } >>
}
  \key b \major
{
  \times 2/3 { gis4 <eis g> <dis fis> } <dis fis> <fis gis> <fis gisis> |
  <e ais> fis <fis gis> <fis, a> |
  <b, ais b> cis' cisis' dis' |
}
  \key bes \major
{
    \times 2/3 { c'4 bes c' } \times 2/3 { bes c' bes } \times 2/3 { c' bes c' } bes4 bes | bes a2 r4 |
}
  \key b \major
{
  <e gis>2. ais4 |
}
  \key d \major
{
  \times 2/3 { r4 d' e' } \times 2/3 { d' e' d' } |
}
  \key b \major
{
  <cis gis>2. <ais, g>4 |
  <cis fis ais>4 < \tweak #'duration-log #1 dis gis>4 gis |
}
  \key cis \major
{
  <gis bis>2 |
  cis'2 bis |
  ais |
  << { \times 4/5 { gis4 ais <gis bis> <ais cis'> <bis dis'> ~ } | bis1 ~ | bis4 dis'2 b4 | } \\ { dis4 cis bis, ais, gis,2. dis4 gis2. r4 | } >>
}
  \key fis \major
{
  << { cis'4 eis' dis' disis' | eis' gis'8 fis'8 eis'4 | } \\ { fis,2 fisis, gis,4 gisis, ais, } >>
}
  \key b \major
{
  R2 |
}
  \key ees \major
{
  R1*5/4 |
}
  \key aes \major
{
  R1*3 |
  ees'1 |
  ees' |
  des'4 c' bes aes |
  << { g1 } \\ { g4 f ees des } >> |
  c bes, aes, ges, |
  f, ees, des, c, |
  \ottava #-1 bes,, aes,, g,, f,, |
  ees,, des,, c,, bes,,,
  \ottava #0
}
  \key e \major
{
  e4 gis |
}
  \key d \major
{
  <g, b> <g, b> g, |
}
  \key b \major
{
  fis,1. |
}
  \key d \major
{
  d4 a,2 d4 ~ |
  d g,2 |
}
  \key c \major
{
  d4 cis c e,
}
  \key b \major
{
  fis,2. |
}
  \key c \major
{
  c'4 b bes a | aes a fis |
  <c' e'> <b ees'> <bes d'> <a cis'> |
}
  \key d \major
{
  <a b d'> <a b cis'> <g cis'> |
}
  \key cis \major
{
  <ais, ais>4 q q q q |
}
  \key d \major
{
  dis2 g,4 fis, |
}
  \key ees \major
{
  <aes, aes>2 <a, fis>4 |
  <bes, g>4 <c ees> |
}
  \key b \major
{
  <e gis>4 <fis, fis> <fis, fis> |
}
  \key d \major
{
  << { fis'2. } \\ { e4 d d } >>
}
  \key e \major
{
  << { <dis' fis'>2. e'2 e'4 } \\ { a,2 b,4 ~ | b,4 fis e | } >>
}
  \key fis \major
{
  g4 fis |
}
  \key d \major
{
  R1*7/8 |
  <e, g b>2 <a, a cis'> |
  \times 2/3 { <a cis' d'>2 q q } |
  a4 a |
  r2 <ais, ais>4 ~ |
  ais r4 r2 |
  R1 |
  R1 |
  R1 |
  << { fis2. } \\ { r8 b,4 b,4 b,8 } >> |
}
  \key b \major
{
  << { fis8 gis ais4 <a b>4. b8 gis4 b cis' e' dis'2 cis' cis'4. b8 <ais cis'>2 } 
      \\ { e2 dis4 fis gis4 e dis cis g4 fis b, a, gis,2 r4 e4 } \\
   { s1 b1 ~ b1 } >>
  << { a4 gis fis b } \\ { dis4. cis8 bis,2 } >>
  << { gis4 fis e2 } \\ { cis2 fis, } >>
  << { dis2 fis } \\ { b,1 } >>
  <e gis>1 |
  << { <gis b>2 <fis ais>2 <e b> <fisis cis'> } \\ { cis1 fis,2 r } >>
  <gis bis>1
  <gis, dis gis bis>2 q |
  q1 ~ q1 |
}
}

%%% SCORE


uberMarks = {
        \marksBeginning \mkf \mark \default
        \marksRestarts \mkf \mark \default
        \marksRamp \mkf \mark \default
        \marksWinding \mkf \mark \default
        \marksLarge \mkf \mark \default
        \marksTriumphal \mkf \mark \default
        \marksElan \mkf \mark \default
        \marksSugar \mkf \mark \default
        \marksOpera \mkf \mark \default
        \marksRealcome \mkf \mark \default
        \marksSurprises \mkf \mark \default
        \marksWortspiel \mkf \mark \default
        \marksCartoon %\mkf \mark \default
        \marksIfhap \mkf \mark \default
        \marksProof \mkf \mark \default
        \marksFinale \mkf \mark \default
        \marksStutter \mkf \mark \default
        \marksDenouement
}

\score {
  <<
\new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \sopranoBeginning
        \sopranoRestarts
        \sopranoRamp
        \sopranoWinding
        \sopranoLarge
        \sopranoTriumphal
        \sopranoElan
        \sopranoSugar
        \sopranoOpera
        \sopranoRealcome
        \sopranoSurprises
        \sopranoWortspiel
        \sopranoCartoon
        \sopranoIfhap
        \sopranoProof
        \sopranoFinale
        \sopranoStutter
        \sopranoDenouement
      } {
   \uberMarks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoBeginningWords
        \sopranoRestartsWords
        \sopranoRampWords
        \sopranoWindingWords
        \sopranoLargeWords
        \sopranoTriumphalWords
        \sopranoElanWords
        \sopranoSugarWords
        \sopranoOperaWords
        \sopranoRealcomeWords
        \sopranoSurprisesWords
        \sopranoWortspielWords
        \sopranoCartoonWords
        \sopranoIfhapWords
        \sopranoProofWords
        \sopranoFinaleWords
        \sopranoStutterWords
        \sopranoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzoBeginning
        \mezzoRestarts
        \mezzoRamp
        \mezzoWinding
        \mezzoLarge
        \mezzoTriumphal
        \mezzoElan
        \mezzoSugar
        \mezzoOpera
        \mezzoRealcome
        \mezzoSurprises
        \mezzoWortspiel
        \mezzoCartoon
        \mezzoIfhap
        \mezzoProof
        \mezzoFinale
        \mezzoStutter
        \mezzoDenouement
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoBeginningWords
        \mezzoRestartsWords
        \mezzoRampWords
        \mezzoWindingWords
        \mezzoLargeWords
        \mezzoTriumphalWords
        \mezzoElanWords
        \mezzoSugarWords
        \mezzoOperaWords
        \mezzoRealcomeWords
        \mezzoSurprisesWords
        \mezzoWortspielWords
        \mezzoCartoonWords
        \mezzoIfhapWords
        \mezzoProofWords
        \mezzoFinaleWords
        \mezzoStutterWords
        \mezzoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \altoBeginning
        \altoRestarts
        \altoRamp
        \altoWinding
        \altoLarge
        \altoTriumphal
        \altoElan
        \altoSugar
        \altoOpera
        \altoRealcome
        \altoSurprises
        \altoWortspiel
        \altoCartoon
        \altoIfhap
        \altoProof
        \altoFinale
        \altoStutter
        \altoDenouement
      }
      \new Lyrics \lyricsto "alto" {
        \altoBeginningWords
        \altoRestartsWords
        \altoRampWords
        \altoWindingWords
        \altoLargeWords
        \altoTriumphalWords
        \altoElanWords
        \altoSugarWords
        \altoOperaWords
        \altoRealcomeWords
        \altoSurprisesWords
        \altoWortspielWords
        \altoCartoonWords
        \altoIfhapWords
        \altoProofWords
        \altoFinaleWords
        \altoStutterWords
        \altoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenorBeginning
        \tenorRestarts
        \tenorRamp
        \tenorWinding
        \tenorLarge
        \tenorTriumphal
        \tenorElan
        \tenorSugar
        \tenorOpera
        \tenorRealcome
        \tenorSurprises
        \tenorWortspiel
        \tenorCartoon
        \tenorIfhap
        \tenorProof
        \tenorFinale
        \tenorStutter
        \tenorDenouement
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorBeginningWords
        \tenorRestartsWords
        \tenorRampWords
        \tenorWindingWords
        \tenorLargeWords
        \tenorTriumphalWords
        \tenorElanWords
        \tenorSugarWords
        \tenorOperaWords
        \tenorRealcomeWords
        \tenorSurprisesWords
        \tenorWortspielWords
        \tenorCartoonWords
        \tenorIfhapWords
        \tenorProofWords
        \tenorFinaleWords
        \tenorStutterWords
        \tenorDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \keepWithTag #'normal \removeWithTag #'piano \bassBeginning
        \bassRestarts
        \bassRamp
        \bassWinding
        \bassLarge
        \bassTriumphal
        \bassElan
        \bassSugar
        \bassOpera
        \bassRealcome
        \bassSurprises
        \bassWortspiel
        \bassCartoon
        \bassIfhap
        \bassProof
        \bassFinale
        \bassStutter
        \bassDenouement
      }
      \new Lyrics \lyricsto "bass" {
        \bassBeginningWords
        \bassRestartsWords
        \bassRampWords
        \bassWindingWords
        \bassLargeWords
        \bassTriumphalWords
        \bassElanWords
        \bassSugarWords
        \bassOperaWords
        \bassRealcomeWords
        \bassSurprisesWords
        \bassWortspielWords
        \bassCartoonWords
        \bassIfhapWords
        \bassProofWords
        \bassFinaleWords
        \bassStutterWords
        \bassDenouementWords
      }
    >>
  >>
%  \new PianoStaff <<
%    \new Staff << \uberMarks \giantKludgyRewriteRightHand >>
%    \new Staff \giantKludgyRewriteLeftHand
%  >>
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
%{
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
\midiBeginning
        \sopranoBeginning
        \sopranoRestarts
        \sopranoRamp
        \sopranoWinding
        \sopranoLarge
        \sopranoTriumphal
        \sopranoElan
        \sopranoSugar
        \sopranoOpera
        \sopranoRealcome
        \sopranoSurprises
        \sopranoWortspiel
        \sopranoCartoon
        \sopranoIfhap
        \sopranoProof
        \sopranoFinale
        \sopranoStutter
        \sopranoDenouement
      } {
\midiBeginning
        \uberMarks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoBeginningWords
        \sopranoRestartsWords
        \sopranoRampWords
        \sopranoWindingWords
        \sopranoLargeWords
        \sopranoTriumphalWords
        \sopranoElanWords
        \sopranoSugarWords
        \sopranoOperaWords
        \sopranoRealcomeWords
        \sopranoSurprisesWords
        \sopranoWortspielWords
        \sopranoCartoonWords
        \sopranoIfhapWords
        \sopranoProofWords
        \sopranoFinaleWords
        \sopranoStutterWords
        \sopranoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
\midiBeginning        \mezzoBeginning
        \mezzoRestarts
        \mezzoRamp
        \mezzoWinding
        \mezzoLarge
        \mezzoTriumphal
        \mezzoElan
        \mezzoSugar
        \mezzoOpera
        \mezzoRealcome
        \mezzoSurprises
        \mezzoWortspiel
        \mezzoCartoon
        \mezzoIfhap
        \mezzoProof
        \mezzoFinale
        \mezzoStutter
        \mezzoDenouement
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoBeginningWords
        \mezzoRestartsWords
        \mezzoRampWords
        \mezzoWindingWords
        \mezzoLargeWords
        \mezzoTriumphalWords
        \mezzoElanWords
        \mezzoSugarWords
        \mezzoOperaWords
        \mezzoRealcomeWords
        \mezzoSurprisesWords
        \mezzoWortspielWords
        \mezzoCartoonWords
        \mezzoIfhapWords
        \mezzoProofWords
        \mezzoFinaleWords
        \mezzoStutterWords
        \mezzoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
\midiBeginning        \altoBeginning
        \altoRestarts
        \altoRamp
        \altoWinding
        \altoLarge
        \altoTriumphal
        \altoElan
        \altoSugar
        \altoOpera
        \altoRealcome
        \altoSurprises
        \altoWortspiel
        \altoCartoon
        \altoIfhap
        \altoProof
        \altoFinale
        \altoStutter
        \altoDenouement
      }
      \new Lyrics \lyricsto "alto" {
        \altoBeginningWords
        \altoRestartsWords
        \altoRampWords
        \altoWindingWords
        \altoLargeWords
        \altoTriumphalWords
        \altoElanWords
        \altoSugarWords
        \altoOperaWords
        \altoRealcomeWords
        \altoSurprisesWords
        \altoWortspielWords
        \altoCartoonWords
        \altoIfhapWords
        \altoProofWords
        \altoFinaleWords
        \altoStutterWords
        \altoDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
\midiBeginning        \tenorBeginning
        \tenorRestarts
        \tenorRamp
        \tenorWinding
        \tenorLarge
        \tenorTriumphal
        \tenorElan
        \tenorSugar
        \tenorOpera
        \tenorRealcome
        \tenorSurprises
        \tenorWortspiel
        \tenorCartoon
        \tenorIfhap
        \tenorProof
        \tenorFinale
        \tenorStutter
        \tenorDenouement
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorBeginningWords
        \tenorRestartsWords
        \tenorRampWords
        \tenorWindingWords
        \tenorLargeWords
        \tenorTriumphalWords
        \tenorElanWords
        \tenorSugarWords
        \tenorOperaWords
        \tenorRealcomeWords
        \tenorSurprisesWords
        \tenorWortspielWords
        \tenorCartoonWords
        \tenorIfhapWords
        \tenorProofWords
        \tenorFinaleWords
        \tenorStutterWords
        \tenorDenouementWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
\midiBeginning        \keepWithTag #'normal \removeWithTag #'piano \bassBeginning
        \bassRestarts
        \bassRamp
        \bassWinding
        \bassLarge
        \bassTriumphal
        \bassElan
        \bassSugar
        \bassOpera
        \bassRealcome
        \bassSurprises
        \bassWortspiel
        \bassCartoon
        \bassIfhap
        \bassProof
        \bassFinale
        \bassStutter
        \bassDenouement
      }
      \new Lyrics \lyricsto "bass" {
        \bassBeginningWords
        \bassRestartsWords
        \bassRampWords
        \bassWindingWords
        \bassLargeWords
        \bassTriumphalWords
        \bassElanWords
        \bassSugarWords
        \bassOperaWords
        \bassRealcomeWords
        \bassSurprisesWords
        \bassWortspielWords
        \bassCartoonWords
        \bassIfhapWords
        \bassProofWords
        \bassFinaleWords
        \bassStutterWords
        \bassDenouementWords
      }
    >>
  \midi {}
}
%}