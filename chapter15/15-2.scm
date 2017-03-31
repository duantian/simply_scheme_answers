(define (palindrome-help? sent)
 (cond ((empty? sent) #T)
  ((equal? (first sent) (last sent)) (if (> (count sent) 1) (palindrome-help? (bl (bf sent))) (palindrome-help? (bf sent))))
  (else #F)
 ))

(define (palindrome? sent)
 (palindrome-help?
  (accumulate word sent))
 )

(palindrome? '(flee to me remote elf))
