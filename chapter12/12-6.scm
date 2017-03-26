
(define (base-grade g)
  (cond ((equal? g 'A) 4)
	((equal? g 'B) 3)
	((equal? g 'C) 2)
	((equal? g 'D) 1)
	((equal? g 'E) 0)
	))

(define (grade-modifier s)
  (cond ((equal? s '+) 0.33)
	((equal? s '-) -0.33)
	(else 0))
  )

(define (grade s)
  (cond ((= 2 (count s)) (+ (base-grade (first s)) (grade-modifier (last s))))
	(else (base-grade s)))
  )

(define (gpa-seq s)
  (cond ((empty? s) '())
	(else (se (grade (first s)) (gpa-seq (bf s))))))

(define (gpa s)
  (let
    (
     (gpa-s (gpa-seq s))
     )
    (/ (accumulate + gpa-s) (count gpa-s))))
