\header {
  title = "The Wonderful Wizard of Oz" %(1)"
  subtitle = \markup { for E.Y. Harburg and Harold Arlen }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon & Ryan Veillet"
}
\score {
  <<
    \new Staff = upper \with { instrumentName = \markup \right-column { Bitch Dörty Ttö } } { \new Voice = "singer" \rhWizTwo }
    \new Lyrics \lyricsto "singer" \joke
    \new Staff = lower \with { instrumentName = \markup \right-column { Fakbyd Wysr }  } { \new Voice = "other" \lhWizTwo }
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