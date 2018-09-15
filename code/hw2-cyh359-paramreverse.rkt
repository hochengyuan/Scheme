(define (paramreverse F AL)

  ;deal with null
  (if (null? (cddr AL))

  ;reverse parameters
  (F (car (cdr AL)) (car AL))
  (F (car AL) (paramreverse F (cdr AL)))))

;test: it should be (4-2=2)
(paramreverse - (quote( 2 4)))