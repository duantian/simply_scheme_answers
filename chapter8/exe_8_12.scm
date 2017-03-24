;8.12 [11.2] When you teach a class, people will get distracted if you say "um" too many times. Write a count–ums
;that counts the number of times "um" appears in a sentence:
;> (count–ums
;'(today um we are going to um talk about functional um programming))
;3

(define (count-ums s)
  (count (keep (lambda (x) (equal? x 'um)) s)))
