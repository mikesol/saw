\version "2.19.30"

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 15.15)
themeA = {
  \time 3/4
  c4 d e |
  f e d |
  c2 r4 |
}

themeB = {
  c4 d e |
  f e d |
  c2 r4 |
}

themeC = {
  c2 c4 |
  c'2 c'4 |
  a2 a4 |
  b2 b4 |
  c'4 c' c' |
  c' b a |
  g2. |
}

themeD = {
  g4 g g |
  g g e' |
  f f f |
  f f d' |
  d dis e |
  f e d |
  g2. |
}

themes = {
  \themeA
  \themeB
  \themeC
  \themeD
}

lyr = \lyricmode { Fol -- low the yel -- low brick road. Fol -- low the yel -- low brick road. 
Fol -- low fol -- low fol -- low fol -- low fol -- low the yel -- low brick road.
Fol -- low the yel -- low brick, fol -- low the yel -- low brick,
fol -- low the yel -- low brick road
} 
\markup \justify-line {
  \column {
    "Wysr"
    \score { << \new Staff \new Voice = "foo" { \clef bass \transpose c e, \themes \bar "||" } \new Lyrics \lyricsto "foo" \lyr >> \layout { line-width = #100 } }
  }
  \column {
    "Fakbyd"
    \score { << \new Staff \new Voice = "foo" { \clef bass \transpose c f, \themes \bar "||" } \new Lyrics \lyricsto "foo" \lyr >> \layout { line-width = #50 #(layout-set-staff-size 12) } }
  }
  \column {
    "Ttö"
    " "
    " "
    " "
    \score { << \new Staff \new Voice = "foo" { \clef tenor \transpose c fis \themes \bar "||" } \new Lyrics \lyricsto "foo" \lyr >> \layout { indent=#6 line-width = #30 #(layout-set-staff-size 10)  } }
  }
  \column {
    "Bitch"
    " "
    " "
    " "
    " "
    " "
    " "
    " "
    " "
    \score { << \new Staff \new Voice = "foo" { \clef treble \transpose c g' \themes \bar "||" } \new Lyrics \lyricsto "foo" \lyr >> \layout { indent=#4 line-width = #18 #(layout-set-staff-size 6)  } }
  }
  \column {
    "Dörty"
    " "
    " "
    " "
    " "
    " "
    " "
    " "
    " "
    " "
    " "
    " "
    " "
    " "
    \score { << \new Staff \new Voice = "foo" { \clef "treble^8" \transpose c aes'' \themes \bar "||" } \new Lyrics \lyricsto "foo" \lyr >> \layout { indent = #2 line-width = #14 #(layout-set-staff-size 4)  } }
  }
}