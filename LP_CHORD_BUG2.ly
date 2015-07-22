\version "2.19.15"
someMusic = \relative c, {
  \clef bass
  a4 a a a
  <<
    \new Staff \with {alignAboveContext="realBass" }
      \new Voice = "tempBassVoice" {
        \clef bass
        a4 a a a |
        a a a a 
        R1
    }
    \new Lyrics \with { alignAboveContext="realBass" } \lyricsto "tempBassVoice" {
      \lyricmode {
        foo bar foo bar foo bar foo
%%%%%%% COMMENT THE LINE BELOW IN AND OUT TO SEE PROBLEM
        bar
  }}
  \relative c, {
     a4 a a a
     a a a a
     a a a a 
  } >>
  a a a a 
  a a a a
}

\score {
    \new Staff = "realBass" 
      \new Voice = "someMusic" {
        \someMusic
      } 
}
