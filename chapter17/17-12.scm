(define (flatten lst)
  (cond ((null? lst) '())	;base case
	((word? lst) (list lst))
	(else (reduce append (map flatten lst)))))
