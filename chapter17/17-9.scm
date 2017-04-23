(define (list-ref2 l n)
  (cond ((= l 1) (car n))
	(else
	  (list-ref2 (- l 1) (cdr n)))))
