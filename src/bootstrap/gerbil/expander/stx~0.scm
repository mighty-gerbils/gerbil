(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712702630)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (__make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args114228%_
        (apply make-instance gx#identifier-wrap::t _%$args114228%_)))
    (define gx#identifier-wrap-marks
      (__make-class-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (__make-class-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (__make-class-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (__make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args114225%_
        (apply make-instance gx#syntax-wrap::t _%$args114225%_)))
    (define gx#syntax-wrap-mark
      (__make-class-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (__make-class-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (__make-class-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (__make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args114222%_
        (apply make-instance gx#syntax-quote::t _%$args114222%_)))
    (define gx#syntax-quote-context
      (__make-class-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (__make-class-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e
      (__make-class-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (__make-class-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_%stx114220%_) (symbol? (gx#stx-e _%stx114220%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114218%_)
        (if (##structure-direct-instance-of? _%stx114218%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114218%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114213%_)
        (if (##structure-direct-instance-of? _%stx114213%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx114213%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx114213%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114208%_)
        (if (##structure-direct-instance-of? _%stx114208%_ 'gx#syntax-quote::t)
            _%stx114208%_
            (if (##structure-direct-instance-of?
                 _%stx114208%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx114208%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx114182%_)
        (if (##structure-direct-instance-of? _%stx114182%_ 'gx#syntax-wrap::t)
            (let _%lp114185%_ ((_%e114187%_
                                (##unchecked-structure-ref
                                 _%stx114182%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks114188%_
                                (cons (##unchecked-structure-ref
                                       _%stx114182%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e114187%_)
                  (let ((_%$e114191%_
                         (##type-id (##structure-type _%e114187%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e114191%_)
                        (_%lp114185%_
                         (##unchecked-structure-ref _%e114187%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e114187%_ '3 '#f '#f)
                          _%marks114188%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e114191%_)
                                (eq? 'gx#identifier-wrap::t _%$e114191%_))
                            (##unchecked-structure-ref _%e114187%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e114191%_)
                                (_%lp114185%_
                                 (##unchecked-structure-ref
                                  _%e114187%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks114188%_)
                                _%e114187%_))))
                  (if (null? _%marks114188%_)
                      _%e114187%_
                      (if (pair? _%e114187%_)
                          (cons (gx#stx-wrap (car _%e114187%_) _%marks114188%_)
                                (gx#stx-wrap
                                 (cdr _%e114187%_)
                                 _%marks114188%_))
                          (if (vector? _%e114187%_)
                              (vector-map
                               (lambda (_%g114199114201%_)
                                 (gx#stx-wrap
                                  _%g114199114201%_
                                  _%marks114188%_))
                               _%e114187%_)
                              (if (box? _%e114187%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e114187%_)
                                        _%marks114188%_))
                                  _%e114187%_))))))
            (if (##structure-instance-of? _%stx114182%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx114182%_ '1 '#f '#f)
                _%stx114182%_))))
    (define gx#syntax->datum
      (lambda (_%stx114175%_)
        (if (##structure-instance-of? _%stx114175%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx114175%_ '1 '#f '#f))
            (if (pair? _%stx114175%_)
                (cons (gx#syntax->datum (car _%stx114175%_))
                      (gx#syntax->datum (cdr _%stx114175%_)))
                (if (vector? _%stx114175%_)
                    (vector-map gx#syntax->datum _%stx114175%_)
                    (if (box? _%stx114175%_)
                        (box (gx#syntax->datum (unbox _%stx114175%_)))
                        _%stx114175%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114109%_ _%datum114110%_ _%src114111%_ _%quote?114112%_)
        (letrec ((_%wrap-datum114114%_
                  (lambda (_%e114147%_ _%marks114148%_)
                    (_%wrap-inner114116%_
                     _%e114147%_
                     (lambda (_%g114149114151%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114149114151%_
                        _%src114111%_
                        _%marks114148%_)))))
                 (_%wrap-quote114115%_
                  (lambda (_%e114139%_ _%ctx114140%_ _%marks114141%_)
                    (_%wrap-inner114116%_
                     _%e114139%_
                     (lambda (_%g114142114144%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114142114144%_
                        _%src114111%_
                        _%ctx114140%_
                        _%marks114141%_)))))
                 (_%wrap-inner114116%_
                  (lambda (_%e114127%_ _%wrap-e114128%_)
                    (let _%recur114130%_ ((_%e114132%_ _%e114127%_))
                      (if (symbol? _%e114132%_)
                          (_%wrap-e114128%_ _%e114132%_)
                          (if (pair? _%e114132%_)
                              (cons (_%recur114130%_ (car _%e114132%_))
                                    (_%recur114130%_ (cdr _%e114132%_)))
                              (if (vector? _%e114132%_)
                                  (vector-map _%recur114130%_ _%e114132%_)
                                  (if (box? _%e114132%_)
                                      (box (_%recur114130%_
                                            (unbox _%e114132%_)))
                                      _%e114132%_)))))))
                 (_%wrap-outer114117%_
                  (lambda (_%e114125%_)
                    (if (##structure-instance-of? _%e114125%_ 'gerbil#AST::t)
                        _%e114125%_
                        (##structure gx#AST::t _%e114125%_ _%src114111%_)))))
          (if (##structure-instance-of? _%datum114110%_ 'gerbil#AST::t)
              _%datum114110%_
              (if (not _%stx114109%_)
                  (##structure gx#AST::t _%datum114110%_ _%src114111%_)
                  (if (gx#identifier? _%stx114109%_)
                      (let ((_%stx114122%_ (gx#stx-unwrap__0 _%stx114109%_)))
                        (_%wrap-outer114117%_
                         (if (##structure-direct-instance-of?
                              _%stx114122%_
                              'gx#syntax-quote::t)
                             (if _%quote?114112%_
                                 (_%wrap-quote114115%_
                                  _%datum114110%_
                                  (##unchecked-structure-ref
                                   _%stx114122%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114122%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114114%_
                                  _%datum114110%_
                                  (##unchecked-structure-ref
                                   _%stx114122%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114114%_
                              _%datum114110%_
                              (##unchecked-structure-ref
                               _%stx114122%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx114109%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114157%_ _%datum114158%_)
        (let* ((_%src114160%_ '#f) (_%quote?114162%_ '#t))
          (gx#datum->syntax__%
           _%stx114157%_
           _%datum114158%_
           _%src114160%_
           _%quote?114162%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114164%_ _%datum114165%_ _%src114166%_)
        (let ((_%quote?114168%_ '#t))
          (gx#datum->syntax__%
           _%stx114164%_
           _%datum114165%_
           _%src114166%_
           _%quote?114168%_))))
    (define gx#datum->syntax
      (lambda _g114309_
        (let ((_g114308_ (##length _g114309_)))
          (cond ((##fx= _g114308_ 2) (apply gx#datum->syntax__0 _g114309_))
                ((##fx= _g114308_ 3) (apply gx#datum->syntax__1 _g114309_))
                ((##fx= _g114308_ 4) (apply gx#datum->syntax__% _g114309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g114309_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114075%_ _%marks114076%_)
        (let _%lp114078%_ ((_%e114080%_ _%stx114075%_)
                           (_%marks114081%_ _%marks114076%_)
                           (_%src114082%_ (gx#stx-source _%stx114075%_)))
          (if (##structure-direct-instance-of? _%e114080%_ 'gx#syntax-wrap::t)
              (_%lp114078%_
               (##unchecked-structure-ref _%e114080%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e114080%_ '3 '#f '#f)
                _%marks114081%_)
               (##unchecked-structure-ref _%e114080%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e114080%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks114081%_)
                      _%e114080%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e114080%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e114080%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e114080%_ '3 '#f '#f)
                        _%marks114081%_)))
                  (if (##structure-direct-instance-of?
                       _%e114080%_
                       'gx#syntax-quote::t)
                      _%e114080%_
                      (if (##structure-instance-of? _%e114080%_ 'gerbil#AST::t)
                          (_%lp114078%_
                           (##unchecked-structure-ref _%e114080%_ '1 '#f '#f)
                           _%marks114081%_
                           (##unchecked-structure-ref _%e114080%_ '2 '#f '#f))
                          (if (symbol? _%e114080%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e114080%_
                               _%src114082%_
                               (reverse _%marks114081%_))
                              (if (null? _%marks114081%_)
                                  _%e114080%_
                                  (if (pair? _%e114080%_)
                                      (cons (gx#stx-wrap
                                             (car _%e114080%_)
                                             _%marks114081%_)
                                            (gx#stx-wrap
                                             (cdr _%e114080%_)
                                             _%marks114081%_))
                                      (if (vector? _%e114080%_)
                                          (vector-map
                                           (lambda (_%g114091114093%_)
                                             (gx#stx-wrap
                                              _%g114091114093%_
                                              _%marks114081%_))
                                           _%e114080%_)
                                          (if (box? _%e114080%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e114080%_)
                                                    _%marks114081%_))
                                              _%e114080%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114101%_)
        (let ((_%marks114103%_ '()))
          (gx#stx-unwrap__% _%stx114101%_ _%marks114103%_))))
    (define gx#stx-unwrap
      (lambda _g114311_
        (let ((_g114310_ (##length _g114311_)))
          (cond ((##fx= _g114310_ 1) (apply gx#stx-unwrap__0 _g114311_))
                ((##fx= _g114310_ 2) (apply gx#stx-unwrap__% _g114311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g114311_))))))
    (define gx#stx-wrap
      (lambda (_%stx114068%_ _%marks114069%_)
        (__foldl1
         (lambda (_%mark114071%_ _%stx114072%_)
           (gx#stx-apply-mark _%stx114072%_ _%mark114071%_))
         _%stx114068%_
         _%marks114069%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114062%_ _%marks114063%_)
        (__foldr1
         (lambda (_%mark114065%_ _%stx114066%_)
           (gx#stx-apply-mark _%stx114066%_ _%mark114065%_))
         _%stx114062%_
         _%marks114063%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114056%_ _%mark114057%_)
        (if (##structure-direct-instance-of? _%stx114056%_ 'gx#syntax-quote::t)
            _%stx114056%_
            (if (and (##structure-direct-instance-of?
                      _%stx114056%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114057%_
                          (##unchecked-structure-ref
                           _%stx114056%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx114056%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx114056%_
                 (gx#stx-source _%stx114056%_)
                 _%mark114057%_)))))
    (define gx#apply-mark
      (lambda (_%mark114020%_ _%marks114021%_)
        (let* ((_%marks114022114030%_ _%marks114021%_)
               (_%else114024114038%_
                (lambda () (cons _%mark114020%_ _%marks114021%_)))
               (_%K114026114044%_
                (lambda (_%rest114041%_ _%hd114042%_)
                  (if (eq? _%mark114020%_ _%hd114042%_)
                      _%rest114041%_
                      (cons _%mark114020%_ _%marks114021%_)))))
          (if (##pair? _%marks114022114030%_)
              (let ((_%hd114027114047%_ (##car _%marks114022114030%_))
                    (_%tl114028114049%_ (##cdr _%marks114022114030%_)))
                (let* ((_%hd114052%_ _%hd114027114047%_)
                       (_%rest114054%_ _%tl114028114049%_))
                  (_%K114026114044%_ _%rest114054%_ _%hd114052%_)))
              (_%else114024114038%_)))))
    (define gx#stx-e
      (lambda (_%stx114015%_)
        (if (##structure-direct-instance-of? _%stx114015%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx114015%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx114015%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx114015%_ '1 '#f '#f)
                _%stx114015%_))))
    (define gx#stx-source
      (lambda (_%stx114013%_)
        (if (##structure-instance-of? _%stx114013%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114013%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114007%_ _%src114008%_)
        (if (or (##structure-instance-of? _%stx114007%_ 'gerbil#AST::t)
                (not _%src114008%_))
            _%stx114007%_
            (##structure gx#AST::t _%stx114007%_ _%src114008%_))))
    (define gx#stx-datum?
      (lambda (_%stx114005%_) (gx#self-quoting? (gx#stx-e _%stx114005%_))))
    (define gx#self-quoting?
      (lambda (_%x113988%_)
        (let ((_%$e113990%_ (immediate? _%x113988%_)))
          (if _%$e113990%_
              _%$e113990%_
              (let ((_%$e113993%_ (number? _%x113988%_)))
                (if _%$e113993%_
                    _%$e113993%_
                    (let ((_%$e113996%_ (keyword? _%x113988%_)))
                      (if _%$e113996%_
                          _%$e113996%_
                          (let ((_%$e113999%_ (string? _%x113988%_)))
                            (if _%$e113999%_
                                _%$e113999%_
                                (let ((_%$e114002%_ (vector? _%x113988%_)))
                                  (if _%$e114002%_
                                      _%$e114002%_
                                      (u8vector? _%x113988%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e113986%_) (boolean? (gx#stx-e _%e113986%_))))
    (define gx#stx-keyword?
      (lambda (_%e113984%_) (keyword? (gx#stx-e _%e113984%_))))
    (define gx#stx-char? (lambda (_%e113982%_) (char? (gx#stx-e _%e113982%_))))
    (define gx#stx-number?
      (lambda (_%e113980%_) (number? (gx#stx-e _%e113980%_))))
    (define gx#stx-fixnum?
      (lambda (_%e113978%_) (fixnum? (gx#stx-e _%e113978%_))))
    (define gx#stx-string?
      (lambda (_%e113976%_) (string? (gx#stx-e _%e113976%_))))
    (define gx#stx-null? (lambda (_%e113974%_) (null? (gx#stx-e _%e113974%_))))
    (define gx#stx-pair? (lambda (_%e113972%_) (pair? (gx#stx-e _%e113972%_))))
    (define gx#stx-list?
      (lambda (_%e113934%_)
        (let* ((_%g113935113944%_ (gx#stx-e _%e113934%_))
               (_%E113938113948%_
                (lambda ()
                  (error '"No clause matching"
                         _%g113935113944%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K113940113964%_
                 (lambda (_%rest113962%_) (gx#stx-list? _%rest113962%_)))
                (_%K113939113954%_
                 (lambda (_%tail113952%_) (null? _%tail113952%_))))
            (if (##pair? _%g113935113944%_)
                (let* ((_%tl113942113967%_ (##cdr _%g113935113944%_))
                       (_%rest113970%_ _%tl113942113967%_))
                  (gx#stx-list? _%rest113970%_))
                (let ((_%tail113957%_ _%g113935113944%_))
                  (null? _%tail113957%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e113927%_)
        (let* ((_%e113929%_ (gx#stx-e _%e113927%_))
               (_%$e113931%_ (pair? _%e113929%_)))
          (if _%$e113931%_ _%$e113931%_ (null? _%e113929%_)))))
    (define gx#stx-vector?
      (lambda (_%e113925%_) (vector? (gx#stx-e _%e113925%_))))
    (define gx#stx-box? (lambda (_%e113923%_) (box? (gx#stx-e _%e113923%_))))
    (define gx#stx-eq?
      (lambda (_%x113920%_ _%y113921%_)
        (eq? (gx#stx-e _%x113920%_) (gx#stx-e _%y113921%_))))
    (define gx#stx-eqv?
      (lambda (_%x113917%_ _%y113918%_)
        (eqv? (gx#stx-e _%x113917%_) (gx#stx-e _%y113918%_))))
    (define gx#stx-equal?
      (lambda (_%x113914%_ _%y113915%_)
        (equal? (gx#stx-e _%x113914%_) (gx#stx-e _%y113915%_))))
    (define gx#stx-false? (lambda (_%x113912%_) (not (gx#stx-e _%x113912%_))))
    (define gx#stx-identifier
      (lambda (_%template113909%_ . _%args113910%_)
        (gx#datum->syntax__1
         _%template113909%_
         (apply make-symbol (gx#syntax->datum _%args113910%_))
         (gx#stx-source _%template113909%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx113907%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx113907%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx113902%_)
        (if (##structure-direct-instance-of?
             _%stx113902%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx113902%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx113902%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx113902%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx113902%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx113898%_)
        (let ((_%stx113900%_ (gx#stx-unwrap__0 _%stx113898%_)))
          (if (gx#identifier-quote? _%stx113900%_)
              (##unchecked-structure-ref _%stx113900%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx113853%_)
        (let* ((_%g113854113864%_ (gx#stx-e _%stx113853%_))
               (_%else113857113872%_ (lambda () '#f)))
          (let ((_%K113860113886%_
                 (lambda (_%rest113883%_ _%hd113884%_)
                   (if (gx#identifier? _%hd113884%_)
                       (gx#identifier-list? _%rest113883%_)
                       '#f)))
                (_%K113859113877%_ (lambda () '#t)))
            (let ((_%try-match113856113880%_
                   (lambda ()
                     (if (##null? _%g113854113864%_)
                         (_%K113859113877%_)
                         (_%else113857113872%_)))))
              (if (##pair? _%g113854113864%_)
                  (let ((_%tl113862113891%_ (##cdr _%g113854113864%_))
                        (_%hd113861113889%_ (##car _%g113854113864%_)))
                    (let ((_%hd113894%_ _%hd113861113889%_)
                          (_%rest113896%_ _%tl113862113891%_))
                      (_%K113860113886%_ _%rest113896%_ _%hd113894%_)))
                  (_%try-match113856113880%_)))))))
    (define gx#genident__%
      (lambda (_%e113830%_ _%src113831%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e113833%_ (gx#stx-e _%e113830%_)))
                   (if (interned-symbol? _%e113833%_) _%e113833%_ 'g)))
         (let ((_%$e113835%_ (gx#stx-source _%e113830%_)))
           (if _%$e113835%_ _%$e113835%_ _%src113831%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e113842%_ 'g) (_%src113844%_ '#f))
          (gx#genident__% _%e113842%_ _%src113844%_))))
    (define gx#genident__1
      (lambda (_%e113846%_)
        (let ((_%src113848%_ '#f))
          (gx#genident__% _%e113846%_ _%src113848%_))))
    (define gx#genident
      (lambda _g114313_
        (let ((_g114312_ (##length _g114313_)))
          (cond ((##fx= _g114312_ 0) (apply gx#genident__0 _g114313_))
                ((##fx= _g114312_ 1) (apply gx#genident__1 _g114313_))
                ((##fx= _g114312_ 2) (apply gx#genident__% _g114313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g114313_))))))
    (define gx#gentemps
      (lambda (_%stx-lst113827%_) (gx#stx-map1 gx#genident _%stx-lst113827%_)))
    (define gx#syntax->list
      (lambda (_%stx113825%_) (gx#stx-map1 values _%stx113825%_)))
    (define gx#stx-car
      (lambda (_%stx113822%_)
        (declare (safe))
        (car (gx#syntax-e _%stx113822%_))))
    (define gx#stx-cdr
      (lambda (_%stx113819%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx113819%_))))
    (define gx#stx-length
      (lambda (_%stx113784%_)
        (let _%lp113786%_ ((_%rest113788%_ _%stx113784%_) (_%n113789%_ '0))
          (let* ((_%g113790113798%_ (gx#stx-e _%rest113788%_))
                 (_%else113792113806%_ (lambda () _%n113789%_))
                 (_%K113794113811%_
                  (lambda (_%rest113809%_)
                    (_%lp113786%_ _%rest113809%_ (##fx+ _%n113789%_ '1)))))
            (if (##pair? _%g113790113798%_)
                (let* ((_%tl113796113814%_ (##cdr _%g113790113798%_))
                       (_%rest113817%_ _%tl113796113814%_))
                  (_%K113794113811%_ _%rest113817%_))
                (_%else113792113806%_))))))
    (define gx#stx-for-each
      (lambda _g114315_
        (let ((_g114314_ (##length _g114315_)))
          (cond ((##fx= _g114314_ 2) (apply gx#stx-for-each1 _g114315_))
                ((##fx= _g114314_ 3) (apply gx#stx-for-each2 _g114315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g114315_))))))
    (define gx#stx-for-each1
      (lambda (_%f113727%_ _%stx113728%_)
        (if (procedure? _%f113727%_)
            '#!void
            (error '"expected procedure" _%f113727%_))
        (let _%lp113730%_ ((_%rest113732%_ _%stx113728%_))
          (let* ((_%g113733113743%_ (gx#syntax-e _%rest113732%_))
                 (_%else113736113751%_
                  (lambda () (_%f113727%_ _%rest113732%_))))
            (let ((_%K113739113765%_
                   (lambda (_%rest113762%_ _%hd113763%_)
                     (_%f113727%_ _%hd113763%_)
                     (_%lp113730%_ _%rest113762%_)))
                  (_%K113738113756%_ (lambda () '#!void)))
              (let ((_%try-match113735113759%_
                     (lambda ()
                       (if (##null? _%g113733113743%_)
                           (_%K113738113756%_)
                           (_%else113736113751%_)))))
                (if (##pair? _%g113733113743%_)
                    (let ((_%tl113741113770%_ (##cdr _%g113733113743%_))
                          (_%hd113740113768%_ (##car _%g113733113743%_)))
                      (let ((_%hd113773%_ _%hd113740113768%_)
                            (_%rest113775%_ _%tl113741113770%_))
                        (_%K113739113765%_ _%rest113775%_ _%hd113773%_)))
                    (_%try-match113735113759%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f113632%_ _%xstx113633%_ _%ystx113634%_)
        (if (procedure? _%f113632%_)
            '#!void
            (error '"expected procedure" _%f113632%_))
        (let _%lp113636%_ ((_%xrest113638%_ _%xstx113633%_)
                           (_%yrest113639%_ _%ystx113634%_))
          (let* ((_%g113640113650%_ (gx#syntax-e _%xrest113638%_))
                 (_%else113643113658%_ (lambda () '#!void)))
            (let ((_%K113646113715%_
                   (lambda (_%xrest113684%_ _%xhd113685%_)
                     (let* ((_%g113686113693%_ (gx#syntax-e _%yrest113639%_))
                            (_%E113688113697%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113686113693%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113689113703%_
                             (lambda (_%yrest113700%_ _%yhd113701%_)
                               (_%f113632%_ _%xhd113685%_ _%yhd113701%_)
                               (_%lp113636%_
                                _%xrest113684%_
                                _%yrest113700%_))))
                       (if (##pair? _%g113686113693%_)
                           (let ((_%hd113690113706%_ (##car _%g113686113693%_))
                                 (_%tl113691113708%_
                                  (##cdr _%g113686113693%_)))
                             (let* ((_%yhd113711%_ _%hd113690113706%_)
                                    (_%yrest113713%_ _%tl113691113708%_))
                               (_%K113689113703%_
                                _%yrest113713%_
                                _%yhd113711%_)))
                           (_%E113688113697%_)))))
                  (_%K113645113678%_
                   (lambda ()
                     (let* ((_%yrest113662113667%_ _%yrest113639%_)
                            (_%E113664113671%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113662113667%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113665113675%_
                             (lambda ()
                               (_%f113632%_ _%xrest113638%_ _%yrest113639%_))))
                       (if (not (gx#stx-null? _%yrest113662113667%_))
                           (_%K113665113675%_)
                           (_%E113664113671%_))))))
              (let ((_%try-match113642113681%_
                     (lambda ()
                       (if (not (null? _%g113640113650%_))
                           (_%K113645113678%_)
                           (_%else113643113658%_)))))
                (if (##pair? _%g113640113650%_)
                    (let ((_%tl113648113720%_ (##cdr _%g113640113650%_))
                          (_%hd113647113718%_ (##car _%g113640113650%_)))
                      (let ((_%xhd113723%_ _%hd113647113718%_)
                            (_%xrest113725%_ _%tl113648113720%_))
                        (_%K113646113715%_ _%xrest113725%_ _%xhd113723%_)))
                    (_%try-match113642113681%_))))))))
    (define gx#stx-map
      (lambda _g114317_
        (let ((_g114316_ (##length _g114317_)))
          (cond ((##fx= _g114316_ 2) (apply gx#stx-map1 _g114317_))
                ((##fx= _g114316_ 3) (apply gx#stx-map2 _g114317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g114317_))))))
    (define gx#stx-map1
      (lambda (_%f113575%_ _%stx113576%_)
        (if (procedure? _%f113575%_)
            '#!void
            (error '"expected procedure" _%f113575%_))
        (let _%recur113578%_ ((_%rest113580%_ _%stx113576%_))
          (let* ((_%g113581113591%_ (gx#syntax-e _%rest113580%_))
                 (_%else113584113599%_
                  (lambda () (_%f113575%_ _%rest113580%_))))
            (let ((_%K113587113613%_
                   (lambda (_%rest113610%_ _%hd113611%_)
                     (cons (_%f113575%_ _%hd113611%_)
                           (_%recur113578%_ _%rest113610%_))))
                  (_%K113586113604%_ (lambda () '())))
              (let ((_%try-match113583113607%_
                     (lambda ()
                       (if (##null? _%g113581113591%_)
                           (_%K113586113604%_)
                           (_%else113584113599%_)))))
                (if (##pair? _%g113581113591%_)
                    (let ((_%tl113589113618%_ (##cdr _%g113581113591%_))
                          (_%hd113588113616%_ (##car _%g113581113591%_)))
                      (let ((_%hd113621%_ _%hd113588113616%_)
                            (_%rest113623%_ _%tl113589113618%_))
                        (_%K113587113613%_ _%rest113623%_ _%hd113621%_)))
                    (_%try-match113583113607%_))))))))
    (define gx#stx-map2
      (lambda (_%f113480%_ _%xstx113481%_ _%ystx113482%_)
        (if (procedure? _%f113480%_)
            '#!void
            (error '"expected procedure" _%f113480%_))
        (let _%recur113484%_ ((_%xrest113486%_ _%xstx113481%_)
                              (_%yrest113487%_ _%ystx113482%_))
          (let* ((_%g113488113498%_ (gx#syntax-e _%xrest113486%_))
                 (_%else113491113506%_ (lambda () '())))
            (let ((_%K113494113563%_
                   (lambda (_%xrest113532%_ _%xhd113533%_)
                     (let* ((_%g113534113541%_ (gx#syntax-e _%yrest113487%_))
                            (_%E113536113545%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113534113541%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113537113551%_
                             (lambda (_%yrest113548%_ _%yhd113549%_)
                               (cons (_%f113480%_ _%xhd113533%_ _%yhd113549%_)
                                     (_%recur113484%_
                                      _%xrest113532%_
                                      _%yrest113548%_)))))
                       (if (##pair? _%g113534113541%_)
                           (let ((_%hd113538113554%_ (##car _%g113534113541%_))
                                 (_%tl113539113556%_
                                  (##cdr _%g113534113541%_)))
                             (let* ((_%yhd113559%_ _%hd113538113554%_)
                                    (_%yrest113561%_ _%tl113539113556%_))
                               (_%K113537113551%_
                                _%yrest113561%_
                                _%yhd113559%_)))
                           (_%E113536113545%_)))))
                  (_%K113493113526%_
                   (lambda ()
                     (let* ((_%yrest113510113515%_ _%yrest113487%_)
                            (_%E113512113519%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113510113515%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113513113523%_
                             (lambda ()
                               (_%f113480%_ _%xrest113486%_ _%yrest113487%_))))
                       (if (not (gx#stx-null? _%yrest113510113515%_))
                           (_%K113513113523%_)
                           (_%E113512113519%_))))))
              (let ((_%try-match113490113529%_
                     (lambda ()
                       (if (not (null? _%g113488113498%_))
                           (_%K113493113526%_)
                           (_%else113491113506%_)))))
                (if (##pair? _%g113488113498%_)
                    (let ((_%tl113496113568%_ (##cdr _%g113488113498%_))
                          (_%hd113495113566%_ (##car _%g113488113498%_)))
                      (let ((_%xhd113571%_ _%hd113495113566%_)
                            (_%xrest113573%_ _%tl113496113568%_))
                        (_%K113494113563%_ _%xrest113573%_ _%xhd113571%_)))
                    (_%try-match113490113529%_))))))))
    (define gx#stx-andmap
      (lambda (_%f113430%_ _%stx113431%_)
        (if (procedure? _%f113430%_)
            '#!void
            (error '"expected procedure" _%f113430%_))
        (let _%lp113433%_ ((_%rest113435%_ _%stx113431%_))
          (let* ((_%g113436113446%_ (gx#syntax-e _%rest113435%_))
                 (_%else113439113454%_
                  (lambda () (_%f113430%_ _%rest113435%_))))
            (let ((_%K113442113468%_
                   (lambda (_%rest113465%_ _%hd113466%_)
                     (if (_%f113430%_ _%hd113466%_)
                         (_%lp113433%_ _%rest113465%_)
                         '#f)))
                  (_%K113441113459%_ (lambda () '#t)))
              (let ((_%try-match113438113462%_
                     (lambda ()
                       (if (##null? _%g113436113446%_)
                           (_%K113441113459%_)
                           (_%else113439113454%_)))))
                (if (##pair? _%g113436113446%_)
                    (let ((_%tl113444113473%_ (##cdr _%g113436113446%_))
                          (_%hd113443113471%_ (##car _%g113436113446%_)))
                      (let ((_%hd113476%_ _%hd113443113471%_)
                            (_%rest113478%_ _%tl113444113473%_))
                        (_%K113442113468%_ _%rest113478%_ _%hd113476%_)))
                    (_%try-match113438113462%_))))))))
    (define gx#stx-ormap
      (lambda (_%f113377%_ _%stx113378%_)
        (if (procedure? _%f113377%_)
            '#!void
            (error '"expected procedure" _%f113377%_))
        (let _%lp113380%_ ((_%rest113382%_ _%stx113378%_))
          (let* ((_%g113383113393%_ (gx#syntax-e _%rest113382%_))
                 (_%else113386113401%_
                  (lambda () (_%f113377%_ _%rest113382%_))))
            (let ((_%K113389113418%_
                   (lambda (_%rest113412%_ _%hd113413%_)
                     (let ((_%$e113415%_ (_%f113377%_ _%hd113413%_)))
                       (if _%$e113415%_
                           _%$e113415%_
                           (_%lp113380%_ _%rest113412%_)))))
                  (_%K113388113406%_ (lambda () '#f)))
              (let ((_%try-match113385113409%_
                     (lambda ()
                       (if (##null? _%g113383113393%_)
                           (_%K113388113406%_)
                           (_%else113386113401%_)))))
                (if (##pair? _%g113383113393%_)
                    (let ((_%tl113391113423%_ (##cdr _%g113383113393%_))
                          (_%hd113390113421%_ (##car _%g113383113393%_)))
                      (let ((_%hd113426%_ _%hd113390113421%_)
                            (_%rest113428%_ _%tl113391113423%_))
                        (_%K113389113418%_ _%rest113428%_ _%hd113426%_)))
                    (_%try-match113385113409%_))))))))
    (define gx#stx-foldl
      (lambda (_%f113325%_ _%iv113326%_ _%stx113327%_)
        (if (procedure? _%f113325%_)
            '#!void
            (error '"expected procedure" _%f113325%_))
        (let _%lp113329%_ ((_%r113331%_ _%iv113326%_)
                           (_%rest113332%_ _%stx113327%_))
          (let* ((_%g113333113343%_ (gx#syntax-e _%rest113332%_))
                 (_%else113336113351%_
                  (lambda () (_%f113325%_ _%rest113332%_ _%r113331%_))))
            (let ((_%K113339113365%_
                   (lambda (_%rest113362%_ _%hd113363%_)
                     (_%lp113329%_
                      (_%f113325%_ _%hd113363%_ _%r113331%_)
                      _%rest113362%_)))
                  (_%K113338113356%_ (lambda () _%r113331%_)))
              (let ((_%try-match113335113359%_
                     (lambda ()
                       (if (##null? _%g113333113343%_)
                           (_%K113338113356%_)
                           (_%else113336113351%_)))))
                (if (##pair? _%g113333113343%_)
                    (let ((_%tl113341113370%_ (##cdr _%g113333113343%_))
                          (_%hd113340113368%_ (##car _%g113333113343%_)))
                      (let ((_%hd113373%_ _%hd113340113368%_)
                            (_%rest113375%_ _%tl113341113370%_))
                        (_%K113339113365%_ _%rest113375%_ _%hd113373%_)))
                    (_%try-match113335113359%_))))))))
    (define gx#stx-foldr
      (lambda (_%f113274%_ _%iv113275%_ _%stx113276%_)
        (if (procedure? _%f113274%_)
            '#!void
            (error '"expected procedure" _%f113274%_))
        (let _%recur113278%_ ((_%rest113280%_ _%stx113276%_))
          (let* ((_%g113281113291%_ (gx#syntax-e _%rest113280%_))
                 (_%else113284113299%_
                  (lambda () (_%f113274%_ _%rest113280%_ _%iv113275%_))))
            (let ((_%K113287113313%_
                   (lambda (_%rest113310%_ _%hd113311%_)
                     (_%f113274%_
                      _%hd113311%_
                      (_%recur113278%_ _%rest113310%_))))
                  (_%K113286113304%_ (lambda () _%iv113275%_)))
              (let ((_%try-match113283113307%_
                     (lambda ()
                       (if (##null? _%g113281113291%_)
                           (_%K113286113304%_)
                           (_%else113284113299%_)))))
                (if (##pair? _%g113281113291%_)
                    (let ((_%tl113289113318%_ (##cdr _%g113281113291%_))
                          (_%hd113288113316%_ (##car _%g113281113291%_)))
                      (let ((_%hd113321%_ _%hd113288113316%_)
                            (_%rest113323%_ _%tl113289113318%_))
                        (_%K113287113313%_ _%rest113323%_ _%hd113321%_)))
                    (_%try-match113283113307%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113272%_) (gx#stx-foldl cons '() _%stx113272%_)))
    (define gx#stx-last
      (lambda (_%stx113233%_)
        (let _%lp113235%_ ((_%rest113237%_ _%stx113233%_))
          (let* ((_%g113238113246%_ (gx#syntax-e _%rest113237%_))
                 (_%else113240113254%_ (lambda () _%rest113237%_))
                 (_%K113242113260%_
                  (lambda (_%rest113257%_ _%hd113258%_)
                    (if (gx#stx-null? _%rest113257%_)
                        _%hd113258%_
                        (_%lp113235%_ _%rest113257%_)))))
            (if (##pair? _%g113238113246%_)
                (let ((_%hd113243113263%_ (##car _%g113238113246%_))
                      (_%tl113244113265%_ (##cdr _%g113238113246%_)))
                  (let* ((_%hd113268%_ _%hd113243113263%_)
                         (_%rest113270%_ _%tl113244113265%_))
                    (_%K113242113260%_ _%rest113270%_ _%hd113268%_)))
                (_%else113240113254%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113204%_)
        (let _%lp113206%_ ((_%hd113208%_ _%stx113204%_))
          (let* ((_%g113209113216%_ (gx#syntax-e _%hd113208%_))
                 (_%E113211113220%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113209113216%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113212113225%_
                  (lambda (_%rest113223%_)
                    (if (gx#stx-pair? _%rest113223%_)
                        (_%lp113206%_ _%rest113223%_)
                        _%hd113208%_))))
            (if (##pair? _%g113209113216%_)
                (let* ((_%tl113214113228%_ (##cdr _%g113209113216%_))
                       (_%rest113231%_ _%tl113214113228%_))
                  (_%K113212113225%_ _%rest113231%_))
                (_%E113211113220%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113173%_ _%k113174%_)
        (let _%lp113176%_ ((_%rest113178%_ _%stx113173%_)
                           (_%k113179%_ _%k113174%_))
          (if (fxpositive? _%k113179%_)
              (let* ((_%g113180113187%_ (gx#syntax-e _%rest113178%_))
                     (_%E113182113191%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113180113187%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113183113196%_
                      (lambda (_%rest113194%_)
                        (_%lp113176%_ _%rest113194%_ (##fx- _%k113179%_ '1)))))
                (if (##pair? _%g113180113187%_)
                    (let* ((_%tl113185113199%_ (##cdr _%g113180113187%_))
                           (_%rest113202%_ _%tl113185113199%_))
                      (_%K113183113196%_ _%rest113202%_))
                    (_%E113182113191%_)))
              _%rest113178%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113170%_ _%k113171%_)
        (gx#stx-car (gx#stx-list-tail _%stx113170%_ _%k113171%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113082%_ _%key?113083%_)
        (if (procedure? _%key?113083%_)
            '#!void
            (error '"expected procedure" _%key?113083%_))
        (let _%lp113085%_ ((_%rest113087%_ _%stx113082%_))
          (let* ((_%g113088113098%_ (gx#stx-e _%rest113087%_))
                 (_%else113091113106%_ (lambda () '#f)))
            (let ((_%K113094113148%_
                   (lambda (_%rest113117%_ _%hd113118%_)
                     (if (_%key?113083%_ _%hd113118%_)
                         (let* ((_%g113119113127%_ (gx#stx-e _%rest113117%_))
                                (_%else113121113135%_ (lambda () '#f))
                                (_%K113123113140%_
                                 (lambda (_%rest113138%_)
                                   (_%lp113085%_ _%rest113138%_))))
                           (if (##pair? _%g113119113127%_)
                               (let* ((_%tl113125113143%_
                                       (##cdr _%g113119113127%_))
                                      (_%rest113146%_ _%tl113125113143%_))
                                 (_%lp113085%_ _%rest113146%_))
                               (_%else113121113135%_)))
                         '#f)))
                  (_%K113093113111%_ (lambda () '#t)))
              (let ((_%try-match113090113114%_
                     (lambda ()
                       (if (##null? _%g113088113098%_)
                           (_%K113093113111%_)
                           (_%else113091113106%_)))))
                (if (##pair? _%g113088113098%_)
                    (let ((_%tl113096113153%_ (##cdr _%g113088113098%_))
                          (_%hd113095113151%_ (##car _%g113088113098%_)))
                      (let ((_%hd113156%_ _%hd113095113151%_)
                            (_%rest113158%_ _%tl113096113153%_))
                        (_%K113094113148%_ _%rest113158%_ _%hd113156%_)))
                    (_%try-match113090113114%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113163%_)
        (let ((_%key?113165%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113163%_ _%key?113165%_))))
    (define gx#stx-plist?
      (lambda _g114319_
        (let ((_g114318_ (##length _g114319_)))
          (cond ((##fx= _g114318_ 1) (apply gx#stx-plist?__0 _g114319_))
                ((##fx= _g114318_ 2) (apply gx#stx-plist?__% _g114319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g114319_))))))
    (define gx#stx-getq__%
      (lambda (_%key113000%_ _%stx113001%_ _%key=?113002%_)
        (if (procedure? _%key=?113002%_)
            '#!void
            (error '"expected procedure" _%key=?113002%_))
        (let _%lp113004%_ ((_%rest113006%_ _%stx113001%_))
          (let* ((_%g113007113015%_ (gx#syntax-e _%rest113006%_))
                 (_%else113009113023%_ (lambda () '#f))
                 (_%K113011113057%_
                  (lambda (_%rest113026%_ _%hd113027%_)
                    (let* ((_%g113028113035%_ (gx#syntax-e _%rest113026%_))
                           (_%E113030113039%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113028113035%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113031113045%_
                            (lambda (_%rest113042%_ _%val113043%_)
                              (if (_%key=?113002%_ _%hd113027%_ _%key113000%_)
                                  _%val113043%_
                                  (_%lp113004%_ _%rest113042%_)))))
                      (if (##pair? _%g113028113035%_)
                          (let ((_%hd113032113048%_ (##car _%g113028113035%_))
                                (_%tl113033113050%_ (##cdr _%g113028113035%_)))
                            (let* ((_%val113053%_ _%hd113032113048%_)
                                   (_%rest113055%_ _%tl113033113050%_))
                              (_%K113031113045%_
                               _%rest113055%_
                               _%val113053%_)))
                          (_%E113030113039%_))))))
            (if (##pair? _%g113007113015%_)
                (let ((_%hd113012113060%_ (##car _%g113007113015%_))
                      (_%tl113013113062%_ (##cdr _%g113007113015%_)))
                  (let* ((_%hd113065%_ _%hd113012113060%_)
                         (_%rest113067%_ _%tl113013113062%_))
                    (_%K113011113057%_ _%rest113067%_ _%hd113065%_)))
                (_%else113009113023%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113072%_ _%stx113073%_)
        (let ((_%key=?113075%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113072%_ _%stx113073%_ _%key=?113075%_))))
    (define gx#stx-getq
      (lambda _g114321_
        (let ((_g114320_ (##length _g114321_)))
          (cond ((##fx= _g114320_ 2) (apply gx#stx-getq__0 _g114321_))
                ((##fx= _g114320_ 3) (apply gx#stx-getq__% _g114321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g114321_))))))))
