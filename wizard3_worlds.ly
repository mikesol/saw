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

fugue = \relative c' {
  \partial 4
  \clef bass
  \key c \minor
  g4 |
  ees f8 f g g aes4 |
  bes8 aes4 g8 ~ g4 g8 aes |
  g f4 r8 f g f ees ~ |
  ees8 r ees f ees d4 g8 ~ |
  g c,
}

\markup "fugue (probably in the bass, chopped up)"
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

scat = \relative c' {
  \key aes \major
  \times 2/3 { bes8 c ees } g8 f r4 \times 2/3 { c8 ees f } |
  bes aes \times 2/3 { ces, ees f } aes g
}

\markup "scat (from merry)"
\scat

bam = \relative c' {
  \key aes \major
  r8 beses4. r8 g4. |
  r8 aes4. r8 ces4. |
  r8 bes4. r8 beses4. |
  r8 aes4. r8 f4. |
}

\markup "BAM!"
\scat