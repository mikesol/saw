#(set-global-staff-size 15.87)

\version "2.17.0"
\include "defs-devel.ly"

#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 15.87)
#(set-accidental-style 'modern-cautionary)

rall = \mark \markup \italic "rall."
moltorall = \mark \markup \italic "molto rall."

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
}

\header {
  title = "If I Were King of the Forest"
  subtitle = "for Claude Debussy"
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

\include "kotf9a.ily"

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName } <<
      \new Voice = "soprano" { \numericTimeSignature
	\prefatoryMatter
        \sopranoKOTFnineA
       }
    >>
    \new Staff \with { instrumentName = \dortyName } <<
      \new Voice = "mezzo" { \numericTimeSignature
	\prefatoryMatter
        \mezzoKOTFnineA
      }
    >>
    \new Staff \with { instrumentName = \ttoName } <<
      \new Voice = "alto" { \numericTimeSignature
	\prefatoryMatter
        \altoKOTFnineA
      }
    >>
    \new Staff \with { instrumentName = \fakbydName } <<
      \new Voice = "tenor" { \numericTimeSignature
	\prefatoryMatter
        \tenorKOTFnineA
      }
    >>
    \new Staff \with { instrumentName = \wysrName } <<
      \new Voice = "bass" { \numericTimeSignature
	\prefatoryMatter
        \bassKOTFnineA
      }
    >>
  >>
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName } <<
      \new Voice = "soprano" { \numericTimeSignature
	\prefatoryMatter
        \sopranoKOTFnineB
       }
    >>
    \new Staff \with { instrumentName = \dortyName } <<
      \new Voice = "mezzo" { \numericTimeSignature
	\prefatoryMatter
        \mezzoKOTFnineB
      }
    >>
    \new Staff \with { instrumentName = \ttoName } <<
      \new Voice = "alto" { \numericTimeSignature
	\prefatoryMatter
        \altoKOTFnineB
      }
    >>
    \new Staff \with { instrumentName = \fakbydName } <<
      \new Voice = "tenor" { \numericTimeSignature
	\prefatoryMatter
        \tenorKOTFnineB
      }
    >>
    \new Staff \with { instrumentName = \wysrName } <<
      \new Voice = "bass" { \numericTimeSignature
	\prefatoryMatter
        \bassKOTFnineB
      }
    >>
  >>
}
