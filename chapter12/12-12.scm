
(define (roman-value letter)
  (cond ((equal? letter 'I) 1)
	((equal? letter 'V) 5)
	((equal? letter 'X) 10)
	((equal? letter 'L) 50)
	((equal? letter 'C) 100)
	((equal? letter 'D) 500)
	((equal? letter 'M) 1000)
	(else 0)))


(define (arabic s)
  (cond ((empty? s) 0)
	(else (+ (roman-value (first s)) (arabic (bf s))))))
