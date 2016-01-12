NT = \override Score.TimeSignature.stencil = ##f
\relative c' {
  \NT
  \tempo "Ridiculously fast"
  \cadenzaOn
  \key b \major
  fis32 fis dis e fis dis dis cis b cis dis cis b \bar "!"
  %fis' fis dis e fis a gis fis
}
\addlyrics {
  Ding Dong the Witch is Dead
  Which old Witch?
  The Wic -- ked Witch!
}