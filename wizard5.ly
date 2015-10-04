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
  %indent = 1.9\in
}
widedin = \once \override DynamicText . extra-spacing-width = ##f
#(ly:set-option 'point-and-click #f)

\header {
  title = "The Wonderful Wizard of Oz" %(1)"
  %subtitle = \markup { for Carl Stalling, Raymond Scott, Дмитрий ШостаковичN and Béla Bartók }
  subtitle = \markup { for Carl Stalling and Vadim Petrov }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

swing = \markup \italic "sit swng"
rall = \markup \italic "rall."
accel = \markup \italic "accel."
nothing = {}

marks = {
  \time 4/4
  \partial 4.
  \tempo "Presto" 4=216
  s4. |
  s1*30 |
  s2 \mark \rall \unfoldChange #216 #140 #12 |
  \mark \accel
  \unfoldChange #140 #216 #16 |
  \set Score.tempoWholesPerMinute = #(ly:make-moment 160 4 0 0)
  s1 |
  \set Score.tempoWholesPerMinute = #(ly:make-moment 200 4 0 0)
  s1 |
  \tempo "Adagio" 4=68
  s1 |
}

prefatoryMatter = {
  \key cis \major
  #(set-accidental-style 'modern-cautionary)
}


soprano = \relative c'' { \autoBeamOff
  \prefatoryMatter
  r4. |
  R1*5 |
  r2 r8 gis8^\pp^\< gisis ais |
  b4^\p^\> ais a gis |
  g fis eis^\pp e |
  dis4 r4 r2 |
  r8 a'-.^\p dis-. gis-. f-. b,-. r4 | %d gis, bis |
  R1 |
  r8 bes-.^\mp e-. a-. fis-. c-. r4 |
  R1 |
  r2 r8 e8^\mp^\< f fis |
  g4--^\f fis eis e |
  g4-- fis eis e |
  g4-- fis eis e |
  g4-- fis eis8 r r4 |
  R1*5 |
  r2. aisis,4--^\mf |
  r2.. bis,8^\f |
  cis16^\p^\< cisis dis disis eis8 fisis gis4-.^\f r |
  g8^\mp cis16 fis, eis8 b'16 e, dis8 d cis4 |
  fis8-. b-. e,-. dis-. d-. cis-. c4 |
  \lo d--^\p^\swing \sh cis \lo d \sh fis-- \lo eis \sh fis \lo a-- \sh gis |
  \lo a \sh d-- \lo cis \sh d fis4-. r |
  R1 |
  R1 |
  R1 |
  r2 r8 eis,^\p^\< fis fisis |
  << { \afterGrace \pitchedTrill gis1\startTrillSpan a { fisis32 [ gis ] } |
  cis4\stopTrillSpan-. } { s2.^\fp s4^\< s4^\f } >> r r2 |
  R1 |
  r4 e,16-. e-. e-. e-. e2 ~ |
  e4. r8 r2 |
}

sopranoWords = \lyricmode {
  he is the
  \repeat unfold 9 wiz
  \repeat unfold 2 { He is the Wi -- zard }
  he is the \repeat unfold 15 wiz
  cause
  The won -- der -- ful, the wiz of Oz
  cause of the won -- der -- ful things he does
  off to see the wiz of Oz
  won -- der -- ful the Wi -- zard won -- der -- ful the wiz of Oz
  he is the Wi -- zard
}

mezzo = \relative c' { \autoBeamOff
  \prefatoryMatter
  r4. |
  R1 |
  r2 r8 eis8^\pp^\< fis fisis |
  gis4^\p^\> g fis eis |
  e dis d^\pp cis |
  r2 r8 cisis^\< dis disis |
  eis4^\p^\> e dis d |
  cis^\pp bis b ais |
  a gis g fis |
  f4 r r8 b'^\< c cis |
  d4^\mp^\> cis c^\p b |
  ais a gis8 bis^\< cis cisis |
  dis4^\mf^\> d cis^\mp c |
  b ais a gis |
  g8 c^\< cis d dis4 d |
  cis c b--^\f ais |
  a gis b-- ais |
  a gis b-- ais |
  a gis b8-- r r4 |
  R1*5 |
  r4 eis,4-_^\mp r fisis--^\mf |
  r2.. bis,8^\f |
  cis16^\p^\< bis cis bis cis8 dis cisis4-.^\f r |
  R1 |
  R1 |
  \lod r4. \sh d8 \lo cis \sh d \lo fis \sh eis |
  \lo fis \sh a \lo gis \sh a d4-. r |
  R1 |
  r8 eis,^\p^\< fis fisis gis4-.^\mf r |
  r2 r8 cisis,^\p^\< dis disis |
  eis4^\mf e dis d^\< |
  << { \pitchedTrill eis1\startTrillSpan fis
  eis4\stopTrillSpan-. } { s2.^\fp s4^\< s4^\f } >> r r2 |
  R1 |
  R1 |
  r4 r16 e fis g gis16-. gis16-. gis16-. gis16-. gis4 ~ |
  gis8-. g-. fis16 gis g8-. fis8-. eis8-. e4 |
}

mezzoWords = \lyricmode {
  he is the
  \repeat unfold 8 wiz
  he is the
  \repeat unfold 13 wiz
  he is the \repeat unfold 7 wiz
  he is the \repeat unfold 9 wiz
  he is the \repeat unfold 17 wiz
  cause cause
  The won -- der -- ful, the wiz of Oz
  the Wi -- zard won -- der -- ful the wiz of Oz
  be -- cause be -- cause
  he is the \repeat unfold 4 wiz
  Wi -- zard
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  \clef "treble_8"
  r4. |
  r2 r8 dis^\pp^\< disis eis |
  fis4^\p^\> eis e\pp dis |
  d cis bis b |
  ais a gis g |
  fis8 bis^\< cis d dis4^\p^\> d |
  cis^\pp bis b ais |
  a gis g fis |
  eis e dis d |
  cis8 \clef treble  e'^\< f fis g4^\mp^\> fis |
  f8\! g^\< gis a ais4^\mp^\> a |
  gis g\! fis f |
  e4^\< dis d cis |
  bis^\mp b ais8 ais'^\< b c |
  cis4^\mf^\< c b ais |
  a^\f gis g fis |
  eis e dis d |
  cis c b ais |
  a gis g8 r r4 |
  R1 |
  R1 |
  R1 |
  R1 |
  r2. cisis4-_^\p |
  r4 cisis4-_^\mp r eis-_^\mf |
  R1 |
  b8^\p^\< ais gisis ais ais4-.^\f r |
  dis4^\p d cis c |
  b ais a gis |
  \lod a4.-- \sh r8 r2 |
  R1 |
  cis8^\mp^\< eis16 cisis bis8 e16 c b8-.^\mf bis-.^\< cis-. cisis-. |
  dis2^\fp^\< ~ dis8-.^\mf ais-.^\p^\< aisis-. bis-. |
  cis4^\mf^\> bis b^\mp ais |
  b^\< c cis^\mf d |
  dis4^\f-. r r2 |
  cis4^\f-. r r2 |
  R1 |
  r2 dis16-. dis-. dis-. dis-. dis8 d-. |
  cis16 dis d8-. cis-. c-. b4 r |
  fis'16-. fis-. fis-. fis-. fis4 ~ fis8 eis-. e16 fis eis8-. |
  e8-. dis-.
}

altoWords = \lyricmode {
  he is the
  \repeat unfold 13 wiz
  he is the
  \repeat unfold 15 wiz
  he is the
  \repeat unfold 3 wiz
  he is the
  \repeat unfold 13 wiz
  he is the
  \repeat unfold 19 wiz
  Oz cause cause
  one be -- cause be -- cause
  \repeat unfold 8 wiz
  won
  Wi -- zard of Oz, he is one be -- cause be -- cause
  he is the \repeat unfold 8 wiz
  Wi -- zard
  
}

tenor = \relative c' { \autoBeamOff
  \clef "treble_8"
  \prefatoryMatter
  ais8^\pp^\< aisis bis |
  cis4^\p^\> bis b\pp ais |
  a gis g fis |
  eis e dis d |
  cis c b8^\< gis' gisis ais |
  b4^\p^\> ais a^\pp gis |
  g fis eis e |
  dis d cis bis |
  b ais a8 bis'^\< cis cisis |
  dis4^\mp^\> d cis^\p c |
  b ais a8 cis^\< d dis |
  e4^\mf^\> dis d^\mp cis |
  c b ais a |
  gis8 fis'^\< fisis gis a4^\mf^\> gis |
  g\!^\< fis f e |
  f^\f fis, g gis |
  a ais b c |
  cis d dis e |
  eis fis g8 r r4 |
  %eis \glissando ais, \glissando eis %{pushes down oct%} \glissando ais, \glissando |
  %eis' \glissando ais, \glissando eis' \glissando ais, \glissando |
  %eis' \glissando ais, \glissando eis' \glissando ais, \glissando |
  %eis' \glissando ais, \glissando eis'8 r r4 |
  R1 |
  R1 |
  R1 |
  R1 |
  r4 cisis,,4-_^\pp r eis-_^\p |
  r4 gisis4-_^\mp r e8^\mf fisis16 gisis |
  ais8 ais16 ais ais8-. cisis-. cis-. bis-. ais-. a^\f^\> |
  gis g fis^\!^\< f e4^\f-. r4 |
  r8 eis r b r eis r b |
  r eis r b r eis r b |
  fis'4-. r4 r2 |
  R1 |
  a4^\p^\< gis g4.^\> r8\! |
  ais4^\< a gis8-.^\mf r r4 |
  r8 eis-.^\mp r eis-. r eis-. r eis-. |
  r8 eis-. r eis-. r eis4^\< gisis8 |
  b4-.^\f r r2 |
  R1 |
  bis16-.-^^\> bis-. bis-. bis-. bis4^\mp ~ bis8-. b-. ais16 bis b8-. |
  ais8-. a-. gis4 r2 |
  r2. d'16 d d d |
  d4 ~ d8-. cis-. c16 d cis8-. c8-. b-. |
  ais4 r
}

tenorWords = \lyricmode {
  he is the
  \repeat unfold 15 wiz
  he is the
  \repeat unfold 15 wiz
  he is the
  \repeat unfold 7 wiz
  he is the
  \repeat unfold 9 wiz
  he is the
  \repeat unfold 21 wiz
  zard Oz cause cause
  Oh the Wi -- zard of Oz is one be -- cause
  is one be -- cause be -- cause
  \repeat unfold 4 { Wi -- zard }
  won
  \repeat unfold 6 wiz
  \repeat unfold 6 wiz
  Wi -- zard wiz
  cause of all the won -- der -- ful the won
}

bass = \relative c { \autoBeamOff
  \prefatoryMatter
  \clef bass
  r4. |
  R1*7 |
  %R1
  %r8 ais^\pp^\< r4 r8 aisis4 aisis8 |
  %r8 bis8 r4 cis8 r cis r |
  %r8 cisis r4 r8 dis4 dis8 |
  %r8 disis8 r4 eis8 d' dis e |
  %r8 ais^\pp^\< r4 r2 |
  %r8 aisis8 r4 r2 |
  %r8 bis r4 r2 |
  %r8 cis8 r4 r8 d' dis e |
  r2. gis4^\pp |
  r8 gisis4^\p r8 r4. ais8 ~ |
  ais r8 r4 r8 aisis4^\mp r8 |
  r4. bis8 ~ bis r8 r4 |
  r8 cis4^\mf r8 r8 cisis^\mp^\< dis e |
  f4^\mf^\> e dis d |
  cis\!^\< c b ais \glissando |
  dis,1^\f ~ |
  dis ~ |
  dis ~ |
  dis2 \lo r8^\swing^\mf \sh eis8 \lo fisis \sh gisis |
  \repeat unfold 4 { \lo ais8 \sh ais } |
  \lo ais8 \sh ais \lo ais \sh cisis \lo r \sh ais \lo gisis \sh fisis |
  \lo eis8 \sh eis \lo eis \sh eis \times 2/3 { eis eis eis } \lo eis \sh eis |
  \times 2/3 { eis eis eis } \lo fisis8 \sh gisis ais4-. r |
  dis,4--^\mp \lo ais'8 \sh dis, \lo dis-- \sh r \lo ais' \sh dis,--^\mf |
  \lo r \sh dis \lo ais' \sh dis, dis4-- r4 |
  R1 |
  r2. eis4-.^\mf |
  R1*3 |
  r2. ais4^\mp |
  R1*4 |
  gis'4-.^\f r r2 |
  r4 cis,-_ r2 |
  r4 a'16-. a-. a-. a-. a4 ~ a8-. gis-. |
  g-. fis f4 ~ f4. fis16 g |
  gis8 g fis4
}

bassWords = \lyricmode {
  %wi Wi -- zard
  %wi Wi -- zard
  %wi Wi -- zard
  %wi wiz
  %%%
  %Wi -- zard of Oz
  The Wi -- zard of Oz is
  He is the \repeat unfold 9 wiz
  You know we're off to see the wi -- zard, he's the wi -- zard of Oz
  You know we hear he is a wiz of a wiz if ev -- er a wiz there was.
  Wi -- zard of Oz is one be -- cause be -- cause
  cause
  Oz
  wiz
  Oz
}

%%% SCORE
#(set-global-staff-size 16)

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
        \nothing
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
        \nothing
      } >> }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff = "tenorstaff" \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { << { \numericTimeSignature
        \tenor
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { << { \numericTimeSignature
        \bass
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
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
      \override Script #'direction = #UP
      \override DynamicLineSpanner #'direction = #UP
      %\override Slur #'direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
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
      \override InstrumentName.self-alignment-X = #RIGHT
      \override InstrumentName.padding = #1.0
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}

%{
%%% piano redux
#(set-global-staff-size 20)

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \soprano \marks >> }
      \new Voice = "2" { \voiceTwo \mezzo }
      \new Voice = "3" { \voiceThree \alto }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenor }
      \new Voice = "5" { \voiceTwo \bass }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override Hairpin.stencil = ##f
      \override DynamicText.stencil = ##f
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
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
      \remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}
%}
%%% MIDI

\score {
  \new ChoirStaff <<
%{
    \new Staff \with { instrumentName = #"Glockenspiel" %shortInstrumentName = #"M."
} <<
      \new Voice = "glock" { << { \numericTimeSignature
        \glock
      } {
        \nothing
      } {
        \nothing
      }>> }
    >>
%}
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
