\header {
  title = \wizardTwoTitle
  subtitle = \wizardTwoDedication
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon & Ryan Veillet"
}
\score {
  <<
    \new Staff = upper \with { instrumentName = \markup \right-column { Soprano Mezzo Contralto } } { \new Voice = "singer" \rhWizTwo }
    \new Lyrics \lyricsto "singer" \joke
    \new Staff = lower \with { instrumentName = \markup \right-column { Tenor Bass }  } { \new Voice = "other" \lhWizTwo }
    \new Lyrics \lyricsto "other" \joke
  >>
  \layout {
    \context {
      \GrandStaff
      \accepts "Lyrics"
    }
    \context {
      \Lyrics
      \consists "Bar_engraver"
    }
  }
}