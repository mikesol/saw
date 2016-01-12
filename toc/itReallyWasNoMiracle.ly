changeUp = { \clef treble }
changeDown = { \clef bass }
swung=\markup \italic "swung"
{
  \tempo "Lento"
  \key fis \minor
  \clef treble
  fis'4.^\mp^\swung
  \changeDown
  fis,8
  \changeUp
  e'8
  \changeDown
  cis ~ cis4 |
  \changeUp
  d'8 [
  \changeDown
  b,8 ]
  \changeUp
  e'8 [
  \changeDown
  gis,8 ]
  \changeUp
  cis'8 [
  \changeDown
  a,8 ~ ] a,4 |
}
\addlyrics {
  Real -- ly was no mi -- ra -- cle what hap -- pened
}