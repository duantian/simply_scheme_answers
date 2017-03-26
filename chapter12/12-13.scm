

(define TIME-STR '(CENTURY YEAR WEEK DAY HOUR MINUTE SECOND))
(define TIME-VAL '(3153600000 31536000 604800 86400 3600 60 1))

(define (describe-time-seq t t-table)
  (cond ((zero? t) '())
	(else (se (quotient t (first t-table)) (describe-time-seq (remainder t (first t-table)) (bf t-table))))
	))

(define (describe-time-helper t-seq t-str)
  (cond ((empty? t-seq) '())
	(else (se ((lambda (seq str) (cond ((zero? seq) '())
					   ((> seq 1) (se seq (word str 'S)))
					   (else (se seq str))
					   )) (first t-seq) (first t-str)) (describe-time-helper (bf t-seq) (bf t-str))))))

(define (describe-time t)
  (describe-time-helper (describe-time-seq t TIME-VAL) TIME-STR))
