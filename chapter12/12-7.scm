(define (spell-digit digit)
  (item (+ 1 digit)
	'(zero one two three four five six seven eight nine)))

(define (spell-number n)
  (cond ((empty? n) '())
	(else (se (spell-digit (first n)) (spell-number (bf n))))))
