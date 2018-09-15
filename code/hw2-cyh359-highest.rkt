; methodology: try to find the list of maximum and remove others
(define (highest l k)
  ; set the rule for removing
  (letrec ((removex (lambda (l x)
                          (if (= (car l) x)
                              (cdr l) (cons (car l)
                                            (removex (cdr l) x))))))

  ;set the rule to find maximum 
  (letrec ((findmax (lambda (x)
                          (if (null? (cddr x))
                              (max (cadr x) (car x)) (max (car x)
                                            (findmax (cdr x)))))))
  (if (= k 0)
      (quote())
      (cons (findmax l)
            (highest (removex l (findmax l))
                         (- k 1)))))))

;test: it should return (9 5 4)
(highest '(1 2 5 4 9 3) 3)
