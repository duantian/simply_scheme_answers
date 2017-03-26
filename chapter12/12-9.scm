
(define (real-word? wd)
  (not (member? wd '(a the an in of and for to with))))


(define (real-words s)
  (cond ((empty? s) '())
	((real-word? (first s)) (se (first s) (real-words (bf s))))
	(else (se (real-words (bf s))))))
