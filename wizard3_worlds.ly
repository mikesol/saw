wiz = \relative c' {
  \partial 4
  \key aes \major
  ees4 |
  aes ees c des |
  ees aes2 ees4 |
  \times 2/3 { f ees des } \times 2/3 { c des bes } |
  aes2. c4 |
  aes aes aes' aes
}

\markup "main theme"
\wiz

fugue = \relative c'' {
  \partial 4
  \key c \minor
  g4 |
  ees f8 f g g aes4 |
  bes8 aes4 g8 ~ g4 g8 aes |
  g f4 r8 f g f ees ~ |
  ees8 r ees f ees d4 g8 ~ |
  g c,
}

\markup "fugue"
\fugue

sus = \relative c'' {
  \key f \major
  a2. fis4 |
  g8 g r4 r2 |
  g2. e4 |
  f8 f r4 r2 |
  c'2. a4 |
  bes8 bes r4 r2 |
}

\markup "sus"
\sus

walkingbass = \relative c {
  \key aes \major
  \clef bass
  aes4 bes c g8 ges |
  f4 aes c b |
  bes e, ees g |
  aes 
}

\markup "walking bass"
\walkingbass