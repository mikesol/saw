\version "2.17.0"
\include "defs-devel.ly"
\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
  %max-systems-per-page = #2
  min-systems-per-page = #3
}

#(ly:set-option 'point-and-click #f)

MyRed = \Red
MyBlack = \Black
myred = \once \override NoteHead.color = #red
myblack = \revert NoteHead.color
%MyRed = \revert NoteHead.color
%MyBlack = \revert NoteHead.color
%myred = \revert NoteHead.color
%myblack = \revert NoteHead.color

agogic = #(make-articulation "downbow")

\header {
  title = "Optimistic Voices"
  subtitle = \markup { for John Oswald }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = { << {
  \time 2/2
  \tempo "Allegro" 2=108
  \key ees \major
  s2.
  \key e \major
  s4 \mark "accel. poco a poco" s2
  \key f \major
  s2.
  \key ges \major
  s2.
  \key g \major
  s2.
  \key aes \major
  s2.
  \key a \major
  s2.
  \key bes \major
  s2.
  \key ces \major
  s2.
  \key c \major
  s2.
  \key des \major
  s2.
  \key d \major
  s2.
  \key ees \major
  s2.
  \key e \major
  s2.
  \key f \major
  s2.
  \key ges \major
  s2.
  \key g \major
  s2.
  \key aes \major
  s2.
  \key a \major
  s2.
  \key bes \major
  s2.
  \key ces \major
  s2.
  \key c \major
  s2.
  \key des \major
  s2.
  \key d \major
  s2.
  \key ees \major
  s2.
  \key e \major
  s2.
  \key f \major
  s2.
  \key ges \major
  s2.
  \key g \major
  s2.
  \key aes \major
  s2.
  \key a \major
  s2.
  \key bes \major
  s2.
} { \unfoldChange #200 #260 #192 \bar "||" } >> 
}
#(define-markup-command (smart-flat layout props text) (markup?)
  "nice looking flat"
  (interpret-markup layout props
    (markup #:normal-text #:concat (#:general-align Y UP text #:hspace 0.2 #:general-align Y UP #:smaller #:smaller #:smaller #:smaller #:flat))))

#(define (position-hack grob)
     (let* ((pos (ly:tuplet-bracket::calc-positions grob))
            (mx (max (car pos) (cdr pos))))
       (cons mx mx)))

marks = {
  \time 2/2
  \tempo "Allegro" 2=108
  \override TupletBracket.direction = #UP
  \override TupletBracket.bracket-flare = #'(0.5 . 0.5)
  \override TupletBracket.positions = #position-hack
  \override TupletBracket.bracket-visibility = ##t
  \set tupletFullLength = ##t
  %\set tupletFullLengthNote = ##t
  \override TupletNumber.text = \markup \smart-flat "Mi"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Mi"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Fa"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "Sol"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Sol"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "La"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "La"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "Si"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "Do"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Do"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "Ré"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Ré"
  \times 1/1 { s2. }
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Mi"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Fa"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "Sol"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Sol"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "La"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "La"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "Si"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "Do"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Do"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "Ré"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Ré"
  \times 1/1 { s2. }
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Mi"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Fa"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "Sol"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "Sol"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "La"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \normal-text "La"
  \times 1/1 { s2. }
  \override TupletNumber.text = \markup \smart-flat "Si"
  \times 1/1 { s2. }
  s1*15 \bar "||"
}
prefatoryMatter = {
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c'' { \autoBeamOff
  \prefatoryMatter
  %{ees%} r4 ees^\f d8 ees %{e%} dis4 |
  e e %{f%} e8 f e4 |
  f %{ges%} ges f8 ges ees4 %{g%} |
  d2. %{aes%} r4 |
  %%%
  r4 aes' %{a%} gis8 a gis4 |
  a4 %{bes%} bes a8 bes g4 %{ces%} |
  ges2. %{c%} r4 |
  r4 c, %{des%} ( des ) d |  %% TT sub...
  %%%%
  r4 %{d%} e4 g8 g g4 %{ees%} |
  aes2 g4 %{e%} a |
  gis2 %{f%} g4 a |
  aes4 ( %{ges%} beses4 ) ges aes |
  %%%
  %{g%} g2 fis4 %{aes%} aes4 |
  g2 %{a%} fis4 gis |
  fis4 %{bes%} ( g2. ) |
  aes2-\bendAfter #-3 r4 ees4-. |
  %%%
  r4 c4 %{des%} c8 des c4 |
  des4 %{d%} d cis8 d cis4 |
  %{ees%} ees4 ees d8 ees %{e%} cis4 |
  b2 %{f%} c4 des4 |
  %%%
  r4 %{ges%} ges f8 ges f4 |
  %{g%} g g4 fis8 g %{aes%} f4 |
  ees4 ees %{%} dis8 dis %{a%} dis4 |
  d4 %{bes%} f g a |
  \key ees \major
  R1 f,4 c'2. |
  R1 d,4^\p b'2. |
  R1 g4^\mf d'2. |
  R1 ees4^\p g2. |
  R1 ees4^\f aes2. |
  \key e \major
  R1 eis4^\mp fis2. |
  g4^\f bes2. |
  R1 |
  R1 |
}

sopranoWords = \lyricmode {
  You're out of the woods
  You're out of the dark
  You're out of the night
  Step in -- to the sun
  Step in -- to the light

  Wi -- zard

  Keep straight a -- head for the most glo -- ri -- ous place
  On the face of the earth or the sky

  Wi -- zard

  You're out of the woods
  You're out of the dark
  You're out of the night

  Wi -- zard

  Step in -- to the sun
  Step in -- to the light
  March up to the gate and bid it %open

  \repeat unfold 7 { O -- pen! }
}

mezzo = \relative c'' { \autoBeamOff
  \prefatoryMatter
  r4 c^\f c8 c cis4 |
  cis cis cis8 d cis4 |
  d ees d8 ees c4 |
  c2. r4 |
  r ees dis8 e8 dis4 |
  ees e e8 e e4 |
  fes2. r4 |
  r4 bes, ( ces2 ) |
  r4 cis4 d8 d d4 |
  c2 ces4 e |
  dis2 e4 e |
  d ( ges ) ees ees |
  e2 ees4 des |
  c2 c4 cis |
  b4 ees4 ~ ees c |
  fes2-\bendAfter #-3 r4 aes,-. |
  r4 a a8 bes a4
  bes b ais8 b ais4 |
  c4 c b8 c bes4 |
  a2 bes |
  r4 ees4 ees8 ees ees4 |
  des des c8 des ces4 |
  g g fisis8 fisis fisis4 |
  a4 b ees ees |
  \key ees \major
  R1 d,4 aes'2. |
  R1 b,4^\p f'2. |
  R1 c4^\mf bes'2. |
  g4^\mp b2. | d4^\p ees2. |
  R1 c4^\f ees2. |
  \key e \major
  R1 cis4^\mp e2. |
  a,4^\f d2. |
  R1 |
  R1 |
}

mezzoWords = \lyricmode {
  You're out of the woods
  You're out of the dark
  You're out of the night
  Step in -- to the sun
  Step in -- to the light

  Wiz

  Keep straight a -- head for the most glo -- ri -- ous place
  On the face of the earth or the sky

  or the
  Wi -- zard

  You're out of the woods
  You're out of the dark
  You're out of the night

  Wiz

  Step in -- to the sun
  Step in -- to the light
  March up to the gate and bid it %open
  \repeat unfold 8 { O -- pen }
}

alto = \relative c'' { \autoBeamOff
  \prefatoryMatter
  r4 bes^\f a8 bes ais4 |
  b4 b b8 b b4 |
  bes ces ces8 ces a4 |
  g2 a4 b |
  c4 c4 bis8 cis8 bis4 |
  c cis cis8 cis cis4 |
  ces2 ces4 ( c ) |
  g2 aes4 g |
  r4 bes b8 b b4 |
  beses2 beses4 fis |
  f2 bes4 g |
  b4 ( c ) c c |
  c2 c4 bes |
  bes2 a4 b4 |
  gis bes2. |
  ges2-\bendAfter #-3 r4 f-. |
  r4 g g8 aes f4
  g gis gis8 gis gis4 |
  a aes aes8 aes g4 |
  fis2 g |
  r4 bes4 a8 bes a4 |
  bes bes a8 bes aes4 |
  f f eis8 eis eis4 |
  fis4 gis b b |
  \key ees \major
  R1 c,4 f2. |
  \clef "treble_8"
  R1 f,4^\p d'2. |
  b4^\mf d2. |
  aes4 fis'2. |
  ees4^\mp fis2. |
  \clef treble
  c'4^\p b2. |
  \clef bass
  c,,4^\f ees2. |
  \clef treble
  aes'4 ees'2. |
  \key e \major
  dis,4^\mf e2. |
  a4^\mp cis2. |
  dis,4^\f e2. |
  cisis4^\mf dis2. |
  R1 |
}

altoWords = \lyricmode {
  You're out of the woods
  You're out of the dark
  You're out of the night

  Wi -- zard
  Step

  Step in -- to the sun
  Step in -- to the light

  The Wi -- zard of

  Keep straight a -- head for the most glo -- ri -- ous place
  On the face of the earth or the sky

  or
  Wi -- zard

  You're out of the woods
  You're out of the dark
  You're out of the night

  Wiz

  Step in -- to the sun
  Step in -- to the light
  March up to the gate and bid it %open
  \repeat unfold 12 { O -- pen } 
}

tenor = \relative c'' {
  \autoBeamOff
  \prefatoryMatter
  \clef "treble_8"
  r4 g^\f fis8 g fisis4 |
  g g gis8 gis gis4 |
  a aes4 aes8 aes ges4 |
  e2 f4 g |
  aes4 f fis8 fis fis4 |
  fis g g8 g g4 |
  aes2 aes4 ( a ) |
  e2 f2 | 
  r4 g e8 e e4 |
  ees2 d4 cis |
  b2 d4 c |
  f4 ( ees ) aes f |
  a2 a4 f |
  ees2 ees4 e4 |
  d4 c ~ c4 e |
  des2-\bendAfter #-3 r4 des-. | % jajaja TT Sub h4x0r
  r4 e e8 f ees4
  e f fis8 f fis4 |
  f f f8 f e4 |
  cis2 e |
  r4 des c8 des c4 |
  e e dis8 e d4 |
  des des bis8 bis bis4 |
  c4 d cis cis |
  \key ees \major
  R1 |
  aes4 d2. |
  f,4^\p aes2. |
  R1 |
  f4^\mf f2. |
  R1 |
  b4^\mp d2. |
  R1 |
  \clef bass
  a,4^\f c2. |
  \clef treble
  g''4 c2. |
  \key e \major
  R1 |
  \clef "treble_8"
  fis,4^\mp a2. |
  b,4^\f c2. |
  R1 |
  b4^\ff b2. |
  
}

tenorWords = \lyricmode {
  You're out of the woods
  You're out of the dark
  You're out of the night

  Wi -- zard
  Step

  Step in -- to the sun
  Step in -- to the light

  The Wi -- zard

  Keep straight a -- head for the most glo -- ri -- ous place
  On the face of the earth or the sky

  or the
  Wi -- zard

  You're out of the woods
  You're out of the dark
  You're out of the night

  Wiz

  Step in -- to the sun
  Step in -- to the light
  March up to the gate and bid it %open
  \repeat unfold 9 { O -- pen }
}

bass = \relative c {
  \autoBeamOff
  \prefatoryMatter
  \clef bass
  bes2.^\f bes4 |
  bes2. bes4 |
  bes2. bes4 |
  bes2 c4 aes |
  r4 bes ~ bes bes |
  r4 bes ~ bes bes |
  bes2 d |
  c g |
  aes2 aes
  f f |
  g2 g |
  ges ges |
  f f |
  g g |
  aes a |
  bes b |
  bes2. bes4 |
  bes2. bes4 |
  bes2. c4 |
  ees2 a, |
  r4 bes ~ bes bes |
  r4 bes ~ bes bes |  
  bes2 a |
  c ges |
  f4 aes2. |
  R1 |
  b4^\p d2. |
  R1 |
  g,4^\mf b2. |
  R1 |
  c4^\mp bes'2. |
  R1 |
  fis,4^\f a2. |
  R1 |
  \key e \major
  a4^\mf cis2. |
  R1 |
  c4^\f fis2. |
  R1 |
  b,4^\ff b2. |
}

bassWords = \lyricmode {
  You
  the woods
  the dark
  the night Wi -- zard
  Step the
  Step the
  light
  The Wi -- zard
  Keep a -- head
  most
  glo -- rious
  place
  on 
  face of
  earth and
  sky
  the Wi -- zard
  You
  the woods
  the dark
  the night Wiz
  Step the
  Step the
  light March to the
  \repeat unfold 8 { O -- pen }
}
%%% SCORE
#(set-global-staff-size 15.15)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      } {
        \marks
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { << { \numericTimeSignature
        \mezzo
      } {
        \marks
      } >> }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { << { \numericTimeSignature
        \alto
      } {
        \marks
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \tenor
      } {
        \marks
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \key ees \major \bass
      } {
        
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \override DynamicLineSpanner #'direction = #UP
      %\override Slur #'direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      %\consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override TimeSignature #'whiteout = ##t
    }
    \context {
      \Lyrics
      %\override LyricText #'whiteout = ##t
      \override LyricText #'layer = #6
    }
    \context {
      \Score
      %\remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}

%%% piano redux
%{
#(set-global-staff-size 20)
\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \soprano \marks >> }
      \new Voice = "2" { \voiceTwo \mezzo }
      \new Voice = "3" { \voiceThree \alto }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne << \tenor \marks >> }
      \new Voice = "5" { \voiceTwo \bass }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      %\consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override TimeSignature #'whiteout = ##t
    }
    \context {
      \Lyrics
      %\override LyricText #'whiteout = ##t
      \override LyricText #'layer = #6
    }
    \context {
      \Score
      %\remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}
%}
%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      } {
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \bass
      }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
  >>
  \midi {}
}
