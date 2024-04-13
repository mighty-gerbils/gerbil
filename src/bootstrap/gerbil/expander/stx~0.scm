(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1713004410)
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
      (lambda _%$args116655%_
        (apply make-instance gx#identifier-wrap::t _%$args116655%_)))
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
      (lambda _%$args116652%_
        (apply make-instance gx#syntax-wrap::t _%$args116652%_)))
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
      (lambda _%$args116649%_
        (apply make-instance gx#syntax-quote::t _%$args116649%_)))
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
      (lambda (_%stx116647%_) (symbol? (gx#stx-e _%stx116647%_))))
    (define gx#identifier-quote?
      (lambda (_%stx116645%_)
        (if (##structure-direct-instance-of? _%stx116645%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx116645%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx116640%_)
        (if (##structure-direct-instance-of? _%stx116640%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx116640%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx116640%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx116635%_)
        (if (##structure-direct-instance-of? _%stx116635%_ 'gx#syntax-quote::t)
            _%stx116635%_
            (if (##structure-direct-instance-of?
                 _%stx116635%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx116635%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx116609%_)
        (if (##structure-direct-instance-of? _%stx116609%_ 'gx#syntax-wrap::t)
            (let _%lp116612%_ ((_%e116614%_
                                (##unchecked-structure-ref
                                 _%stx116609%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks116615%_
                                (cons (##unchecked-structure-ref
                                       _%stx116609%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e116614%_)
                  (let ((_%$e116618%_
                         (##type-id (##structure-type _%e116614%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e116618%_)
                        (_%lp116612%_
                         (##unchecked-structure-ref _%e116614%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e116614%_ '3 '#f '#f)
                          _%marks116615%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e116618%_)
                                (eq? 'gx#identifier-wrap::t _%$e116618%_))
                            (##unchecked-structure-ref _%e116614%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e116618%_)
                                (_%lp116612%_
                                 (##unchecked-structure-ref
                                  _%e116614%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks116615%_)
                                _%e116614%_))))
                  (if (null? _%marks116615%_)
                      _%e116614%_
                      (if (pair? _%e116614%_)
                          (cons (gx#stx-wrap
                                 (##car _%e116614%_)
                                 _%marks116615%_)
                                (gx#stx-wrap
                                 (##cdr _%e116614%_)
                                 _%marks116615%_))
                          (if (vector? _%e116614%_)
                              (vector-map
                               (lambda (_%g116626116628%_)
                                 (gx#stx-wrap
                                  _%g116626116628%_
                                  _%marks116615%_))
                               _%e116614%_)
                              (if (box? _%e116614%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e116614%_)
                                        _%marks116615%_))
                                  _%e116614%_))))))
            (if (##structure-instance-of? _%stx116609%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116609%_ '1 '#f '#f)
                _%stx116609%_))))
    (define gx#syntax->datum
      (lambda (_%stx116602%_)
        (if (##structure-instance-of? _%stx116602%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx116602%_ '1 '#f '#f))
            (if (pair? _%stx116602%_)
                (cons (gx#syntax->datum (##car _%stx116602%_))
                      (gx#syntax->datum (##cdr _%stx116602%_)))
                (if (vector? _%stx116602%_)
                    (vector-map gx#syntax->datum _%stx116602%_)
                    (if (box? _%stx116602%_)
                        (box (gx#syntax->datum (unbox _%stx116602%_)))
                        _%stx116602%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx116536%_ _%datum116537%_ _%src116538%_ _%quote?116539%_)
        (letrec ((_%wrap-datum116541%_
                  (lambda (_%e116574%_ _%marks116575%_)
                    (_%wrap-inner116543%_
                     _%e116574%_
                     (lambda (_%g116576116578%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g116576116578%_
                        _%src116538%_
                        _%marks116575%_)))))
                 (_%wrap-quote116542%_
                  (lambda (_%e116566%_ _%ctx116567%_ _%marks116568%_)
                    (_%wrap-inner116543%_
                     _%e116566%_
                     (lambda (_%g116569116571%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g116569116571%_
                        _%src116538%_
                        _%ctx116567%_
                        _%marks116568%_)))))
                 (_%wrap-inner116543%_
                  (lambda (_%e116554%_ _%wrap-e116555%_)
                    (let _%recur116557%_ ((_%e116559%_ _%e116554%_))
                      (if (symbol? _%e116559%_)
                          (_%wrap-e116555%_ _%e116559%_)
                          (if (pair? _%e116559%_)
                              (cons (_%recur116557%_ (##car _%e116559%_))
                                    (_%recur116557%_ (##cdr _%e116559%_)))
                              (if (vector? _%e116559%_)
                                  (vector-map _%recur116557%_ _%e116559%_)
                                  (if (box? _%e116559%_)
                                      (box (_%recur116557%_
                                            (unbox _%e116559%_)))
                                      _%e116559%_)))))))
                 (_%wrap-outer116544%_
                  (lambda (_%e116552%_)
                    (if (##structure-instance-of? _%e116552%_ 'gerbil#AST::t)
                        _%e116552%_
                        (##structure gx#AST::t _%e116552%_ _%src116538%_)))))
          (if (##structure-instance-of? _%datum116537%_ 'gerbil#AST::t)
              _%datum116537%_
              (if (not _%stx116536%_)
                  (##structure gx#AST::t _%datum116537%_ _%src116538%_)
                  (if (gx#identifier? _%stx116536%_)
                      (let ((_%stx116549%_ (gx#stx-unwrap__0 _%stx116536%_)))
                        (_%wrap-outer116544%_
                         (if (##structure-direct-instance-of?
                              _%stx116549%_
                              'gx#syntax-quote::t)
                             (if _%quote?116539%_
                                 (_%wrap-quote116542%_
                                  _%datum116537%_
                                  (##unchecked-structure-ref
                                   _%stx116549%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx116549%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum116541%_
                                  _%datum116537%_
                                  (##unchecked-structure-ref
                                   _%stx116549%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum116541%_
                              _%datum116537%_
                              (##unchecked-structure-ref
                               _%stx116549%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx116536%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx116584%_ _%datum116585%_)
        (let* ((_%src116587%_ '#f) (_%quote?116589%_ '#t))
          (gx#datum->syntax__%
           _%stx116584%_
           _%datum116585%_
           _%src116587%_
           _%quote?116589%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx116591%_ _%datum116592%_ _%src116593%_)
        (let ((_%quote?116595%_ '#t))
          (gx#datum->syntax__%
           _%stx116591%_
           _%datum116592%_
           _%src116593%_
           _%quote?116595%_))))
    (define gx#datum->syntax
      (lambda _g116736_
        (let ((_g116735_ (##length _g116736_)))
          (cond ((##fx= _g116735_ 2) (apply gx#datum->syntax__0 _g116736_))
                ((##fx= _g116735_ 3) (apply gx#datum->syntax__1 _g116736_))
                ((##fx= _g116735_ 4) (apply gx#datum->syntax__% _g116736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g116736_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx116502%_ _%marks116503%_)
        (let _%lp116505%_ ((_%e116507%_ _%stx116502%_)
                           (_%marks116508%_ _%marks116503%_)
                           (_%src116509%_ (gx#stx-source _%stx116502%_)))
          (if (##structure-direct-instance-of? _%e116507%_ 'gx#syntax-wrap::t)
              (_%lp116505%_
               (##unchecked-structure-ref _%e116507%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e116507%_ '3 '#f '#f)
                _%marks116508%_)
               (##unchecked-structure-ref _%e116507%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e116507%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks116508%_)
                      _%e116507%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e116507%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e116507%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e116507%_ '3 '#f '#f)
                        _%marks116508%_)))
                  (if (##structure-direct-instance-of?
                       _%e116507%_
                       'gx#syntax-quote::t)
                      _%e116507%_
                      (if (##structure-instance-of? _%e116507%_ 'gerbil#AST::t)
                          (_%lp116505%_
                           (##unchecked-structure-ref _%e116507%_ '1 '#f '#f)
                           _%marks116508%_
                           (##unchecked-structure-ref _%e116507%_ '2 '#f '#f))
                          (if (symbol? _%e116507%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e116507%_
                               _%src116509%_
                               (reverse _%marks116508%_))
                              (if (null? _%marks116508%_)
                                  _%e116507%_
                                  (if (pair? _%e116507%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e116507%_)
                                             _%marks116508%_)
                                            (gx#stx-wrap
                                             (##cdr _%e116507%_)
                                             _%marks116508%_))
                                      (if (vector? _%e116507%_)
                                          (vector-map
                                           (lambda (_%g116518116520%_)
                                             (gx#stx-wrap
                                              _%g116518116520%_
                                              _%marks116508%_))
                                           _%e116507%_)
                                          (if (box? _%e116507%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e116507%_)
                                                    _%marks116508%_))
                                              _%e116507%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx116528%_)
        (let ((_%marks116530%_ '()))
          (gx#stx-unwrap__% _%stx116528%_ _%marks116530%_))))
    (define gx#stx-unwrap
      (lambda _g116738_
        (let ((_g116737_ (##length _g116738_)))
          (cond ((##fx= _g116737_ 1) (apply gx#stx-unwrap__0 _g116738_))
                ((##fx= _g116737_ 2) (apply gx#stx-unwrap__% _g116738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g116738_))))))
    (define gx#stx-wrap
      (lambda (_%stx116495%_ _%marks116496%_)
        (__foldl1
         (lambda (_%mark116498%_ _%stx116499%_)
           (gx#stx-apply-mark _%stx116499%_ _%mark116498%_))
         _%stx116495%_
         _%marks116496%_)))
    (define gx#stx-rewrap
      (lambda (_%stx116489%_ _%marks116490%_)
        (__foldr1
         (lambda (_%mark116492%_ _%stx116493%_)
           (gx#stx-apply-mark _%stx116493%_ _%mark116492%_))
         _%stx116489%_
         _%marks116490%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx116483%_ _%mark116484%_)
        (if (##structure-direct-instance-of? _%stx116483%_ 'gx#syntax-quote::t)
            _%stx116483%_
            (if (and (##structure-direct-instance-of?
                      _%stx116483%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark116484%_
                          (##unchecked-structure-ref
                           _%stx116483%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx116483%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx116483%_
                 (gx#stx-source _%stx116483%_)
                 _%mark116484%_)))))
    (define gx#apply-mark
      (lambda (_%mark116447%_ _%marks116448%_)
        (let* ((_%marks116449116457%_ _%marks116448%_)
               (_%else116451116465%_
                (lambda () (cons _%mark116447%_ _%marks116448%_)))
               (_%K116453116471%_
                (lambda (_%rest116468%_ _%hd116469%_)
                  (if (eq? _%mark116447%_ _%hd116469%_)
                      _%rest116468%_
                      (cons _%mark116447%_ _%marks116448%_)))))
          (if (##pair? _%marks116449116457%_)
              (let ((_%hd116454116474%_ (##car _%marks116449116457%_))
                    (_%tl116455116476%_ (##cdr _%marks116449116457%_)))
                (let* ((_%hd116479%_ _%hd116454116474%_)
                       (_%rest116481%_ _%tl116455116476%_))
                  (_%K116453116471%_ _%rest116481%_ _%hd116479%_)))
              (_%else116451116465%_)))))
    (define gx#stx-e
      (lambda (_%stx116442%_)
        (if (##structure-direct-instance-of? _%stx116442%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx116442%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx116442%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116442%_ '1 '#f '#f)
                _%stx116442%_))))
    (define gx#stx-source
      (lambda (_%stx116440%_)
        (if (##structure-instance-of? _%stx116440%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx116440%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx116434%_ _%src116435%_)
        (if (or (##structure-instance-of? _%stx116434%_ 'gerbil#AST::t)
                (not _%src116435%_))
            _%stx116434%_
            (##structure gx#AST::t _%stx116434%_ _%src116435%_))))
    (define gx#stx-datum?
      (lambda (_%stx116432%_) (gx#self-quoting? (gx#stx-e _%stx116432%_))))
    (define gx#self-quoting?
      (lambda (_%x116415%_)
        (let ((_%$e116417%_ (immediate? _%x116415%_)))
          (if _%$e116417%_
              _%$e116417%_
              (let ((_%$e116420%_ (number? _%x116415%_)))
                (if _%$e116420%_
                    _%$e116420%_
                    (let ((_%$e116423%_ (keyword? _%x116415%_)))
                      (if _%$e116423%_
                          _%$e116423%_
                          (let ((_%$e116426%_ (string? _%x116415%_)))
                            (if _%$e116426%_
                                _%$e116426%_
                                (let ((_%$e116429%_ (vector? _%x116415%_)))
                                  (if _%$e116429%_
                                      _%$e116429%_
                                      (u8vector? _%x116415%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e116413%_) (boolean? (gx#stx-e _%e116413%_))))
    (define gx#stx-keyword?
      (lambda (_%e116411%_) (keyword? (gx#stx-e _%e116411%_))))
    (define gx#stx-char? (lambda (_%e116409%_) (char? (gx#stx-e _%e116409%_))))
    (define gx#stx-number?
      (lambda (_%e116407%_) (number? (gx#stx-e _%e116407%_))))
    (define gx#stx-fixnum?
      (lambda (_%e116405%_) (fixnum? (gx#stx-e _%e116405%_))))
    (define gx#stx-string?
      (lambda (_%e116403%_) (string? (gx#stx-e _%e116403%_))))
    (define gx#stx-null? (lambda (_%e116401%_) (null? (gx#stx-e _%e116401%_))))
    (define gx#stx-pair? (lambda (_%e116399%_) (pair? (gx#stx-e _%e116399%_))))
    (define gx#stx-list?
      (lambda (_%e116361%_)
        (let* ((_%g116362116371%_ (gx#stx-e _%e116361%_))
               (_%E116365116375%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116362116371%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K116367116391%_
                 (lambda (_%rest116389%_) (gx#stx-list? _%rest116389%_)))
                (_%K116366116381%_
                 (lambda (_%tail116379%_) (null? _%tail116379%_))))
            (if (##pair? _%g116362116371%_)
                (let* ((_%tl116369116394%_ (##cdr _%g116362116371%_))
                       (_%rest116397%_ _%tl116369116394%_))
                  (gx#stx-list? _%rest116397%_))
                (let ((_%tail116384%_ _%g116362116371%_))
                  (null? _%tail116384%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e116354%_)
        (let* ((_%e116356%_ (gx#stx-e _%e116354%_))
               (_%$e116358%_ (pair? _%e116356%_)))
          (if _%$e116358%_ _%$e116358%_ (null? _%e116356%_)))))
    (define gx#stx-vector?
      (lambda (_%e116352%_) (vector? (gx#stx-e _%e116352%_))))
    (define gx#stx-box? (lambda (_%e116350%_) (box? (gx#stx-e _%e116350%_))))
    (define gx#stx-eq?
      (lambda (_%x116347%_ _%y116348%_)
        (eq? (gx#stx-e _%x116347%_) (gx#stx-e _%y116348%_))))
    (define gx#stx-eqv?
      (lambda (_%x116344%_ _%y116345%_)
        (eqv? (gx#stx-e _%x116344%_) (gx#stx-e _%y116345%_))))
    (define gx#stx-equal?
      (lambda (_%x116341%_ _%y116342%_)
        (equal? (gx#stx-e _%x116341%_) (gx#stx-e _%y116342%_))))
    (define gx#stx-false? (lambda (_%x116339%_) (not (gx#stx-e _%x116339%_))))
    (define gx#stx-identifier
      (lambda (_%template116336%_ . _%args116337%_)
        (gx#datum->syntax__1
         _%template116336%_
         (apply make-symbol (gx#syntax->datum _%args116337%_))
         (gx#stx-source _%template116336%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx116334%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx116334%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx116329%_)
        (if (##structure-direct-instance-of?
             _%stx116329%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx116329%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx116329%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx116329%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx116329%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx116325%_)
        (let ((_%stx116327%_ (gx#stx-unwrap__0 _%stx116325%_)))
          (if (gx#identifier-quote? _%stx116327%_)
              (##unchecked-structure-ref _%stx116327%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx116280%_)
        (let* ((_%g116281116291%_ (gx#stx-e _%stx116280%_))
               (_%else116284116299%_ (lambda () '#f)))
          (let ((_%K116287116313%_
                 (lambda (_%rest116310%_ _%hd116311%_)
                   (if (gx#identifier? _%hd116311%_)
                       (gx#identifier-list? _%rest116310%_)
                       '#f)))
                (_%K116286116304%_ (lambda () '#t)))
            (let ((_%try-match116283116307%_
                   (lambda ()
                     (if (##null? _%g116281116291%_)
                         (_%K116286116304%_)
                         (_%else116284116299%_)))))
              (if (##pair? _%g116281116291%_)
                  (let ((_%tl116289116318%_ (##cdr _%g116281116291%_))
                        (_%hd116288116316%_ (##car _%g116281116291%_)))
                    (let ((_%hd116321%_ _%hd116288116316%_)
                          (_%rest116323%_ _%tl116289116318%_))
                      (_%K116287116313%_ _%rest116323%_ _%hd116321%_)))
                  (_%try-match116283116307%_)))))))
    (define gx#genident__%
      (lambda (_%e116257%_ _%src116258%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e116260%_ (gx#stx-e _%e116257%_)))
                   (if (interned-symbol? _%e116260%_) _%e116260%_ 'g)))
         (let ((_%$e116262%_ (gx#stx-source _%e116257%_)))
           (if _%$e116262%_ _%$e116262%_ _%src116258%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e116269%_ 'g) (_%src116271%_ '#f))
          (gx#genident__% _%e116269%_ _%src116271%_))))
    (define gx#genident__1
      (lambda (_%e116273%_)
        (let ((_%src116275%_ '#f))
          (gx#genident__% _%e116273%_ _%src116275%_))))
    (define gx#genident
      (lambda _g116740_
        (let ((_g116739_ (##length _g116740_)))
          (cond ((##fx= _g116739_ 0) (apply gx#genident__0 _g116740_))
                ((##fx= _g116739_ 1) (apply gx#genident__1 _g116740_))
                ((##fx= _g116739_ 2) (apply gx#genident__% _g116740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g116740_))))))
    (define gx#gentemps
      (lambda (_%stx-lst116254%_) (gx#stx-map1 gx#genident _%stx-lst116254%_)))
    (define gx#syntax->list
      (lambda (_%stx116252%_) (gx#stx-map1 values _%stx116252%_)))
    (define gx#stx-car
      (lambda (_%stx116249%_)
        (declare (safe))
        (car (gx#syntax-e _%stx116249%_))))
    (define gx#stx-cdr
      (lambda (_%stx116246%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx116246%_))))
    (define gx#stx-length
      (lambda (_%stx116211%_)
        (let _%lp116213%_ ((_%rest116215%_ _%stx116211%_) (_%n116216%_ '0))
          (let* ((_%g116217116225%_ (gx#stx-e _%rest116215%_))
                 (_%else116219116233%_ (lambda () _%n116216%_))
                 (_%K116221116238%_
                  (lambda (_%rest116236%_)
                    (_%lp116213%_ _%rest116236%_ (##fx+ _%n116216%_ '1)))))
            (if (##pair? _%g116217116225%_)
                (let* ((_%tl116223116241%_ (##cdr _%g116217116225%_))
                       (_%rest116244%_ _%tl116223116241%_))
                  (_%K116221116238%_ _%rest116244%_))
                (_%else116219116233%_))))))
    (define gx#stx-for-each
      (lambda _g116742_
        (let ((_g116741_ (##length _g116742_)))
          (cond ((##fx= _g116741_ 2) (apply gx#stx-for-each1 _g116742_))
                ((##fx= _g116741_ 3) (apply gx#stx-for-each2 _g116742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g116742_))))))
    (define gx#stx-for-each1
      (lambda (_%f116154%_ _%stx116155%_)
        (if (procedure? _%f116154%_)
            '#!void
            (error '"expected procedure" _%f116154%_))
        (let _%lp116157%_ ((_%rest116159%_ _%stx116155%_))
          (let* ((_%g116160116170%_ (gx#syntax-e _%rest116159%_))
                 (_%else116163116178%_
                  (lambda () (_%f116154%_ _%rest116159%_))))
            (let ((_%K116166116192%_
                   (lambda (_%rest116189%_ _%hd116190%_)
                     (_%f116154%_ _%hd116190%_)
                     (_%lp116157%_ _%rest116189%_)))
                  (_%K116165116183%_ (lambda () '#!void)))
              (let ((_%try-match116162116186%_
                     (lambda ()
                       (if (##null? _%g116160116170%_)
                           (_%K116165116183%_)
                           (_%else116163116178%_)))))
                (if (##pair? _%g116160116170%_)
                    (let ((_%tl116168116197%_ (##cdr _%g116160116170%_))
                          (_%hd116167116195%_ (##car _%g116160116170%_)))
                      (let ((_%hd116200%_ _%hd116167116195%_)
                            (_%rest116202%_ _%tl116168116197%_))
                        (_%K116166116192%_ _%rest116202%_ _%hd116200%_)))
                    (_%try-match116162116186%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f116059%_ _%xstx116060%_ _%ystx116061%_)
        (if (procedure? _%f116059%_)
            '#!void
            (error '"expected procedure" _%f116059%_))
        (let _%lp116063%_ ((_%xrest116065%_ _%xstx116060%_)
                           (_%yrest116066%_ _%ystx116061%_))
          (let* ((_%g116067116077%_ (gx#syntax-e _%xrest116065%_))
                 (_%else116070116085%_ (lambda () '#!void)))
            (let ((_%K116073116142%_
                   (lambda (_%xrest116111%_ _%xhd116112%_)
                     (let* ((_%g116113116120%_ (gx#syntax-e _%yrest116066%_))
                            (_%E116115116124%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g116113116120%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K116116116130%_
                             (lambda (_%yrest116127%_ _%yhd116128%_)
                               (_%f116059%_ _%xhd116112%_ _%yhd116128%_)
                               (_%lp116063%_
                                _%xrest116111%_
                                _%yrest116127%_))))
                       (if (##pair? _%g116113116120%_)
                           (let ((_%hd116117116133%_ (##car _%g116113116120%_))
                                 (_%tl116118116135%_
                                  (##cdr _%g116113116120%_)))
                             (let* ((_%yhd116138%_ _%hd116117116133%_)
                                    (_%yrest116140%_ _%tl116118116135%_))
                               (_%K116116116130%_
                                _%yrest116140%_
                                _%yhd116138%_)))
                           (_%E116115116124%_)))))
                  (_%K116072116105%_
                   (lambda ()
                     (let* ((_%yrest116089116094%_ _%yrest116066%_)
                            (_%E116091116098%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest116089116094%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K116092116102%_
                             (lambda ()
                               (_%f116059%_ _%xrest116065%_ _%yrest116066%_))))
                       (if (gx#stx-null? _%yrest116089116094%_)
                           (_%E116091116098%_)
                           (_%K116092116102%_))))))
              (let ((_%try-match116069116108%_
                     (lambda ()
                       (if (null? _%g116067116077%_)
                           (_%else116070116085%_)
                           (_%K116072116105%_)))))
                (if (##pair? _%g116067116077%_)
                    (let ((_%tl116075116147%_ (##cdr _%g116067116077%_))
                          (_%hd116074116145%_ (##car _%g116067116077%_)))
                      (let ((_%xhd116150%_ _%hd116074116145%_)
                            (_%xrest116152%_ _%tl116075116147%_))
                        (_%K116073116142%_ _%xrest116152%_ _%xhd116150%_)))
                    (_%try-match116069116108%_))))))))
    (define gx#stx-map
      (lambda _g116744_
        (let ((_g116743_ (##length _g116744_)))
          (cond ((##fx= _g116743_ 2) (apply gx#stx-map1 _g116744_))
                ((##fx= _g116743_ 3) (apply gx#stx-map2 _g116744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g116744_))))))
    (define gx#stx-map1
      (lambda (_%f116002%_ _%stx116003%_)
        (if (procedure? _%f116002%_)
            '#!void
            (error '"expected procedure" _%f116002%_))
        (let _%recur116005%_ ((_%rest116007%_ _%stx116003%_))
          (let* ((_%g116008116018%_ (gx#syntax-e _%rest116007%_))
                 (_%else116011116026%_
                  (lambda () (_%f116002%_ _%rest116007%_))))
            (let ((_%K116014116040%_
                   (lambda (_%rest116037%_ _%hd116038%_)
                     (cons (_%f116002%_ _%hd116038%_)
                           (_%recur116005%_ _%rest116037%_))))
                  (_%K116013116031%_ (lambda () '())))
              (let ((_%try-match116010116034%_
                     (lambda ()
                       (if (##null? _%g116008116018%_)
                           (_%K116013116031%_)
                           (_%else116011116026%_)))))
                (if (##pair? _%g116008116018%_)
                    (let ((_%tl116016116045%_ (##cdr _%g116008116018%_))
                          (_%hd116015116043%_ (##car _%g116008116018%_)))
                      (let ((_%hd116048%_ _%hd116015116043%_)
                            (_%rest116050%_ _%tl116016116045%_))
                        (_%K116014116040%_ _%rest116050%_ _%hd116048%_)))
                    (_%try-match116010116034%_))))))))
    (define gx#stx-map2
      (lambda (_%f115907%_ _%xstx115908%_ _%ystx115909%_)
        (if (procedure? _%f115907%_)
            '#!void
            (error '"expected procedure" _%f115907%_))
        (let _%recur115911%_ ((_%xrest115913%_ _%xstx115908%_)
                              (_%yrest115914%_ _%ystx115909%_))
          (let* ((_%g115915115925%_ (gx#syntax-e _%xrest115913%_))
                 (_%else115918115933%_ (lambda () '())))
            (let ((_%K115921115990%_
                   (lambda (_%xrest115959%_ _%xhd115960%_)
                     (let* ((_%g115961115968%_ (gx#syntax-e _%yrest115914%_))
                            (_%E115963115972%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g115961115968%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K115964115978%_
                             (lambda (_%yrest115975%_ _%yhd115976%_)
                               (cons (_%f115907%_ _%xhd115960%_ _%yhd115976%_)
                                     (_%recur115911%_
                                      _%xrest115959%_
                                      _%yrest115975%_)))))
                       (if (##pair? _%g115961115968%_)
                           (let ((_%hd115965115981%_ (##car _%g115961115968%_))
                                 (_%tl115966115983%_
                                  (##cdr _%g115961115968%_)))
                             (let* ((_%yhd115986%_ _%hd115965115981%_)
                                    (_%yrest115988%_ _%tl115966115983%_))
                               (_%K115964115978%_
                                _%yrest115988%_
                                _%yhd115986%_)))
                           (_%E115963115972%_)))))
                  (_%K115920115953%_
                   (lambda ()
                     (let* ((_%yrest115937115942%_ _%yrest115914%_)
                            (_%E115939115946%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115937115942%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115940115950%_
                             (lambda ()
                               (_%f115907%_ _%xrest115913%_ _%yrest115914%_))))
                       (if (gx#stx-null? _%yrest115937115942%_)
                           (_%E115939115946%_)
                           (_%K115940115950%_))))))
              (let ((_%try-match115917115956%_
                     (lambda ()
                       (if (null? _%g115915115925%_)
                           (_%else115918115933%_)
                           (_%K115920115953%_)))))
                (if (##pair? _%g115915115925%_)
                    (let ((_%tl115923115995%_ (##cdr _%g115915115925%_))
                          (_%hd115922115993%_ (##car _%g115915115925%_)))
                      (let ((_%xhd115998%_ _%hd115922115993%_)
                            (_%xrest116000%_ _%tl115923115995%_))
                        (_%K115921115990%_ _%xrest116000%_ _%xhd115998%_)))
                    (_%try-match115917115956%_))))))))
    (define gx#stx-andmap
      (lambda (_%f115857%_ _%stx115858%_)
        (if (procedure? _%f115857%_)
            '#!void
            (error '"expected procedure" _%f115857%_))
        (let _%lp115860%_ ((_%rest115862%_ _%stx115858%_))
          (let* ((_%g115863115873%_ (gx#syntax-e _%rest115862%_))
                 (_%else115866115881%_
                  (lambda () (_%f115857%_ _%rest115862%_))))
            (let ((_%K115869115895%_
                   (lambda (_%rest115892%_ _%hd115893%_)
                     (if (_%f115857%_ _%hd115893%_)
                         (_%lp115860%_ _%rest115892%_)
                         '#f)))
                  (_%K115868115886%_ (lambda () '#t)))
              (let ((_%try-match115865115889%_
                     (lambda ()
                       (if (##null? _%g115863115873%_)
                           (_%K115868115886%_)
                           (_%else115866115881%_)))))
                (if (##pair? _%g115863115873%_)
                    (let ((_%tl115871115900%_ (##cdr _%g115863115873%_))
                          (_%hd115870115898%_ (##car _%g115863115873%_)))
                      (let ((_%hd115903%_ _%hd115870115898%_)
                            (_%rest115905%_ _%tl115871115900%_))
                        (_%K115869115895%_ _%rest115905%_ _%hd115903%_)))
                    (_%try-match115865115889%_))))))))
    (define gx#stx-ormap
      (lambda (_%f115804%_ _%stx115805%_)
        (if (procedure? _%f115804%_)
            '#!void
            (error '"expected procedure" _%f115804%_))
        (let _%lp115807%_ ((_%rest115809%_ _%stx115805%_))
          (let* ((_%g115810115820%_ (gx#syntax-e _%rest115809%_))
                 (_%else115813115828%_
                  (lambda () (_%f115804%_ _%rest115809%_))))
            (let ((_%K115816115845%_
                   (lambda (_%rest115839%_ _%hd115840%_)
                     (let ((_%$e115842%_ (_%f115804%_ _%hd115840%_)))
                       (if _%$e115842%_
                           _%$e115842%_
                           (_%lp115807%_ _%rest115839%_)))))
                  (_%K115815115833%_ (lambda () '#f)))
              (let ((_%try-match115812115836%_
                     (lambda ()
                       (if (##null? _%g115810115820%_)
                           (_%K115815115833%_)
                           (_%else115813115828%_)))))
                (if (##pair? _%g115810115820%_)
                    (let ((_%tl115818115850%_ (##cdr _%g115810115820%_))
                          (_%hd115817115848%_ (##car _%g115810115820%_)))
                      (let ((_%hd115853%_ _%hd115817115848%_)
                            (_%rest115855%_ _%tl115818115850%_))
                        (_%K115816115845%_ _%rest115855%_ _%hd115853%_)))
                    (_%try-match115812115836%_))))))))
    (define gx#stx-foldl
      (lambda (_%f115752%_ _%iv115753%_ _%stx115754%_)
        (if (procedure? _%f115752%_)
            '#!void
            (error '"expected procedure" _%f115752%_))
        (let _%lp115756%_ ((_%r115758%_ _%iv115753%_)
                           (_%rest115759%_ _%stx115754%_))
          (let* ((_%g115760115770%_ (gx#syntax-e _%rest115759%_))
                 (_%else115763115778%_
                  (lambda () (_%f115752%_ _%rest115759%_ _%r115758%_))))
            (let ((_%K115766115792%_
                   (lambda (_%rest115789%_ _%hd115790%_)
                     (_%lp115756%_
                      (_%f115752%_ _%hd115790%_ _%r115758%_)
                      _%rest115789%_)))
                  (_%K115765115783%_ (lambda () _%r115758%_)))
              (let ((_%try-match115762115786%_
                     (lambda ()
                       (if (##null? _%g115760115770%_)
                           (_%K115765115783%_)
                           (_%else115763115778%_)))))
                (if (##pair? _%g115760115770%_)
                    (let ((_%tl115768115797%_ (##cdr _%g115760115770%_))
                          (_%hd115767115795%_ (##car _%g115760115770%_)))
                      (let ((_%hd115800%_ _%hd115767115795%_)
                            (_%rest115802%_ _%tl115768115797%_))
                        (_%K115766115792%_ _%rest115802%_ _%hd115800%_)))
                    (_%try-match115762115786%_))))))))
    (define gx#stx-foldr
      (lambda (_%f115701%_ _%iv115702%_ _%stx115703%_)
        (if (procedure? _%f115701%_)
            '#!void
            (error '"expected procedure" _%f115701%_))
        (let _%recur115705%_ ((_%rest115707%_ _%stx115703%_))
          (let* ((_%g115708115718%_ (gx#syntax-e _%rest115707%_))
                 (_%else115711115726%_
                  (lambda () (_%f115701%_ _%rest115707%_ _%iv115702%_))))
            (let ((_%K115714115740%_
                   (lambda (_%rest115737%_ _%hd115738%_)
                     (_%f115701%_
                      _%hd115738%_
                      (_%recur115705%_ _%rest115737%_))))
                  (_%K115713115731%_ (lambda () _%iv115702%_)))
              (let ((_%try-match115710115734%_
                     (lambda ()
                       (if (##null? _%g115708115718%_)
                           (_%K115713115731%_)
                           (_%else115711115726%_)))))
                (if (##pair? _%g115708115718%_)
                    (let ((_%tl115716115745%_ (##cdr _%g115708115718%_))
                          (_%hd115715115743%_ (##car _%g115708115718%_)))
                      (let ((_%hd115748%_ _%hd115715115743%_)
                            (_%rest115750%_ _%tl115716115745%_))
                        (_%K115714115740%_ _%rest115750%_ _%hd115748%_)))
                    (_%try-match115710115734%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx115699%_) (gx#stx-foldl cons '() _%stx115699%_)))
    (define gx#stx-last
      (lambda (_%stx115660%_)
        (let _%lp115662%_ ((_%rest115664%_ _%stx115660%_))
          (let* ((_%g115665115673%_ (gx#syntax-e _%rest115664%_))
                 (_%else115667115681%_ (lambda () _%rest115664%_))
                 (_%K115669115687%_
                  (lambda (_%rest115684%_ _%hd115685%_)
                    (if (gx#stx-null? _%rest115684%_)
                        _%hd115685%_
                        (_%lp115662%_ _%rest115684%_)))))
            (if (##pair? _%g115665115673%_)
                (let ((_%hd115670115690%_ (##car _%g115665115673%_))
                      (_%tl115671115692%_ (##cdr _%g115665115673%_)))
                  (let* ((_%hd115695%_ _%hd115670115690%_)
                         (_%rest115697%_ _%tl115671115692%_))
                    (_%K115669115687%_ _%rest115697%_ _%hd115695%_)))
                (_%else115667115681%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx115631%_)
        (let _%lp115633%_ ((_%hd115635%_ _%stx115631%_))
          (let* ((_%g115636115643%_ (gx#syntax-e _%hd115635%_))
                 (_%E115638115647%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g115636115643%_
                           '([_ . rest]))
                    '#!void))
                 (_%K115639115652%_
                  (lambda (_%rest115650%_)
                    (if (gx#stx-pair? _%rest115650%_)
                        (_%lp115633%_ _%rest115650%_)
                        _%hd115635%_))))
            (if (##pair? _%g115636115643%_)
                (let* ((_%tl115641115655%_ (##cdr _%g115636115643%_))
                       (_%rest115658%_ _%tl115641115655%_))
                  (_%K115639115652%_ _%rest115658%_))
                (_%E115638115647%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx115600%_ _%k115601%_)
        (let _%lp115603%_ ((_%rest115605%_ _%stx115600%_)
                           (_%k115606%_ _%k115601%_))
          (if (fxpositive? _%k115606%_)
              (let* ((_%g115607115614%_ (gx#syntax-e _%rest115605%_))
                     (_%E115609115618%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g115607115614%_
                               '([_ . rest]))
                        '#!void))
                     (_%K115610115623%_
                      (lambda (_%rest115621%_)
                        (_%lp115603%_ _%rest115621%_ (##fx- _%k115606%_ '1)))))
                (if (##pair? _%g115607115614%_)
                    (let* ((_%tl115612115626%_ (##cdr _%g115607115614%_))
                           (_%rest115629%_ _%tl115612115626%_))
                      (_%K115610115623%_ _%rest115629%_))
                    (_%E115609115618%_)))
              _%rest115605%_))))
    (define gx#stx-list-ref
      (lambda (_%stx115597%_ _%k115598%_)
        (gx#stx-car (gx#stx-list-tail _%stx115597%_ _%k115598%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx115509%_ _%key?115510%_)
        (if (procedure? _%key?115510%_)
            '#!void
            (error '"expected procedure" _%key?115510%_))
        (let _%lp115512%_ ((_%rest115514%_ _%stx115509%_))
          (let* ((_%g115515115525%_ (gx#stx-e _%rest115514%_))
                 (_%else115518115533%_ (lambda () '#f)))
            (let ((_%K115521115575%_
                   (lambda (_%rest115544%_ _%hd115545%_)
                     (if (_%key?115510%_ _%hd115545%_)
                         (let* ((_%g115546115554%_ (gx#stx-e _%rest115544%_))
                                (_%else115548115562%_ (lambda () '#f))
                                (_%K115550115567%_
                                 (lambda (_%rest115565%_)
                                   (_%lp115512%_ _%rest115565%_))))
                           (if (##pair? _%g115546115554%_)
                               (let* ((_%tl115552115570%_
                                       (##cdr _%g115546115554%_))
                                      (_%rest115573%_ _%tl115552115570%_))
                                 (_%lp115512%_ _%rest115573%_))
                               (_%else115548115562%_)))
                         '#f)))
                  (_%K115520115538%_ (lambda () '#t)))
              (let ((_%try-match115517115541%_
                     (lambda ()
                       (if (##null? _%g115515115525%_)
                           (_%K115520115538%_)
                           (_%else115518115533%_)))))
                (if (##pair? _%g115515115525%_)
                    (let ((_%tl115523115580%_ (##cdr _%g115515115525%_))
                          (_%hd115522115578%_ (##car _%g115515115525%_)))
                      (let ((_%hd115583%_ _%hd115522115578%_)
                            (_%rest115585%_ _%tl115523115580%_))
                        (_%K115521115575%_ _%rest115585%_ _%hd115583%_)))
                    (_%try-match115517115541%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx115590%_)
        (let ((_%key?115592%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx115590%_ _%key?115592%_))))
    (define gx#stx-plist?
      (lambda _g116746_
        (let ((_g116745_ (##length _g116746_)))
          (cond ((##fx= _g116745_ 1) (apply gx#stx-plist?__0 _g116746_))
                ((##fx= _g116745_ 2) (apply gx#stx-plist?__% _g116746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g116746_))))))
    (define gx#stx-getq__%
      (lambda (_%key115427%_ _%stx115428%_ _%key=?115429%_)
        (if (procedure? _%key=?115429%_)
            '#!void
            (error '"expected procedure" _%key=?115429%_))
        (let _%lp115431%_ ((_%rest115433%_ _%stx115428%_))
          (let* ((_%g115434115442%_ (gx#syntax-e _%rest115433%_))
                 (_%else115436115450%_ (lambda () '#f))
                 (_%K115438115484%_
                  (lambda (_%rest115453%_ _%hd115454%_)
                    (let* ((_%g115455115462%_ (gx#syntax-e _%rest115453%_))
                           (_%E115457115466%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g115455115462%_
                                     '([val . rest]))
                              '#!void))
                           (_%K115458115472%_
                            (lambda (_%rest115469%_ _%val115470%_)
                              (if (_%key=?115429%_ _%hd115454%_ _%key115427%_)
                                  _%val115470%_
                                  (_%lp115431%_ _%rest115469%_)))))
                      (if (##pair? _%g115455115462%_)
                          (let ((_%hd115459115475%_ (##car _%g115455115462%_))
                                (_%tl115460115477%_ (##cdr _%g115455115462%_)))
                            (let* ((_%val115480%_ _%hd115459115475%_)
                                   (_%rest115482%_ _%tl115460115477%_))
                              (_%K115458115472%_
                               _%rest115482%_
                               _%val115480%_)))
                          (_%E115457115466%_))))))
            (if (##pair? _%g115434115442%_)
                (let ((_%hd115439115487%_ (##car _%g115434115442%_))
                      (_%tl115440115489%_ (##cdr _%g115434115442%_)))
                  (let* ((_%hd115492%_ _%hd115439115487%_)
                         (_%rest115494%_ _%tl115440115489%_))
                    (_%K115438115484%_ _%rest115494%_ _%hd115492%_)))
                (_%else115436115450%_))))))
    (define gx#stx-getq__0
      (lambda (_%key115499%_ _%stx115500%_)
        (let ((_%key=?115502%_ gx#stx-eq?))
          (gx#stx-getq__% _%key115499%_ _%stx115500%_ _%key=?115502%_))))
    (define gx#stx-getq
      (lambda _g116748_
        (let ((_g116747_ (##length _g116748_)))
          (cond ((##fx= _g116747_ 2) (apply gx#stx-getq__0 _g116748_))
                ((##fx= _g116747_ 3) (apply gx#stx-getq__% _g116748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g116748_))))))))
