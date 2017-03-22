;8.8 [12.5] Write an exaggerate procedure which exaggerates sentences:
;> (exaggerate '(i ate 3 potstickers))
;(I ATE 6 POTSTICKERS)
;> (exaggerate '(the chow fun is good here))
;(THE CHOW FUN IS GREAT HERE)

(define (exaggerate-helper wd)
  (cond ((equal? wd 'good) 'great)
	 ((equal? wd 'bad) 'terrible)
	 ((number? wd) (* wd 2))
	 (else wd)))

(define (exaggerate s)
  (every exaggerate-helper s))
