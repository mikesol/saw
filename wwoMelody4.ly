\version "2.19.15"
#(set-global-staff-size 17)

oz = \relative c' {
  d4 |
  g d b c |
  d g2 d4 |
  d4 c8 b a4 c8 a |
  g2. g4 |
  g g g' g |
  fis fis8 fis e4 e |
  a a8 a a4 fis |
  d2. d4 |
  e4 e8 e e4 e8 fis |
  g4 d b d |
  c4 c8 b a4 c |
  b a g g |
  g g g' g |
  fis fis e e |
  a1.
  r4 a4 |
  a4 a8 a a4 a8 a |
  a4 fis d2 |
  c'4 b8 a g4 fis8 e |
  d2 d |
  g4 d b c |
  d g2 a4 |
  b4 b8 b a4 b8 a |
  g2.
}

ozT = \relative c' {
  d4
  g2 d4
  b2 c4
  d4 g1 d4
  e4 d c
  b c a
  g1 r4 g4
  g2 g4
  g'2 g4
  fis4 fis fis
  e2 e4
  a4 a a
  a2 fis4
  d1 r4 d
  e e e
  e e fis
  g2 d4
  b2 d4
  c4 c b
  a2 c4
  b2 a4
  g2 g4
  g2 g4
  g'2 g4
  fis2 fis4
  e2 e4
  a\breve r4 r2 g4
  a4 a a
  a a a
  a2 fis4
  d2 r4
  c'4 b a
  g fis e
  d2 r4
  d2.
  g2 d4
  b2 c4
  d4 g1 a4
  b b b
  a b a
  g2
}

lyricsFW = \lyricmode {
  We're off to see the Wi zard
  The Won der ful Wi zard of Oz
  We hear he is a whiz of a Wiz
  If ev er a Wiz there was
  If ev er oh ev er a Wiz there was
  The Wiz ard of Oz is one be cause
  Be cause be cause be cause be cause be cause
  Be cause of the won der ful things he does
  Won der ful things that he does
  We're off to see the Wi zard
  The Won der ful Wi zard of Oz
}

lyricsBW = \lyricmode {
Oz of zard Wi ful der Won The zard Wi the see to off We're does he that things ful der Won does he things ful der won the of cause Be cause be cause be cause be cause be cause Be cause be one is Oz of ard Wiz The was there Wiz a er ev oh er ev If was there Wiz a er ev If Wiz a of whiz a is he hear We Oz of zard Wi ful der Won The zard Wi the see to off We're
}

%{
\markup "Normal"

<<
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key g \major  \partial 4 \time 3/4 \ozT }
\new Lyrics \lyricsto "melody" \lyricsFW
\new Staff { #(skip-of-length ozT) }
>>

\markup "Normal 4 start 1"

<<
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key g \major  \time 4/4 \ozT }
\new Lyrics \lyricsto "melody" \lyricsFW
\new Staff { #(skip-of-length ozT) }
>>

%}

\markup "Normal 4 start 2"

<<
\new Staff { \key d \major #(skip-of-length ozT) }
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key d \major \clef "treble_8" \time 4/4 r4 \transpose a e \ozT }
\new Lyrics \lyricsto "melody" \lyricsFW
\new Staff { \key d \major \clef bass #(skip-of-length ozT) }
>>

\pageBreak 

\markup "Normal 4 start 3"

<<
\new Staff { \key d \major #(skip-of-length ozT) }
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key d \major \clef "treble_8" \time 4/4 r2 \transpose a e \ozT }
\new Lyrics \lyricsto "melody" \lyricsFW
\new Staff { \key d \major \clef bass #(skip-of-length ozT) }
>>
%{
\markup "Normal 4 start 4"

<<
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key g \major  \time 4/4 r2. \ozT }
\new Lyrics \lyricsto "melody" \lyricsFW
\new Staff { #(skip-of-length ozT) }
>>



\markup "Retrograde start 1"

<<
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key g \major  \time 3/4 \retrograde \ozT }
\new Lyrics \lyricsto "melody" \lyricsBW
\new Staff { #(skip-of-length ozT) }
>>


\markup "Retrograde start 2"

<<
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key g \major  \time 3/4 r4 \retrograde \ozT }
\new Lyrics \lyricsto "melody" \lyricsBW
\new Staff { #(skip-of-length ozT) }
>>

\markup "Retrograde start 3"

<<
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key g \major  \time 3/4 r2 \retrograde \ozT }
\new Lyrics \lyricsto "melody" \lyricsBW
\new Staff { #(skip-of-length ozT) }
>>

\markup "Retrograde 4 start 1"

<<
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key g \major  \time 4/4 \retrograde \ozT }
\new Lyrics \lyricsto "melody" \lyricsBW
\new Staff { #(skip-of-length ozT) }
>>


\markup "Retrograde 4 start 2"

<<
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key g \major \time 4/4 r4 \retrograde \ozT }
\new Lyrics \lyricsto "melody" \lyricsBW
\new Staff { #(skip-of-length ozT) }
>>

\markup "Retrograde 4 start 3"

<<
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key g \major  \time 4/4 r2 \retrograde \ozT }
\new Lyrics \lyricsto "melody" \lyricsBW
\new Staff { #(skip-of-length ozT) }
>>

\markup "Retrograde 4 start 4"

<<
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key g \major  \time 4/4 r2. \retrograde \ozT }
\new Lyrics \lyricsto "melody" \lyricsBW
\new Staff { #(skip-of-length ozT) }
>>

\markup "Retrograde 4ized"

<<
\new Staff \new Voice = "melody" \with { \consists "Completion_heads_engraver" \remove "Note_heads_engraver" }
{ \key g \major  \partial 2. \retrograde \oz }
\new Lyrics \lyricsto "melody" \lyricsBW
\new Staff { #(skip-of-length oz) }
>>

%}