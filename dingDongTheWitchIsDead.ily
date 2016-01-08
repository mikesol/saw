\header {
  title = "Ding Dong the Witch is Dead" %(1)"
  subtitle = \markup { for Ornette Coleman }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

\markup \fill-line { "girls on \"da\" \"da\" \"da\" ..." }
\new Staff \firstriff
\markup \fill-line { "girls continue to riff, boys enter on the head an octave apart" }

  <<
    \new Staff \new Voice = "awwwshit" \removeWithTag #'ugh \keepWithTag #'ugher \dd
    \new Lyrics \lyricsto "awwwshit" \ddw
  >>

\markup \fill-line { "add bass on a walking bass, everyone riffs on the theme for a while" }
\markup \fill-line { "after around 40-60 seconds, boys back on the head while everone continues to riff" }

  <<
    \new Staff \new Voice = "awwwshit" \keepWithTag #'ugh \removeWithTag #'ugher \dd
    \new Lyrics \lyricsto "awwwshit" \ddw
  >>
