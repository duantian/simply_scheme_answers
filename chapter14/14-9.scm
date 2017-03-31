(define (location pattern sent)
  (cond ((empty? sent) #f)
	((equal? pattern (first sent)) 1)
	(else
	  (let
	    ((smaller (location pattern (bf sent))))
	    (if (equal? smaller #f) #f (+ 1 smaller))))
	))
