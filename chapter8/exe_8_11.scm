;8.11 [12.6] Write a GPA procedure. It should take a sentence of grades as its argument and return the corresponding
;grade point average:
;> (gpa '(A A+ B+ B))
;3.67
;Hint: write a helper procedure base–grade that takes a grade as argument and returns 0, 1, 2, 3, or 4, and another
;helper procedure grade–modifier that returns–.33, 0, or .33, depending on whether the grade has a minus, a plus,
;or neither.

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

(define (gpa s)
  (accumulate + (every grade s)))
