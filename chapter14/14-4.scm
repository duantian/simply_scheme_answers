(define (odds sent)
  (cond ((empty? sent) '())
	((empty? (bf sent)) (first sent))
	(else (se (first sent) (odds (bf (bf sent)))))))
