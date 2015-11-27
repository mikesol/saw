\version "2.19.30"
\include "defs-devel.ly"

\header {
  title = "Follow the Yellow Brick Road" %(1)"
  subtitle = \markup { for Charles Ives }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

\paper {
  #(define fonts
    (set-global-fonts
    #:music "lilyjazz"
    #:brace "lilyjazz"
    #:roman "LilyJAZZText"
    #:sans "LilyJAZZChord"
    #:factor (/ staff-height pt 20)
  ))
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
  max-systems-per-page = #2
  %oddHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
  %evenHeaderMarkup = "FIRST FULL DRAFT 20.10.14 4:44"
}


#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 14)


midiPrefatoryMatter = {
}

scorePrefatoryMatter = {
}

marks = {
  %\time 3/4
  \time 1/4
  \tempo "Grave" 4=28
  s2. |
  s2. |
  s2. |
  %\time 2/4
  s2 \bar "||"
}

soprano = \relative c'' {
  R2. |
  r4 r r8 \times 2/3 { g16^"A GIRL" a b } |
  \times 2/3 { c b a g8 r16 } \times 2/3 { r g a b c b } \times 2/3 { a g8 r g16 ~ } |
  \times 2/3 { g16 g16 g'8 g16 e ~  } \times 2/3 { e e16 fis8 fis16 g } |
}

sopranoWords = \lyricmode {
  \repeat unfold 2 { Fol -- low the Yel -- low Brick Road. }
  \repeat unfold 4 { Fol -- low }
  Fol -- low
}

mezzo = \relative c'' {
  R2. |
  R |
  r64 bes^"A LITTLE GIRL" c d ees d c bes32 r bes16 c d ees d c bes32 r bes32 bes64 bes'32 bes64 g32 g64 a32 a64 bes64 bes bes bes a g f32 r32 f64 f f
  f f d' ees,   ees ees ees ees    c' c, c d   ees d c f64
}

mezzoWords = \lyricmode {
  \repeat unfold 2 { Fol -- low the Yel -- low Brick Road. }
  \repeat unfold 4 { Fol -- low }
  Fol -- low the Yel -- low Brick Road.
  \repeat unfold 2 { Fol -- low the Yel -- low Brick }
  Fol -- low the Yel -- low Brick Road.
}

alto = \relative c {
  \clef bass
  R2. |
  r8 r32 d^"A SISSY" e fis   g fis e d16 r16 d32     e fis g fis e d16 r32 |
  r32 d16 d32 d'16 d32 b ~ b b cis16 cis32 d d d d cis b a16 r a32 |
  a a a a fis' g, g g g g e' e, e fis g fis
}

altoWords = \lyricmode {
  \repeat unfold 2 { Fol -- low the Yel -- low Brick Road. }
  \repeat unfold 4 { Fol -- low }
  Fol -- low the Yel -- low Brick Road.
  \repeat unfold 2 { Fol -- low the Yel -- low Brick }
  Fol -- low the Yel -- low
}

tenor = \relative c {
  \clef bass
  ges4^"A MAN" aes bes |
  ces bes aes |
  ges2 r4 |
  r ges4
}

tenorWords = \lyricmode {
  Fol -- low the Yel -- low Brick Road.
  Fol
}

bass = \relative c, {
  \clef bass
  f4^"A REAL MAN" ~ f8 g ~ g4 |
  a4 ~ a8 bes ~ bes4 |
  a4 ~ a8 g ~ g4 |
  f4 ~ f |
  
}

bassWords = \lyricmode {
  Fol -- low the Yel -- low Brick Road.
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \soprano
      } {
	\scorePrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\scorePrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\scorePrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\scorePrefatoryMatter
        \bass
      }
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
      \override DynamicLineSpanner.direction = #UP
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

%{
\score {
  \new PianoStaff <<
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \soprano
      } \\ { \mezzo } \\ { \alto } {
	\scorePrefatoryMatter
        \marks
      } >> }
    }
    \new Staff  {
      \new Voice = "soprano" { << { \numericTimeSignature
	\scorePrefatoryMatter
        \tenor
      } \\ \\ { \bass } {
	\scorePrefatoryMatter
        \marks
      } >> }
    }
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
	\midiPrefatoryMatter
        \soprano
      } {
	\midiPrefatoryMatter
        \marks
      } >> }
      \new Lyrics \lyricsto "soprano" {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
	\midiPrefatoryMatter
        \mezzo
      }
      \new Lyrics \lyricsto "mezzo" {
        \mezzoWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "alto" { \numericTimeSignature
	\midiPrefatoryMatter
        \alto
      }
      \new Lyrics \lyricsto "alto" {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
	\midiPrefatoryMatter
        \tenor
      }
      \new Lyrics \lyricsto "tenor" {
        \tenorWords
      }
    >>
    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature
	\midiPrefatoryMatter
        \bass
      }
      \new Lyrics \lyricsto "bass" {
        \bassWords
      }
    >>
  >>
  \midi {}
}
