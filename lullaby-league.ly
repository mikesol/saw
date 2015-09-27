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
ntrill = \override TrillSpanner #'bound-details #'left  #'text = #'()
#(ly:set-option 'point-and-click #f)

legero = \markup \italic "legero"

\header {
  title = "The Lullaby League" %(1)"
  subtitle = \markup { for John Ozwad }
  composer = "Harold Arlen"
  poet = "E.Y. Harburg"
  arranger = "arr. Mike Solomon"
}

nothing = {}

marksLullaby = {
  \time 2/4
  \tempo "Adagio" 4=40
  s2*11 |
  \time 11/16
  s16 \bar "!"
  s4 \bar "!"
  s4.
  \time 2/4
  s2*5 \bar "|."
}

prefatoryMatterLullaby = {
  %\key aes \major
  #(set-accidental-style 'modern-cautionary)
  
}

sopranoLullaby = \relative c' { \autoBeamOff
  \prefatoryMatterLullaby
  e4 ~ \times 2/3 { e8 d e } |
  d4 ~ d16 r e8 |
  cis8 d' cis4 |
  bis8 [ ( \glissando cis8 ] ~ cis16 ) r e,8 |
  d ais' b4 |
  b16 ( [ \glissando c8. ] ~ c16 ) r f,8 |
  ees bes' aes4 |
  g4 ( \glissando aes16 ) r d,8 |
  cis8 d c4 |
  b4 ~ b16 r ees8 |
  d d b'4 |
  %\time 9/16
  ees16 b,8 ees des \ntrill c4\startTrillSpan |
  %\time 6/16
  %\time 2/4
  b'4\stopTrillSpan \glissando e4 |
  %\time 2/4
  %d8 des c b |
  %des,4 fis' |
  d8 des c e, |
  des4 fis' |
  dis,4 fis | %%% DOM
  g8 ( \glissando aes4. ) | %%%ton in sop, ab everywhere else, slides up
}

sopranoLullabyWords = \lyricmode {
  We re -- pre -- sent
  The Lul -- la -- by League
  The Lul -- la -- by League
  The Lul -- la -- by League
  And in the name of
  The Lul -- la -- by League
  of
  The Lul -- la
  League
  We wish to wel -- come you to
  Munch -- kin -- land
}

mezzoLullaby = \relative c' { \autoBeamOff
  \prefatoryMatterLullaby
  cis4 ~ \times 2/3 { cis8 b c } |
  b4 ~ b16 r cis8 |
  a8 bes' a4 |
  gis8 [ ( \glissando a ~ ] a16 ) r cis,8 |
  b g' gis4 |
  gis16 [ ( \glissando g8. ~ ] g16 ) r d8 |
  c g' f4 |
  e4 ( \glissando f16 ) r b,8 |
  ais8 b a4 |
  gis4 ~ gis16 r c8 |
  b b gis'4 |
  c16 gis,8 c bes8 \ntrill a4\startTrillSpan |
  gis'4\stopTrillSpan \glissando c |
  %b8 bes a gis |
  %bes,4 d' |
  b8 bes a des, |
  bes4 d' |
  b, dis |
  f2 |
}

mezzoLullabyWords = \lyricmode {
  We re -- pre -- sent
  The Lul -- la -- by League
  The Lul -- la -- by League
  The Lul -- la -- by League
  And in the name of
  The Lul -- la -- by League
  of
  The Lul -- la
  League
  We wish to wel -- come you to
  Munch -- kin -- land
}

altoLullaby = \relative c' { \autoBeamOff
  \prefatoryMatterLullaby
  bes4 ~ \times 2/3 { bes8 a bes } |
  a4 ~ a16 r bes8 |
  gis8 aes' fis4 |
  fis4 ~ fis16 r bes,8 |
  a f' fis4 |
  f4 ~ f16 r c8 |
  bes f' ees4 |
  d4 ~ d16 r a8 |
  gis gis g4 |
  fis4 ~ fis16 r bes8 |
  a a fis'4 |
  bes16 fis,8 bes aes \ntrill g4\startTrillSpan |
  fis'4\stopTrillSpan \glissando a |
  %a8 aes g fis |
  %aes,4 b' |
  a8 aes g ces, |
  aes4 b' |
  gis, cis |
  ees2 |
}

altoLullabyWords = \lyricmode {
  We re -- pre -- sent
  The Lul -- la -- by League
  The Lul -- la -- by League
  The Lul -- la -- by League
  And in the name of
  The Lul -- la -- by League
  of
  The Lul -- la
  League
  We wish to wel -- come you to
  Munch -- kin -- land
}

tenorLullaby = \relative c' {
  \autoBeamOff
  \clef "treble_8"
  \prefatoryMatterLullaby
  g4 ~ \times 2/3 { g8 fis g } |
  f4 ~ f16 r g8 |
  e f' e4 |
  dis4 ~ dis16 r g,8 |
  f d' dis4 |
  d4 ~ d16 r a8 |
  g d' c4 |
  b ~ b16 r fis8 |
  eis fis e4 |
  dis ~ dis16 r g8 |
  fis fis dis'4 | 
  g16 dis,8 g f \ntrill e4\startTrillSpan |
  d'4\stopTrillSpan \glissando g |
  %fis8 f e dis |
  %f,4 a' |
  fis8 f e aes, |
  f4 a' |
  fis, a | 
  c2 |
}

tenorLullabyWords = \lyricmode {
  We re -- pre -- sent
  The Lul -- la -- by League
  The Lul -- la -- by League
  The Lul -- la -- by League
  And in the name of
  The Lul -- la -- by League
  of
  The Lul -- la
  League
  We wish to wel -- come you to
  Munch -- kin -- land
}

bassLullaby = \relative c { \autoBeamOff
  \prefatoryMatterLullaby
  \clef bass
  R2*8 |
}

bassLullabyWords = \lyricmode {
}

%%% SCORE
#(set-global-staff-size 16)

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \bitchName %shortInstrumentName = #"M."
} <<
      \new Voice = "sopranoLullaby" { << { \numericTimeSignature
        \sopranoLullaby
      } {
        \marksLullaby
      } {
        \nothing
      }>> }
      \new Lyrics \lyricsto "sopranoLullaby" {
        \sopranoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoLullaby" { << { \numericTimeSignature
        \mezzoLullaby
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "mezzoLullaby" {
        \mezzoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoLullaby" { << { \numericTimeSignature
        \altoLullaby
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "altoLullaby" {
        \altoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorLullaby" { << { \numericTimeSignature
        \tenorLullaby
      } {
        \nothing
      } >> }
      \new Lyrics \lyricsto "tenorLullaby" {
        \tenorLullabyWords
      }
    >>
%    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
%} <<
%      \new Voice = "bassLullaby" { << { \numericTimeSignature
%        \bassLullaby
%      } {
%        \nothing
%      } >> }
%      \new Lyrics \lyricsto "bassLullaby" {
%        \bassLullabyWords
%      }
%    >>
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
      \new Voice = "1" { \voiceOne << \sopranoLullaby \marksLullaby >> }
      \new Voice = "2" { \voiceTwo \mezzoLullaby }
      \new Voice = "3" { \voiceThree \altoLullaby }
    >>
    \new Staff <<
      \new Voice = "4" { \voiceOne \tenorLullaby }
      \new Voice = "5" { \voiceTwo \bassLullaby }
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
      \new Voice = "sopranoLullaby" { << { \numericTimeSignature
        \sopranoLullaby
      } {
        \marksLullaby
      } >> }
      \new Lyrics \lyricsto "sopranoLullaby" {
        \sopranoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \dortyName %shortInstrumentName = #"E."
} <<
      \new Voice = "mezzoLullaby" { \numericTimeSignature
        \mezzoLullaby
      }
      \new Lyrics \lyricsto "mezzoLullaby" {
        \mezzoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \ttoName %shortInstrumentName = #"Mk."
} <<
      \new Voice = "altoLullaby" { \numericTimeSignature
        \altoLullaby
      }
      \new Lyrics \lyricsto "altoLullaby" {
        \altoLullabyWords
      }
    >>
    \new Staff \with { instrumentName = \fakbydName %shortInstrumentName = #"R."
} <<
      \new Voice = "tenorLullaby" { \numericTimeSignature
        \tenorLullaby
      }
      \new Lyrics \lyricsto "tenorLullaby" {
        \tenorLullabyWords
      }
    >>
%    \new Staff \with { instrumentName = \wysrName %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
%} <<
%      \new Voice = "bassLullaby" { \numericTimeSignature
%        \bassLullaby
%      }
%      \new Lyrics \lyricsto "bassLullaby" {
%        \bassLullabyWords
%      }
%    >>
  >>
  \midi {}
}
