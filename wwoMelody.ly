mel = \relative c' {
  \key aes \major
  \time 3/8
  ees4. |
  aes4 ees8 |
  c4 des8 |
  ees8 aes4 ~ |
  aes8 r ees |
  f ees des |
  c des bes |
  aes4. ~ |
  aes8 r aes |
  aes4 aes8 |
  aes'4 aes8 |
  g8 g g |
  f4 f8 |
  bes8 bes bes |
  bes4 g8 |
  ees4. ~ |
  ees8 r ees |
  f f f |
  f f g |
  aes4 ees8 |
  c4 ees8 |
  des des c |
  bes4 des8 |
  c4 bes8 |
  aes4 aes8 |
  aes4 aes8 |
  aes'4 aes8 |
  g4 g8 |
  f4 f8 |
  bes4. ~ |
  bes4. ~ |
  bes4. ~ |
  bes8 r aes |
  bes bes bes |
  bes bes bes |
  bes4 g8 |
  ees4. |
  des'8 c bes |
  aes g f |
  ees4-. r8 |
  ees4.
  aes4 ees8 |
  c4 des8 |
  ees8 aes4 ~ |
  aes8 r bes |
  c c c |
  bes c bes |
  aes4. ~ |
  aes4 r8 \bar "|." |
}

lyr =
\lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause of the won -- der -- ful things he does.
  Won -- der -- ful things that he does.
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  }

<<
\new Staff \new Voice = "foo" \mel
\new Lyrics \lyricsto "foo" \lyr
>>