(define (deep-count lst)
  (cond ((null? lst) 0)	;base case
	((word? lst) 1)
	(else (reduce + (map deep-count lst)))))
