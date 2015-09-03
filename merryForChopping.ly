\include "defs-devel.ly"
\version "2.19"
YES = \relative c' {
  \key e \major
  << { e4 gis b } { \tptext #3 "theme 1" } >>  r |
  << { a8 b4 gis8 ~ gis4 } { \tptext #3 "theme 2" } >> << { g8 fis |
  f e } { \tptext #2 "theme 3" } >> << { e4 gis b } { \tptext #3 "theme 1" } >> | \tag #'brea { \break }
  << { a2. } { \tptext #3 "theme 4" } >> << { b4 } { \tptext #1 "t1" } >> |
  << { r8 e,4 gis8 b4 } { \tptext #3 "theme 2" }  >> << { \times 7/8 { e
   cis dis e } } { \tptextSm #7 "theme 5" }  >> << { cis8 b a8 | \tag #'break { \break }
  gis } { \tptext #2 "theme 3" } >>  << { \times 7/8 { fis4 gis a fis } } { \tptextSm #7 "theme 5" } >> |
  << { e1 } { \tptext #4 "theme 4" } >>
}
\new Staff \YES 
\markup {
  1 = straight quarters
}

\markup {
  2 = hemiola
}

\markup {
  3 = 8th chromatic run
}

\markup {
  4 = sustained note
}

\markup {
  5 = out of time
}

\markup { "FIRST ORDER: 1,3,4,2,3,5" }
\markup \column {
  "group of 32..."
  "1=8, full presentation"
  "3=8, also full presentation (doubling up)"
  "4=hold (over A)"
  "2=break out of hold"
  "3=continuing on"
  "5=stable slow down"
  "1=punctuation" 
}

\relative c' {
  %\override Score.BarNumber.break-visibility = ##(#t #t #t)

  e4^"ONE" e e e | \barNumberCheck #2
  e e e e |
  e e e e |
  e e e e |
  e e e e | \barNumberCheck #6
  e e e e |
  e e e e |
  e r e' r |
  e,8^"THREE" \repeat unfold 7 e | \barNumberCheck #10
  \repeat unfold 6 { \repeat unfold 8 e } |
  e8 e e e e'4 e,^"FOUR" ~ |
  e1 ~ |
  e1 ~ | \barNumberCheck #19
  e2. e'4 |
  e,8^"TWO" e4 e8 r4 e8 e ~ |
  e e r4 e8 e4 e8 |
  r4 e8 e ~ e e r4 | \barNumberCheck #23
  e8 e4 e8 r4 e8 e ~ |
  e e r4 e8 e4 e8 |
  e'4 e,8^"THREE" e e e e e |
  e e e e e e e e | \barNumberCheck #27
  e' \times 7/8 { e,4^"FIVE" e e e } |
  \times 7/8 { e4 e e e }
  \times 7/8 { e4 e e e } 
  \times 7/8 { e4 e e e } e'8 e,4^"ONE" | \barNumberCheck #31
  e e e e |
  e r e' r | \barNumberCheck #33
  \bar "||"
  %%%%%%%%%%%%%%%%

  e,8^"THREE" e e e e e e'4 |
  e,8^"TWO" e4 e8 ~ e r e e |
  e'4 e,^"ONE" e e'4 |
  e,8^"THREE" e e e e e e e |
  e e e e e e e' \times 7/8 { e,4^"FIVE" e e e } e'4 |
  e,8^"THREE" e e e e e e e |
  e'4 e,2.^"FOUR" | \bar "!"
  %%%%%%
  e'8 e,^"THREE" e e e e e'4 |
  e,^"ONE" e e' e,8^"TWO" e ~ |
  e e e'4 e,2^"(high)"^"FOUR" |
  e'4 e,8^"THREE" e e e e'4 |
  e,4^"ONE" e e' e,8^"TWO" e ~ |
  e e e'4 e,8^"THREE" e e e |
  e'8 \times 7/8 { e,4^"FIVE" e e e } |
  \times 7/8 { e e e e } \times 7/8 { e e e e }
  \times 7/8 { e e e e } \times 7/8 { e e e e } e'4 e,8^"THREE" e |
  e e e e e e e e |
  e e e e e e e'4 |
  e,8^"TWO" e4 e8 e'4 e,8^"THREE" e |
  e e e'4 e,^"ONE" e' |
  e,8^"THREE" e e'4 e,^"ONE" e'8 e,^"THREE" |
  %\removeWithTag #'brea \YES
    \key e \major
  << { <e e'>4 gis b } { \tptext #3 #"theme 1" } >>  \stemUp e \stemNeutral |
  << { a,8 b4 gis8 ~ <gis e'>4 } { \tptext #3 #"theme 2" } >> << { g8 fis |
  f e } { \tptext #2 #"theme 3" } >> << { <e e'>4 gis <b e> } { \tptext #3 #"theme 1" } >> | 
  << { a2 e'4 } { \tptext #3 #"theme 4" } >> << { b4 } { \tptext #1 #"t1" } >> |
  << { \stemUp e8 \stemNeutral e,4 gis8 b4 } { \tptext #3 #"theme 2" }  >> << { \times 7/8 { <e e>
   cis dis <e e> } } { \tptextSm #7 #"theme 5" }  >> << { cis8 b a8 | 
  <gis e'> } { \tptext #2 #"theme 3" } >>  << { \times 7/8 { fis4 gis a fis } } { \tptextSm #7 #"theme 5" } >> |
  << { r2 \stemUp e'4 \stemNeutral e, } { \tptext #4 #"theme 4" } >>

}