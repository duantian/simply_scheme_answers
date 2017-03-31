
(define (to-binary-helper n)
  (cond ((zero? n) "")
	(else (se (to-binary-helper (quotient n 2)) (remainder n 2)))))

(define (to-binary n)
 (accumulate word (to-binary-helper n)))

(to-binary 9)

;(to-binary 23)
	
