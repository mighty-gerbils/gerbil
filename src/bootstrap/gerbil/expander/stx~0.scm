(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712786278)
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
      (lambda _%$args116198%_
        (apply make-instance gx#identifier-wrap::t _%$args116198%_)))
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
      (lambda _%$args116195%_
        (apply make-instance gx#syntax-wrap::t _%$args116195%_)))
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
      (lambda _%$args116192%_
        (apply make-instance gx#syntax-quote::t _%$args116192%_)))
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
      (lambda (_%stx116190%_) (symbol? (gx#stx-e _%stx116190%_))))
    (define gx#identifier-quote?
      (lambda (_%stx116188%_)
        (if (##structure-direct-instance-of? _%stx116188%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx116188%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx116183%_)
        (if (##structure-direct-instance-of? _%stx116183%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx116183%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx116183%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx116178%_)
        (if (##structure-direct-instance-of? _%stx116178%_ 'gx#syntax-quote::t)
            _%stx116178%_
            (if (##structure-direct-instance-of?
                 _%stx116178%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx116178%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx116152%_)
        (if (##structure-direct-instance-of? _%stx116152%_ 'gx#syntax-wrap::t)
            (let _%lp116155%_ ((_%e116157%_
                                (##unchecked-structure-ref
                                 _%stx116152%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks116158%_
                                (cons (##unchecked-structure-ref
                                       _%stx116152%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e116157%_)
                  (let ((_%$e116161%_
                         (##type-id (##structure-type _%e116157%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e116161%_)
                        (_%lp116155%_
                         (##unchecked-structure-ref _%e116157%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e116157%_ '3 '#f '#f)
                          _%marks116158%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e116161%_)
                                (eq? 'gx#identifier-wrap::t _%$e116161%_))
                            (##unchecked-structure-ref _%e116157%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e116161%_)
                                (_%lp116155%_
                                 (##unchecked-structure-ref
                                  _%e116157%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks116158%_)
                                _%e116157%_))))
                  (if (null? _%marks116158%_)
                      _%e116157%_
                      (if (pair? _%e116157%_)
                          (cons (gx#stx-wrap (car _%e116157%_) _%marks116158%_)
                                (gx#stx-wrap
                                 (cdr _%e116157%_)
                                 _%marks116158%_))
                          (if (vector? _%e116157%_)
                              (vector-map
                               (lambda (_%g116169116171%_)
                                 (gx#stx-wrap
                                  _%g116169116171%_
                                  _%marks116158%_))
                               _%e116157%_)
                              (if (box? _%e116157%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e116157%_)
                                        _%marks116158%_))
                                  _%e116157%_))))))
            (if (##structure-instance-of? _%stx116152%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116152%_ '1 '#f '#f)
                _%stx116152%_))))
    (define gx#syntax->datum
      (lambda (_%stx116145%_)
        (if (##structure-instance-of? _%stx116145%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx116145%_ '1 '#f '#f))
            (if (pair? _%stx116145%_)
                (cons (gx#syntax->datum (car _%stx116145%_))
                      (gx#syntax->datum (cdr _%stx116145%_)))
                (if (vector? _%stx116145%_)
                    (vector-map gx#syntax->datum _%stx116145%_)
                    (if (box? _%stx116145%_)
                        (box (gx#syntax->datum (unbox _%stx116145%_)))
                        _%stx116145%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx116079%_ _%datum116080%_ _%src116081%_ _%quote?116082%_)
        (letrec ((_%wrap-datum116084%_
                  (lambda (_%e116117%_ _%marks116118%_)
                    (_%wrap-inner116086%_
                     _%e116117%_
                     (lambda (_%g116119116121%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g116119116121%_
                        _%src116081%_
                        _%marks116118%_)))))
                 (_%wrap-quote116085%_
                  (lambda (_%e116109%_ _%ctx116110%_ _%marks116111%_)
                    (_%wrap-inner116086%_
                     _%e116109%_
                     (lambda (_%g116112116114%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g116112116114%_
                        _%src116081%_
                        _%ctx116110%_
                        _%marks116111%_)))))
                 (_%wrap-inner116086%_
                  (lambda (_%e116097%_ _%wrap-e116098%_)
                    (let _%recur116100%_ ((_%e116102%_ _%e116097%_))
                      (if (symbol? _%e116102%_)
                          (_%wrap-e116098%_ _%e116102%_)
                          (if (pair? _%e116102%_)
                              (cons (_%recur116100%_ (car _%e116102%_))
                                    (_%recur116100%_ (cdr _%e116102%_)))
                              (if (vector? _%e116102%_)
                                  (vector-map _%recur116100%_ _%e116102%_)
                                  (if (box? _%e116102%_)
                                      (box (_%recur116100%_
                                            (unbox _%e116102%_)))
                                      _%e116102%_)))))))
                 (_%wrap-outer116087%_
                  (lambda (_%e116095%_)
                    (if (##structure-instance-of? _%e116095%_ 'gerbil#AST::t)
                        _%e116095%_
                        (##structure gx#AST::t _%e116095%_ _%src116081%_)))))
          (if (##structure-instance-of? _%datum116080%_ 'gerbil#AST::t)
              _%datum116080%_
              (if (not _%stx116079%_)
                  (##structure gx#AST::t _%datum116080%_ _%src116081%_)
                  (if (gx#identifier? _%stx116079%_)
                      (let ((_%stx116092%_ (gx#stx-unwrap__0 _%stx116079%_)))
                        (_%wrap-outer116087%_
                         (if (##structure-direct-instance-of?
                              _%stx116092%_
                              'gx#syntax-quote::t)
                             (if _%quote?116082%_
                                 (_%wrap-quote116085%_
                                  _%datum116080%_
                                  (##unchecked-structure-ref
                                   _%stx116092%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx116092%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum116084%_
                                  _%datum116080%_
                                  (##unchecked-structure-ref
                                   _%stx116092%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum116084%_
                              _%datum116080%_
                              (##unchecked-structure-ref
                               _%stx116092%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx116079%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx116127%_ _%datum116128%_)
        (let* ((_%src116130%_ '#f) (_%quote?116132%_ '#t))
          (gx#datum->syntax__%
           _%stx116127%_
           _%datum116128%_
           _%src116130%_
           _%quote?116132%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx116134%_ _%datum116135%_ _%src116136%_)
        (let ((_%quote?116138%_ '#t))
          (gx#datum->syntax__%
           _%stx116134%_
           _%datum116135%_
           _%src116136%_
           _%quote?116138%_))))
    (define gx#datum->syntax
      (lambda _g116279_
        (let ((_g116278_ (##length _g116279_)))
          (cond ((##fx= _g116278_ 2) (apply gx#datum->syntax__0 _g116279_))
                ((##fx= _g116278_ 3) (apply gx#datum->syntax__1 _g116279_))
                ((##fx= _g116278_ 4) (apply gx#datum->syntax__% _g116279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g116279_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx116045%_ _%marks116046%_)
        (let _%lp116048%_ ((_%e116050%_ _%stx116045%_)
                           (_%marks116051%_ _%marks116046%_)
                           (_%src116052%_ (gx#stx-source _%stx116045%_)))
          (if (##structure-direct-instance-of? _%e116050%_ 'gx#syntax-wrap::t)
              (_%lp116048%_
               (##unchecked-structure-ref _%e116050%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e116050%_ '3 '#f '#f)
                _%marks116051%_)
               (##unchecked-structure-ref _%e116050%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e116050%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks116051%_)
                      _%e116050%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e116050%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e116050%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e116050%_ '3 '#f '#f)
                        _%marks116051%_)))
                  (if (##structure-direct-instance-of?
                       _%e116050%_
                       'gx#syntax-quote::t)
                      _%e116050%_
                      (if (##structure-instance-of? _%e116050%_ 'gerbil#AST::t)
                          (_%lp116048%_
                           (##unchecked-structure-ref _%e116050%_ '1 '#f '#f)
                           _%marks116051%_
                           (##unchecked-structure-ref _%e116050%_ '2 '#f '#f))
                          (if (symbol? _%e116050%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e116050%_
                               _%src116052%_
                               (reverse _%marks116051%_))
                              (if (null? _%marks116051%_)
                                  _%e116050%_
                                  (if (pair? _%e116050%_)
                                      (cons (gx#stx-wrap
                                             (car _%e116050%_)
                                             _%marks116051%_)
                                            (gx#stx-wrap
                                             (cdr _%e116050%_)
                                             _%marks116051%_))
                                      (if (vector? _%e116050%_)
                                          (vector-map
                                           (lambda (_%g116061116063%_)
                                             (gx#stx-wrap
                                              _%g116061116063%_
                                              _%marks116051%_))
                                           _%e116050%_)
                                          (if (box? _%e116050%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e116050%_)
                                                    _%marks116051%_))
                                              _%e116050%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx116071%_)
        (let ((_%marks116073%_ '()))
          (gx#stx-unwrap__% _%stx116071%_ _%marks116073%_))))
    (define gx#stx-unwrap
      (lambda _g116281_
        (let ((_g116280_ (##length _g116281_)))
          (cond ((##fx= _g116280_ 1) (apply gx#stx-unwrap__0 _g116281_))
                ((##fx= _g116280_ 2) (apply gx#stx-unwrap__% _g116281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g116281_))))))
    (define gx#stx-wrap
      (lambda (_%stx116038%_ _%marks116039%_)
        (__foldl1
         (lambda (_%mark116041%_ _%stx116042%_)
           (gx#stx-apply-mark _%stx116042%_ _%mark116041%_))
         _%stx116038%_
         _%marks116039%_)))
    (define gx#stx-rewrap
      (lambda (_%stx116032%_ _%marks116033%_)
        (__foldr1
         (lambda (_%mark116035%_ _%stx116036%_)
           (gx#stx-apply-mark _%stx116036%_ _%mark116035%_))
         _%stx116032%_
         _%marks116033%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx116026%_ _%mark116027%_)
        (if (##structure-direct-instance-of? _%stx116026%_ 'gx#syntax-quote::t)
            _%stx116026%_
            (if (and (##structure-direct-instance-of?
                      _%stx116026%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark116027%_
                          (##unchecked-structure-ref
                           _%stx116026%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx116026%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx116026%_
                 (gx#stx-source _%stx116026%_)
                 _%mark116027%_)))))
    (define gx#apply-mark
      (lambda (_%mark115990%_ _%marks115991%_)
        (let* ((_%marks115992116000%_ _%marks115991%_)
               (_%else115994116008%_
                (lambda () (cons _%mark115990%_ _%marks115991%_)))
               (_%K115996116014%_
                (lambda (_%rest116011%_ _%hd116012%_)
                  (if (eq? _%mark115990%_ _%hd116012%_)
                      _%rest116011%_
                      (cons _%mark115990%_ _%marks115991%_)))))
          (if (##pair? _%marks115992116000%_)
              (let ((_%hd115997116017%_ (##car _%marks115992116000%_))
                    (_%tl115998116019%_ (##cdr _%marks115992116000%_)))
                (let* ((_%hd116022%_ _%hd115997116017%_)
                       (_%rest116024%_ _%tl115998116019%_))
                  (_%K115996116014%_ _%rest116024%_ _%hd116022%_)))
              (_%else115994116008%_)))))
    (define gx#stx-e
      (lambda (_%stx115985%_)
        (if (##structure-direct-instance-of? _%stx115985%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx115985%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx115985%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx115985%_ '1 '#f '#f)
                _%stx115985%_))))
    (define gx#stx-source
      (lambda (_%stx115983%_)
        (if (##structure-instance-of? _%stx115983%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx115983%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx115977%_ _%src115978%_)
        (if (or (##structure-instance-of? _%stx115977%_ 'gerbil#AST::t)
                (not _%src115978%_))
            _%stx115977%_
            (##structure gx#AST::t _%stx115977%_ _%src115978%_))))
    (define gx#stx-datum?
      (lambda (_%stx115975%_) (gx#self-quoting? (gx#stx-e _%stx115975%_))))
    (define gx#self-quoting?
      (lambda (_%x115958%_)
        (let ((_%$e115960%_ (immediate? _%x115958%_)))
          (if _%$e115960%_
              _%$e115960%_
              (let ((_%$e115963%_ (number? _%x115958%_)))
                (if _%$e115963%_
                    _%$e115963%_
                    (let ((_%$e115966%_ (keyword? _%x115958%_)))
                      (if _%$e115966%_
                          _%$e115966%_
                          (let ((_%$e115969%_ (string? _%x115958%_)))
                            (if _%$e115969%_
                                _%$e115969%_
                                (let ((_%$e115972%_ (vector? _%x115958%_)))
                                  (if _%$e115972%_
                                      _%$e115972%_
                                      (u8vector? _%x115958%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e115956%_) (boolean? (gx#stx-e _%e115956%_))))
    (define gx#stx-keyword?
      (lambda (_%e115954%_) (keyword? (gx#stx-e _%e115954%_))))
    (define gx#stx-char? (lambda (_%e115952%_) (char? (gx#stx-e _%e115952%_))))
    (define gx#stx-number?
      (lambda (_%e115950%_) (number? (gx#stx-e _%e115950%_))))
    (define gx#stx-fixnum?
      (lambda (_%e115948%_) (fixnum? (gx#stx-e _%e115948%_))))
    (define gx#stx-string?
      (lambda (_%e115946%_) (string? (gx#stx-e _%e115946%_))))
    (define gx#stx-null? (lambda (_%e115944%_) (null? (gx#stx-e _%e115944%_))))
    (define gx#stx-pair? (lambda (_%e115942%_) (pair? (gx#stx-e _%e115942%_))))
    (define gx#stx-list?
      (lambda (_%e115904%_)
        (let* ((_%g115905115914%_ (gx#stx-e _%e115904%_))
               (_%E115908115918%_
                (lambda ()
                  (error '"No clause matching"
                         _%g115905115914%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K115910115934%_
                 (lambda (_%rest115932%_) (gx#stx-list? _%rest115932%_)))
                (_%K115909115924%_
                 (lambda (_%tail115922%_) (null? _%tail115922%_))))
            (if (##pair? _%g115905115914%_)
                (let* ((_%tl115912115937%_ (##cdr _%g115905115914%_))
                       (_%rest115940%_ _%tl115912115937%_))
                  (gx#stx-list? _%rest115940%_))
                (let ((_%tail115927%_ _%g115905115914%_))
                  (null? _%tail115927%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e115897%_)
        (let* ((_%e115899%_ (gx#stx-e _%e115897%_))
               (_%$e115901%_ (pair? _%e115899%_)))
          (if _%$e115901%_ _%$e115901%_ (null? _%e115899%_)))))
    (define gx#stx-vector?
      (lambda (_%e115895%_) (vector? (gx#stx-e _%e115895%_))))
    (define gx#stx-box? (lambda (_%e115893%_) (box? (gx#stx-e _%e115893%_))))
    (define gx#stx-eq?
      (lambda (_%x115890%_ _%y115891%_)
        (eq? (gx#stx-e _%x115890%_) (gx#stx-e _%y115891%_))))
    (define gx#stx-eqv?
      (lambda (_%x115887%_ _%y115888%_)
        (eqv? (gx#stx-e _%x115887%_) (gx#stx-e _%y115888%_))))
    (define gx#stx-equal?
      (lambda (_%x115884%_ _%y115885%_)
        (equal? (gx#stx-e _%x115884%_) (gx#stx-e _%y115885%_))))
    (define gx#stx-false? (lambda (_%x115882%_) (not (gx#stx-e _%x115882%_))))
    (define gx#stx-identifier
      (lambda (_%template115879%_ . _%args115880%_)
        (gx#datum->syntax__1
         _%template115879%_
         (apply make-symbol (gx#syntax->datum _%args115880%_))
         (gx#stx-source _%template115879%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx115877%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx115877%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx115872%_)
        (if (##structure-direct-instance-of?
             _%stx115872%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx115872%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx115872%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx115872%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx115872%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx115868%_)
        (let ((_%stx115870%_ (gx#stx-unwrap__0 _%stx115868%_)))
          (if (gx#identifier-quote? _%stx115870%_)
              (##unchecked-structure-ref _%stx115870%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx115823%_)
        (let* ((_%g115824115834%_ (gx#stx-e _%stx115823%_))
               (_%else115827115842%_ (lambda () '#f)))
          (let ((_%K115830115856%_
                 (lambda (_%rest115853%_ _%hd115854%_)
                   (if (gx#identifier? _%hd115854%_)
                       (gx#identifier-list? _%rest115853%_)
                       '#f)))
                (_%K115829115847%_ (lambda () '#t)))
            (let ((_%try-match115826115850%_
                   (lambda ()
                     (if (##null? _%g115824115834%_)
                         (_%K115829115847%_)
                         (_%else115827115842%_)))))
              (if (##pair? _%g115824115834%_)
                  (let ((_%tl115832115861%_ (##cdr _%g115824115834%_))
                        (_%hd115831115859%_ (##car _%g115824115834%_)))
                    (let ((_%hd115864%_ _%hd115831115859%_)
                          (_%rest115866%_ _%tl115832115861%_))
                      (_%K115830115856%_ _%rest115866%_ _%hd115864%_)))
                  (_%try-match115826115850%_)))))))
    (define gx#genident__%
      (lambda (_%e115800%_ _%src115801%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e115803%_ (gx#stx-e _%e115800%_)))
                   (if (interned-symbol? _%e115803%_) _%e115803%_ 'g)))
         (let ((_%$e115805%_ (gx#stx-source _%e115800%_)))
           (if _%$e115805%_ _%$e115805%_ _%src115801%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e115812%_ 'g) (_%src115814%_ '#f))
          (gx#genident__% _%e115812%_ _%src115814%_))))
    (define gx#genident__1
      (lambda (_%e115816%_)
        (let ((_%src115818%_ '#f))
          (gx#genident__% _%e115816%_ _%src115818%_))))
    (define gx#genident
      (lambda _g116283_
        (let ((_g116282_ (##length _g116283_)))
          (cond ((##fx= _g116282_ 0) (apply gx#genident__0 _g116283_))
                ((##fx= _g116282_ 1) (apply gx#genident__1 _g116283_))
                ((##fx= _g116282_ 2) (apply gx#genident__% _g116283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g116283_))))))
    (define gx#gentemps
      (lambda (_%stx-lst115797%_) (gx#stx-map1 gx#genident _%stx-lst115797%_)))
    (define gx#syntax->list
      (lambda (_%stx115795%_) (gx#stx-map1 values _%stx115795%_)))
    (define gx#stx-car
      (lambda (_%stx115792%_)
        (declare (safe))
        (car (gx#syntax-e _%stx115792%_))))
    (define gx#stx-cdr
      (lambda (_%stx115789%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx115789%_))))
    (define gx#stx-length
      (lambda (_%stx115754%_)
        (let _%lp115756%_ ((_%rest115758%_ _%stx115754%_) (_%n115759%_ '0))
          (let* ((_%g115760115768%_ (gx#stx-e _%rest115758%_))
                 (_%else115762115776%_ (lambda () _%n115759%_))
                 (_%K115764115781%_
                  (lambda (_%rest115779%_)
                    (_%lp115756%_ _%rest115779%_ (##fx+ _%n115759%_ '1)))))
            (if (##pair? _%g115760115768%_)
                (let* ((_%tl115766115784%_ (##cdr _%g115760115768%_))
                       (_%rest115787%_ _%tl115766115784%_))
                  (_%K115764115781%_ _%rest115787%_))
                (_%else115762115776%_))))))
    (define gx#stx-for-each
      (lambda _g116285_
        (let ((_g116284_ (##length _g116285_)))
          (cond ((##fx= _g116284_ 2) (apply gx#stx-for-each1 _g116285_))
                ((##fx= _g116284_ 3) (apply gx#stx-for-each2 _g116285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g116285_))))))
    (define gx#stx-for-each1
      (lambda (_%f115697%_ _%stx115698%_)
        (if (procedure? _%f115697%_)
            '#!void
            (error '"expected procedure" _%f115697%_))
        (let _%lp115700%_ ((_%rest115702%_ _%stx115698%_))
          (let* ((_%g115703115713%_ (gx#syntax-e _%rest115702%_))
                 (_%else115706115721%_
                  (lambda () (_%f115697%_ _%rest115702%_))))
            (let ((_%K115709115735%_
                   (lambda (_%rest115732%_ _%hd115733%_)
                     (_%f115697%_ _%hd115733%_)
                     (_%lp115700%_ _%rest115732%_)))
                  (_%K115708115726%_ (lambda () '#!void)))
              (let ((_%try-match115705115729%_
                     (lambda ()
                       (if (##null? _%g115703115713%_)
                           (_%K115708115726%_)
                           (_%else115706115721%_)))))
                (if (##pair? _%g115703115713%_)
                    (let ((_%tl115711115740%_ (##cdr _%g115703115713%_))
                          (_%hd115710115738%_ (##car _%g115703115713%_)))
                      (let ((_%hd115743%_ _%hd115710115738%_)
                            (_%rest115745%_ _%tl115711115740%_))
                        (_%K115709115735%_ _%rest115745%_ _%hd115743%_)))
                    (_%try-match115705115729%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f115602%_ _%xstx115603%_ _%ystx115604%_)
        (if (procedure? _%f115602%_)
            '#!void
            (error '"expected procedure" _%f115602%_))
        (let _%lp115606%_ ((_%xrest115608%_ _%xstx115603%_)
                           (_%yrest115609%_ _%ystx115604%_))
          (let* ((_%g115610115620%_ (gx#syntax-e _%xrest115608%_))
                 (_%else115613115628%_ (lambda () '#!void)))
            (let ((_%K115616115685%_
                   (lambda (_%xrest115654%_ _%xhd115655%_)
                     (let* ((_%g115656115663%_ (gx#syntax-e _%yrest115609%_))
                            (_%E115658115667%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g115656115663%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K115659115673%_
                             (lambda (_%yrest115670%_ _%yhd115671%_)
                               (_%f115602%_ _%xhd115655%_ _%yhd115671%_)
                               (_%lp115606%_
                                _%xrest115654%_
                                _%yrest115670%_))))
                       (if (##pair? _%g115656115663%_)
                           (let ((_%hd115660115676%_ (##car _%g115656115663%_))
                                 (_%tl115661115678%_
                                  (##cdr _%g115656115663%_)))
                             (let* ((_%yhd115681%_ _%hd115660115676%_)
                                    (_%yrest115683%_ _%tl115661115678%_))
                               (_%K115659115673%_
                                _%yrest115683%_
                                _%yhd115681%_)))
                           (_%E115658115667%_)))))
                  (_%K115615115648%_
                   (lambda ()
                     (let* ((_%yrest115632115637%_ _%yrest115609%_)
                            (_%E115634115641%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115632115637%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115635115645%_
                             (lambda ()
                               (_%f115602%_ _%xrest115608%_ _%yrest115609%_))))
                       (if (not (gx#stx-null? _%yrest115632115637%_))
                           (_%K115635115645%_)
                           (_%E115634115641%_))))))
              (let ((_%try-match115612115651%_
                     (lambda ()
                       (if (not (null? _%g115610115620%_))
                           (_%K115615115648%_)
                           (_%else115613115628%_)))))
                (if (##pair? _%g115610115620%_)
                    (let ((_%tl115618115690%_ (##cdr _%g115610115620%_))
                          (_%hd115617115688%_ (##car _%g115610115620%_)))
                      (let ((_%xhd115693%_ _%hd115617115688%_)
                            (_%xrest115695%_ _%tl115618115690%_))
                        (_%K115616115685%_ _%xrest115695%_ _%xhd115693%_)))
                    (_%try-match115612115651%_))))))))
    (define gx#stx-map
      (lambda _g116287_
        (let ((_g116286_ (##length _g116287_)))
          (cond ((##fx= _g116286_ 2) (apply gx#stx-map1 _g116287_))
                ((##fx= _g116286_ 3) (apply gx#stx-map2 _g116287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g116287_))))))
    (define gx#stx-map1
      (lambda (_%f115545%_ _%stx115546%_)
        (if (procedure? _%f115545%_)
            '#!void
            (error '"expected procedure" _%f115545%_))
        (let _%recur115548%_ ((_%rest115550%_ _%stx115546%_))
          (let* ((_%g115551115561%_ (gx#syntax-e _%rest115550%_))
                 (_%else115554115569%_
                  (lambda () (_%f115545%_ _%rest115550%_))))
            (let ((_%K115557115583%_
                   (lambda (_%rest115580%_ _%hd115581%_)
                     (cons (_%f115545%_ _%hd115581%_)
                           (_%recur115548%_ _%rest115580%_))))
                  (_%K115556115574%_ (lambda () '())))
              (let ((_%try-match115553115577%_
                     (lambda ()
                       (if (##null? _%g115551115561%_)
                           (_%K115556115574%_)
                           (_%else115554115569%_)))))
                (if (##pair? _%g115551115561%_)
                    (let ((_%tl115559115588%_ (##cdr _%g115551115561%_))
                          (_%hd115558115586%_ (##car _%g115551115561%_)))
                      (let ((_%hd115591%_ _%hd115558115586%_)
                            (_%rest115593%_ _%tl115559115588%_))
                        (_%K115557115583%_ _%rest115593%_ _%hd115591%_)))
                    (_%try-match115553115577%_))))))))
    (define gx#stx-map2
      (lambda (_%f115450%_ _%xstx115451%_ _%ystx115452%_)
        (if (procedure? _%f115450%_)
            '#!void
            (error '"expected procedure" _%f115450%_))
        (let _%recur115454%_ ((_%xrest115456%_ _%xstx115451%_)
                              (_%yrest115457%_ _%ystx115452%_))
          (let* ((_%g115458115468%_ (gx#syntax-e _%xrest115456%_))
                 (_%else115461115476%_ (lambda () '())))
            (let ((_%K115464115533%_
                   (lambda (_%xrest115502%_ _%xhd115503%_)
                     (let* ((_%g115504115511%_ (gx#syntax-e _%yrest115457%_))
                            (_%E115506115515%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g115504115511%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K115507115521%_
                             (lambda (_%yrest115518%_ _%yhd115519%_)
                               (cons (_%f115450%_ _%xhd115503%_ _%yhd115519%_)
                                     (_%recur115454%_
                                      _%xrest115502%_
                                      _%yrest115518%_)))))
                       (if (##pair? _%g115504115511%_)
                           (let ((_%hd115508115524%_ (##car _%g115504115511%_))
                                 (_%tl115509115526%_
                                  (##cdr _%g115504115511%_)))
                             (let* ((_%yhd115529%_ _%hd115508115524%_)
                                    (_%yrest115531%_ _%tl115509115526%_))
                               (_%K115507115521%_
                                _%yrest115531%_
                                _%yhd115529%_)))
                           (_%E115506115515%_)))))
                  (_%K115463115496%_
                   (lambda ()
                     (let* ((_%yrest115480115485%_ _%yrest115457%_)
                            (_%E115482115489%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115480115485%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115483115493%_
                             (lambda ()
                               (_%f115450%_ _%xrest115456%_ _%yrest115457%_))))
                       (if (not (gx#stx-null? _%yrest115480115485%_))
                           (_%K115483115493%_)
                           (_%E115482115489%_))))))
              (let ((_%try-match115460115499%_
                     (lambda ()
                       (if (not (null? _%g115458115468%_))
                           (_%K115463115496%_)
                           (_%else115461115476%_)))))
                (if (##pair? _%g115458115468%_)
                    (let ((_%tl115466115538%_ (##cdr _%g115458115468%_))
                          (_%hd115465115536%_ (##car _%g115458115468%_)))
                      (let ((_%xhd115541%_ _%hd115465115536%_)
                            (_%xrest115543%_ _%tl115466115538%_))
                        (_%K115464115533%_ _%xrest115543%_ _%xhd115541%_)))
                    (_%try-match115460115499%_))))))))
    (define gx#stx-andmap
      (lambda (_%f115400%_ _%stx115401%_)
        (if (procedure? _%f115400%_)
            '#!void
            (error '"expected procedure" _%f115400%_))
        (let _%lp115403%_ ((_%rest115405%_ _%stx115401%_))
          (let* ((_%g115406115416%_ (gx#syntax-e _%rest115405%_))
                 (_%else115409115424%_
                  (lambda () (_%f115400%_ _%rest115405%_))))
            (let ((_%K115412115438%_
                   (lambda (_%rest115435%_ _%hd115436%_)
                     (if (_%f115400%_ _%hd115436%_)
                         (_%lp115403%_ _%rest115435%_)
                         '#f)))
                  (_%K115411115429%_ (lambda () '#t)))
              (let ((_%try-match115408115432%_
                     (lambda ()
                       (if (##null? _%g115406115416%_)
                           (_%K115411115429%_)
                           (_%else115409115424%_)))))
                (if (##pair? _%g115406115416%_)
                    (let ((_%tl115414115443%_ (##cdr _%g115406115416%_))
                          (_%hd115413115441%_ (##car _%g115406115416%_)))
                      (let ((_%hd115446%_ _%hd115413115441%_)
                            (_%rest115448%_ _%tl115414115443%_))
                        (_%K115412115438%_ _%rest115448%_ _%hd115446%_)))
                    (_%try-match115408115432%_))))))))
    (define gx#stx-ormap
      (lambda (_%f115347%_ _%stx115348%_)
        (if (procedure? _%f115347%_)
            '#!void
            (error '"expected procedure" _%f115347%_))
        (let _%lp115350%_ ((_%rest115352%_ _%stx115348%_))
          (let* ((_%g115353115363%_ (gx#syntax-e _%rest115352%_))
                 (_%else115356115371%_
                  (lambda () (_%f115347%_ _%rest115352%_))))
            (let ((_%K115359115388%_
                   (lambda (_%rest115382%_ _%hd115383%_)
                     (let ((_%$e115385%_ (_%f115347%_ _%hd115383%_)))
                       (if _%$e115385%_
                           _%$e115385%_
                           (_%lp115350%_ _%rest115382%_)))))
                  (_%K115358115376%_ (lambda () '#f)))
              (let ((_%try-match115355115379%_
                     (lambda ()
                       (if (##null? _%g115353115363%_)
                           (_%K115358115376%_)
                           (_%else115356115371%_)))))
                (if (##pair? _%g115353115363%_)
                    (let ((_%tl115361115393%_ (##cdr _%g115353115363%_))
                          (_%hd115360115391%_ (##car _%g115353115363%_)))
                      (let ((_%hd115396%_ _%hd115360115391%_)
                            (_%rest115398%_ _%tl115361115393%_))
                        (_%K115359115388%_ _%rest115398%_ _%hd115396%_)))
                    (_%try-match115355115379%_))))))))
    (define gx#stx-foldl
      (lambda (_%f115295%_ _%iv115296%_ _%stx115297%_)
        (if (procedure? _%f115295%_)
            '#!void
            (error '"expected procedure" _%f115295%_))
        (let _%lp115299%_ ((_%r115301%_ _%iv115296%_)
                           (_%rest115302%_ _%stx115297%_))
          (let* ((_%g115303115313%_ (gx#syntax-e _%rest115302%_))
                 (_%else115306115321%_
                  (lambda () (_%f115295%_ _%rest115302%_ _%r115301%_))))
            (let ((_%K115309115335%_
                   (lambda (_%rest115332%_ _%hd115333%_)
                     (_%lp115299%_
                      (_%f115295%_ _%hd115333%_ _%r115301%_)
                      _%rest115332%_)))
                  (_%K115308115326%_ (lambda () _%r115301%_)))
              (let ((_%try-match115305115329%_
                     (lambda ()
                       (if (##null? _%g115303115313%_)
                           (_%K115308115326%_)
                           (_%else115306115321%_)))))
                (if (##pair? _%g115303115313%_)
                    (let ((_%tl115311115340%_ (##cdr _%g115303115313%_))
                          (_%hd115310115338%_ (##car _%g115303115313%_)))
                      (let ((_%hd115343%_ _%hd115310115338%_)
                            (_%rest115345%_ _%tl115311115340%_))
                        (_%K115309115335%_ _%rest115345%_ _%hd115343%_)))
                    (_%try-match115305115329%_))))))))
    (define gx#stx-foldr
      (lambda (_%f115244%_ _%iv115245%_ _%stx115246%_)
        (if (procedure? _%f115244%_)
            '#!void
            (error '"expected procedure" _%f115244%_))
        (let _%recur115248%_ ((_%rest115250%_ _%stx115246%_))
          (let* ((_%g115251115261%_ (gx#syntax-e _%rest115250%_))
                 (_%else115254115269%_
                  (lambda () (_%f115244%_ _%rest115250%_ _%iv115245%_))))
            (let ((_%K115257115283%_
                   (lambda (_%rest115280%_ _%hd115281%_)
                     (_%f115244%_
                      _%hd115281%_
                      (_%recur115248%_ _%rest115280%_))))
                  (_%K115256115274%_ (lambda () _%iv115245%_)))
              (let ((_%try-match115253115277%_
                     (lambda ()
                       (if (##null? _%g115251115261%_)
                           (_%K115256115274%_)
                           (_%else115254115269%_)))))
                (if (##pair? _%g115251115261%_)
                    (let ((_%tl115259115288%_ (##cdr _%g115251115261%_))
                          (_%hd115258115286%_ (##car _%g115251115261%_)))
                      (let ((_%hd115291%_ _%hd115258115286%_)
                            (_%rest115293%_ _%tl115259115288%_))
                        (_%K115257115283%_ _%rest115293%_ _%hd115291%_)))
                    (_%try-match115253115277%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx115242%_) (gx#stx-foldl cons '() _%stx115242%_)))
    (define gx#stx-last
      (lambda (_%stx115203%_)
        (let _%lp115205%_ ((_%rest115207%_ _%stx115203%_))
          (let* ((_%g115208115216%_ (gx#syntax-e _%rest115207%_))
                 (_%else115210115224%_ (lambda () _%rest115207%_))
                 (_%K115212115230%_
                  (lambda (_%rest115227%_ _%hd115228%_)
                    (if (gx#stx-null? _%rest115227%_)
                        _%hd115228%_
                        (_%lp115205%_ _%rest115227%_)))))
            (if (##pair? _%g115208115216%_)
                (let ((_%hd115213115233%_ (##car _%g115208115216%_))
                      (_%tl115214115235%_ (##cdr _%g115208115216%_)))
                  (let* ((_%hd115238%_ _%hd115213115233%_)
                         (_%rest115240%_ _%tl115214115235%_))
                    (_%K115212115230%_ _%rest115240%_ _%hd115238%_)))
                (_%else115210115224%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx115174%_)
        (let _%lp115176%_ ((_%hd115178%_ _%stx115174%_))
          (let* ((_%g115179115186%_ (gx#syntax-e _%hd115178%_))
                 (_%E115181115190%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g115179115186%_
                           '([_ . rest]))
                    '#!void))
                 (_%K115182115195%_
                  (lambda (_%rest115193%_)
                    (if (gx#stx-pair? _%rest115193%_)
                        (_%lp115176%_ _%rest115193%_)
                        _%hd115178%_))))
            (if (##pair? _%g115179115186%_)
                (let* ((_%tl115184115198%_ (##cdr _%g115179115186%_))
                       (_%rest115201%_ _%tl115184115198%_))
                  (_%K115182115195%_ _%rest115201%_))
                (_%E115181115190%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx115143%_ _%k115144%_)
        (let _%lp115146%_ ((_%rest115148%_ _%stx115143%_)
                           (_%k115149%_ _%k115144%_))
          (if (fxpositive? _%k115149%_)
              (let* ((_%g115150115157%_ (gx#syntax-e _%rest115148%_))
                     (_%E115152115161%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g115150115157%_
                               '([_ . rest]))
                        '#!void))
                     (_%K115153115166%_
                      (lambda (_%rest115164%_)
                        (_%lp115146%_ _%rest115164%_ (##fx- _%k115149%_ '1)))))
                (if (##pair? _%g115150115157%_)
                    (let* ((_%tl115155115169%_ (##cdr _%g115150115157%_))
                           (_%rest115172%_ _%tl115155115169%_))
                      (_%K115153115166%_ _%rest115172%_))
                    (_%E115152115161%_)))
              _%rest115148%_))))
    (define gx#stx-list-ref
      (lambda (_%stx115140%_ _%k115141%_)
        (gx#stx-car (gx#stx-list-tail _%stx115140%_ _%k115141%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx115052%_ _%key?115053%_)
        (if (procedure? _%key?115053%_)
            '#!void
            (error '"expected procedure" _%key?115053%_))
        (let _%lp115055%_ ((_%rest115057%_ _%stx115052%_))
          (let* ((_%g115058115068%_ (gx#stx-e _%rest115057%_))
                 (_%else115061115076%_ (lambda () '#f)))
            (let ((_%K115064115118%_
                   (lambda (_%rest115087%_ _%hd115088%_)
                     (if (_%key?115053%_ _%hd115088%_)
                         (let* ((_%g115089115097%_ (gx#stx-e _%rest115087%_))
                                (_%else115091115105%_ (lambda () '#f))
                                (_%K115093115110%_
                                 (lambda (_%rest115108%_)
                                   (_%lp115055%_ _%rest115108%_))))
                           (if (##pair? _%g115089115097%_)
                               (let* ((_%tl115095115113%_
                                       (##cdr _%g115089115097%_))
                                      (_%rest115116%_ _%tl115095115113%_))
                                 (_%lp115055%_ _%rest115116%_))
                               (_%else115091115105%_)))
                         '#f)))
                  (_%K115063115081%_ (lambda () '#t)))
              (let ((_%try-match115060115084%_
                     (lambda ()
                       (if (##null? _%g115058115068%_)
                           (_%K115063115081%_)
                           (_%else115061115076%_)))))
                (if (##pair? _%g115058115068%_)
                    (let ((_%tl115066115123%_ (##cdr _%g115058115068%_))
                          (_%hd115065115121%_ (##car _%g115058115068%_)))
                      (let ((_%hd115126%_ _%hd115065115121%_)
                            (_%rest115128%_ _%tl115066115123%_))
                        (_%K115064115118%_ _%rest115128%_ _%hd115126%_)))
                    (_%try-match115060115084%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx115133%_)
        (let ((_%key?115135%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx115133%_ _%key?115135%_))))
    (define gx#stx-plist?
      (lambda _g116289_
        (let ((_g116288_ (##length _g116289_)))
          (cond ((##fx= _g116288_ 1) (apply gx#stx-plist?__0 _g116289_))
                ((##fx= _g116288_ 2) (apply gx#stx-plist?__% _g116289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g116289_))))))
    (define gx#stx-getq__%
      (lambda (_%key114970%_ _%stx114971%_ _%key=?114972%_)
        (if (procedure? _%key=?114972%_)
            '#!void
            (error '"expected procedure" _%key=?114972%_))
        (let _%lp114974%_ ((_%rest114976%_ _%stx114971%_))
          (let* ((_%g114977114985%_ (gx#syntax-e _%rest114976%_))
                 (_%else114979114993%_ (lambda () '#f))
                 (_%K114981115027%_
                  (lambda (_%rest114996%_ _%hd114997%_)
                    (let* ((_%g114998115005%_ (gx#syntax-e _%rest114996%_))
                           (_%E115000115009%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g114998115005%_
                                     '([val . rest]))
                              '#!void))
                           (_%K115001115015%_
                            (lambda (_%rest115012%_ _%val115013%_)
                              (if (_%key=?114972%_ _%hd114997%_ _%key114970%_)
                                  _%val115013%_
                                  (_%lp114974%_ _%rest115012%_)))))
                      (if (##pair? _%g114998115005%_)
                          (let ((_%hd115002115018%_ (##car _%g114998115005%_))
                                (_%tl115003115020%_ (##cdr _%g114998115005%_)))
                            (let* ((_%val115023%_ _%hd115002115018%_)
                                   (_%rest115025%_ _%tl115003115020%_))
                              (_%K115001115015%_
                               _%rest115025%_
                               _%val115023%_)))
                          (_%E115000115009%_))))))
            (if (##pair? _%g114977114985%_)
                (let ((_%hd114982115030%_ (##car _%g114977114985%_))
                      (_%tl114983115032%_ (##cdr _%g114977114985%_)))
                  (let* ((_%hd115035%_ _%hd114982115030%_)
                         (_%rest115037%_ _%tl114983115032%_))
                    (_%K114981115027%_ _%rest115037%_ _%hd115035%_)))
                (_%else114979114993%_))))))
    (define gx#stx-getq__0
      (lambda (_%key115042%_ _%stx115043%_)
        (let ((_%key=?115045%_ gx#stx-eq?))
          (gx#stx-getq__% _%key115042%_ _%stx115043%_ _%key=?115045%_))))
    (define gx#stx-getq
      (lambda _g116291_
        (let ((_g116290_ (##length _g116291_)))
          (cond ((##fx= _g116290_ 2) (apply gx#stx-getq__0 _g116291_))
                ((##fx= _g116290_ 3) (apply gx#stx-getq__% _g116291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g116291_))))))))
