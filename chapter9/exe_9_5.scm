;9.5 Write prepend–every:
;> (prepend–every 's '(he aid he aid))
;(SHE SAID SHE SAID)
;> (prepend–every 'anti '(dote pasto gone body))
;(ANTIDOTE ANTIPASTO ANTIGONE ANTIBODY)

(define (prepend-every pre s)
  (every (lambda (x) (word pre x)) s))
