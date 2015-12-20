\version "2.19.30"

\include "defs-devel.ly"
\include "stylesheet.ly"
#(ly:set-option 'point-and-click #f)

legero = \markup \italic "legero"
bendHack = \once \override BendAfter.extra-offset = #'(-1 . 0) 
\header {
  title = "Ding Dong the Witch is Dead" %(1)"
  subtitle = \markup { for Ornette Coleman }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}



z = {\bar""}
dd = \relative c' {\autoBeamOff 
  \tempo "Ridiculously fast"
  \cadenzaOn
  \key b \major
  fis32 \z fis \z dis \z e \z fis \z dis \z dis \z cis \z b \z cis \z dis \z cis \z b
 \z fis' \z fis \z dis \z e \z fis \z a \z gis \z fis
 \z fis32 \z fis \z dis \z e \z fis \z dis \z dis \z cis \z b \z cis \z dis \z cis \z b
 \z fis' \z fis \z dis \z e \z fis \z cis' \z b \z a
 \z gis \z b \z b \z gis \z a \z b \z gis \z gis
 \z dis' \z cis \z b \z ais \z gis \z gis
 \z cis \z dis \z cis \z b \z ais \z gis
 \z fis \z gis \z fis \z e \z dis \z cis
 \z fis \z fis \z dis \z e \z fis \z dis \z dis \z cis \z b \z dis \z cis \z b
 \z dis \z fis \z b \z cis \z dis \z cis \z b \z cis \tag #'ugh { r16^\markup \bold "tutti" \z <b, b'> \bar "|." } \tag #'ugher { \z b }
}

ddw = \lyricmode {
  Ding Dong the Witch is Dead
  Which old Witch?
  The Wic -- ked Witch!
  Ding Dong the Wic -- ked Witch is Dead!
  Wake up your slee -- py heads
  Rub your eyes
  Get out of bed!
  Wake up the Wic -- ked Witch is Dead!
  She's gone where the gob -- lins go
  Be -- low be -- low be -- low
  Yo ho, let's o -- pen up and sing
  And ring the bells loud
  Ding Dong the mer -- ry -- o
  Sing it high
  Sing it low
  Let them know the Wic -- ked Witch is dead.
}

\markup \fill-line { "Marie et Marie on \"da\" \"da\" \"da\" ..." }

\relative c' {
  \cadenzaOn
  <dis fis>16 [ <dih fih> <d f> <cisih eih> <cis e> <cih disih> <bis dis> <bih dih> <b d> ]
  <dis fis>16 [ <dih fih> <d f> ]
  <fis a>16 [ <fih gisih> <eis gis> <eih gih> ]
  <dis fis> [ <d eis> <cis e> <c eeh> <b dis> ]
}

\markup \fill-line { "girls continue to riff, Mike and Ryan enter on the head an octave apart" }

\score {
  <<
    \new Staff \new Voice = "awwwshit" \removeWithTag #'ugh \keepWithTag #'ugher \dd
    \new Lyrics \lyricsto "awwwshit" \ddw
  >>
}

\markup \fill-line { "add Mathieu on a walking bass, everyone riffs on the theme for a while" }
\markup \fill-line { "after around 40-60 seconds, Mike and Ryan back on the head while everone continues to riff" }

\score {
  <<
    \new Staff \new Voice = "awwwshit" \keepWithTag #'ugh \removeWithTag #'ugher \dd
    \new Lyrics \lyricsto "awwwshit" \ddw
  >>
}
