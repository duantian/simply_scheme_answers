(define (match? pattern sent)
  (cond ((empty? pattern) (empty? sent))
	((member? (first pattern) '(! ? * &)) (match-special (first pattern) (bf pattern) sent))
	;((equal? (first pattern) '?)
	 ;(if (empty? sent) (empty? (bf pattern))
	   ;(or (match? (bf pattern) (bf sent)) (match? (bf pattern) sent))))
	;((equal? (first pattern) '*)
	 ;(*-longest-match (bf pattern) sent))
	;((equal? (first pattern) '&)
	 ;(&-longest-match (bf pattern) sent))
	((empty? sent) #F)
	;((equal? (first pattern) '!) (match? (bf pattern) (bf sent)))
	((equal? (first pattern) (first sent)) (match? (bf pattern) (bf sent)))
	(else #F)))


(define (*-longest-match pattern sent)
  (*-longest-match-helper pattern sent '()))

(define (*-longest-match-helper pattern sent-m sent-un)
  (cond ((match? pattern sent-un) #T)
	((empty? sent-m) #F)
	(else (*-longest-match-helper pattern (bl sent-m) (se (last sent-m) sent-un)))))

(define (&-longest-match pattern sent)
  (&-longest-match-helper pattern sent '()))

(define (&-longest-match-helper pattern sent-m sent-um)
  (cond ((empty? sent-m) #F)
	((match? pattern sent-um) #T)
	(else (&-longest-match-helper pattern (bl sent-m) (se (last sent-m) sent-um)))))


(define (match-special place-holder pattern sent)
  (cond ((equal? place-holder '!) (match-special-helper pattern sent 1 #T))
	((equal? place-holder '?) (match-special-helper pattern sent 0 #T))
	((equal? place-holder '*) (match-special-helper pattern sent 0 #F))
	((equal? place-holder '&) (match-special-helper pattern sent 1 #F))))

(define (match-special-helper pattern sent min-value max-one?)
  (cond ((empty? sent)
	 (and (= min-value 0) (match? pattern '())))
	(max-one? (longest-match-helper pattern (se (first sent)) (bf sent) min-value))
	(else (longest-match-helper pattern sent '() min-value))))

(define (longest-match-helper pattern sent-m sent-um min-value)
  (cond ((< (count sent-m) min-value) #F)
	((match? pattern sent-um) #T)
	((empty? sent-m) #F)
	(else (longest-match-helper pattern (bl sent-m) (se (last sent-m) sent-um) min-value))))
