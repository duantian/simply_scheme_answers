;9.4 The following program doesn't work. Why not? Fix it.

;(define (who sent)
;  (every describe '(pete roger john keith)))

;(define (describe person)
;  (se person sent))

;It's supposed to work like this:
;> (who '(sells out))
;(pete sells out roger sells out john sells out keith sells out)

(define (who sent)
  (accumulate se
	      (every (lambda (x) (se x sent))
		     '(pete roger john keith))))
