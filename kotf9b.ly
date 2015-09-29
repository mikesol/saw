\version "2.19" 
#(set-global-staff-size 18)
nineBTheme = {
  fis' a' gis' d' f' e' c' b dis'
}
\header { title = "kotf9bscratch" }
\paper {
  ragged-last-right = ##f
  ragged-right = ##f
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\markup "one"

\score {
  <<
  \new Staff { r4 \transpose c c' \nineBTheme }
  >>
  \layout{}
}

\markup "two"

\score {
  <<
  \new Staff { r4 \transpose c c' \nineBTheme }
  \new Staff { s1*3 }
  \new Staff { s1*3 }
  \new Staff { r2 \transpose c c \nineBTheme }
  >>
  \layout{}
}

\markup "three"

\score {
  <<
  \new Staff { r2. \transpose c c' \nineBTheme }
  \new Staff { s1*3 }
  \new Staff { s1*3 }
  \new Staff { r4 \transpose c c \nineBTheme }
  >>
  \layout{}
}

\markup "four"

\score {
  <<
  \new Staff { r4 \transpose c c' \nineBTheme }
  \new Staff { s1*4 }
  \new Staff { s1*4 }
  \new Staff { R1 \transpose c c \nineBTheme }
  >>
  \layout{}
}

\markup "five"

\score {
  <<
  \new Staff { r4 \transpose c c' \nineBTheme }
  \new Staff { s1*4 }
  \new Staff { s1*4 }
  \new Staff { R1 r4 \transpose c c \nineBTheme }
  >>
  \layout{}
}

\markup "six"

\score {
  <<
  \new Staff { r4 \transpose c c' \nineBTheme }
  \new Staff { s1*4 }
  \new Staff { s1*4 }
  \new Staff { R1 r2 \transpose c c \nineBTheme }
  >>
  \layout{}
}

\markup "seven"

\score {
  <<
  \new Staff { r4 \transpose c c' \nineBTheme }
  \new Staff { s1*4 }
  \new Staff { s1*4 }
  \new Staff { R1 r2. \transpose c c \nineBTheme }
  >>
  \layout{}
}

\markup "eight"

\score {
  <<
  \new Staff { r4 \transpose c c' \nineBTheme }
  \new Staff { s1*5 }
  \new Staff { s1*5 }
  \new Staff { R1 R1 \transpose c c \nineBTheme }
  >>
  \layout{}
}

\markup "nine"

\score {
  <<
  \new Staff { s1*5 }
  \new Staff { s1*5 }
  \new Staff { r4 \transpose c c' \nineBTheme }
  \new Staff { R1 R1 r4 \transpose c c \nineBTheme }
  >>
  \layout{}
}
