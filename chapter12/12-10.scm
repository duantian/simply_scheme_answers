
(define (remove2 patt s)
  (cond ((empty? s) '())
	((equal? patt (first s)) (remove2 patt (bf s)))
	(else (se (first s) (remove2 patt (bf s))))))
