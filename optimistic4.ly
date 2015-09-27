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
  %subtitle = \markup { for Ahti Sonninen }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marks = {
  \time 2/2
  \tempo "Allegro" 2=120
  \key ees \major
  s2.
  \key e \major
  s1
  \key f \major
  s1
  \key ges \major
  s1
  \key g \major
  s1
  \key aes \major
  s1
  \key a \major
  s1
  \key bes \major
  s1
  \key ces \major
  s1
  \key c \major
  s1
  \key des \major
  s1
  \key d \major
  s1
  \key ees \major
  s1
  \key e \major
  s1
  \key f \major
  s1
  \key ges \major
  s1
  \key g \major
  s1
  \key aes \major
  s1
  \key a \major
  s1
  \key bes \major
  s1
  \key ces \major
  s1
  \key c \major
  s1
  \key des \major
  s1
  \key d \major
  s1
}

prefatoryMatter = {
  #(set-accidental-style 'modern-cautionary)
}

soprano = \relative c'' { \autoBeamOff
  \prefatoryMatter  
  r4 ees d8 ees dis4 | %ees
  e e dis8 e e4 | %e
  f f e8 f ees4 | %f
  des2. ( d4 ) | %ges
  r4 g fis8 g g4 | %g
  aes aes g8 aes fis4 | %aes
  e2. ( f4 ) | %a
  r4 f ~ f fis-. | %bes
  r4 des fes8 fes f4 | %ces
  f2 e4 ges | %c
  f2 ees4 fis | %des
  eis2 d4 f | %d
  ees2 d4 e | %ees
  dis2 cis4 e | %e
  d2. ( ees4 ) | %f
}

sopranoWords = \lyricmode {
}

mezzo = \relative c'' { \autoBeamOff
  \prefatoryMatter
}

mezzoWords = \lyricmode {
}

alto = \relative c'' { \autoBeamOff
  \prefatoryMatter
}

altoWords = \lyricmode {
}
%e b' d g
tenor = \relative c'' {
  \autoBeamOff
  \prefatoryMatter
  \clef "treble_8"
  
}

tenorWords = \lyricmode {
}

bass = \relative c {
  \autoBeamOff
  \prefatoryMatter
  \clef bass
  bes2. bes4 |
  bes2. bes4 |
  bes2. bes4 |
  bes2 ces4 aes |
  r4 bes ~ bes bes |
  r4 bes ~ bes bes |
  bes2 d |
  c g |
  aes2 aes
  f f |
  g2 g |
  ges ges |
  f f |
  ees ees |
  aes aes |
  bes bes |
  bes2. bes4 |
  bes2. bes4 |
  bes2. bes4 |
  bes2 ces4 aes |
  r4 bes ~ bes bes |
  r4 bes ~ bes bes |  
}

bassWords = \lyricmode {
}
%{
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
        \bass
      } {
        \marks
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

%}
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
