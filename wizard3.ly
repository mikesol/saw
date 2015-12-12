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
}

%#(ly:set-option 'point-and-click #f)

% oh the wiz is 5 halves in the space of three { x4 oh2 the4 wiz4 }

MyRed = \Red
MyBlack = \Black
myred = \once \override NoteHead.color = #red
myblack = \revert NoteHead.color
%MyRed = \revert NoteHead.color
%MyBlack = \revert NoteHead.color
%myred = \revert NoteHead.color
%myblack = \revert NoteHead.color

\header {
  title = "The Wonderful Wizard of Oz" %(1)"
  subtitle = \markup { for Art Tatum }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 2/2
  \tempo "Allegro" 2=120
  \partial 4
}

prefatoryMatter = {
  \key aes \major
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c'' { \autoBeamOff
  \prefatoryMatter
  r4 |
  r4 ees2 des4 |
  c4 \lo r8 \sh c ~ \lod c4. \sh bes8 ~ |
  \lo bes \sh aes ~ \lo aes \sh r aes2 |
  g4 f ~ \lo f8 \sh r8 r4 |
  r4 f ( ees ) des4 |
  c4 r4 ges' ( f ) |
  ees4 d4 g4 aes |
  bes g ees c |
  des-. r \lo r8 \sh beses ~ beses4 |
  aes-. r \lo c'8 \sh c,8 ~  c4 |
  aes-. r \lo r8 \sh a8 ~  a4 |
  a4-. r \lo r8 \sh ees'8 ~  ees4 |
  \times 2/3 { des4 r2 } \times 2/3 { r4 aes' f } |
  des4-. r \lo r8 \sh ges ~ ges4 |
  g4 \lo f8 \sh f8 \lo ees8 \sh ees d4 |
}

sopranoWords = \lyricmode {
  \repeat unfold 5 { Oh, the Wiz }
  I could while a -- way
}

mezzo = \relative c'' { \autoBeamOff
  \prefatoryMatter
  r4 |
  g2. ees4 |
  \lo f8-. \sh f8-. r4 r2 |
  f2. des4 |
  \lo ees8-. \sh ees8-. r4 r2 |
  ees2. ees4 |
  \lo f8-. \sh f8-. r4 r2 |
  f2. fis4 |
  \lo g8-. \sh g8-. r4 \lo r8 \sh ges ~ ges4 |
  f-. r \lo r8 \sh des ~ des4 |
  c4-. r \lo r8 \sh ees ~ ees4 |
  d4-. r \lo d'8 \sh d, ~ d4 |
  ees-. r \lo r8 \sh ges ~ ges4 |
  \times 2/3 { f4 aes f } \times 2/3 { des des des } |
  \lo f8 ees4 \sh des8 \lo r8 \sh ees ~ ees4 |
  d4 \lo c8 \sh c8 \lo bes8 \sh bes ces4 |
}

mezzoWords = \lyricmode {
  \repeat unfold 4 { He's my Wi -- zard }
}

alto = \relative c' { \autoBeamOff
  \prefatoryMatter
  %\clef alto 
  ees4 |
  aes4 ees c bes |
  \lo a8 ( ges'4 ) \sh f8 ~ \lo f \sh ees ~ ees4 |
  \times 2/3 { des f aes } \times 2/3 { c aes bes } |
  g-. r aes-. r |
  aes, aes aes' bes |
  \lo g8 \sh ees \lo g \sh f \lo r8 \sh f ~ ( \times 2/3 { f [ g aes ) ] } |
  \times 2/3 { bes4 c bes } \times 2/3 { aes ( f ) g } |
  \clef alto
  \times 2/3 { ees ( bes g } ees ) ees' |
  \times 2/3 { f des bes } \times 2/3 { g g' ees } |
  \times 2/3 { aes ees c } \times 2/3 { a a' f } |
  \times 2/3 { bes f d } \times 2/3 { bes b' g } |
  \times 2/3 { c aes ees } \times 2/3 { c c' aes } |
  \times 2/3 { des aes f } \times 2/3 { des aes f } |
  des-. r \clef treble \lo r8 \sh aes''8 ~ aes4 |
  bes4 aes8 aes g g f4 |
  g8 bes4 ees8 ~ ees c ~ c4 |
  des4 c8 c bes bes aes4 |
  g8 f4 ees8 ~ ees8 \clef "treble_8" d4.^"(repeat)" |
  d4 c8 c bes bes aes4
  g8 bes4 ees8 ~ ees8 c4. |
  \times 2/3 { bes4 ees ees, } \times 2/3 { ees' ees, ees' } |
  ees,8 ees'4 ees,8 ~ ees \clef treble ees''4. |
  c4 ees c bes |
  gis8 a4 g8 r8 f4. |
  ees8 ees ees e ~ e e e f
}

altoWords = \lyricmode {
  We're off to see the Wi -- zard
  The Won -- der -- ful Wi -- zard of Oz
  We hear he is a Wiz of a Wiz if ev -- er a wiz there was.
  If ev -- er oh ev -- er oh ev -- er oh ev -- er oh ev -- er oh ev -- er oh ev -- er oh ev -- er oh ev -- er oh
  ev -- er oh ev
  be -- cause of the Won -- der -- ful things he does
  be -- cause of the Won -- der -- ful things he does
}

tenor = \relative c {
  \autoBeamOff
  \prefatoryMatter
  \clef "treble_8"
  \times 2/3 { aes8 c ees } |
  \lo g8 \sh f \lo r \sh aes ~ \times 2/3 { aes bes aes } \lo g \sh des |
  f4 \lo ees8 \sh g \lo f \sh ees \lo des \sh aes |
  \lo ees' des4 \sh ees8 \times 2/3 { aes,8 c ees } \lo g \sh f ~ |
  \lo f \sh aes, \times 2/3 { bes des f } bes4 \times 2/3 { aes8 bes aes } |
  \lo g \sh ees \lo c \sh aes ~ \lo aes g'4 \sh c,8 |
  \lo ees8 des4 \sh c8 \lo des \sh aes' \lo ees \sh c |
  g'4 \lo f8 \sh g \lo d f4 \sh d8 |
  \lo f \sh fis \lo f \sh g \lo r \sh bes \lo r \sh a |
  aes4-. r \lo r8 \sh f ~ f4 |
  ges4-. r \lo r8 \sh ges ~ ges4 |
  f-. r \lo r8 \sh f ~ f4 |
  ges-. r \lo ees'8 \sh a, ~ a4 |
  aes4 \lo aes8 \sh aes8 \lo aes8 \sh aes8 bes4 |
  \lo c8 bes4 \sh aes8 \lo r8 \sh beses ~ beses4 |
  aes1 |
  g4 \lo g8 \sh g8
}

tenorWords = \lyricmode {
  was a be -- lie -- ver
  hi -- de -- ous -- ly a -- brupt
  would -- n't help with your re -- gres -- sion
  ne -- fa -- ri -- ous ar -- tist
  ma -- le -- vo -- lent tramp
  con -- ju -- ring i -- ma -- ges
  a shrewd en -- chan -- ter
  un -- can -- ny wic -- ked gent vile im -- pos -- ter
  no more than a cut -- ting
}

bass = \relative c { \autoBeamOff
  \prefatoryMatter
  \clef bass
  ees4 |
  aes,4 \lo bes8 \sh bes \lo c \sh c des4 |
  ees \lo f \sh ees r4 ees |
  bes4 \lo bes8 \sh bes \lo ees \sh ees ees4 |
  aes, \lo ees \sh aes \lo r8 \sh aes8 ~ aes4 |
  aes4 \lo aes8 \sh aes \lo g \sh g g4 |
  f4 \lo f8 \sh a \lo r \sh a ~ a4 |
  bes4 \lo bes8 \sh c \lo d \sh c bes4 |
  ees4 \lo bes8 \sh ees, r4 ees' |
  des4-. r \lo r8 \sh b ~ b4 |
  c4-. r \lo r8 \sh a ~ a4 |
  bes4-. r \lo r8 \sh g ~ g4 |
  aes4-. r \lo r8 \sh c ~ c4 |
  des4 \lo ees8 \sh ees \lo f \sh f ges4 |
  \lo aes8 ges4 \sh f8 \lo r \sh ces ~ ces4 |
  bes4 \lo bes8 \sh bes \lo bes \sh bes bes4 |
  ees4 \lo ees8 \sh ees \lo r \sh bes ~ bes4 |
  g4 \lo g8 \sh g \lo aes \sh aes aes4 |
  a4 \lo a8 \sh bes ~ \lo bes8 \sh g ~ g4 |
  f g aes f |
  g aes bes bes |
  \times 2/3 { ees4 r ees } \times 2/3 { r ees r } |
  ees4 \lo ees8 \sh ees \lo r8 \sh ees ~ ees4 |
}

bassWords = \lyricmode {
  \repeat unfold 4 { Be -- cause of the won -- der -- ful things he does }
  \repeat unfold 4 { Be -- cause }
  Be -- cause of the won -- der -- ful things he does
  Be -- cause of the won -- der -- ful things he does
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
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
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
