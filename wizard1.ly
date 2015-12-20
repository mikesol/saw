\version "2.17.0"
\include "defs-devel.ly"
\include "stylesheet.ly"
\header {
  title = "Ouverture: The Wonderful Wizard of Oz" %(1)"
  subtitle = \markup { for Bill Evans, William Schuman, and Hugo Wolf }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

myBreak = { \break }

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
}

%MyRed = \Red
%MyBlack = \Black
%myred = \once \override NoteHead.color = #red
%myblack = \revert NoteHead.color
MyRed = \revert NoteHead.color
MyBlack = \revert NoteHead.color
myred = \revert NoteHead.color
myblack = \revert NoteHead.color

marks = {
  \time 3/8
  \tempo "Largo" %4.=36
  \set Score.tempoWholesPerMinute = #(ly:make-moment 54 4 0 0)
  \partial 8
  s8 |
  s4.*10 | \myBreak
  s4.*10 | \myBreak
  s4.*12 | \myBreak
  s4.*10 | \myBreak
  s4.*5 |
  s4 \tempo "Presto"
  \set Score.tempoWholesPerMinute = #(ly:make-moment 200 4 0 0)
    s8 |
  s4.*8 |
}

annotations = {
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  %\override Score.RehearsalMark.extra-spacing-width = ##f
  \mark \markup \box \bold 1
  s8 |
  s4. |
  s4. |
  s8 \mark \markup \box \bold 2 s4 |
  s4.
  \mark \markup \box \bold 3
  s8 \mark \markup \box \bold 4 s4 |
  s4.
  s4. 
  s4. 
  s4. 
  \mark \markup \box \bold 5
  s4 \mark \markup \box \bold 6 s8 |
  \mark \markup \box \bold 7 s4. |
  \mark \markup \box \bold 8 s4. |
  \mark \markup \box \bold 9 s4. |
  \mark \markup \box \bold 10 s4. |
  \mark \markup \box \bold 11 s4. |
  s4 \mark \markup \box \bold 12 s8 |
  \mark \markup \box \bold 13 s8 \mark \markup \box \bold 14 s4 |
  \mark \markup \box \bold 15 s8 \mark \markup \box \bold 16 s8 \mark \markup \box \bold 17 s8 |
  \mark \markup \box \bold 18 s4. |
  \mark \markup \box \bold 19 s4. |
  \mark \markup \box \bold 20 s4. |
  \mark \markup \box \bold 21 s4. |
  \mark \markup \box \bold 22 s4. |
  \mark \markup \box \bold 23 s4. |
  \mark \markup \box \bold 24 s4. |
  s4.
  \mark \markup \box \bold 25 s4. |
  s4.
  \mark \markup \box \bold 26 s4. |
  s4. |
  s4. |
  s4 \mark \markup \box \bold 27 s8 |
  s4 \mark \markup \box \bold 28 s8 |
  \mark \markup \box \bold 29 s8 \mark \markup \box \bold 30 s8 \mark \markup \box \bold 31 s8 |
  \mark \markup \box \bold 32 s4. |
  \mark \markup \box \bold 33 s4. |
  \mark \markup \box \bold 34 s8 \mark \markup \box \bold 35 s8 \mark \markup \box \bold 36 s8 |
  s4.
  \mark \markup \box \bold 37 s4. |
  s4.
  \mark \markup \box \bold 38 s4. |
  s4. |
  s4 \mark \markup \box \bold 39 s8 |
}

prefatoryMatter = {
  \key aes \major
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c' { \autoBeamOff
  \prefatoryMatter
  \MyRed
  ees8 |
     %\footnote #'(0 . 0) \markup { Bitonal harmony resulting from tertian extensions used in directional, voice led counterpoint. } NoteHead |
  aes4 ees8 |
  c4 des8 |
  ees8 aes4 ~ |
  aes8 r ees8 |
  f ees des |
  c des bes |
  aes4. ~ |
  aes8 r \MyBlack aes |
  aes4 aes8 |
  c'4 c8 |
  bes bes bes |
  aes4 g8 |
  c8 d ees |
  d4 c8 |
  bes4. ~ |
  bes8 r a |
  c8 b des |
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
  g8 r8 c, |
  d aes ees' |
  d a fis |
  c'4 e,8 |
  g4 r8 |
  ees'8 fes ces |
  des a c |
  g8 r4 |
  \myred ees4. |
  \myred aes4 ges8 |
  b4 bes8 |
  f8 a4 ~ |
  a8 r \myred bes |
  \myred c bes g |
  fis e c |
  \myred aes4. ~ |
  \myred aes8 r8 \MyRed ees'8 |
  aes4 ees8 |
  c4 des8 |
  ees8 aes4 ~ |
  aes8 r bes |
  c4-. r8 |
  bes4-. r8 |
  R4. |
  aes4-. r8 \MyBlack | \bar "|."
}

dynamicsGlobal = {
  s8^\f
  s4.*4 |
  s4.^\> |
  s4. |
  s4.\p
  s4. |
  s4.^\<
  s4.^\f
  s4.*4
  s4.^\>
  s4.^\p
  s4.^\<
  s4.
  s4.^\f
  s4.*3 |
  s4.^\> |
  s4^\p s8^\< |
  s4.*4 |
  s4.^\ff |
  s4.*2 |
  s4 s8^\f |
}

sopranoWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause of the won -- der -- ful things he does.
  Won -- der -- ful things that he does.
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
  \repeat unfold 11 nä
}

mezzo = \relative c' { \autoBeamOff
  \prefatoryMatter
  \MyRed
  ees8 |
  aes4 ees8 |
  c4 des8 |
  ees8 \MyBlack e4 ~ |
  e8 r ees8 |
  des des a |
  aes bes g |
  g4. ~ |
  g8 r \MyRed aes |
  aes4 aes8 |
  aes'4 aes8 |
  g g g |
  f4 f8 |
  bes bes bes |
  bes4 g8 |
  ees4. ~ |
  ees8 r8 \MyBlack ges |
  aes g g |
  a aes b |
  b4 ges8 |
  ees4 ges8 |
  f8 e ges |
  des4 ees8 |
  e4 des8 |
  g4 fis8 |
  f4 fis8 |
  e4 fis8 |
  f4 fis8 |
  g4 g8 |
  a4. ~ |
  a4. ~ |
  a4. ~ |
  a8 r8 g |
  a8 fis c'8 |
  a8 f e |
  aes4 des,8 |
  f4 r8 |
  ces'8 des aes |
  bes fis g |
  f8 r4 |
  \myred ees4. |
  e4 \myred ees8 |
  e4 fis8 |
  des8 d4 ~ |
  d8 r g |
  f f e |
  ees \myred c \myred bes |
  \myred aes4. ~ |
  \myred aes8 r8 \MyRed ees'8 |
  aes4 ees8 |
  c4 des8 |
  ees8 aes4 ~ |
  aes8 r \MyBlack g |
  f4-. r8 |
  g4-. r8 |
  R4. |
  \myred aes4-. r8 | \bar "|."
}

mezzoWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause of the won -- der -- ful things he does.
  Won -- der -- ful things that he does.
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
  \repeat unfold 11 nä
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  \MyRed ees8 |
  aes4 ees8 |
  c4 des8 |
  ees8 \MyBlack d4 ~ |
  d8 r ees8 |
  c8 ces f, |
  g ges f |
  f4. ~ |
  f8 r aes |
  aes4 aes8 |
  d4 f8 |
  e f e |
  ees4 d8 |
  fes ges g |
  g4 d8 |
  b4. ~ |
  b8 r \MyRed ees |
  f8 f f |
  f f g |
  aes4 ees8 |
  c4 ees8 |
  des des c |
  bes4 des8 |
  c4 bes8 |
  \MyBlack c4 d8 |
  des4 d8 |
  c4 cis8 |
  d4 ees8 |
  ees4 e8 |
  ees4. ~ |
  ees4. ~ |
  ees4. ~ |
  ees8 r8 e |
  g8 d aes' |
  fis8 ees d |
  f4 b,8 |
  des4 r8 |
  aes'8 a f |
  g d e |
  des8 r4 |
  \myred ees4. |
  des4 ces8 |
  \myred c4 ees8 |
  bes8 b4 ~ |
  b8 r ees |
  des d \myred c |
  \myred bes bes aes |
  \myred aes4. ~ |
  \myred aes8 r8 \MyRed ees'8 |
  aes4 ees8 |
  c4 des8 |
  ees8 aes4 ~ |
  aes8 r \MyBlack e |
  des4-. r8 |
  e4-. r8 |
  R4. |
  ees4-. r8 | \bar "|."
}

altoWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause of the won -- der -- ful things he does.
  Won -- der -- ful things that he does.
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
  \repeat unfold 11 nä
}

tenor = \relative c { \autoBeamOff
  \prefatoryMatter
  \clef "treble_8"
  \MyRed ees8 |
  aes4 ees8 |
  c4 des8 |
  ees8 \MyBlack a4 ~ |
  a8 r ees8 |
  aes aes d, |
  f e ees |
  ees4. ~ |
  ees8 r aes |
  aes4 g8 |
  bes4 b8 |
  c8 d des |
  c4 c8 |
  d c fes |
  %ees4 e,?8 |
  %fis4 ( gis8 |
  %a8 ) r c8 |
  %gis4. ( |
  %a8 ) r c8 |
  ees4 a,8 |
  f4. ~ |
  f8 r c'8 |
  des d c |
  e8 d bes |
  ees4 bes8 |
  ges4 c8 |
  aes8 aes bes |
  e,4 a8 |
  bes4 g8 |
  \MyRed aes4 aes8 |
  aes4 aes8 |
  aes4 aes8 |
  g4 g8 |
  f4 f8 |
  bes4. ~ |
  bes4. ~ |
  bes4. ~ |
  bes8 r8 \MyBlack des |
  ees c f |
  e8 c c |
  des4 a8 |
  bes4 r8 |
  f'8 fis des |
  ees b bes |
  bes8 r4 |
  \myred ees,4. |
  a4 aes8 | 
  g4 \myred des'8 |
  aes8 e4 ~ |
  e8 r a |
  aes8 aes aes |
  aes aes g |
  \myred aes4. ~ |
  \myred aes8 r8 \MyRed ees8 |
  aes4 ees8 |
  c4 des8 |
  ees8 aes4 ~ |
  aes8 r \MyBlack des |
  aes4-. r8 |
  des4-. r8 |
  R4. |
  c4-. r8 | \bar "|."
}

tenorWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause of the won -- der -- ful things he does.
  Won -- der -- ful things that he does.
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
  \repeat unfold 11 nä
}

bass = \relative c { \autoBeamOff
  \prefatoryMatter
  \clef bass
  \MyRed ees8 |
  aes4 ees8 |
  c4 des8 |
  ees8 \MyBlack b4 ~ |
  b8 r ees8 |
  bes fes' ges, |
  ees' a, d |
  c4. ~ |
  c8 r aes' |
  g4 f8 |
  e4 g,8 |
  des' c f |
  g4 aes8 |
  ges fes aes, |
  f'4 fis,8 |
  g4. ~ |
  g8 r f' |
  bes, e aes, |
  d g, des' |
  c4 e8 |
  a,4 d8 |
  bes f' e |
  ges,4 ces8 |
  ees4 e8 |
  f4 e8 |
  ees4 e8 |
  des4 ees8 |
  b4 cis8 |
  a4 d8 |
  fis,4. ~ |
  fis4. ~ |
  fis4. ~ |
  fis8 r \MyRed aes' |
  bes bes bes |
  bes bes bes |
  bes4 g8 |
  ees4 r8 |
  des'8 c bes |
  aes g f |
  ees r4 |
  ees4. |
  \MyBlack b4 cis8 |
  a4 d8 |
  \myred ees ges,4 ~ |
  ges8 r f |
  bes8 \myred c cis |
  d dis e8 |
  \myred aes4. ~ |
  \myred aes8 r8 \MyRed ees8 |
  aes4 ees8 |
  c4 des8 |
  ees8 aes4 ~ |
  aes8 r \MyBlack e |
  bes4-. r8 |
  ees4-. r8 |
  R4. |
  \myred aes,4-. r8 | \bar "|."
}

bassWords = \lyricmode {
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.
  We hear he is a whiz of a wiz,
  If ev -- er a wiz there was.
  If ev -- er, oh ev -- er a wiz there was,
  The Wi -- zard of Oz is one be -- cause
  be -- cause be -- cause be -- cause be -- cause be -- cause
  be -- cause of the won -- der -- ful things he does.
  Won -- der -- ful things that he does.
  We're off to see the Wi -- zard.
  The Won -- der -- ful Wi -- zard of Oz.  
  \repeat unfold 11 nä
}

%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
        \soprano
      } {
        \marks
      } { %{\annotations%} } {
        \dynamicsGlobal
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
        \dynamicsGlobal
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
        \dynamicsGlobal
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
        \dynamicsGlobal
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
        \dynamicsGlobal
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
