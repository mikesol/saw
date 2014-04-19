#(define-public (bend-into::print spanner)
  (define (close  a b)
    (< (abs (- a b)) 0.01))

  (let* ((delta-y (* 0.5 (ly:grob-property spanner 'delta-position)))
	 (left-span (ly:spanner-bound spanner LEFT))
	 (dots (if (and (grob::has-interface left-span 'note-head-interface)
			(ly:grob? (ly:grob-object left-span 'dot)))
		   (ly:grob-object left-span 'dot) #f))

	 (right-span (ly:spanner-bound spanner RIGHT))
	 (thickness (* (ly:grob-property spanner 'thickness)
		       (ly:output-def-lookup (ly:grob-layout spanner)
					     'line-thickness)))
	 (padding (- (ly:grob-property spanner 'padding 0.5)))
	 (common (ly:grob-common-refpoint right-span
					  (ly:grob-common-refpoint spanner
								   left-span X)
					  X))
	 (common-y (ly:grob-common-refpoint spanner left-span Y))
	 (minimum-length (ly:grob-property spanner 'minimum-length 0.5))

	 (left-x (+ padding
                    -1.5 ;blech...
		    (interval-start (ly:grob-robust-relative-extent
				     left-span common X))))
	 (right-x (+ 1.5 left-x))
	 (self-x (ly:grob-relative-coordinate spanner common X))
	 (dx (- right-x left-x))
	 (exp (list 'path thickness
		    `(quote
		      (rmoveto
		       ,(- left-x self-x) ,delta-y

		       rcurveto
		       ,(/ dx 3)
		       ,(* -0.66 delta-y)
		       ,dx ,(- delta-y)
		       ,dx ,(- delta-y))))))

    (ly:make-stencil
     exp
     (cons (- left-x self-x) (- right-x self-x))
     (cons (min 0 delta-y)
	   (max 0 delta-y)))))
