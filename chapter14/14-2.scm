(define (up sent)
  (cond ((empty? sent) '())
	(else (se (first sent) (every (lambda (x) (word (first sent) x)) (up (bf sent)))))))
