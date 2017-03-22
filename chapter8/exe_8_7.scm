;8.7 [14.5] * Write a procedure letter–count that takes a sentence as its argument and returns the total number of
;letters in the sentence:
;> (letter–count '(fixing a hole))
;11

(define (letter-count s)
  (accumulate + (every count s)))
