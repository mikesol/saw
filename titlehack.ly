 	
#(define-markup-command (oztitle layout props title dedication) (markup? markup?)
  "Draw a double box around text."
(interpret-markup layout props
    #{
\markup {
  \override #'(baseline-skip . 3.5)
  \column {
    \column {
      \fill-line {
        \huge \larger \larger \bold
        #title
      }
      \fill-line {
        \large \bold
        #dedication
      }
      \fill-line {
        "E.Y. Harburg"
        "Harold Arlen"
      }
      \fill-line {
        " "
        "arr. Mike Solomon"
      }
    }
  }
}

#}))