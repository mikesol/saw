\version "2.19.0"

\paper {
  ragged-last-bottom = ##f
}

breaks = {
  s4
  \repeat unfold 6 { \repeat unfold 4 s1 \break } |
}

rh = \relative c' {
  \time 4/4
  \partial 4
  \key aes \major
  ees4
  aes4 ees c des |
  ees aes2 ges4 |
  f4 ees8 des c4 des8 bes |
  aes2 r4 c |
  aes aes aes' aes |
  g g8 g f4 f |
  bes bes8 bes bes4 g |
  ees2 r4 ees |
  f4 f8 f f4 f8 g |
  aes4 ees c ees |
  des4 des8 c bes4 des |
  c bes aes c |
  aes aes aes' aes |
  g g f f |
  bes1 ~ |
  bes2 r4 bes |
  bes bes8 bes bes4 bes8 bes |
  bes4 g ees2 |
  des'4 c8 bes aes4 g8 f |
  ees2 ees |
  aes4 ees c des |
  ees aes2 bes4 |
  c4 c8 c bes4 c8 bes |
  aes2 r4 g |
}

lh = \relative c {
  \key aes \major
  \clef bass
  r4
  aes c ees des |
  c f f, a |
  bes c8 des ees4 ees, |
  f g aes g |
  f f' ees c |
  bes ees d g |
  c,2 f4 c |
  bes2 ees |
  des4 c bes ees |
  c bes aes ees' |
  ges bes, ees aes, |
  des ees f e |
  f f e e |
  ees e f aes, |
  des ees f ges |
  aes bes c d, |
  ees aes g f |
  ees c' bes aes |
  g4 aes8 bes c aes d bes |
  ees bes g ees des c bes ees |
  aes,4 c ees des |
  c ces fes d |
  ees aes g ees |
  f g aes g |
}

\new PianoStaff <<
  \new Staff << \rh \breaks >>
  \new Staff \lh
>>