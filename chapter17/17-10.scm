(define (length2 l)
  (cond ((null? l) 0)
	(else (+ 1 (length2 (cdr l))))))
