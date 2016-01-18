 	
#(define-markup-command (oztitle layout props title dedication label) (markup? markup? symbol?)
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
        \concat { \large \italic %\bold
        #dedication \fake-page-ref #label "" "" }
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
        \large \italic %\bold
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


#(define-markup-command (fake-page-ref layout props label gauge default)
  (symbol? markup? markup?)
  (let* ((gauge-stencil (interpret-markup layout props gauge))
         (x-ext '(0 . 0))
         (y-ext '(0 . 0)))
    (ly:make-stencil
     `(delay-stencil-evaluation
       ,(delay (ly:stencil-expr
                (let* ((table (ly:output-def-lookup layout 'label-page-table))
                       (page-number (if (list? table)
                                        (assoc-get label table)
                                        #f)))
     (format #t "\n\n@@@@@@~a::::::~a\n\n\n" page-number label)
                  (interpret-markup layout props
                                    (markup #:null))))))
     x-ext
     y-ext)))