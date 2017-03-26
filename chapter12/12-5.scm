
(define (exaggerate-helper wd)
  (cond ((equal? wd 'good) 'great)
	 ((equal? wd 'bad) 'terrible)
	 ((number? wd) (* wd 2))
	 (else wd)))

(define (exaggerate wd)
  (cond ((empty? wd) '())
	 (else (se (exaggerate-helper (first wd)) (exaggerate (bf wd))))
	))
