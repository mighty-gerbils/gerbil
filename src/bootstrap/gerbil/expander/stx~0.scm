(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1779289639)
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
      (lambda _%$args175063%_
        (apply make-instance gx#identifier-wrap::t _%$args175063%_)))
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
      (lambda _%$args175060%_
        (apply make-instance gx#syntax-wrap::t _%$args175060%_)))
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
      (lambda _%$args175057%_
        (apply make-instance gx#syntax-quote::t _%$args175057%_)))
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
      (lambda (_%stx175055%_) (symbol? (gx#stx-e _%stx175055%_))))
    (define gx#identifier-quote?
      (lambda (_%stx175053%_)
        (if (##structure-direct-instance-of? _%stx175053%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx175053%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx175048%_)
        (if (##structure-direct-instance-of? _%stx175048%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx175048%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx175048%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx175043%_)
        (if (##structure-direct-instance-of? _%stx175043%_ 'gx#syntax-quote::t)
            _%stx175043%_
            (if (##structure-direct-instance-of?
                 _%stx175043%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx175043%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx175017%_)
        (if (##structure-direct-instance-of? _%stx175017%_ 'gx#syntax-wrap::t)
            (let _%lp175020%_ ((_%e175022%_
                                (##unchecked-structure-ref
                                 _%stx175017%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks175023%_
                                (cons (##unchecked-structure-ref
                                       _%stx175017%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e175022%_)
                  (let ((_%$e175026%_
                         (##type-id (##structure-type _%e175022%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e175026%_)
                        (_%lp175020%_
                         (##unchecked-structure-ref _%e175022%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e175022%_ '3 '#f '#f)
                          _%marks175023%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e175026%_)
                                (eq? 'gx#identifier-wrap::t _%$e175026%_))
                            (##unchecked-structure-ref _%e175022%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e175026%_)
                                (_%lp175020%_
                                 (##unchecked-structure-ref
                                  _%e175022%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks175023%_)
                                _%e175022%_))))
                  (if (null? _%marks175023%_)
                      _%e175022%_
                      (if (pair? _%e175022%_)
                          (cons (gx#stx-wrap
                                 (##car _%e175022%_)
                                 _%marks175023%_)
                                (gx#stx-wrap
                                 (##cdr _%e175022%_)
                                 _%marks175023%_))
                          (if (vector? _%e175022%_)
                              (vector-map
                               (lambda (_%g175034175036%_)
                                 (gx#stx-wrap
                                  _%g175034175036%_
                                  _%marks175023%_))
                               _%e175022%_)
                              (if (box? _%e175022%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e175022%_)
                                        _%marks175023%_))
                                  _%e175022%_))))))
            (if (##structure-instance-of? _%stx175017%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx175017%_ '1 '#f '#f)
                _%stx175017%_))))
    (define gx#syntax->datum
      (lambda (_%stx175010%_)
        (if (##structure-instance-of? _%stx175010%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx175010%_ '1 '#f '#f))
            (if (pair? _%stx175010%_)
                (cons (gx#syntax->datum (##car _%stx175010%_))
                      (gx#syntax->datum (##cdr _%stx175010%_)))
                (if (vector? _%stx175010%_)
                    (vector-map gx#syntax->datum _%stx175010%_)
                    (if (box? _%stx175010%_)
                        (box (gx#syntax->datum (unbox _%stx175010%_)))
                        _%stx175010%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx174944%_ _%datum174945%_ _%src174946%_ _%quote?174947%_)
        (letrec ((_%wrap-datum174949%_
                  (lambda (_%e174982%_ _%marks174983%_)
                    (_%wrap-inner174951%_
                     _%e174982%_
                     (lambda (_%g174984174986%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g174984174986%_
                        _%src174946%_
                        _%marks174983%_)))))
                 (_%wrap-quote174950%_
                  (lambda (_%e174974%_ _%ctx174975%_ _%marks174976%_)
                    (_%wrap-inner174951%_
                     _%e174974%_
                     (lambda (_%g174977174979%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g174977174979%_
                        _%src174946%_
                        _%ctx174975%_
                        _%marks174976%_)))))
                 (_%wrap-inner174951%_
                  (lambda (_%e174962%_ _%wrap-e174963%_)
                    (let _%recur174965%_ ((_%e174967%_ _%e174962%_))
                      (if (symbol? _%e174967%_)
                          (_%wrap-e174963%_ _%e174967%_)
                          (if (pair? _%e174967%_)
                              (cons (_%recur174965%_ (##car _%e174967%_))
                                    (_%recur174965%_ (##cdr _%e174967%_)))
                              (if (vector? _%e174967%_)
                                  (vector-map _%recur174965%_ _%e174967%_)
                                  (if (box? _%e174967%_)
                                      (box (_%recur174965%_
                                            (unbox _%e174967%_)))
                                      _%e174967%_)))))))
                 (_%wrap-outer174952%_
                  (lambda (_%e174960%_)
                    (if (##structure-instance-of? _%e174960%_ 'gerbil#AST::t)
                        _%e174960%_
                        (##structure gx#AST::t _%e174960%_ _%src174946%_)))))
          (if (##structure-instance-of? _%datum174945%_ 'gerbil#AST::t)
              _%datum174945%_
              (if (not _%stx174944%_)
                  (##structure gx#AST::t _%datum174945%_ _%src174946%_)
                  (if (gx#identifier? _%stx174944%_)
                      (let ((_%stx174957%_ (gx#stx-unwrap__0 _%stx174944%_)))
                        (_%wrap-outer174952%_
                         (if (##structure-direct-instance-of?
                              _%stx174957%_
                              'gx#syntax-quote::t)
                             (if _%quote?174947%_
                                 (_%wrap-quote174950%_
                                  _%datum174945%_
                                  (##unchecked-structure-ref
                                   _%stx174957%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx174957%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum174949%_
                                  _%datum174945%_
                                  (##unchecked-structure-ref
                                   _%stx174957%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum174949%_
                              _%datum174945%_
                              (##unchecked-structure-ref
                               _%stx174957%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx174944%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx174992%_ _%datum174993%_)
        (let* ((_%src174995%_ '#f) (_%quote?174997%_ '#t))
          (gx#datum->syntax__%
           _%stx174992%_
           _%datum174993%_
           _%src174995%_
           _%quote?174997%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx174999%_ _%datum175000%_ _%src175001%_)
        (let ((_%quote?175003%_ '#t))
          (gx#datum->syntax__%
           _%stx174999%_
           _%datum175000%_
           _%src175001%_
           _%quote?175003%_))))
    (define gx#datum->syntax
      (lambda _g175143_
        (let ((_g175144_ (##length _g175143_)))
          (cond ((##fx= _g175144_ 2) (apply gx#datum->syntax__0 _g175143_))
                ((##fx= _g175144_ 3) (apply gx#datum->syntax__1 _g175143_))
                ((##fx= _g175144_ 4) (apply gx#datum->syntax__% _g175143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g175143_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx174910%_ _%marks174911%_)
        (let _%lp174913%_ ((_%e174915%_ _%stx174910%_)
                           (_%marks174916%_ _%marks174911%_)
                           (_%src174917%_ (gx#stx-source _%stx174910%_)))
          (if (##structure-direct-instance-of? _%e174915%_ 'gx#syntax-wrap::t)
              (_%lp174913%_
               (##unchecked-structure-ref _%e174915%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e174915%_ '3 '#f '#f)
                _%marks174916%_)
               (##unchecked-structure-ref _%e174915%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e174915%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks174916%_)
                      _%e174915%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e174915%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e174915%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e174915%_ '3 '#f '#f)
                        _%marks174916%_)))
                  (if (##structure-direct-instance-of?
                       _%e174915%_
                       'gx#syntax-quote::t)
                      _%e174915%_
                      (if (##structure-instance-of? _%e174915%_ 'gerbil#AST::t)
                          (_%lp174913%_
                           (##unchecked-structure-ref _%e174915%_ '1 '#f '#f)
                           _%marks174916%_
                           (##unchecked-structure-ref _%e174915%_ '2 '#f '#f))
                          (if (symbol? _%e174915%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e174915%_
                               _%src174917%_
                               (reverse _%marks174916%_))
                              (if (null? _%marks174916%_)
                                  _%e174915%_
                                  (if (pair? _%e174915%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e174915%_)
                                             _%marks174916%_)
                                            (gx#stx-wrap
                                             (##cdr _%e174915%_)
                                             _%marks174916%_))
                                      (if (vector? _%e174915%_)
                                          (vector-map
                                           (lambda (_%g174926174928%_)
                                             (gx#stx-wrap
                                              _%g174926174928%_
                                              _%marks174916%_))
                                           _%e174915%_)
                                          (if (box? _%e174915%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e174915%_)
                                                    _%marks174916%_))
                                              _%e174915%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx174936%_)
        (let ((_%marks174938%_ '()))
          (gx#stx-unwrap__% _%stx174936%_ _%marks174938%_))))
    (define gx#stx-unwrap
      (lambda _g175145_
        (let ((_g175146_ (##length _g175145_)))
          (cond ((##fx= _g175146_ 1) (apply gx#stx-unwrap__0 _g175145_))
                ((##fx= _g175146_ 2) (apply gx#stx-unwrap__% _g175145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g175145_))))))
    (define gx#stx-wrap
      (lambda (_%stx174903%_ _%marks174904%_)
        (foldl__0
         (lambda (_%mark174906%_ _%stx174907%_)
           (gx#stx-apply-mark _%stx174907%_ _%mark174906%_))
         _%stx174903%_
         _%marks174904%_)))
    (define gx#stx-rewrap
      (lambda (_%stx174897%_ _%marks174898%_)
        (foldr__0
         (lambda (_%mark174900%_ _%stx174901%_)
           (gx#stx-apply-mark _%stx174901%_ _%mark174900%_))
         _%stx174897%_
         _%marks174898%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx174891%_ _%mark174892%_)
        (if (##structure-direct-instance-of? _%stx174891%_ 'gx#syntax-quote::t)
            _%stx174891%_
            (if (and (##structure-direct-instance-of?
                      _%stx174891%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark174892%_
                          (##unchecked-structure-ref
                           _%stx174891%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx174891%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx174891%_
                 (gx#stx-source _%stx174891%_)
                 _%mark174892%_)))))
    (define gx#apply-mark
      (lambda (_%mark174855%_ _%marks174856%_)
        (let* ((_%marks174857174865%_ _%marks174856%_)
               (_%else174859174873%_
                (lambda () (cons _%mark174855%_ _%marks174856%_)))
               (_%K174861174879%_
                (lambda (_%rest174876%_ _%hd174877%_)
                  (if (eq? _%mark174855%_ _%hd174877%_)
                      _%rest174876%_
                      (cons _%mark174855%_ _%marks174856%_)))))
          (if (pair? _%marks174857174865%_)
              (let ((_%hd174862174882%_ (##car _%marks174857174865%_))
                    (_%tl174863174884%_ (##cdr _%marks174857174865%_)))
                (let* ((_%hd174887%_ _%hd174862174882%_)
                       (_%rest174889%_ _%tl174863174884%_))
                  (_%K174861174879%_ _%rest174889%_ _%hd174887%_)))
              (_%else174859174873%_)))))
    (define gx#stx-e
      (lambda (_%stx174850%_)
        (if (##structure-direct-instance-of? _%stx174850%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx174850%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx174850%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx174850%_ '1 '#f '#f)
                _%stx174850%_))))
    (define gx#stx-source
      (lambda (_%stx174848%_)
        (if (##structure-instance-of? _%stx174848%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx174848%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx174842%_ _%src174843%_)
        (if (or (##structure-instance-of? _%stx174842%_ 'gerbil#AST::t)
                (not _%src174843%_))
            _%stx174842%_
            (##structure gx#AST::t _%stx174842%_ _%src174843%_))))
    (define gx#stx-datum?
      (lambda (_%stx174840%_) (gx#self-quoting? (gx#stx-e _%stx174840%_))))
    (define gx#self-quoting?
      (lambda (_%x174823%_)
        (let ((_%$e174825%_ (immediate? _%x174823%_)))
          (if _%$e174825%_
              _%$e174825%_
              (let ((_%$e174828%_ (number? _%x174823%_)))
                (if _%$e174828%_
                    _%$e174828%_
                    (let ((_%$e174831%_ (keyword? _%x174823%_)))
                      (if _%$e174831%_
                          _%$e174831%_
                          (let ((_%$e174834%_ (string? _%x174823%_)))
                            (if _%$e174834%_
                                _%$e174834%_
                                (let ((_%$e174837%_ (vector? _%x174823%_)))
                                  (if _%$e174837%_
                                      _%$e174837%_
                                      (u8vector? _%x174823%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e174821%_) (boolean? (gx#stx-e _%e174821%_))))
    (define gx#stx-keyword?
      (lambda (_%e174819%_) (keyword? (gx#stx-e _%e174819%_))))
    (define gx#stx-char? (lambda (_%e174817%_) (char? (gx#stx-e _%e174817%_))))
    (define gx#stx-number?
      (lambda (_%e174815%_) (number? (gx#stx-e _%e174815%_))))
    (define gx#stx-fixnum?
      (lambda (_%e174813%_) (fixnum? (gx#stx-e _%e174813%_))))
    (define gx#stx-string?
      (lambda (_%e174811%_) (string? (gx#stx-e _%e174811%_))))
    (define gx#stx-null? (lambda (_%e174809%_) (null? (gx#stx-e _%e174809%_))))
    (define gx#stx-pair? (lambda (_%e174807%_) (pair? (gx#stx-e _%e174807%_))))
    (define gx#stx-list?
      (lambda (_%e174769%_)
        (let* ((_%g174770174779%_ (gx#stx-e _%e174769%_))
               (_%E174773174783%_
                (lambda ()
                  (error '"No clause matching"
                         _%g174770174779%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K174775174799%_
                 (lambda (_%rest174797%_) (gx#stx-list? _%rest174797%_)))
                (_%K174774174789%_
                 (lambda (_%tail174787%_) (null? _%tail174787%_))))
            (if (pair? _%g174770174779%_)
                (let* ((_%tl174777174802%_ (##cdr _%g174770174779%_))
                       (_%rest174805%_ _%tl174777174802%_))
                  (gx#stx-list? _%rest174805%_))
                (let ((_%tail174792%_ _%g174770174779%_))
                  (null? _%tail174792%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e174762%_)
        (let* ((_%e174764%_ (gx#stx-e _%e174762%_))
               (_%$e174766%_ (pair? _%e174764%_)))
          (if _%$e174766%_ _%$e174766%_ (null? _%e174764%_)))))
    (define gx#stx-vector?
      (lambda (_%e174760%_) (vector? (gx#stx-e _%e174760%_))))
    (define gx#stx-box? (lambda (_%e174758%_) (box? (gx#stx-e _%e174758%_))))
    (define gx#stx-eq?
      (lambda (_%x174755%_ _%y174756%_)
        (eq? (gx#stx-e _%x174755%_) (gx#stx-e _%y174756%_))))
    (define gx#stx-eqv?
      (lambda (_%x174752%_ _%y174753%_)
        (eqv? (gx#stx-e _%x174752%_) (gx#stx-e _%y174753%_))))
    (define gx#stx-equal?
      (lambda (_%x174749%_ _%y174750%_)
        (equal? (gx#stx-e _%x174749%_) (gx#stx-e _%y174750%_))))
    (define gx#stx-false? (lambda (_%x174747%_) (not (gx#stx-e _%x174747%_))))
    (define gx#stx-identifier
      (lambda (_%template174744%_ . _%args174745%_)
        (gx#datum->syntax__1
         _%template174744%_
         (apply make-symbol (gx#syntax->datum _%args174745%_))
         (gx#stx-source _%template174744%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx174742%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx174742%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx174737%_)
        (if (##structure-direct-instance-of?
             _%stx174737%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx174737%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx174737%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx174737%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx174737%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx174733%_)
        (let ((_%stx174735%_ (gx#stx-unwrap__0 _%stx174733%_)))
          (if (gx#identifier-quote? _%stx174735%_)
              (##unchecked-structure-ref _%stx174735%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx174688%_)
        (let* ((_%g174689174699%_ (gx#stx-e _%stx174688%_))
               (_%else174692174707%_ (lambda () '#f)))
          (let ((_%K174695174721%_
                 (lambda (_%rest174718%_ _%hd174719%_)
                   (if (gx#identifier? _%hd174719%_)
                       (gx#identifier-list? _%rest174718%_)
                       '#f)))
                (_%K174694174712%_ (lambda () '#t)))
            (let ((_%try-match174691174715%_
                   (lambda ()
                     (if (null? _%g174689174699%_)
                         (_%K174694174712%_)
                         (_%else174692174707%_)))))
              (if (pair? _%g174689174699%_)
                  (let ((_%tl174697174726%_ (##cdr _%g174689174699%_))
                        (_%hd174696174724%_ (##car _%g174689174699%_)))
                    (let ((_%hd174729%_ _%hd174696174724%_)
                          (_%rest174731%_ _%tl174697174726%_))
                      (_%K174695174721%_ _%rest174731%_ _%hd174729%_)))
                  (_%try-match174691174715%_)))))))
    (define gx#genident__%
      (lambda (_%e174668%_ _%src174669%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src174669%_) _%src174669%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e174671%_ (gx#stx-e _%e174668%_)))
              (if (symbol? _%e174671%_) _%e174671%_ 'g)))))
         _%src174669%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e174677%_ 'g) (_%src174679%_ '#f))
          (gx#genident__% _%e174677%_ _%src174679%_))))
    (define gx#genident__1
      (lambda (_%e174681%_)
        (let ((_%src174683%_ '#f))
          (gx#genident__% _%e174681%_ _%src174683%_))))
    (define gx#genident
      (lambda _g175147_
        (let ((_g175148_ (##length _g175147_)))
          (cond ((##fx= _g175148_ 0) (apply gx#genident__0 _g175147_))
                ((##fx= _g175148_ 1) (apply gx#genident__1 _g175147_))
                ((##fx= _g175148_ 2) (apply gx#genident__% _g175147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g175147_))))))
    (define gx#gentemps
      (lambda (_%stx-lst174663%_)
        (gx#stx-map1
         (lambda (_%x174665%_) (gx#genident__% _%x174665%_ _%x174665%_))
         _%stx-lst174663%_)))
    (define gx#syntax->list
      (lambda (_%stx174661%_) (gx#stx-map1 values _%stx174661%_)))
    (define gx#stx-car
      (lambda (_%stx174658%_)
        (declare (safe))
        (car (gx#syntax-e _%stx174658%_))))
    (define gx#stx-cdr
      (lambda (_%stx174655%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx174655%_))))
    (define gx#stx-length
      (lambda (_%stx174620%_)
        (let _%lp174622%_ ((_%rest174624%_ _%stx174620%_) (_%n174625%_ '0))
          (let* ((_%g174626174634%_ (gx#stx-e _%rest174624%_))
                 (_%else174628174642%_ (lambda () _%n174625%_))
                 (_%K174630174647%_
                  (lambda (_%rest174645%_)
                    (_%lp174622%_ _%rest174645%_ (##fx+ _%n174625%_ '1)))))
            (if (pair? _%g174626174634%_)
                (let* ((_%tl174632174650%_ (##cdr _%g174626174634%_))
                       (_%rest174653%_ _%tl174632174650%_))
                  (_%K174630174647%_ _%rest174653%_))
                (_%else174628174642%_))))))
    (define gx#stx-for-each
      (lambda _g175149_
        (let ((_g175150_ (##length _g175149_)))
          (cond ((##fx= _g175150_ 2) (apply gx#stx-for-each1 _g175149_))
                ((##fx= _g175150_ 3) (apply gx#stx-for-each2 _g175149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g175149_))))))
    (define gx#stx-for-each1
      (lambda (_%f174563%_ _%stx174564%_)
        (if (procedure? _%f174563%_)
            '#!void
            (error '"expected procedure" _%f174563%_))
        (let _%lp174566%_ ((_%rest174568%_ _%stx174564%_))
          (let* ((_%g174569174579%_ (gx#syntax-e _%rest174568%_))
                 (_%else174572174587%_
                  (lambda () (_%f174563%_ _%rest174568%_))))
            (let ((_%K174575174601%_
                   (lambda (_%rest174598%_ _%hd174599%_)
                     (_%f174563%_ _%hd174599%_)
                     (_%lp174566%_ _%rest174598%_)))
                  (_%K174574174592%_ (lambda () '#!void)))
              (let ((_%try-match174571174595%_
                     (lambda ()
                       (if (null? _%g174569174579%_)
                           (_%K174574174592%_)
                           (_%else174572174587%_)))))
                (if (pair? _%g174569174579%_)
                    (let ((_%tl174577174606%_ (##cdr _%g174569174579%_))
                          (_%hd174576174604%_ (##car _%g174569174579%_)))
                      (let ((_%hd174609%_ _%hd174576174604%_)
                            (_%rest174611%_ _%tl174577174606%_))
                        (_%K174575174601%_ _%rest174611%_ _%hd174609%_)))
                    (_%try-match174571174595%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f174468%_ _%xstx174469%_ _%ystx174470%_)
        (if (procedure? _%f174468%_)
            '#!void
            (error '"expected procedure" _%f174468%_))
        (let _%lp174472%_ ((_%xrest174474%_ _%xstx174469%_)
                           (_%yrest174475%_ _%ystx174470%_))
          (let* ((_%g174476174486%_ (gx#syntax-e _%xrest174474%_))
                 (_%else174479174494%_ (lambda () '#!void)))
            (let ((_%K174482174551%_
                   (lambda (_%xrest174520%_ _%xhd174521%_)
                     (let* ((_%g174522174529%_ (gx#syntax-e _%yrest174475%_))
                            (_%E174524174533%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g174522174529%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K174525174539%_
                             (lambda (_%yrest174536%_ _%yhd174537%_)
                               (_%f174468%_ _%xhd174521%_ _%yhd174537%_)
                               (_%lp174472%_
                                _%xrest174520%_
                                _%yrest174536%_))))
                       (if (pair? _%g174522174529%_)
                           (let ((_%hd174526174542%_ (##car _%g174522174529%_))
                                 (_%tl174527174544%_
                                  (##cdr _%g174522174529%_)))
                             (let* ((_%yhd174547%_ _%hd174526174542%_)
                                    (_%yrest174549%_ _%tl174527174544%_))
                               (_%K174525174539%_
                                _%yrest174549%_
                                _%yhd174547%_)))
                           (_%E174524174533%_)))))
                  (_%K174481174514%_
                   (lambda ()
                     (let* ((_%yrest174498174503%_ _%yrest174475%_)
                            (_%E174500174507%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest174498174503%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K174501174511%_
                             (lambda ()
                               (_%f174468%_ _%xrest174474%_ _%yrest174475%_))))
                       (if (gx#stx-null? _%yrest174498174503%_)
                           (_%E174500174507%_)
                           (_%K174501174511%_))))))
              (let ((_%try-match174478174517%_
                     (lambda ()
                       (if (null? _%g174476174486%_)
                           (_%else174479174494%_)
                           (_%K174481174514%_)))))
                (if (pair? _%g174476174486%_)
                    (let ((_%tl174484174556%_ (##cdr _%g174476174486%_))
                          (_%hd174483174554%_ (##car _%g174476174486%_)))
                      (let ((_%xhd174559%_ _%hd174483174554%_)
                            (_%xrest174561%_ _%tl174484174556%_))
                        (_%K174482174551%_ _%xrest174561%_ _%xhd174559%_)))
                    (_%try-match174478174517%_))))))))
    (define gx#stx-map
      (lambda _g175151_
        (let ((_g175152_ (##length _g175151_)))
          (cond ((##fx= _g175152_ 2) (apply gx#stx-map1 _g175151_))
                ((##fx= _g175152_ 3) (apply gx#stx-map2 _g175151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g175151_))))))
    (define gx#stx-map1
      (lambda (_%f174411%_ _%stx174412%_)
        (if (procedure? _%f174411%_)
            '#!void
            (error '"expected procedure" _%f174411%_))
        (let _%recur174414%_ ((_%rest174416%_ _%stx174412%_))
          (let* ((_%g174417174427%_ (gx#syntax-e _%rest174416%_))
                 (_%else174420174435%_
                  (lambda () (_%f174411%_ _%rest174416%_))))
            (let ((_%K174423174449%_
                   (lambda (_%rest174446%_ _%hd174447%_)
                     (cons (_%f174411%_ _%hd174447%_)
                           (_%recur174414%_ _%rest174446%_))))
                  (_%K174422174440%_ (lambda () '())))
              (let ((_%try-match174419174443%_
                     (lambda ()
                       (if (null? _%g174417174427%_)
                           (_%K174422174440%_)
                           (_%else174420174435%_)))))
                (if (pair? _%g174417174427%_)
                    (let ((_%tl174425174454%_ (##cdr _%g174417174427%_))
                          (_%hd174424174452%_ (##car _%g174417174427%_)))
                      (let ((_%hd174457%_ _%hd174424174452%_)
                            (_%rest174459%_ _%tl174425174454%_))
                        (_%K174423174449%_ _%rest174459%_ _%hd174457%_)))
                    (_%try-match174419174443%_))))))))
    (define gx#stx-map2
      (lambda (_%f174316%_ _%xstx174317%_ _%ystx174318%_)
        (if (procedure? _%f174316%_)
            '#!void
            (error '"expected procedure" _%f174316%_))
        (let _%recur174320%_ ((_%xrest174322%_ _%xstx174317%_)
                              (_%yrest174323%_ _%ystx174318%_))
          (let* ((_%g174324174334%_ (gx#syntax-e _%xrest174322%_))
                 (_%else174327174342%_ (lambda () '())))
            (let ((_%K174330174399%_
                   (lambda (_%xrest174368%_ _%xhd174369%_)
                     (let* ((_%g174370174377%_ (gx#syntax-e _%yrest174323%_))
                            (_%E174372174381%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g174370174377%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K174373174387%_
                             (lambda (_%yrest174384%_ _%yhd174385%_)
                               (cons (_%f174316%_ _%xhd174369%_ _%yhd174385%_)
                                     (_%recur174320%_
                                      _%xrest174368%_
                                      _%yrest174384%_)))))
                       (if (pair? _%g174370174377%_)
                           (let ((_%hd174374174390%_ (##car _%g174370174377%_))
                                 (_%tl174375174392%_
                                  (##cdr _%g174370174377%_)))
                             (let* ((_%yhd174395%_ _%hd174374174390%_)
                                    (_%yrest174397%_ _%tl174375174392%_))
                               (_%K174373174387%_
                                _%yrest174397%_
                                _%yhd174395%_)))
                           (_%E174372174381%_)))))
                  (_%K174329174362%_
                   (lambda ()
                     (let* ((_%yrest174346174351%_ _%yrest174323%_)
                            (_%E174348174355%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest174346174351%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K174349174359%_
                             (lambda ()
                               (_%f174316%_ _%xrest174322%_ _%yrest174323%_))))
                       (if (gx#stx-null? _%yrest174346174351%_)
                           (_%E174348174355%_)
                           (_%K174349174359%_))))))
              (let ((_%try-match174326174365%_
                     (lambda ()
                       (if (null? _%g174324174334%_)
                           (_%else174327174342%_)
                           (_%K174329174362%_)))))
                (if (pair? _%g174324174334%_)
                    (let ((_%tl174332174404%_ (##cdr _%g174324174334%_))
                          (_%hd174331174402%_ (##car _%g174324174334%_)))
                      (let ((_%xhd174407%_ _%hd174331174402%_)
                            (_%xrest174409%_ _%tl174332174404%_))
                        (_%K174330174399%_ _%xrest174409%_ _%xhd174407%_)))
                    (_%try-match174326174365%_))))))))
    (define gx#stx-andmap
      (lambda (_%f174266%_ _%stx174267%_)
        (if (procedure? _%f174266%_)
            '#!void
            (error '"expected procedure" _%f174266%_))
        (let _%lp174269%_ ((_%rest174271%_ _%stx174267%_))
          (let* ((_%g174272174282%_ (gx#syntax-e _%rest174271%_))
                 (_%else174275174290%_
                  (lambda () (_%f174266%_ _%rest174271%_))))
            (let ((_%K174278174304%_
                   (lambda (_%rest174301%_ _%hd174302%_)
                     (if (_%f174266%_ _%hd174302%_)
                         (_%lp174269%_ _%rest174301%_)
                         '#f)))
                  (_%K174277174295%_ (lambda () '#t)))
              (let ((_%try-match174274174298%_
                     (lambda ()
                       (if (null? _%g174272174282%_)
                           (_%K174277174295%_)
                           (_%else174275174290%_)))))
                (if (pair? _%g174272174282%_)
                    (let ((_%tl174280174309%_ (##cdr _%g174272174282%_))
                          (_%hd174279174307%_ (##car _%g174272174282%_)))
                      (let ((_%hd174312%_ _%hd174279174307%_)
                            (_%rest174314%_ _%tl174280174309%_))
                        (_%K174278174304%_ _%rest174314%_ _%hd174312%_)))
                    (_%try-match174274174298%_))))))))
    (define gx#stx-ormap
      (lambda (_%f174213%_ _%stx174214%_)
        (if (procedure? _%f174213%_)
            '#!void
            (error '"expected procedure" _%f174213%_))
        (let _%lp174216%_ ((_%rest174218%_ _%stx174214%_))
          (let* ((_%g174219174229%_ (gx#syntax-e _%rest174218%_))
                 (_%else174222174237%_
                  (lambda () (_%f174213%_ _%rest174218%_))))
            (let ((_%K174225174254%_
                   (lambda (_%rest174248%_ _%hd174249%_)
                     (let ((_%$e174251%_ (_%f174213%_ _%hd174249%_)))
                       (if _%$e174251%_
                           _%$e174251%_
                           (_%lp174216%_ _%rest174248%_)))))
                  (_%K174224174242%_ (lambda () '#f)))
              (let ((_%try-match174221174245%_
                     (lambda ()
                       (if (null? _%g174219174229%_)
                           (_%K174224174242%_)
                           (_%else174222174237%_)))))
                (if (pair? _%g174219174229%_)
                    (let ((_%tl174227174259%_ (##cdr _%g174219174229%_))
                          (_%hd174226174257%_ (##car _%g174219174229%_)))
                      (let ((_%hd174262%_ _%hd174226174257%_)
                            (_%rest174264%_ _%tl174227174259%_))
                        (_%K174225174254%_ _%rest174264%_ _%hd174262%_)))
                    (_%try-match174221174245%_))))))))
    (define gx#stx-foldl
      (lambda (_%f174161%_ _%iv174162%_ _%stx174163%_)
        (if (procedure? _%f174161%_)
            '#!void
            (error '"expected procedure" _%f174161%_))
        (let _%lp174165%_ ((_%r174167%_ _%iv174162%_)
                           (_%rest174168%_ _%stx174163%_))
          (let* ((_%g174169174179%_ (gx#syntax-e _%rest174168%_))
                 (_%else174172174187%_
                  (lambda () (_%f174161%_ _%rest174168%_ _%r174167%_))))
            (let ((_%K174175174201%_
                   (lambda (_%rest174198%_ _%hd174199%_)
                     (_%lp174165%_
                      (_%f174161%_ _%hd174199%_ _%r174167%_)
                      _%rest174198%_)))
                  (_%K174174174192%_ (lambda () _%r174167%_)))
              (let ((_%try-match174171174195%_
                     (lambda ()
                       (if (null? _%g174169174179%_)
                           (_%K174174174192%_)
                           (_%else174172174187%_)))))
                (if (pair? _%g174169174179%_)
                    (let ((_%tl174177174206%_ (##cdr _%g174169174179%_))
                          (_%hd174176174204%_ (##car _%g174169174179%_)))
                      (let ((_%hd174209%_ _%hd174176174204%_)
                            (_%rest174211%_ _%tl174177174206%_))
                        (_%K174175174201%_ _%rest174211%_ _%hd174209%_)))
                    (_%try-match174171174195%_))))))))
    (define gx#stx-foldr
      (lambda (_%f174110%_ _%iv174111%_ _%stx174112%_)
        (if (procedure? _%f174110%_)
            '#!void
            (error '"expected procedure" _%f174110%_))
        (let _%recur174114%_ ((_%rest174116%_ _%stx174112%_))
          (let* ((_%g174117174127%_ (gx#syntax-e _%rest174116%_))
                 (_%else174120174135%_
                  (lambda () (_%f174110%_ _%rest174116%_ _%iv174111%_))))
            (let ((_%K174123174149%_
                   (lambda (_%rest174146%_ _%hd174147%_)
                     (_%f174110%_
                      _%hd174147%_
                      (_%recur174114%_ _%rest174146%_))))
                  (_%K174122174140%_ (lambda () _%iv174111%_)))
              (let ((_%try-match174119174143%_
                     (lambda ()
                       (if (null? _%g174117174127%_)
                           (_%K174122174140%_)
                           (_%else174120174135%_)))))
                (if (pair? _%g174117174127%_)
                    (let ((_%tl174125174154%_ (##cdr _%g174117174127%_))
                          (_%hd174124174152%_ (##car _%g174117174127%_)))
                      (let ((_%hd174157%_ _%hd174124174152%_)
                            (_%rest174159%_ _%tl174125174154%_))
                        (_%K174123174149%_ _%rest174159%_ _%hd174157%_)))
                    (_%try-match174119174143%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx174108%_) (gx#stx-foldl cons '() _%stx174108%_)))
    (define gx#stx-last
      (lambda (_%stx174069%_)
        (let _%lp174071%_ ((_%rest174073%_ _%stx174069%_))
          (let* ((_%g174074174082%_ (gx#syntax-e _%rest174073%_))
                 (_%else174076174090%_ (lambda () _%rest174073%_))
                 (_%K174078174096%_
                  (lambda (_%rest174093%_ _%hd174094%_)
                    (if (gx#stx-null? _%rest174093%_)
                        _%hd174094%_
                        (_%lp174071%_ _%rest174093%_)))))
            (if (pair? _%g174074174082%_)
                (let ((_%hd174079174099%_ (##car _%g174074174082%_))
                      (_%tl174080174101%_ (##cdr _%g174074174082%_)))
                  (let* ((_%hd174104%_ _%hd174079174099%_)
                         (_%rest174106%_ _%tl174080174101%_))
                    (_%K174078174096%_ _%rest174106%_ _%hd174104%_)))
                (_%else174076174090%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx174040%_)
        (let _%lp174042%_ ((_%hd174044%_ _%stx174040%_))
          (let* ((_%g174045174052%_ (gx#syntax-e _%hd174044%_))
                 (_%E174047174056%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g174045174052%_
                           '([_ . rest]))
                    '#!void))
                 (_%K174048174061%_
                  (lambda (_%rest174059%_)
                    (if (gx#stx-pair? _%rest174059%_)
                        (_%lp174042%_ _%rest174059%_)
                        _%hd174044%_))))
            (if (pair? _%g174045174052%_)
                (let* ((_%tl174050174064%_ (##cdr _%g174045174052%_))
                       (_%rest174067%_ _%tl174050174064%_))
                  (_%K174048174061%_ _%rest174067%_))
                (_%E174047174056%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx174009%_ _%k174010%_)
        (let _%lp174012%_ ((_%rest174014%_ _%stx174009%_)
                           (_%k174015%_ _%k174010%_))
          (if (fxpositive? _%k174015%_)
              (let* ((_%g174016174023%_ (gx#syntax-e _%rest174014%_))
                     (_%E174018174027%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g174016174023%_
                               '([_ . rest]))
                        '#!void))
                     (_%K174019174032%_
                      (lambda (_%rest174030%_)
                        (_%lp174012%_ _%rest174030%_ (##fx- _%k174015%_ '1)))))
                (if (pair? _%g174016174023%_)
                    (let* ((_%tl174021174035%_ (##cdr _%g174016174023%_))
                           (_%rest174038%_ _%tl174021174035%_))
                      (_%K174019174032%_ _%rest174038%_))
                    (_%E174018174027%_)))
              _%rest174014%_))))
    (define gx#stx-list-ref
      (lambda (_%stx174006%_ _%k174007%_)
        (gx#stx-car (gx#stx-list-tail _%stx174006%_ _%k174007%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx173918%_ _%key?173919%_)
        (if (procedure? _%key?173919%_)
            '#!void
            (error '"expected procedure" _%key?173919%_))
        (let _%lp173921%_ ((_%rest173923%_ _%stx173918%_))
          (let* ((_%g173924173934%_ (gx#stx-e _%rest173923%_))
                 (_%else173927173942%_ (lambda () '#f)))
            (let ((_%K173930173984%_
                   (lambda (_%rest173953%_ _%hd173954%_)
                     (if (_%key?173919%_ _%hd173954%_)
                         (let* ((_%g173955173963%_ (gx#stx-e _%rest173953%_))
                                (_%else173957173971%_ (lambda () '#f))
                                (_%K173959173976%_
                                 (lambda (_%rest173974%_)
                                   (_%lp173921%_ _%rest173974%_))))
                           (if (pair? _%g173955173963%_)
                               (let* ((_%tl173961173979%_
                                       (##cdr _%g173955173963%_))
                                      (_%rest173982%_ _%tl173961173979%_))
                                 (_%lp173921%_ _%rest173982%_))
                               (_%else173957173971%_)))
                         '#f)))
                  (_%K173929173947%_ (lambda () '#t)))
              (let ((_%try-match173926173950%_
                     (lambda ()
                       (if (null? _%g173924173934%_)
                           (_%K173929173947%_)
                           (_%else173927173942%_)))))
                (if (pair? _%g173924173934%_)
                    (let ((_%tl173932173989%_ (##cdr _%g173924173934%_))
                          (_%hd173931173987%_ (##car _%g173924173934%_)))
                      (let ((_%hd173992%_ _%hd173931173987%_)
                            (_%rest173994%_ _%tl173932173989%_))
                        (_%K173930173984%_ _%rest173994%_ _%hd173992%_)))
                    (_%try-match173926173950%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx173999%_)
        (let ((_%key?174001%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx173999%_ _%key?174001%_))))
    (define gx#stx-plist?
      (lambda _g175153_
        (let ((_g175154_ (##length _g175153_)))
          (cond ((##fx= _g175154_ 1) (apply gx#stx-plist?__0 _g175153_))
                ((##fx= _g175154_ 2) (apply gx#stx-plist?__% _g175153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g175153_))))))
    (define gx#stx-getq__%
      (lambda (_%key173836%_ _%stx173837%_ _%key=?173838%_)
        (if (procedure? _%key=?173838%_)
            '#!void
            (error '"expected procedure" _%key=?173838%_))
        (let _%lp173840%_ ((_%rest173842%_ _%stx173837%_))
          (let* ((_%g173843173851%_ (gx#syntax-e _%rest173842%_))
                 (_%else173845173859%_ (lambda () '#f))
                 (_%K173847173893%_
                  (lambda (_%rest173862%_ _%hd173863%_)
                    (let* ((_%g173864173871%_ (gx#syntax-e _%rest173862%_))
                           (_%E173866173875%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g173864173871%_
                                     '([val . rest]))
                              '#!void))
                           (_%K173867173881%_
                            (lambda (_%rest173878%_ _%val173879%_)
                              (if (_%key=?173838%_ _%hd173863%_ _%key173836%_)
                                  _%val173879%_
                                  (_%lp173840%_ _%rest173878%_)))))
                      (if (pair? _%g173864173871%_)
                          (let ((_%hd173868173884%_ (##car _%g173864173871%_))
                                (_%tl173869173886%_ (##cdr _%g173864173871%_)))
                            (let* ((_%val173889%_ _%hd173868173884%_)
                                   (_%rest173891%_ _%tl173869173886%_))
                              (_%K173867173881%_
                               _%rest173891%_
                               _%val173889%_)))
                          (_%E173866173875%_))))))
            (if (pair? _%g173843173851%_)
                (let ((_%hd173848173896%_ (##car _%g173843173851%_))
                      (_%tl173849173898%_ (##cdr _%g173843173851%_)))
                  (let* ((_%hd173901%_ _%hd173848173896%_)
                         (_%rest173903%_ _%tl173849173898%_))
                    (_%K173847173893%_ _%rest173903%_ _%hd173901%_)))
                (_%else173845173859%_))))))
    (define gx#stx-getq__0
      (lambda (_%key173908%_ _%stx173909%_)
        (let ((_%key=?173911%_ gx#stx-eq?))
          (gx#stx-getq__% _%key173908%_ _%stx173909%_ _%key=?173911%_))))
    (define gx#stx-getq
      (lambda _g175155_
        (let ((_g175156_ (##length _g175155_)))
          (cond ((##fx= _g175156_ 2) (apply gx#stx-getq__0 _g175155_))
                ((##fx= _g175156_ 3) (apply gx#stx-getq__% _g175155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g175155_))))))))
