;The follwing procedure does some redundant computation.
;(define (gertrude wd)
	;(se (if (vowel? (first wd)) 'an 'a)
	;wd
	;'is
	;(if (vowel? (first wd)) 'an 'a)
	;wd
	;'is
	;(if (vowel? (first wd)) 'an 'a)
	;wd))
;> (gertrude 'rose)
;(A ROSE IS A ROSE IS A ROSE)
;> (gertrude 'iguana)
;(AN IGUANA IS AN IGUANA IS AN IGUANA)
;Use let to avoid the redundant work.

(define (gertrude wd)
  (let ((an_or_a (if (member? (first wd) 'aeiou) 'an 'a)))
    (se an_or_a wd 'is an_or_a wd 'is an_or_a)))
