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

legero = \markup \italic "legero"

\header {
  title = "The Coroner" %(1)"
  subtitle = \markup { for Scarlatti }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marksCoroner = {
  \time 2/4
  \tempo "Adagio" 2=44
  \partial 8 s8
  %%%%%%%
  s2*13 \bar "|."
}

prefatoryMatterCoroner = {
  \key d \major
  #(set-accidental-style 'modern-cautionary)
  
}

coroner = \relative c' { \autoBeamOff
  a8 d cis d e
     fis e g fis
     gis a b a
     b cis d gis,
     a fis e d
     b' g e b'
     a fis g a,
     e' fis d
}

coronerWords = \lyricmode {
  As co -- ro -- ner I must con -- fer
  I've care -- ful -- ly ex -- am -- ined her
  And she's not on -- ly mere -- ly dead
  She's real -- ly most sin -- cere -- ly dead
}

sopranoCoroner = {   \prefatoryMatterCoroner
 \coroner r8 R2 R2 R2 R2 R2 }

sopranoCoronerWords = \coronerWords


mezzoCoroner = {   \prefatoryMatterCoroner
r8 R2 \coroner R2 R2 R2 R2 }

mezzoCoronerWords = \coronerWords

altoCoroner = {   \prefatoryMatterCoroner
r8 R2 R2 r8 \coroner r4. R2 R2 }

altoCoronerWords = \coronerWords

tenorCoroner = \transpose c c, {   \prefatoryMatterCoroner

  \clef "treble_8"
  r8 R2 R2 R2 r4
  \coroner  r4 R2
}

tenorCoronerWords = \coronerWords

bassCoroner = \transpose c c, {   \prefatoryMatterCoroner

  \clef "bass"
  r8 R2 R2 R2 R2 r4.
  \coroner r8
}

bassCoronerWords = \coronerWords

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoCoroner" { << { \numericTimeSignature
        \sopranoCoroner
      } {
        \marksCoroner
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoCoroner" {
        \sopranoCoronerWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoroner" { << { \numericTimeSignature
        \mezzoCoroner
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoCoroner" {
        \mezzoCoronerWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoroner" { << { \numericTimeSignature
        \altoCoroner
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoCoroner" {
        \altoCoronerWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoroner" { << { \numericTimeSignature
        \tenorCoroner
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorCoroner" {
        \tenorCoronerWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoroner" { << { \numericTimeSignature
        \bassCoroner
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bassCoroner" {
        \bassCoronerWords
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
      \new Voice = "1" { \voiceOne << \sopranoCoroner \marksCoroner >> }
      \new Voice = "2" { \voiceTwo \mezzoCoroner }
      \new Voice = "3" { \voiceThree \altoCoroner }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorCoroner }
      \new Voice = "5" { \voiceTwo \bassCoroner }
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
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoCoroner" { << { \numericTimeSignature
        \sopranoCoroner
      } {
        \marksCoroner
      } >> }
      \new Lyrics \lyricsto "sopranoCoroner" {
        \sopranoCoronerWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoroner" { \numericTimeSignature
        \mezzoCoroner
      }
      \new Lyrics \lyricsto "mezzoCoroner" {
        \mezzoCoronerWords
      }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoroner" { \numericTimeSignature
        \altoCoroner
      }
      \new Lyrics \lyricsto "altoCoroner" {
        \altoCoronerWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoroner" { \numericTimeSignature
        \tenorCoroner
      }
      \new Lyrics \lyricsto "tenorCoroner" {
        \tenorCoronerWords
      }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoroner" { \numericTimeSignature
        \bassCoroner
      }
      \new Lyrics \lyricsto "bassCoroner" {
        \bassCoronerWords
      }
    >>
  >>
  \midi {}
}
