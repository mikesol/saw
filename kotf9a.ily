
% M3 <--- F#
% m3
% M11
% M7 <--- D
% M6
% M7 <--- E
% M3 <--- C 
% a4
% m7

%nineBTheme = { fis' aes' g' d' f' e' c' b dis' }
%nineBTheme = { fis' aes' g' c' f' e' gis b dis' } UGH

prefatoryMatter = {
  \autoBeamOff
  \time 4/4
  \partial 4
}

sopranoKOTFnineA = \relative c'' {
  \times 2/3 { r8 g4 } |
  gis2 a |
  ais1 |
}

mezzoKOTFnineA = \relative c' {
  \times 2/3 { r8 d4 } |
  dis2 eis |
  eis1 |
}

altoKOTFnineA = \relative c' {
  \times 2/3 { r8 c4 } |
  cis2 dis |
  cis1 |
}

tenorKOTFnineA = \relative c' {
  \clef "treble_8"
  \times 2/3 { r8 aes4 } |
  a2 b |
  gis1 |
}

bassKOTFnineA = \relative c {
  \clef "bass"
  \times 2/3 { r8 bes4 } |
  b2. r4 | % cis fis
}

%%%%%%B

sopranoKOTFnineB = \relative c'' {
  \times 2/3 { r8 g4 } |
  a2 ais |
  b1 |
}

mezzoKOTFnineB = \relative c' {
  \times 2/3 { r8 d4 } |
  f2 fis |
  g1 |
}

altoKOTFnineB = \relative c' {
  \times 2/3 { r8 c4 } |
  cis2 d |
  ees1 |
}

tenorKOTFnineB = \relative c' {
  \clef "treble_8"
  \times 2/3 { r8 aes4 } |
  g2 ces |
  c1 |
}

bassKOTFnineB = \relative c {
  \clef "bass"
  \times 2/3 { r8 bes4 } |
  bes2. r4 | % cis fis
}

%%%%%%C

sopranoKOTFnineB = \relative c'' {
  \times 2/3 { r8 g4 } |
  bes2 a |
  g1 |
}

mezzoKOTFnineB = \relative c' {
  \times 2/3 { r8 d4 } |
  f2 fis |
  g1 |
}

altoKOTFnineB = \relative c' {
  \times 2/3 { r8 c4 } |
  cis2 d |
  ees1 |
}

tenorKOTFnineB = \relative c' {
  \clef "treble_8"
  \times 2/3 { r8 aes4 } |
  g2 ces |
  c1 |
}

bassKOTFnineB = \relative c {
  \clef "bass"
  \times 2/3 { r8 bes4 } |
  bes2. r4 | % cis fis
}
