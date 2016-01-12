NT = \override Score.TimeSignature.stencil = ##f
\relative c' {
  \key g \major
  \clef "treble"
  \tempo "Allegro"
  \time 4/4
  d8^\ff d4 d8 e4-. eis-. |
  fis-. r <dis eis fisis>2^\fermata | \bar "||" % 10
  \NT
  \time 1/4
  r4
  \time 4/4
  d8 d4 d8 e4-. eis-. |
  fis-. r <fis e' f'>2^\fermata | \bar "||" % 11
}
\addlyrics {
  cause be -- cause be -- cause of
  the
  Won -- der -- ful things he does.
  Won
}