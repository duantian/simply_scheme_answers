(define (count-ums sent)
  (cond ((empty? sent) 0)
	((equal? (first sent) 'um) (+ 1 (count-ums (bf sent))))
	(else (count-ums (bf sent)))
	))
