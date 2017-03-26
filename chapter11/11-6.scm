(define (countdown n)
  (cond ((zero? n) 'Blastoff!)
	(else (se n (countdown (- n 1))))
	))
