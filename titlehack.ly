 	
#(define-markup-command (oztitle layout props title dedication) (markup? markup?)
  "Draw a double box around text."
(interpret-markup layout props
    #{
\markup {
  \override #'(baseline-skip . 3.5)
  \column {
    \column {
      \fill-line {
        %\huge \larger \larger \bold
        \abs-fontsize #15 \bold
        #title
      }
      \fill-line {
        \large \bold
        #dedication
      }
    }
  }
}
%{
      \fill-line {
        "E.Y. Harburg"
        "Harold Arlen"
      }
      \fill-line {
        \null
        "arr. Mike Solomon"
      }
%}
#}))
bookTitleMarkup = \markup {
  \override #'(baseline-skip . 3.5)
  \column {
    \fill-line { \fromproperty #'header:dedication }
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \abs-fontsize #15 \bold
        \fromproperty #'header:title
      }
      \fill-line {
        \large \bold
        \fromproperty #'header:subtitle
      }
      \fill-line {
        \smaller \bold
        \fromproperty #'header:subsubtitle
      }
    }
  }  
}
%{
      \fill-line {
        \fromproperty #'header:poet
        { \large \bold \fromproperty #'header:instrument }
        \fromproperty #'header:composer
      }
      \fill-line {
        \fromproperty #'header:meter
        \fromproperty #'header:arranger
      }
%}
