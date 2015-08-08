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

firstLine = \lyricmode {
  As co -- ro -- ner I must con -- fer
}

secondPart = \lyricmode {
  I've care -- ful -- ly ex -- am -- ined her
  And she's not on -- ly mere -- ly dead
  She's real -- ly most sin -- cere -- ly dead
}

coronerWords = \lyricmode {
  \firstLine
  \secondPart
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% first

nothing = {}

marksCoronerFirst = {
  \time 2/4
  \tempo "Allegro" 4=120
  \partial 8 s8
  %%%%%%%
  s2*7
  s4. \bar "||"
}

prefatoryMatterCoronerFirst = {
  \key d \major
  #(set-accidental-style 'modern-cautionary)
  \autoBeamOff
  
}


sopranoCoronerFirst = \relative c' { \prefatoryMatterCoronerFirst
  r8 |
  R2 |
  r4. fis8 |
  gis a b a |
  b cis d b |
  a fis e d |
  b' g e b' |
  a fis g bes, |
  e fis d %endOne
}

sopranoCoronerFirstWords = \secondPart


mezzoCoronerFirst = \relative c' {   \prefatoryMatterCoronerFirst
  r8 |
  R2 |
  r4. dis8 |
  e cis gis' e |
  fis fis fis fis |
  fis d cis b |
  e e c ees |
  e dis e bes |
  d cis b %endOne
}

mezzoCoronerFirstWords = \secondPart

altoCoronerFirst = \relative c' {
  \prefatoryMatterCoronerFirst
  r8 |
  R2 |
  r4. b8 |
  b cis e cis |
  dis d e ees |
  d bes a gis |
  cis d a b |
  c b b g |
  b bes a %endOne
}

altoCoronerFirstWords = \secondPart

tenorCoronerFirst = \relative c' {   \prefatoryMatterCoronerFirst
  \clef "treble_8"
  a8 |
  d cis d e |
  fis e g a, |
  gis e gis fis |
  a gis c c |
  b g fis f |
  a ais fis f |
  e a g e |
  g g fis %endOne
}

tenorCoronerFirstWords = \coronerWords

bassCoronerFirst = \relative c {   \prefatoryMatterCoronerFirst
  \clef "bass"
  r8 |
  R2 |
  r4. b8 |
  e cis b cis |
  b e a, d |
  g, d' a b |
  fis cis' b d |
  g, a b cis |
  d a d %endOne
}

bassCoronerFirstWords = \secondPart

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoCoronerFirst" { << { \numericTimeSignature
        \sopranoCoronerFirst
      } {
        \marksCoronerFirst
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoCoronerFirst" {
        \sopranoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoronerFirst" { << { \numericTimeSignature
        \mezzoCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoCoronerFirst" {
        \mezzoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoronerFirst" { << { \numericTimeSignature
        \altoCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoCoronerFirst" {
        \altoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoronerFirst" { << { \numericTimeSignature
        \tenorCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorCoronerFirst" {
        \tenorCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoronerFirst" { << { \numericTimeSignature
        \bassCoronerFirst
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bassCoronerFirst" {
        \bassCoronerFirstWords
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
      \new Voice = "1" { \voiceOne << \sopranoCoronerFirst \marksCoronerFirst >> }
      \new Voice = "2" { \voiceTwo \mezzoCoronerFirst }
      \new Voice = "3" { \voiceThree \altoCoronerFirst }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorCoronerFirst }
      \new Voice = "5" { \voiceTwo \bassCoronerFirst }
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
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoCoronerFirst" { << { \numericTimeSignature
        \sopranoCoronerFirst
      } {
        \marksCoronerFirst
      } >> }
      \new Lyrics \lyricsto "sopranoCoronerFirst" {
        \sopranoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoronerFirst" { \numericTimeSignature
        \mezzoCoronerFirst
      }
      \new Lyrics \lyricsto "mezzoCoronerFirst" {
        \mezzoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoronerFirst" { \numericTimeSignature
        \altoCoronerFirst
      }
      \new Lyrics \lyricsto "altoCoronerFirst" {
        \altoCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoronerFirst" { \numericTimeSignature
        \tenorCoronerFirst
      }
      \new Lyrics \lyricsto "tenorCoronerFirst" {
        \tenorCoronerFirstWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoronerFirst" { \numericTimeSignature
        \bassCoronerFirst
      }
      \new Lyrics \lyricsto "bassCoronerFirst" {
        \bassCoronerFirstWords
      }
    >>
  >>
  \midi {}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% second

marksCoronerSecond = {
  \time 2/4
  \tempo "Adagio" 2=44
  \partial 8 s8
  %%%%%%%
  s2*13 \bar "|."
}

prefatoryMatterCoronerSecond = {
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

sopranoCoronerSecond = {   \prefatoryMatterCoronerSecond
 \coroner r8 R2 R2 R2 R2 R2 }

sopranoCoronerSecondWords = \coronerWords


mezzoCoronerSecond = {   \prefatoryMatterCoronerSecond
r8 R2 \coroner R2 R2 R2 R2 }

mezzoCoronerSecondWords = \coronerWords

altoCoronerSecond = {   \prefatoryMatterCoronerSecond
r8 R2 R2 r8 \coroner r4. R2 R2 }

altoCoronerSecondWords = \coronerWords

tenorCoronerSecond = \transpose c c, {   \prefatoryMatterCoronerSecond

  \clef "treble_8"
  r8 R2 R2 R2 r4
  \coroner  r4 R2
}

tenorCoronerSecondWords = \coronerWords

bassCoronerSecond = \transpose c c, {   \prefatoryMatterCoronerSecond

  \clef "bass"
  r8 R2 R2 R2 R2 r4.
  \coroner r8
}

bassCoronerSecondWords = \coronerWords

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoCoronerSecond" { << { \numericTimeSignature
        \sopranoCoronerSecond
      } {
        \marksCoronerSecond
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoCoronerSecond" {
        \sopranoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoronerSecond" { << { \numericTimeSignature
        \mezzoCoronerSecond
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoCoronerSecond" {
        \mezzoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoronerSecond" { << { \numericTimeSignature
        \altoCoronerSecond
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoCoronerSecond" {
        \altoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoronerSecond" { << { \numericTimeSignature
        \tenorCoronerSecond
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorCoronerSecond" {
        \tenorCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoronerSecond" { << { \numericTimeSignature
        \bassCoronerSecond
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "bassCoronerSecond" {
        \bassCoronerSecondWords
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
      \new Voice = "1" { \voiceOne << \sopranoCoronerSecond \marksCoronerSecond >> }
      \new Voice = "2" { \voiceTwo \mezzoCoronerSecond }
      \new Voice = "3" { \voiceThree \altoCoronerSecond }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorCoronerSecond }
      \new Voice = "5" { \voiceTwo \bassCoronerSecond }
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
    \new Staff \with { instrumentName = #"Bitch" %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoCoronerSecond" { << { \numericTimeSignature
        \sopranoCoronerSecond
      } {
        \marksCoronerSecond
      } >> }
      \new Lyrics \lyricsto "sopranoCoronerSecond" {
        \sopranoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = #"Dörty" %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoCoronerSecond" { \numericTimeSignature
        \mezzoCoronerSecond
      }
      \new Lyrics \lyricsto "mezzoCoronerSecond" {
        \mezzoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = #"Ttö" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoCoronerSecond" { \numericTimeSignature
        \altoCoronerSecond
      }
      \new Lyrics \lyricsto "altoCoronerSecond" {
        \altoCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = #"Fakbyd" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorCoronerSecond" { \numericTimeSignature
        \tenorCoronerSecond
      }
      \new Lyrics \lyricsto "tenorCoronerSecond" {
        \tenorCoronerSecondWords
      }
    >>
    \new Staff \with { instrumentName = #"Wysr" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bassCoronerSecond" { \numericTimeSignature
        \bassCoronerSecond
      }
      \new Lyrics \lyricsto "bassCoronerSecond" {
        \bassCoronerSecondWords
      }
    >>
  >>
  \midi {}
}
