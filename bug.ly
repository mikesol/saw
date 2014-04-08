
prefatoryMatter = {
  \key ees \major
  \autoBeamOff
  \tempo 4=52
}

scorePrefatoryMatter = {
  \prefatoryMatter
  \partial 4
}

midiPrefatoryMatter = {
  \prefatoryMatter
  r2.
}

soprano = \relative c'' {
  r4 |
  R1 |
  R1 |
  r2. g8 aes |
  bes g ees f g ees4 f8 |
  g ees c d ees c4 ees8 |
  bes4 bes d'8 c bes aes |
  g f g aes bes g ees f |
}


\score {
    \new Staff
      \new Voice = "soprano" {
	\midiPrefatoryMatter
        \soprano
      }
  \midi {}
}
%}