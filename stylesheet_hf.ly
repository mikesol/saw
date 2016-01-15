#(define page-number-offsets '(
 (even . (-5 . 0))
 (odd . (5 . 0))
 ))

#(define-markup-command (place-folio layout props folio) (markup?)
  (let* ((pageno (chain-assoc-get 'page:page-number props))
         (even-odd-page (if (even? pageno) 'even 'odd))
         (m (interpret-markup layout props folio))
         (x-ext (ly:stencil-extent m X))
         (y-ext (ly:stencil-extent m Y)))
  (interpret-markup layout props
    (markup
       #:with-dimensions x-ext y-ext
       #:line (#:translate (assoc-get even-odd-page page-number-offsets) folio)
      ))))


\paper {
  first-page-number = #15
  print-first-page-number = ##t
  oddHeaderMarkup = \markup \null
  evenHeaderMarkup = \markup \null
  oddFooterMarkup = \markup \column {
\fill-line {
        \null
         %\with-dimensions #'(0 . 14) #'(0 . 0)
         \place-folio
         \line {
          Sit Ozfårs Wysr | \bold \on-the-fly \print-page-number-check-first \fromproperty #'page:page-number-string
        }
  }}
  evenFooterMarkup = \markup \column {
\fill-line {
        %\with-dimensions #'(6 . 8) #'(0 . 0)
         \place-folio
        \line {
          \bold \on-the-fly \print-page-number-check-first \fromproperty #'page:page-number-string | Sit Ozfårs Wysr
        }
        \null
  }}
}