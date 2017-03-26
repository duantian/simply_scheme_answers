
(define (numbers s)
  (cond ((empty? s) '())
	((number? (first s)) (se (first s) (numbers (bf s))))
	(else (se (numbers (bf s))))))
