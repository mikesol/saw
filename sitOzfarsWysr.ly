\include "defs-devel.ly"
\include "stylesheet_book.ly"

\include "wizard1.iily"
\include "waldOz.iily"
\include "comeOut.iily"
\include "itReallyWasNoMiracle.iily"
\include "dingDongTheWitchIsDead.iily"
\include "coroner.iily"
\include "lullaby-league.iily"
\include "lollipop-guild.iily"
\include "followTheYellowBrickRoad2.iily"
\include "wizard2.iily"
\include "brain.iily"
\include "wizard3.iily"
\include "heart.iily"
\include "wizard4-3.iily"
\include "nerve6.iily"
\include "wizard5.iily"
\include "optimistic3.iily"
\include "merryFast2.iily"
\include "kotf2.iily"
\include "finale.iily"
\include "bis.iily"


\include "titlehack.ly"

\book {
  \include "wizard1.ily"
  \markup \oztitle \waldOzTitle \waldOzDedication #'waldOz
  \label #'waldOz \noPageBreak
  \include "waldOz.ily"
  \markup \oztitle \comeOutTitle \comeOutDedication #'comeOut
  \label #'comeOut \noPageBreak
  \include "comeOut.ily"
  \markup \oztitle \itReallyWasNoMiracleTitle \itReallyWasNoMiracleDedication #'itReallyWasNoMiracle
  \label #'itReallyWasNoMiracle \noPageBreak
  \include "itReallyWasNoMiracle.ily"
  \markup \oztitle \dingDongTheWitchIsDeadTitle \dingDongTheWitchIsDeadDedication #'dingDongTheWitchIsDead
  \label #'dingDongTheWitchIsDead \noPageBreak
  \include "dingDongTheWitchIsDead.ily"
  \markup \oztitle \coronerTitle \coronerDedication #'coroner
  \label #'coroner \noPageBreak
  \include "coroner.ily"
  \markup \oztitle \lullabyLeagueTitle \lullabyLeagueDedication #'lullaby-league
  \label #'lullaby-league \noPageBreak
  \include "lullaby-league.ily"
  \markup \oztitle \lollipopGuildTitle \lollipopGuildDedication #'lollipop-guild
  \label #'lollipop-guild \noPageBreak
  \include "lollipop-guild.ily"
  \markup \oztitle \followTheYellowBrickRoadTwoTitle \followTheYellowBrickRoadTwoDedication #'followTheYellowBrickRoad2
  \label #'followTheYellowBrickRoad2 \noPageBreak
  \include "followTheYellowBrickRoad2.ily"
  \markup \oztitle \wizardTwoTitle \wizardTwoDedication #'wizard2
  \label #'wizard2 \noPageBreak
  \include "wizard2.ily"
  \markup \oztitle \brainTitle \brainDedication #'brain
  \label #'brain \noPageBreak
  \include "brain.ily"
  \markup \oztitle \wizardThreeTitle \wizardThreeDedication #'wizard3
  \label #'wizard3 \noPageBreak
  \include "wizard3.ily"
  \markup \oztitle \heartTitle \heartDedication #'heart
  \label #'heart \noPageBreak
  \include "heart.ily"
  \markup \oztitle \wizardFourThreeTitle \wizardFourThreeDedication #'wizard4-3
  \label #'wizard4-3 \noPageBreak
  \include "wizard4-3.ily"
  \markup \oztitle \nerveSixTitle \nerveSixDedication #'nerve6
  \label #'nerve6 \noPageBreak
  \include "nerve6.ily"
  \markup \oztitle \wizardFiveTitle \wizardFiveDedication #'wizard5
  \label #'wizard5 \noPageBreak
  \include "wizard5.ily"
  \markup \oztitle \optimisticThreeTitle \optimisticThreeDedication #'optimistic3
  \label #'optimistic3 \noPageBreak
  \include "optimistic3.ily"
  \markup \oztitle \merryFastTwoTitle \merryFastTwoDedication #'merryFast2
  \label #'merryFast2 \noPageBreak
  \include "merryFast2.ily"
  \markup \oztitle \kotfTwoTitle \kotfTwoDedication #'kotf2
  \label #'kotf2 \noPageBreak
  \include "kotf2.ily"
  \markup \oztitle \finaleTitle \finaleDedication #'finale
  \label #'finale \noPageBreak
  \include "finale.ily"
  \markup \oztitle \bisTitle \bisDedication #'bis
  \label #'bis \noPageBreak
  \include "bis.ily"

  \header {
    title = \wizardOneTitle
    subtitle = \markup \normal-text \italic \wizardOneDedication
    composer = \markup \null
    poet = \markup \null
    arranger = \markup \null
  }
}

