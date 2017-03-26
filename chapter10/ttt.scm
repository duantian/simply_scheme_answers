
(define (substitute-letter square position)
  (if (equal? (item square position) '_)
    square
    (item square position)))

(define (substitute-triple combination position)
  (accumulate word (every (lambda (x) (substitute-letter x position)) combination)))

(define (find-triples position)
  (every (lambda (x) (substitute-triple x position)) 
	 '(123 456 789 147 258 369 159 357)))

(define (appearances a b)
  (count (keep (lambda (x) (equal? x a)) b)))

(define (opponent a)
  (if (equal? a 'x)
    'o
    'x))

(define (my-pair? triple me)
  (and (= 2 (appearances me triple)) (= 0 (appearances (opponent me) triple))))

(define (my-single? triple me)
  (and (= 1 (appearances me triple)) (= 0 (appearances (opponent me) triple))))

(define (choose-win winning-triples)
  (if (empty? winning-triples)
    #f
    (keep number? (first winning-triples))))

(define (i-can-win? triples me)
  (choose-win (keep (lambda (x) (my-pair? x me)) triples)))

(define (choose-winning-move triples me)
  (keep number? (first (keep (lambda (x) (my-pair? x me)) triples))))

(define (opponent-can-win? triples me)
  (i-can-win? triples (opponent me)))

(define (pivot triples me)
  (let ((temp_string (accumulate word (keep (lambda (x) (my-single? x me)) triples))))
    (keep (lambda (x) (= 2 (appearances x temp_string))) '(1 2 3 4 5 6 7 8 9))))

(define (i-can-fork? triples me)
  (let ((pivot_seq (pivot triples me)))
    (if (empty? pivot_seq) #f (first pivot_seq))))

(define (i-can-advance? triples me)
  (best-move (keep (lambda (x) (my-single? x me)) triples) triples me))

(define (best-move my-triples all-triples me)
  (if (empty? my-triples)
    #f
    (best-square (first my-triples) all-triples me)))

(define (best-square my-triple all-triples me)
  (let
    (
     (opponent_pivot (pivot all-triples (opponent me)))
     (my-square (keep number? my-triple))
     )
    (if (member? (first my-square) opponent_pivot) (first my-square) (last my-square))))

(define (best-free-square triples)
  (let
    (
     (all-triples (accumulate word triples))
     )
    (first (keep (lambda (x) (member? x all-triples)) '(5 1 3 7 9 2 4 6 8)))))


(define (ttt-choose triples me)
  (cond ((i-can-win? triples me))
	((opponent-can-win? triples me))
	((i-can-fork? triples me))
	((i-can-advance? triples me))
	(else (best-free-square triples))))

(define (ttt position me)
  (ttt-choose (find-triples position) me))
