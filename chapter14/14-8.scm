(define (expand-helper n sent)
  (if (equal? 0 n) '()
    (se 'sent (expand-helper (- n 1) sent))))

(define (new-expand sent)
  (cond ((empty? sent) '())
	((number? (first sent)) (se (expand-helper (first sent) (first (bf sent))) (new-expand (bf (bf sent)))))
	(else (se (first sent) (new-expand (bf sent))))
	))
