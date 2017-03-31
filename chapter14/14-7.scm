(define (differences sent)
  (cond ((empty? sent) '())
	((empty? (bf sent)) '())
	(else (se (- (first (bf sent)) (first sent)) (differences (bf sent))))))
