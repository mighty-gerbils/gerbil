(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712993615)
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
      (lambda _%$args116257%_
        (apply make-instance gx#identifier-wrap::t _%$args116257%_)))
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
      (lambda _%$args116254%_
        (apply make-instance gx#syntax-wrap::t _%$args116254%_)))
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
      (lambda _%$args116251%_
        (apply make-instance gx#syntax-quote::t _%$args116251%_)))
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
      (lambda (_%stx116249%_) (symbol? (gx#stx-e _%stx116249%_))))
    (define gx#identifier-quote?
      (lambda (_%stx116247%_)
        (if (##structure-direct-instance-of? _%stx116247%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx116247%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx116242%_)
        (if (##structure-direct-instance-of? _%stx116242%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx116242%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx116242%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx116237%_)
        (if (##structure-direct-instance-of? _%stx116237%_ 'gx#syntax-quote::t)
            _%stx116237%_
            (if (##structure-direct-instance-of?
                 _%stx116237%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx116237%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx116211%_)
        (if (##structure-direct-instance-of? _%stx116211%_ 'gx#syntax-wrap::t)
            (let _%lp116214%_ ((_%e116216%_
                                (##unchecked-structure-ref
                                 _%stx116211%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks116217%_
                                (cons (##unchecked-structure-ref
                                       _%stx116211%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e116216%_)
                  (let ((_%$e116220%_
                         (##type-id (##structure-type _%e116216%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e116220%_)
                        (_%lp116214%_
                         (##unchecked-structure-ref _%e116216%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e116216%_ '3 '#f '#f)
                          _%marks116217%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e116220%_)
                                (eq? 'gx#identifier-wrap::t _%$e116220%_))
                            (##unchecked-structure-ref _%e116216%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e116220%_)
                                (_%lp116214%_
                                 (##unchecked-structure-ref
                                  _%e116216%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks116217%_)
                                _%e116216%_))))
                  (if (null? _%marks116217%_)
                      _%e116216%_
                      (if (pair? _%e116216%_)
                          (cons (gx#stx-wrap
                                 (##car _%e116216%_)
                                 _%marks116217%_)
                                (gx#stx-wrap
                                 (##cdr _%e116216%_)
                                 _%marks116217%_))
                          (if (vector? _%e116216%_)
                              (vector-map
                               (lambda (_%g116228116230%_)
                                 (gx#stx-wrap
                                  _%g116228116230%_
                                  _%marks116217%_))
                               _%e116216%_)
                              (if (box? _%e116216%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e116216%_)
                                        _%marks116217%_))
                                  _%e116216%_))))))
            (if (##structure-instance-of? _%stx116211%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116211%_ '1 '#f '#f)
                _%stx116211%_))))
    (define gx#syntax->datum
      (lambda (_%stx116204%_)
        (if (##structure-instance-of? _%stx116204%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx116204%_ '1 '#f '#f))
            (if (pair? _%stx116204%_)
                (cons (gx#syntax->datum (##car _%stx116204%_))
                      (gx#syntax->datum (##cdr _%stx116204%_)))
                (if (vector? _%stx116204%_)
                    (vector-map gx#syntax->datum _%stx116204%_)
                    (if (box? _%stx116204%_)
                        (box (gx#syntax->datum (unbox _%stx116204%_)))
                        _%stx116204%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx116138%_ _%datum116139%_ _%src116140%_ _%quote?116141%_)
        (letrec ((_%wrap-datum116143%_
                  (lambda (_%e116176%_ _%marks116177%_)
                    (_%wrap-inner116145%_
                     _%e116176%_
                     (lambda (_%g116178116180%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g116178116180%_
                        _%src116140%_
                        _%marks116177%_)))))
                 (_%wrap-quote116144%_
                  (lambda (_%e116168%_ _%ctx116169%_ _%marks116170%_)
                    (_%wrap-inner116145%_
                     _%e116168%_
                     (lambda (_%g116171116173%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g116171116173%_
                        _%src116140%_
                        _%ctx116169%_
                        _%marks116170%_)))))
                 (_%wrap-inner116145%_
                  (lambda (_%e116156%_ _%wrap-e116157%_)
                    (let _%recur116159%_ ((_%e116161%_ _%e116156%_))
                      (if (symbol? _%e116161%_)
                          (_%wrap-e116157%_ _%e116161%_)
                          (if (pair? _%e116161%_)
                              (cons (_%recur116159%_ (##car _%e116161%_))
                                    (_%recur116159%_ (##cdr _%e116161%_)))
                              (if (vector? _%e116161%_)
                                  (vector-map _%recur116159%_ _%e116161%_)
                                  (if (box? _%e116161%_)
                                      (box (_%recur116159%_
                                            (unbox _%e116161%_)))
                                      _%e116161%_)))))))
                 (_%wrap-outer116146%_
                  (lambda (_%e116154%_)
                    (if (##structure-instance-of? _%e116154%_ 'gerbil#AST::t)
                        _%e116154%_
                        (##structure gx#AST::t _%e116154%_ _%src116140%_)))))
          (if (##structure-instance-of? _%datum116139%_ 'gerbil#AST::t)
              _%datum116139%_
              (if (not _%stx116138%_)
                  (##structure gx#AST::t _%datum116139%_ _%src116140%_)
                  (if (gx#identifier? _%stx116138%_)
                      (let ((_%stx116151%_ (gx#stx-unwrap__0 _%stx116138%_)))
                        (_%wrap-outer116146%_
                         (if (##structure-direct-instance-of?
                              _%stx116151%_
                              'gx#syntax-quote::t)
                             (if _%quote?116141%_
                                 (_%wrap-quote116144%_
                                  _%datum116139%_
                                  (##unchecked-structure-ref
                                   _%stx116151%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx116151%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum116143%_
                                  _%datum116139%_
                                  (##unchecked-structure-ref
                                   _%stx116151%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum116143%_
                              _%datum116139%_
                              (##unchecked-structure-ref
                               _%stx116151%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx116138%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx116186%_ _%datum116187%_)
        (let* ((_%src116189%_ '#f) (_%quote?116191%_ '#t))
          (gx#datum->syntax__%
           _%stx116186%_
           _%datum116187%_
           _%src116189%_
           _%quote?116191%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx116193%_ _%datum116194%_ _%src116195%_)
        (let ((_%quote?116197%_ '#t))
          (gx#datum->syntax__%
           _%stx116193%_
           _%datum116194%_
           _%src116195%_
           _%quote?116197%_))))
    (define gx#datum->syntax
      (lambda _g116338_
        (let ((_g116337_ (##length _g116338_)))
          (cond ((##fx= _g116337_ 2) (apply gx#datum->syntax__0 _g116338_))
                ((##fx= _g116337_ 3) (apply gx#datum->syntax__1 _g116338_))
                ((##fx= _g116337_ 4) (apply gx#datum->syntax__% _g116338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g116338_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx116104%_ _%marks116105%_)
        (let _%lp116107%_ ((_%e116109%_ _%stx116104%_)
                           (_%marks116110%_ _%marks116105%_)
                           (_%src116111%_ (gx#stx-source _%stx116104%_)))
          (if (##structure-direct-instance-of? _%e116109%_ 'gx#syntax-wrap::t)
              (_%lp116107%_
               (##unchecked-structure-ref _%e116109%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e116109%_ '3 '#f '#f)
                _%marks116110%_)
               (##unchecked-structure-ref _%e116109%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e116109%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks116110%_)
                      _%e116109%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e116109%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e116109%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e116109%_ '3 '#f '#f)
                        _%marks116110%_)))
                  (if (##structure-direct-instance-of?
                       _%e116109%_
                       'gx#syntax-quote::t)
                      _%e116109%_
                      (if (##structure-instance-of? _%e116109%_ 'gerbil#AST::t)
                          (_%lp116107%_
                           (##unchecked-structure-ref _%e116109%_ '1 '#f '#f)
                           _%marks116110%_
                           (##unchecked-structure-ref _%e116109%_ '2 '#f '#f))
                          (if (symbol? _%e116109%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e116109%_
                               _%src116111%_
                               (reverse _%marks116110%_))
                              (if (null? _%marks116110%_)
                                  _%e116109%_
                                  (if (pair? _%e116109%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e116109%_)
                                             _%marks116110%_)
                                            (gx#stx-wrap
                                             (##cdr _%e116109%_)
                                             _%marks116110%_))
                                      (if (vector? _%e116109%_)
                                          (vector-map
                                           (lambda (_%g116120116122%_)
                                             (gx#stx-wrap
                                              _%g116120116122%_
                                              _%marks116110%_))
                                           _%e116109%_)
                                          (if (box? _%e116109%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e116109%_)
                                                    _%marks116110%_))
                                              _%e116109%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx116130%_)
        (let ((_%marks116132%_ '()))
          (gx#stx-unwrap__% _%stx116130%_ _%marks116132%_))))
    (define gx#stx-unwrap
      (lambda _g116340_
        (let ((_g116339_ (##length _g116340_)))
          (cond ((##fx= _g116339_ 1) (apply gx#stx-unwrap__0 _g116340_))
                ((##fx= _g116339_ 2) (apply gx#stx-unwrap__% _g116340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g116340_))))))
    (define gx#stx-wrap
      (lambda (_%stx116097%_ _%marks116098%_)
        (__foldl1
         (lambda (_%mark116100%_ _%stx116101%_)
           (gx#stx-apply-mark _%stx116101%_ _%mark116100%_))
         _%stx116097%_
         _%marks116098%_)))
    (define gx#stx-rewrap
      (lambda (_%stx116091%_ _%marks116092%_)
        (__foldr1
         (lambda (_%mark116094%_ _%stx116095%_)
           (gx#stx-apply-mark _%stx116095%_ _%mark116094%_))
         _%stx116091%_
         _%marks116092%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx116085%_ _%mark116086%_)
        (if (##structure-direct-instance-of? _%stx116085%_ 'gx#syntax-quote::t)
            _%stx116085%_
            (if (and (##structure-direct-instance-of?
                      _%stx116085%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark116086%_
                          (##unchecked-structure-ref
                           _%stx116085%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx116085%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx116085%_
                 (gx#stx-source _%stx116085%_)
                 _%mark116086%_)))))
    (define gx#apply-mark
      (lambda (_%mark116049%_ _%marks116050%_)
        (let* ((_%marks116051116059%_ _%marks116050%_)
               (_%else116053116067%_
                (lambda () (cons _%mark116049%_ _%marks116050%_)))
               (_%K116055116073%_
                (lambda (_%rest116070%_ _%hd116071%_)
                  (if (eq? _%mark116049%_ _%hd116071%_)
                      _%rest116070%_
                      (cons _%mark116049%_ _%marks116050%_)))))
          (if (##pair? _%marks116051116059%_)
              (let ((_%hd116056116076%_ (##car _%marks116051116059%_))
                    (_%tl116057116078%_ (##cdr _%marks116051116059%_)))
                (let* ((_%hd116081%_ _%hd116056116076%_)
                       (_%rest116083%_ _%tl116057116078%_))
                  (_%K116055116073%_ _%rest116083%_ _%hd116081%_)))
              (_%else116053116067%_)))))
    (define gx#stx-e
      (lambda (_%stx116044%_)
        (if (##structure-direct-instance-of? _%stx116044%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx116044%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx116044%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116044%_ '1 '#f '#f)
                _%stx116044%_))))
    (define gx#stx-source
      (lambda (_%stx116042%_)
        (if (##structure-instance-of? _%stx116042%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx116042%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx116036%_ _%src116037%_)
        (if (or (##structure-instance-of? _%stx116036%_ 'gerbil#AST::t)
                (not _%src116037%_))
            _%stx116036%_
            (##structure gx#AST::t _%stx116036%_ _%src116037%_))))
    (define gx#stx-datum?
      (lambda (_%stx116034%_) (gx#self-quoting? (gx#stx-e _%stx116034%_))))
    (define gx#self-quoting?
      (lambda (_%x116017%_)
        (let ((_%$e116019%_ (immediate? _%x116017%_)))
          (if _%$e116019%_
              _%$e116019%_
              (let ((_%$e116022%_ (number? _%x116017%_)))
                (if _%$e116022%_
                    _%$e116022%_
                    (let ((_%$e116025%_ (keyword? _%x116017%_)))
                      (if _%$e116025%_
                          _%$e116025%_
                          (let ((_%$e116028%_ (string? _%x116017%_)))
                            (if _%$e116028%_
                                _%$e116028%_
                                (let ((_%$e116031%_ (vector? _%x116017%_)))
                                  (if _%$e116031%_
                                      _%$e116031%_
                                      (u8vector? _%x116017%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e116015%_) (boolean? (gx#stx-e _%e116015%_))))
    (define gx#stx-keyword?
      (lambda (_%e116013%_) (keyword? (gx#stx-e _%e116013%_))))
    (define gx#stx-char? (lambda (_%e116011%_) (char? (gx#stx-e _%e116011%_))))
    (define gx#stx-number?
      (lambda (_%e116009%_) (number? (gx#stx-e _%e116009%_))))
    (define gx#stx-fixnum?
      (lambda (_%e116007%_) (fixnum? (gx#stx-e _%e116007%_))))
    (define gx#stx-string?
      (lambda (_%e116005%_) (string? (gx#stx-e _%e116005%_))))
    (define gx#stx-null? (lambda (_%e116003%_) (null? (gx#stx-e _%e116003%_))))
    (define gx#stx-pair? (lambda (_%e116001%_) (pair? (gx#stx-e _%e116001%_))))
    (define gx#stx-list?
      (lambda (_%e115963%_)
        (let* ((_%g115964115973%_ (gx#stx-e _%e115963%_))
               (_%E115967115977%_
                (lambda ()
                  (error '"No clause matching"
                         _%g115964115973%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K115969115993%_
                 (lambda (_%rest115991%_) (gx#stx-list? _%rest115991%_)))
                (_%K115968115983%_
                 (lambda (_%tail115981%_) (null? _%tail115981%_))))
            (if (##pair? _%g115964115973%_)
                (let* ((_%tl115971115996%_ (##cdr _%g115964115973%_))
                       (_%rest115999%_ _%tl115971115996%_))
                  (gx#stx-list? _%rest115999%_))
                (let ((_%tail115986%_ _%g115964115973%_))
                  (null? _%tail115986%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e115956%_)
        (let* ((_%e115958%_ (gx#stx-e _%e115956%_))
               (_%$e115960%_ (pair? _%e115958%_)))
          (if _%$e115960%_ _%$e115960%_ (null? _%e115958%_)))))
    (define gx#stx-vector?
      (lambda (_%e115954%_) (vector? (gx#stx-e _%e115954%_))))
    (define gx#stx-box? (lambda (_%e115952%_) (box? (gx#stx-e _%e115952%_))))
    (define gx#stx-eq?
      (lambda (_%x115949%_ _%y115950%_)
        (eq? (gx#stx-e _%x115949%_) (gx#stx-e _%y115950%_))))
    (define gx#stx-eqv?
      (lambda (_%x115946%_ _%y115947%_)
        (eqv? (gx#stx-e _%x115946%_) (gx#stx-e _%y115947%_))))
    (define gx#stx-equal?
      (lambda (_%x115943%_ _%y115944%_)
        (equal? (gx#stx-e _%x115943%_) (gx#stx-e _%y115944%_))))
    (define gx#stx-false? (lambda (_%x115941%_) (not (gx#stx-e _%x115941%_))))
    (define gx#stx-identifier
      (lambda (_%template115938%_ . _%args115939%_)
        (gx#datum->syntax__1
         _%template115938%_
         (apply make-symbol (gx#syntax->datum _%args115939%_))
         (gx#stx-source _%template115938%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx115936%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx115936%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx115931%_)
        (if (##structure-direct-instance-of?
             _%stx115931%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx115931%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx115931%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx115931%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx115931%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx115927%_)
        (let ((_%stx115929%_ (gx#stx-unwrap__0 _%stx115927%_)))
          (if (gx#identifier-quote? _%stx115929%_)
              (##unchecked-structure-ref _%stx115929%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx115882%_)
        (let* ((_%g115883115893%_ (gx#stx-e _%stx115882%_))
               (_%else115886115901%_ (lambda () '#f)))
          (let ((_%K115889115915%_
                 (lambda (_%rest115912%_ _%hd115913%_)
                   (if (gx#identifier? _%hd115913%_)
                       (gx#identifier-list? _%rest115912%_)
                       '#f)))
                (_%K115888115906%_ (lambda () '#t)))
            (let ((_%try-match115885115909%_
                   (lambda ()
                     (if (##null? _%g115883115893%_)
                         (_%K115888115906%_)
                         (_%else115886115901%_)))))
              (if (##pair? _%g115883115893%_)
                  (let ((_%tl115891115920%_ (##cdr _%g115883115893%_))
                        (_%hd115890115918%_ (##car _%g115883115893%_)))
                    (let ((_%hd115923%_ _%hd115890115918%_)
                          (_%rest115925%_ _%tl115891115920%_))
                      (_%K115889115915%_ _%rest115925%_ _%hd115923%_)))
                  (_%try-match115885115909%_)))))))
    (define gx#genident__%
      (lambda (_%e115859%_ _%src115860%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e115862%_ (gx#stx-e _%e115859%_)))
                   (if (interned-symbol? _%e115862%_) _%e115862%_ 'g)))
         (let ((_%$e115864%_ (gx#stx-source _%e115859%_)))
           (if _%$e115864%_ _%$e115864%_ _%src115860%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e115871%_ 'g) (_%src115873%_ '#f))
          (gx#genident__% _%e115871%_ _%src115873%_))))
    (define gx#genident__1
      (lambda (_%e115875%_)
        (let ((_%src115877%_ '#f))
          (gx#genident__% _%e115875%_ _%src115877%_))))
    (define gx#genident
      (lambda _g116342_
        (let ((_g116341_ (##length _g116342_)))
          (cond ((##fx= _g116341_ 0) (apply gx#genident__0 _g116342_))
                ((##fx= _g116341_ 1) (apply gx#genident__1 _g116342_))
                ((##fx= _g116341_ 2) (apply gx#genident__% _g116342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g116342_))))))
    (define gx#gentemps
      (lambda (_%stx-lst115856%_) (gx#stx-map1 gx#genident _%stx-lst115856%_)))
    (define gx#syntax->list
      (lambda (_%stx115854%_) (gx#stx-map1 values _%stx115854%_)))
    (define gx#stx-car
      (lambda (_%stx115851%_)
        (declare (safe))
        (car (gx#syntax-e _%stx115851%_))))
    (define gx#stx-cdr
      (lambda (_%stx115848%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx115848%_))))
    (define gx#stx-length
      (lambda (_%stx115813%_)
        (let _%lp115815%_ ((_%rest115817%_ _%stx115813%_) (_%n115818%_ '0))
          (let* ((_%g115819115827%_ (gx#stx-e _%rest115817%_))
                 (_%else115821115835%_ (lambda () _%n115818%_))
                 (_%K115823115840%_
                  (lambda (_%rest115838%_)
                    (_%lp115815%_ _%rest115838%_ (##fx+ _%n115818%_ '1)))))
            (if (##pair? _%g115819115827%_)
                (let* ((_%tl115825115843%_ (##cdr _%g115819115827%_))
                       (_%rest115846%_ _%tl115825115843%_))
                  (_%K115823115840%_ _%rest115846%_))
                (_%else115821115835%_))))))
    (define gx#stx-for-each
      (lambda _g116344_
        (let ((_g116343_ (##length _g116344_)))
          (cond ((##fx= _g116343_ 2) (apply gx#stx-for-each1 _g116344_))
                ((##fx= _g116343_ 3) (apply gx#stx-for-each2 _g116344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g116344_))))))
    (define gx#stx-for-each1
      (lambda (_%f115756%_ _%stx115757%_)
        (if (procedure? _%f115756%_)
            '#!void
            (error '"expected procedure" _%f115756%_))
        (let _%lp115759%_ ((_%rest115761%_ _%stx115757%_))
          (let* ((_%g115762115772%_ (gx#syntax-e _%rest115761%_))
                 (_%else115765115780%_
                  (lambda () (_%f115756%_ _%rest115761%_))))
            (let ((_%K115768115794%_
                   (lambda (_%rest115791%_ _%hd115792%_)
                     (_%f115756%_ _%hd115792%_)
                     (_%lp115759%_ _%rest115791%_)))
                  (_%K115767115785%_ (lambda () '#!void)))
              (let ((_%try-match115764115788%_
                     (lambda ()
                       (if (##null? _%g115762115772%_)
                           (_%K115767115785%_)
                           (_%else115765115780%_)))))
                (if (##pair? _%g115762115772%_)
                    (let ((_%tl115770115799%_ (##cdr _%g115762115772%_))
                          (_%hd115769115797%_ (##car _%g115762115772%_)))
                      (let ((_%hd115802%_ _%hd115769115797%_)
                            (_%rest115804%_ _%tl115770115799%_))
                        (_%K115768115794%_ _%rest115804%_ _%hd115802%_)))
                    (_%try-match115764115788%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f115661%_ _%xstx115662%_ _%ystx115663%_)
        (if (procedure? _%f115661%_)
            '#!void
            (error '"expected procedure" _%f115661%_))
        (let _%lp115665%_ ((_%xrest115667%_ _%xstx115662%_)
                           (_%yrest115668%_ _%ystx115663%_))
          (let* ((_%g115669115679%_ (gx#syntax-e _%xrest115667%_))
                 (_%else115672115687%_ (lambda () '#!void)))
            (let ((_%K115675115744%_
                   (lambda (_%xrest115713%_ _%xhd115714%_)
                     (let* ((_%g115715115722%_ (gx#syntax-e _%yrest115668%_))
                            (_%E115717115726%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g115715115722%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K115718115732%_
                             (lambda (_%yrest115729%_ _%yhd115730%_)
                               (_%f115661%_ _%xhd115714%_ _%yhd115730%_)
                               (_%lp115665%_
                                _%xrest115713%_
                                _%yrest115729%_))))
                       (if (##pair? _%g115715115722%_)
                           (let ((_%hd115719115735%_ (##car _%g115715115722%_))
                                 (_%tl115720115737%_
                                  (##cdr _%g115715115722%_)))
                             (let* ((_%yhd115740%_ _%hd115719115735%_)
                                    (_%yrest115742%_ _%tl115720115737%_))
                               (_%K115718115732%_
                                _%yrest115742%_
                                _%yhd115740%_)))
                           (_%E115717115726%_)))))
                  (_%K115674115707%_
                   (lambda ()
                     (let* ((_%yrest115691115696%_ _%yrest115668%_)
                            (_%E115693115700%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115691115696%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115694115704%_
                             (lambda ()
                               (_%f115661%_ _%xrest115667%_ _%yrest115668%_))))
                       (if (gx#stx-null? _%yrest115691115696%_)
                           (_%E115693115700%_)
                           (_%K115694115704%_))))))
              (let ((_%try-match115671115710%_
                     (lambda ()
                       (if (null? _%g115669115679%_)
                           (_%else115672115687%_)
                           (_%K115674115707%_)))))
                (if (##pair? _%g115669115679%_)
                    (let ((_%tl115677115749%_ (##cdr _%g115669115679%_))
                          (_%hd115676115747%_ (##car _%g115669115679%_)))
                      (let ((_%xhd115752%_ _%hd115676115747%_)
                            (_%xrest115754%_ _%tl115677115749%_))
                        (_%K115675115744%_ _%xrest115754%_ _%xhd115752%_)))
                    (_%try-match115671115710%_))))))))
    (define gx#stx-map
      (lambda _g116346_
        (let ((_g116345_ (##length _g116346_)))
          (cond ((##fx= _g116345_ 2) (apply gx#stx-map1 _g116346_))
                ((##fx= _g116345_ 3) (apply gx#stx-map2 _g116346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g116346_))))))
    (define gx#stx-map1
      (lambda (_%f115604%_ _%stx115605%_)
        (if (procedure? _%f115604%_)
            '#!void
            (error '"expected procedure" _%f115604%_))
        (let _%recur115607%_ ((_%rest115609%_ _%stx115605%_))
          (let* ((_%g115610115620%_ (gx#syntax-e _%rest115609%_))
                 (_%else115613115628%_
                  (lambda () (_%f115604%_ _%rest115609%_))))
            (let ((_%K115616115642%_
                   (lambda (_%rest115639%_ _%hd115640%_)
                     (cons (_%f115604%_ _%hd115640%_)
                           (_%recur115607%_ _%rest115639%_))))
                  (_%K115615115633%_ (lambda () '())))
              (let ((_%try-match115612115636%_
                     (lambda ()
                       (if (##null? _%g115610115620%_)
                           (_%K115615115633%_)
                           (_%else115613115628%_)))))
                (if (##pair? _%g115610115620%_)
                    (let ((_%tl115618115647%_ (##cdr _%g115610115620%_))
                          (_%hd115617115645%_ (##car _%g115610115620%_)))
                      (let ((_%hd115650%_ _%hd115617115645%_)
                            (_%rest115652%_ _%tl115618115647%_))
                        (_%K115616115642%_ _%rest115652%_ _%hd115650%_)))
                    (_%try-match115612115636%_))))))))
    (define gx#stx-map2
      (lambda (_%f115509%_ _%xstx115510%_ _%ystx115511%_)
        (if (procedure? _%f115509%_)
            '#!void
            (error '"expected procedure" _%f115509%_))
        (let _%recur115513%_ ((_%xrest115515%_ _%xstx115510%_)
                              (_%yrest115516%_ _%ystx115511%_))
          (let* ((_%g115517115527%_ (gx#syntax-e _%xrest115515%_))
                 (_%else115520115535%_ (lambda () '())))
            (let ((_%K115523115592%_
                   (lambda (_%xrest115561%_ _%xhd115562%_)
                     (let* ((_%g115563115570%_ (gx#syntax-e _%yrest115516%_))
                            (_%E115565115574%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g115563115570%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K115566115580%_
                             (lambda (_%yrest115577%_ _%yhd115578%_)
                               (cons (_%f115509%_ _%xhd115562%_ _%yhd115578%_)
                                     (_%recur115513%_
                                      _%xrest115561%_
                                      _%yrest115577%_)))))
                       (if (##pair? _%g115563115570%_)
                           (let ((_%hd115567115583%_ (##car _%g115563115570%_))
                                 (_%tl115568115585%_
                                  (##cdr _%g115563115570%_)))
                             (let* ((_%yhd115588%_ _%hd115567115583%_)
                                    (_%yrest115590%_ _%tl115568115585%_))
                               (_%K115566115580%_
                                _%yrest115590%_
                                _%yhd115588%_)))
                           (_%E115565115574%_)))))
                  (_%K115522115555%_
                   (lambda ()
                     (let* ((_%yrest115539115544%_ _%yrest115516%_)
                            (_%E115541115548%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115539115544%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115542115552%_
                             (lambda ()
                               (_%f115509%_ _%xrest115515%_ _%yrest115516%_))))
                       (if (gx#stx-null? _%yrest115539115544%_)
                           (_%E115541115548%_)
                           (_%K115542115552%_))))))
              (let ((_%try-match115519115558%_
                     (lambda ()
                       (if (null? _%g115517115527%_)
                           (_%else115520115535%_)
                           (_%K115522115555%_)))))
                (if (##pair? _%g115517115527%_)
                    (let ((_%tl115525115597%_ (##cdr _%g115517115527%_))
                          (_%hd115524115595%_ (##car _%g115517115527%_)))
                      (let ((_%xhd115600%_ _%hd115524115595%_)
                            (_%xrest115602%_ _%tl115525115597%_))
                        (_%K115523115592%_ _%xrest115602%_ _%xhd115600%_)))
                    (_%try-match115519115558%_))))))))
    (define gx#stx-andmap
      (lambda (_%f115459%_ _%stx115460%_)
        (if (procedure? _%f115459%_)
            '#!void
            (error '"expected procedure" _%f115459%_))
        (let _%lp115462%_ ((_%rest115464%_ _%stx115460%_))
          (let* ((_%g115465115475%_ (gx#syntax-e _%rest115464%_))
                 (_%else115468115483%_
                  (lambda () (_%f115459%_ _%rest115464%_))))
            (let ((_%K115471115497%_
                   (lambda (_%rest115494%_ _%hd115495%_)
                     (if (_%f115459%_ _%hd115495%_)
                         (_%lp115462%_ _%rest115494%_)
                         '#f)))
                  (_%K115470115488%_ (lambda () '#t)))
              (let ((_%try-match115467115491%_
                     (lambda ()
                       (if (##null? _%g115465115475%_)
                           (_%K115470115488%_)
                           (_%else115468115483%_)))))
                (if (##pair? _%g115465115475%_)
                    (let ((_%tl115473115502%_ (##cdr _%g115465115475%_))
                          (_%hd115472115500%_ (##car _%g115465115475%_)))
                      (let ((_%hd115505%_ _%hd115472115500%_)
                            (_%rest115507%_ _%tl115473115502%_))
                        (_%K115471115497%_ _%rest115507%_ _%hd115505%_)))
                    (_%try-match115467115491%_))))))))
    (define gx#stx-ormap
      (lambda (_%f115406%_ _%stx115407%_)
        (if (procedure? _%f115406%_)
            '#!void
            (error '"expected procedure" _%f115406%_))
        (let _%lp115409%_ ((_%rest115411%_ _%stx115407%_))
          (let* ((_%g115412115422%_ (gx#syntax-e _%rest115411%_))
                 (_%else115415115430%_
                  (lambda () (_%f115406%_ _%rest115411%_))))
            (let ((_%K115418115447%_
                   (lambda (_%rest115441%_ _%hd115442%_)
                     (let ((_%$e115444%_ (_%f115406%_ _%hd115442%_)))
                       (if _%$e115444%_
                           _%$e115444%_
                           (_%lp115409%_ _%rest115441%_)))))
                  (_%K115417115435%_ (lambda () '#f)))
              (let ((_%try-match115414115438%_
                     (lambda ()
                       (if (##null? _%g115412115422%_)
                           (_%K115417115435%_)
                           (_%else115415115430%_)))))
                (if (##pair? _%g115412115422%_)
                    (let ((_%tl115420115452%_ (##cdr _%g115412115422%_))
                          (_%hd115419115450%_ (##car _%g115412115422%_)))
                      (let ((_%hd115455%_ _%hd115419115450%_)
                            (_%rest115457%_ _%tl115420115452%_))
                        (_%K115418115447%_ _%rest115457%_ _%hd115455%_)))
                    (_%try-match115414115438%_))))))))
    (define gx#stx-foldl
      (lambda (_%f115354%_ _%iv115355%_ _%stx115356%_)
        (if (procedure? _%f115354%_)
            '#!void
            (error '"expected procedure" _%f115354%_))
        (let _%lp115358%_ ((_%r115360%_ _%iv115355%_)
                           (_%rest115361%_ _%stx115356%_))
          (let* ((_%g115362115372%_ (gx#syntax-e _%rest115361%_))
                 (_%else115365115380%_
                  (lambda () (_%f115354%_ _%rest115361%_ _%r115360%_))))
            (let ((_%K115368115394%_
                   (lambda (_%rest115391%_ _%hd115392%_)
                     (_%lp115358%_
                      (_%f115354%_ _%hd115392%_ _%r115360%_)
                      _%rest115391%_)))
                  (_%K115367115385%_ (lambda () _%r115360%_)))
              (let ((_%try-match115364115388%_
                     (lambda ()
                       (if (##null? _%g115362115372%_)
                           (_%K115367115385%_)
                           (_%else115365115380%_)))))
                (if (##pair? _%g115362115372%_)
                    (let ((_%tl115370115399%_ (##cdr _%g115362115372%_))
                          (_%hd115369115397%_ (##car _%g115362115372%_)))
                      (let ((_%hd115402%_ _%hd115369115397%_)
                            (_%rest115404%_ _%tl115370115399%_))
                        (_%K115368115394%_ _%rest115404%_ _%hd115402%_)))
                    (_%try-match115364115388%_))))))))
    (define gx#stx-foldr
      (lambda (_%f115303%_ _%iv115304%_ _%stx115305%_)
        (if (procedure? _%f115303%_)
            '#!void
            (error '"expected procedure" _%f115303%_))
        (let _%recur115307%_ ((_%rest115309%_ _%stx115305%_))
          (let* ((_%g115310115320%_ (gx#syntax-e _%rest115309%_))
                 (_%else115313115328%_
                  (lambda () (_%f115303%_ _%rest115309%_ _%iv115304%_))))
            (let ((_%K115316115342%_
                   (lambda (_%rest115339%_ _%hd115340%_)
                     (_%f115303%_
                      _%hd115340%_
                      (_%recur115307%_ _%rest115339%_))))
                  (_%K115315115333%_ (lambda () _%iv115304%_)))
              (let ((_%try-match115312115336%_
                     (lambda ()
                       (if (##null? _%g115310115320%_)
                           (_%K115315115333%_)
                           (_%else115313115328%_)))))
                (if (##pair? _%g115310115320%_)
                    (let ((_%tl115318115347%_ (##cdr _%g115310115320%_))
                          (_%hd115317115345%_ (##car _%g115310115320%_)))
                      (let ((_%hd115350%_ _%hd115317115345%_)
                            (_%rest115352%_ _%tl115318115347%_))
                        (_%K115316115342%_ _%rest115352%_ _%hd115350%_)))
                    (_%try-match115312115336%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx115301%_) (gx#stx-foldl cons '() _%stx115301%_)))
    (define gx#stx-last
      (lambda (_%stx115262%_)
        (let _%lp115264%_ ((_%rest115266%_ _%stx115262%_))
          (let* ((_%g115267115275%_ (gx#syntax-e _%rest115266%_))
                 (_%else115269115283%_ (lambda () _%rest115266%_))
                 (_%K115271115289%_
                  (lambda (_%rest115286%_ _%hd115287%_)
                    (if (gx#stx-null? _%rest115286%_)
                        _%hd115287%_
                        (_%lp115264%_ _%rest115286%_)))))
            (if (##pair? _%g115267115275%_)
                (let ((_%hd115272115292%_ (##car _%g115267115275%_))
                      (_%tl115273115294%_ (##cdr _%g115267115275%_)))
                  (let* ((_%hd115297%_ _%hd115272115292%_)
                         (_%rest115299%_ _%tl115273115294%_))
                    (_%K115271115289%_ _%rest115299%_ _%hd115297%_)))
                (_%else115269115283%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx115233%_)
        (let _%lp115235%_ ((_%hd115237%_ _%stx115233%_))
          (let* ((_%g115238115245%_ (gx#syntax-e _%hd115237%_))
                 (_%E115240115249%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g115238115245%_
                           '([_ . rest]))
                    '#!void))
                 (_%K115241115254%_
                  (lambda (_%rest115252%_)
                    (if (gx#stx-pair? _%rest115252%_)
                        (_%lp115235%_ _%rest115252%_)
                        _%hd115237%_))))
            (if (##pair? _%g115238115245%_)
                (let* ((_%tl115243115257%_ (##cdr _%g115238115245%_))
                       (_%rest115260%_ _%tl115243115257%_))
                  (_%K115241115254%_ _%rest115260%_))
                (_%E115240115249%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx115202%_ _%k115203%_)
        (let _%lp115205%_ ((_%rest115207%_ _%stx115202%_)
                           (_%k115208%_ _%k115203%_))
          (if (fxpositive? _%k115208%_)
              (let* ((_%g115209115216%_ (gx#syntax-e _%rest115207%_))
                     (_%E115211115220%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g115209115216%_
                               '([_ . rest]))
                        '#!void))
                     (_%K115212115225%_
                      (lambda (_%rest115223%_)
                        (_%lp115205%_ _%rest115223%_ (##fx- _%k115208%_ '1)))))
                (if (##pair? _%g115209115216%_)
                    (let* ((_%tl115214115228%_ (##cdr _%g115209115216%_))
                           (_%rest115231%_ _%tl115214115228%_))
                      (_%K115212115225%_ _%rest115231%_))
                    (_%E115211115220%_)))
              _%rest115207%_))))
    (define gx#stx-list-ref
      (lambda (_%stx115199%_ _%k115200%_)
        (gx#stx-car (gx#stx-list-tail _%stx115199%_ _%k115200%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx115111%_ _%key?115112%_)
        (if (procedure? _%key?115112%_)
            '#!void
            (error '"expected procedure" _%key?115112%_))
        (let _%lp115114%_ ((_%rest115116%_ _%stx115111%_))
          (let* ((_%g115117115127%_ (gx#stx-e _%rest115116%_))
                 (_%else115120115135%_ (lambda () '#f)))
            (let ((_%K115123115177%_
                   (lambda (_%rest115146%_ _%hd115147%_)
                     (if (_%key?115112%_ _%hd115147%_)
                         (let* ((_%g115148115156%_ (gx#stx-e _%rest115146%_))
                                (_%else115150115164%_ (lambda () '#f))
                                (_%K115152115169%_
                                 (lambda (_%rest115167%_)
                                   (_%lp115114%_ _%rest115167%_))))
                           (if (##pair? _%g115148115156%_)
                               (let* ((_%tl115154115172%_
                                       (##cdr _%g115148115156%_))
                                      (_%rest115175%_ _%tl115154115172%_))
                                 (_%lp115114%_ _%rest115175%_))
                               (_%else115150115164%_)))
                         '#f)))
                  (_%K115122115140%_ (lambda () '#t)))
              (let ((_%try-match115119115143%_
                     (lambda ()
                       (if (##null? _%g115117115127%_)
                           (_%K115122115140%_)
                           (_%else115120115135%_)))))
                (if (##pair? _%g115117115127%_)
                    (let ((_%tl115125115182%_ (##cdr _%g115117115127%_))
                          (_%hd115124115180%_ (##car _%g115117115127%_)))
                      (let ((_%hd115185%_ _%hd115124115180%_)
                            (_%rest115187%_ _%tl115125115182%_))
                        (_%K115123115177%_ _%rest115187%_ _%hd115185%_)))
                    (_%try-match115119115143%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx115192%_)
        (let ((_%key?115194%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx115192%_ _%key?115194%_))))
    (define gx#stx-plist?
      (lambda _g116348_
        (let ((_g116347_ (##length _g116348_)))
          (cond ((##fx= _g116347_ 1) (apply gx#stx-plist?__0 _g116348_))
                ((##fx= _g116347_ 2) (apply gx#stx-plist?__% _g116348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g116348_))))))
    (define gx#stx-getq__%
      (lambda (_%key115029%_ _%stx115030%_ _%key=?115031%_)
        (if (procedure? _%key=?115031%_)
            '#!void
            (error '"expected procedure" _%key=?115031%_))
        (let _%lp115033%_ ((_%rest115035%_ _%stx115030%_))
          (let* ((_%g115036115044%_ (gx#syntax-e _%rest115035%_))
                 (_%else115038115052%_ (lambda () '#f))
                 (_%K115040115086%_
                  (lambda (_%rest115055%_ _%hd115056%_)
                    (let* ((_%g115057115064%_ (gx#syntax-e _%rest115055%_))
                           (_%E115059115068%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g115057115064%_
                                     '([val . rest]))
                              '#!void))
                           (_%K115060115074%_
                            (lambda (_%rest115071%_ _%val115072%_)
                              (if (_%key=?115031%_ _%hd115056%_ _%key115029%_)
                                  _%val115072%_
                                  (_%lp115033%_ _%rest115071%_)))))
                      (if (##pair? _%g115057115064%_)
                          (let ((_%hd115061115077%_ (##car _%g115057115064%_))
                                (_%tl115062115079%_ (##cdr _%g115057115064%_)))
                            (let* ((_%val115082%_ _%hd115061115077%_)
                                   (_%rest115084%_ _%tl115062115079%_))
                              (_%K115060115074%_
                               _%rest115084%_
                               _%val115082%_)))
                          (_%E115059115068%_))))))
            (if (##pair? _%g115036115044%_)
                (let ((_%hd115041115089%_ (##car _%g115036115044%_))
                      (_%tl115042115091%_ (##cdr _%g115036115044%_)))
                  (let* ((_%hd115094%_ _%hd115041115089%_)
                         (_%rest115096%_ _%tl115042115091%_))
                    (_%K115040115086%_ _%rest115096%_ _%hd115094%_)))
                (_%else115038115052%_))))))
    (define gx#stx-getq__0
      (lambda (_%key115101%_ _%stx115102%_)
        (let ((_%key=?115104%_ gx#stx-eq?))
          (gx#stx-getq__% _%key115101%_ _%stx115102%_ _%key=?115104%_))))
    (define gx#stx-getq
      (lambda _g116350_
        (let ((_g116349_ (##length _g116350_)))
          (cond ((##fx= _g116349_ 2) (apply gx#stx-getq__0 _g116350_))
                ((##fx= _g116349_ 3) (apply gx#stx-getq__% _g116350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g116350_))))))))
