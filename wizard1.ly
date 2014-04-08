\version "2.17.0"
\include "defs-devel.ly"
#(set-global-staff-size 15.87)
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
  max-systems-per-page = #2
}

\header {
  title = "The Wonderful Wizard of Oz (1)"
  subtitle = \markup { for William Schuman, Bill Evans and Hugo Wolf \super 1}
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

marks = {
  \time 3/8
  \tempo "Andante" 4.=36
}

soprano = \relative c' { \autoBeamOff
  \key aes \major
  ees4. \footnote #'(0 . 0) \markup { Bitonal harmony resulting from tertian extensions used in directional, voice led counterpoint. } NoteHead |
  aes4 ees8 |
  c4 des8 |
  ees8 aes4 ~ |
  aes8 r ees8 |
  f ees des |
  c des bes |
  aes4. ~ |
  aes8 r aes |
  aes4 aes8 |
  c'4 c8 |
  bes bes bes |
  aes4 g8 |
  c8 d ees |
  d4 bes8 |
  a4. ~ |
  a8 r ees |
  c'8 b des |
  c b ees |
  fes4 ces8 |
  aes4 ces8 |
  c g b |
  f4 ges8 |
  g4 aes8 |
  bes4 c8 |
  bes4 a8 |
  b4 bes8 |
  c4 b8 |
  des4 c8 |
  g'4. ~ |
  g4. ~ |
  g4. ~ |
  g8
}

sopranoWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
}

mezzo = \relative c' { \autoBeamOff
  \key aes \major
  ees4. |
  aes4 ees8 |
  c4 des8 |
  ees8 d4 ~ |
  d8 r ees8 |
  des des beses |
  aes beses g |
  f4. ~ |
  f8 r aes |
  aes4 aes8 |
  aes'4 aes8 |
  g g g |
  f4 f8 |
  bes bes bes |
  bes4 g8 |
  ees4. ~ |
  ees8 r8 ees |
  aes g g |
  a aes b |
  b4 ges8 |
  ges4 ges8 |
  f8 e fis |
  des4 ees8 |
  e4 des8 |
  g4 fis8 |
  f4 fis8 |
  f4 fis8 |
  f4 fis8 |
  g4 g8 |
  a4. ~ |
  a4. ~ |
  a4. ~ |
  a8 r8

}

mezzoWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
}

alto = \relative c' { \autoBeamOff
  \key aes \major
  ees4. |
  aes4 ees8 |
  c4 des8 |
  ees8 b4 ~ |
  b8 r ees8 |
  c8 ces f, |
  g ges ees |
  ees4. ~ |
  ees8 r aes |
  aes4 aes8 |
  d4 f8 |
  e f e |
  ees4 d8 |
  fes ges aes |
  g4 ees8 |
  c4. ~ |
  c8 r ees |
  f8 f f |
  f f g |
  aes4 ees8 |
  c4 ees8 |
  des des c |
  bes4 des8 |
  c4 bes8 |
  c4 d8 |
  des4 d8 |
  des4 c8 |
  d4 ees8 |
  ees4 e8 |
  ees4. ~ |
  ees4. ~ |
  ees4. ~ |
  ees8 r
}

altoWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
}

tenor = \relative c { \autoBeamOff
  \key aes \major
  \clef "treble_8"
  ees4. |
  aes4 ees8 |
  c4 des8 |
  ees8 e4 ~ |
  e8 r ees8 |
  aes aes eeses |
  f e ees |
  c4. ~ |
  c8 r aes' |
  aes4 g8 |
  bes4 b8 |
  c8 des b |
  c4 c8 |
  des c fes |
  ees4 c8 |
  bes4. ~ |
  bes8 r ees,8 |
  des' d c |
  e8 d bes |
  ees4 bes8 |
  ges4 c8 |
  aes8 aes bes |
  e,4 a8 |
  bes4 g8 |
  aes4 aes8 |
  aes4 aes8 |
  aes4 aes8 |
  g4 g8 |
  f4 f8 |
  bes4. ~ |
  bes4. ~ |
  bes4. ~ |
  bes8 r 
}

tenorWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
}

bass = \relative c { \autoBeamOff
  \key aes \major
  \clef bass
  ees4. |
  aes4 ees8 |
  c4 des8 |
  ees8 f,4 ~ |
  f8 r ees'8 |
  bes fes' ges, |
  ees' a, d |
  aes4. ~ |
  aes8 r aes' |
  g4 f8 |
  e4 g,8 |
  des' c f |
  g4 aes8 |
  ges fes g, |
  f4 ces'8 |
  e4. ~ |
  e8 r ees
  bes e aes, |
  d g, des' |
  c4 e8 |
  a,4 d8 |
  bes f' e |
  fis,4 b8 |
  ees4 e8 |
  f4 e8 |
  ees4 e8 |
  d4 ees8 |
  b4 c8 |
  a4 d8 |
  fis,4. ~ |
  fis4. ~ |
  fis4. ~ |
  fis8 r 
}

bassWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
}

%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      } {
        \marks
      } >> }
      \lyricsto "soprano" \new Lyrics {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \lyricsto "mezzo" \new Lyrics {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \lyricsto "alto" \new Lyrics {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \lyricsto "tenor" \new Lyrics {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \bass
      }
      \lyricsto "bass" \new Lyrics {
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
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
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
%}
%%% MIDI

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      } {
        \marks
      } >> }
      \lyricsto "soprano" \new Lyrics {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \lyricsto "mezzo" \new Lyrics {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
        \alto
      }
      \lyricsto "alto" \new Lyrics {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \lyricsto "tenor" \new Lyrics {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
        \bass
      }
      \lyricsto "bass" \new Lyrics {
        \bassWords
      }
    >>
  >>
  \midi {}
}
