\version "2.19.0"

\include "note_list.ly"

\noteifyMusic #"melody_a" \relative c' {
  b2. fis'8 e |
  ais,2 ~ ais8 b8 cis d |
  fis e d2 cis4 |
  b1 |
}

\noteifyMusic #"melody_b" \relative c' {
  b2. fis'8 e
  ais,2 ~ ais8 b8 cis d |
  fis e d2 cis4 |
  d1 |
}

\noteifyMusic #"melody_c" \relative c' {
  r4 b'2 a8 g |
  fis1 |
  r4 g2 fis8 e |
  d1 |
}