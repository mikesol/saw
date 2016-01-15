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
  %top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
  %max-systems-per-page = #2
}

#(ly:set-option 'point-and-click #f)

legero = \markup \italic "legero"

\header {
  title = "The Wonderful Wizard of Oz" %(1)"
  subtitle = \markup { for Art Tatum }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marksSlowPart = {
  \time 3/8
  \tempo "Adagio" 4.=40
  s4.*4 |
  \time 4/4
  s1*2 |
}

prefatoryMatterSlowPart = {
  \key aes \major
  #(set-accidental-style 'modern-cautionary)
  
}

sopranoSlowPart = \relative c'' { \autoBeamOff
  \prefatoryMatterSlowPart
  R4.*4 |
  ges2\mp\< \times 2/3 { ges4 f ees } |
  bes'1\> |
  aes4\!\espressivo r4 fes2 |
  ees2..\> r8\! |
  ges1\p\< ~ |
  ges\> |
  R1\! |
  f\mp |
  R1 |
  \times 2/3 { r4 g c ~ } c2\espressivo\fermata |
}

sopranoSlowPartWords = \lyricmode {
  was ev -- ver the
  Wiz
  one
  cause cause cause der
  zof Oz
}

mezzoSlowPart = \relative c'' { \autoBeamOff
  \prefatoryMatterSlowPart
  aes8\mf bes aes |
  ges [ f ] ees |
  des4. ~ |
  des8 r des' |
  \times 2/3 { ces4 f ces } \times 2/3 { aes bes ges } |
  aes'4^\legero ges8 bes, f'4. ees8 |
  des4\espressivo r8 ges,8 aes4 ees' |
  des2 ( ces4. ) r8 |
  aes2\<  bes |
  ces\>  des |
  aes2.\! r4 |
  bes1\mp |
  r2 \times 2/3 { r2 ees,4 }
  f2 ~ f2\mp\espressivo\fermata |
}

mezzoSlowPartWords = \lyricmode {
  ev -- er a wiz there was
  If ev -- er oh ev -- er the
  Wi -- zard of Oz is one
  be -- cause be -- cause
  be -- cause of the Won -- der
  zof Oz
}

altoSlowPart = \relative c' { \autoBeamOff
  \prefatoryMatterSlowPart
  R4.*4 |
  ees2\mp\< ces |
  f1\> |
  fes4\!\espressivo r des2 |
  bes2\> ( aes4. ) r8\! |
  d1\p\< ~ |
  d\> |
  R\! |
  ees\mp |
  r2 \times 2/3 { bes4 des2 ~ } |
  des ~ des\espressivo\fermata |
}

altoSlowPartWords = \lyricmode {
  was the
  Wiz
  one
  cause cause cause der
  zof Oz
}

tenorSlowPart = \relative c' {
  \autoBeamOff
  \clef "treble_8"
  \prefatoryMatterSlowPart
  ces4.\mf |
  c |
  ges'8 f ees |
  des [ ces ] bes |
  aes2\mp\< aes |
  des1\> |
  ces4\!\espressivo r bes2 |
  ges2..\> r8\! |
  ces1\< ~ |
  ces\> |
  R1\! |
  ces\mp |
  \times 2/3 { r4 des, aes' ~ } aes2 ~ |
  aes ~ aes\espressivo\fermata |
}

tenorSlowPartWords = \lyricmode {
  ev -- er
  ev -- er a wiz there
  was the
  Wiz
  one
  cause
  cause
  cause
  der
  zof Oz
}

bassSlowPart = \relative c { \autoBeamOff
  \prefatoryMatterSlowPart
  \clef bass
  R4.*4 |
  r2 des\mp\< |
  ges,1\> |
  des'4\!\espressivo r4 ges,2 |
  ces2..\> r8\! |
  R1 |
  R1 |
  R1 |
  des\mp |
  ges, ~ |
  ges2 ~ ges\espressivo\fermata |
}

bassSlowPartWords = \lyricmode {
  the Wiz
  one cause cause
  der
  Oz
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoSlowPart" { << { \numericTimeSignature
        \sopranoSlowPart
      } {
        \marksSlowPart
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoSlowPart" {
        \sopranoSlowPartWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoSlowPart" { << { \numericTimeSignature
        \mezzoSlowPart
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoSlowPart" {
        \mezzoSlowPartWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoSlowPart" { << { \numericTimeSignature
        \altoSlowPart
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoSlowPart" {
        \altoSlowPartWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorSlowPart" { << { \numericTimeSignature
        \tenorSlowPart
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorSlowPart" {
        \tenorSlowPartWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassSlowPart" { << { \numericTimeSignature
        \bassSlowPart
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bassSlowPart" {
        \bassSlowPartWords
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
      \override DynamicLineSpanner.direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Metronome_mark_engraver"
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

%{
%%% piano redux
#(set-global-staff-size 20)

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice = "1" { \voiceOne << \sopranoSlowPart \marksSlowPart >> }
      \new Voice = "2" { \voiceTwo \mezzoSlowPart }
      \new Voice = "3" { \voiceThree \altoSlowPart }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorSlowPart }
      \new Voice = "5" { \voiceTwo \bassSlowPart }
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
      \override Hairpin.direction = #UP
      \override DynamicText.direction = #UP
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override DynamicLineSpanner.direction = #UP
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
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoSlowPart" { << { \numericTimeSignature
        \sopranoSlowPart
      } {
        \marksSlowPart
      } >> }
      \new Lyrics \lyricsto "sopranoSlowPart" {
        \sopranoSlowPartWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoSlowPart" { \numericTimeSignature
        \mezzoSlowPart
      }
      \new Lyrics \lyricsto "mezzoSlowPart" {
        \mezzoSlowPartWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoSlowPart" { \numericTimeSignature
        \altoSlowPart
      }
      \new Lyrics \lyricsto "altoSlowPart" {
        \altoSlowPartWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorSlowPart" { \numericTimeSignature
        \tenorSlowPart
      }
      \new Lyrics \lyricsto "tenorSlowPart" {
        \tenorSlowPartWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassSlowPart" { \numericTimeSignature
        \bassSlowPart
      }
      \new Lyrics \lyricsto "bassSlowPart" {
        \bassSlowPartWords
      }
    >>
  >>
  \midi {}
}
