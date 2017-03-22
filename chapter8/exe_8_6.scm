;8.6 When you're talking to someone over a noisy radio connection, you sometimes have to spell out a word in order to
;get the other person to understand it. But names of letters aren't that easy to understand either, so there's a standard
;code in which each letter is represented by a particular word that starts with the letter. For example, instead of "B" you
;say "bravo."
;Write a procedure words that takes a word as its argument and returns a sentence of the names of the letters in the
;word:
;> (words 'cab)
;(CHARLIE ALPHA BRAVO)
;(You may make up your own names for the letters or look up the standard ones if you want.)



(define (letter-abbr l)
  (cond ((equal? l 'a) 'alpha)
	((equal? l 'b) 'bravl)
	((equal? l 'c) 'charlie)))

(define (words wd)
  (every letter-abbr wd))
