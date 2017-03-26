(define (copies n sent)
  (cond ((zero? n) '())
	(else (se sent (copies (- n 1) sent)))
	))
