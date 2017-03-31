
(define (remove-once pattern sent)
  (cond ((empty? sent) '())
	((equal? pattern (first sent)) (bf sent))
	(else (se (first sent) (remove-once pattern (bf sent))))))
