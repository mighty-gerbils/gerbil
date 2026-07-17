(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1784471382)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (__make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args182449%_
        (apply make-instance gx#identifier-wrap::t _%$args182449%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args182446%_
        (apply make-instance gx#syntax-wrap::t _%$args182446%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args182443%_
        (apply make-instance gx#syntax-quote::t _%$args182443%_)))
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
      (lambda (_%stx182441%_) (symbol? (gx#stx-e _%stx182441%_))))
    (define gx#identifier-quote?
      (lambda (_%stx182439%_)
        (if (##structure-direct-instance-of? _%stx182439%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx182439%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx182434%_)
        (if (##structure-direct-instance-of? _%stx182434%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx182434%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx182434%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx182429%_)
        (if (##structure-direct-instance-of? _%stx182429%_ 'gx#syntax-quote::t)
            _%stx182429%_
            (if (##structure-direct-instance-of?
                 _%stx182429%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx182429%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx182403%_)
        (if (##structure-direct-instance-of? _%stx182403%_ 'gx#syntax-wrap::t)
            (let _%lp182406%_ ((_%e182408%_
                                (##unchecked-structure-ref
                                 _%stx182403%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks182409%_
                                (cons (##unchecked-structure-ref
                                       _%stx182403%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e182408%_)
                  (let ((_%$e182412%_
                         (##type-id (##structure-type _%e182408%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e182412%_)
                        (_%lp182406%_
                         (##unchecked-structure-ref _%e182408%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e182408%_ '3 '#f '#f)
                          _%marks182409%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e182412%_)
                                (eq? 'gx#identifier-wrap::t _%$e182412%_))
                            (##unchecked-structure-ref _%e182408%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e182412%_)
                                (_%lp182406%_
                                 (##unchecked-structure-ref
                                  _%e182408%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks182409%_)
                                _%e182408%_))))
                  (if (null? _%marks182409%_)
                      _%e182408%_
                      (if (pair? _%e182408%_)
                          (cons (gx#stx-wrap
                                 (##car _%e182408%_)
                                 _%marks182409%_)
                                (gx#stx-wrap
                                 (##cdr _%e182408%_)
                                 _%marks182409%_))
                          (if (vector? _%e182408%_)
                              (vector-map
                               (lambda (_%$%g182420182422%_)
                                 (gx#stx-wrap
                                  _%$%g182420182422%_
                                  _%marks182409%_))
                               _%e182408%_)
                              (if (box? _%e182408%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e182408%_)
                                        _%marks182409%_))
                                  _%e182408%_))))))
            (if (##structure-instance-of? _%stx182403%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx182403%_ '1 '#f '#f)
                _%stx182403%_))))
    (define gx#syntax->datum
      (lambda (_%stx182396%_)
        (if (##structure-instance-of? _%stx182396%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx182396%_ '1 '#f '#f))
            (if (pair? _%stx182396%_)
                (cons (gx#syntax->datum (##car _%stx182396%_))
                      (gx#syntax->datum (##cdr _%stx182396%_)))
                (if (vector? _%stx182396%_)
                    (vector-map gx#syntax->datum _%stx182396%_)
                    (if (box? _%stx182396%_)
                        (box (gx#syntax->datum (unbox _%stx182396%_)))
                        _%stx182396%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx182330%_ _%datum182331%_ _%src182332%_ _%quote?182333%_)
        (letrec ((_%wrap-datum182335%_
                  (lambda (_%e182368%_ _%marks182369%_)
                    (_%wrap-inner182337%_
                     _%e182368%_
                     (lambda (_%$%g182370182372%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%$%g182370182372%_
                        _%src182332%_
                        _%marks182369%_)))))
                 (_%wrap-quote182336%_
                  (lambda (_%e182360%_ _%ctx182361%_ _%marks182362%_)
                    (_%wrap-inner182337%_
                     _%e182360%_
                     (lambda (_%$%g182363182365%_)
                       (##structure
                        gx#syntax-quote::t
                        _%$%g182363182365%_
                        _%src182332%_
                        _%ctx182361%_
                        _%marks182362%_)))))
                 (_%wrap-inner182337%_
                  (lambda (_%e182348%_ _%wrap-e182349%_)
                    (let _%recur182351%_ ((_%e182353%_ _%e182348%_))
                      (if (symbol? _%e182353%_)
                          (_%wrap-e182349%_ _%e182353%_)
                          (if (pair? _%e182353%_)
                              (cons (_%recur182351%_ (##car _%e182353%_))
                                    (_%recur182351%_ (##cdr _%e182353%_)))
                              (if (vector? _%e182353%_)
                                  (vector-map _%recur182351%_ _%e182353%_)
                                  (if (box? _%e182353%_)
                                      (box (_%recur182351%_
                                            (unbox _%e182353%_)))
                                      _%e182353%_)))))))
                 (_%wrap-outer182338%_
                  (lambda (_%e182346%_)
                    (if (##structure-instance-of? _%e182346%_ 'gerbil#AST::t)
                        _%e182346%_
                        (##structure gx#AST::t _%e182346%_ _%src182332%_)))))
          (if (##structure-instance-of? _%datum182331%_ 'gerbil#AST::t)
              _%datum182331%_
              (if (not _%stx182330%_)
                  (##structure gx#AST::t _%datum182331%_ _%src182332%_)
                  (if (gx#identifier? _%stx182330%_)
                      (let ((_%stx182343%_ (gx#stx-unwrap__0 _%stx182330%_)))
                        (_%wrap-outer182338%_
                         (if (##structure-direct-instance-of?
                              _%stx182343%_
                              'gx#syntax-quote::t)
                             (if _%quote?182333%_
                                 (_%wrap-quote182336%_
                                  _%datum182331%_
                                  (##unchecked-structure-ref
                                   _%stx182343%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx182343%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum182335%_
                                  _%datum182331%_
                                  (##unchecked-structure-ref
                                   _%stx182343%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum182335%_
                              _%datum182331%_
                              (##unchecked-structure-ref
                               _%stx182343%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx182330%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx182378%_ _%datum182379%_)
        (let* ((_%src182381%_ '#f) (_%quote?182383%_ '#t))
          (gx#datum->syntax__%
           _%stx182378%_
           _%datum182379%_
           _%src182381%_
           _%quote?182383%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx182385%_ _%datum182386%_ _%src182387%_)
        (let ((_%quote?182389%_ '#t))
          (gx#datum->syntax__%
           _%stx182385%_
           _%datum182386%_
           _%src182387%_
           _%quote?182389%_))))
    (define gx#datum->syntax
      (lambda _g182529_
        (let ((_g182530_ (##length _g182529_)))
          (cond ((##fx= _g182530_ 2) (apply gx#datum->syntax__0 _g182529_))
                ((##fx= _g182530_ 3) (apply gx#datum->syntax__1 _g182529_))
                ((##fx= _g182530_ 4) (apply gx#datum->syntax__% _g182529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g182529_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx182296%_ _%marks182297%_)
        (let _%lp182299%_ ((_%e182301%_ _%stx182296%_)
                           (_%marks182302%_ _%marks182297%_)
                           (_%src182303%_ (gx#stx-source _%stx182296%_)))
          (if (##structure-direct-instance-of? _%e182301%_ 'gx#syntax-wrap::t)
              (_%lp182299%_
               (##unchecked-structure-ref _%e182301%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e182301%_ '3 '#f '#f)
                _%marks182302%_)
               (##unchecked-structure-ref _%e182301%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e182301%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks182302%_)
                      _%e182301%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e182301%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e182301%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e182301%_ '3 '#f '#f)
                        _%marks182302%_)))
                  (if (##structure-direct-instance-of?
                       _%e182301%_
                       'gx#syntax-quote::t)
                      _%e182301%_
                      (if (##structure-instance-of? _%e182301%_ 'gerbil#AST::t)
                          (_%lp182299%_
                           (##unchecked-structure-ref _%e182301%_ '1 '#f '#f)
                           _%marks182302%_
                           (##unchecked-structure-ref _%e182301%_ '2 '#f '#f))
                          (if (symbol? _%e182301%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e182301%_
                               _%src182303%_
                               (reverse _%marks182302%_))
                              (if (null? _%marks182302%_)
                                  _%e182301%_
                                  (if (pair? _%e182301%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e182301%_)
                                             _%marks182302%_)
                                            (gx#stx-wrap
                                             (##cdr _%e182301%_)
                                             _%marks182302%_))
                                      (if (vector? _%e182301%_)
                                          (vector-map
                                           (lambda (_%$%g182312182314%_)
                                             (gx#stx-wrap
                                              _%$%g182312182314%_
                                              _%marks182302%_))
                                           _%e182301%_)
                                          (if (box? _%e182301%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e182301%_)
                                                    _%marks182302%_))
                                              _%e182301%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx182322%_)
        (let ((_%marks182324%_ '()))
          (gx#stx-unwrap__% _%stx182322%_ _%marks182324%_))))
    (define gx#stx-unwrap
      (lambda _g182531_
        (let ((_g182532_ (##length _g182531_)))
          (cond ((##fx= _g182532_ 1) (apply gx#stx-unwrap__0 _g182531_))
                ((##fx= _g182532_ 2) (apply gx#stx-unwrap__% _g182531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g182531_))))))
    (define gx#stx-wrap
      (lambda (_%stx182289%_ _%marks182290%_)
        (foldl__0
         (lambda (_%mark182292%_ _%stx182293%_)
           (gx#stx-apply-mark _%stx182293%_ _%mark182292%_))
         _%stx182289%_
         _%marks182290%_)))
    (define gx#stx-rewrap
      (lambda (_%stx182283%_ _%marks182284%_)
        (foldr__0
         (lambda (_%mark182286%_ _%stx182287%_)
           (gx#stx-apply-mark _%stx182287%_ _%mark182286%_))
         _%stx182283%_
         _%marks182284%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx182277%_ _%mark182278%_)
        (if (##structure-direct-instance-of? _%stx182277%_ 'gx#syntax-quote::t)
            _%stx182277%_
            (if (and (##structure-direct-instance-of?
                      _%stx182277%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark182278%_
                          (##unchecked-structure-ref
                           _%stx182277%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx182277%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx182277%_
                 (gx#stx-source _%stx182277%_)
                 _%mark182278%_)))))
    (define gx#apply-mark
      (lambda (_%mark182241%_ _%marks182242%_)
        (let* ((_%$%marks182243182251%_ _%marks182242%_)
               (_%$%else182245182259%_
                (lambda () (cons _%mark182241%_ _%marks182242%_)))
               (_%$%K182247182265%_
                (lambda (_%rest182262%_ _%hd182263%_)
                  (if (eq? _%mark182241%_ _%hd182263%_)
                      _%rest182262%_
                      (cons _%mark182241%_ _%marks182242%_)))))
          (if (pair? _%$%marks182243182251%_)
              (let ((_%$%hd182248182268%_ (##car _%$%marks182243182251%_))
                    (_%$%tl182249182270%_ (##cdr _%$%marks182243182251%_)))
                (let* ((_%hd182273%_ _%$%hd182248182268%_)
                       (_%rest182275%_ _%$%tl182249182270%_))
                  (_%$%K182247182265%_ _%rest182275%_ _%hd182273%_)))
              (_%$%else182245182259%_)))))
    (define gx#stx-e
      (lambda (_%stx182236%_)
        (if (##structure-direct-instance-of? _%stx182236%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx182236%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx182236%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx182236%_ '1 '#f '#f)
                _%stx182236%_))))
    (define gx#stx-source
      (lambda (_%stx182234%_)
        (if (##structure-instance-of? _%stx182234%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx182234%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx182228%_ _%src182229%_)
        (if (or (##structure-instance-of? _%stx182228%_ 'gerbil#AST::t)
                (not _%src182229%_))
            _%stx182228%_
            (##structure gx#AST::t _%stx182228%_ _%src182229%_))))
    (define gx#stx-datum?
      (lambda (_%stx182226%_) (gx#self-quoting? (gx#stx-e _%stx182226%_))))
    (define gx#self-quoting?
      (lambda (_%x182209%_)
        (let ((_%$e182211%_ (immediate? _%x182209%_)))
          (if _%$e182211%_
              _%$e182211%_
              (let ((_%$e182214%_ (number? _%x182209%_)))
                (if _%$e182214%_
                    _%$e182214%_
                    (let ((_%$e182217%_ (keyword? _%x182209%_)))
                      (if _%$e182217%_
                          _%$e182217%_
                          (let ((_%$e182220%_ (string? _%x182209%_)))
                            (if _%$e182220%_
                                _%$e182220%_
                                (let ((_%$e182223%_ (vector? _%x182209%_)))
                                  (if _%$e182223%_
                                      _%$e182223%_
                                      (u8vector? _%x182209%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e182207%_) (boolean? (gx#stx-e _%e182207%_))))
    (define gx#stx-keyword?
      (lambda (_%e182205%_) (keyword? (gx#stx-e _%e182205%_))))
    (define gx#stx-char? (lambda (_%e182203%_) (char? (gx#stx-e _%e182203%_))))
    (define gx#stx-number?
      (lambda (_%e182201%_) (number? (gx#stx-e _%e182201%_))))
    (define gx#stx-fixnum?
      (lambda (_%e182199%_) (fixnum? (gx#stx-e _%e182199%_))))
    (define gx#stx-string?
      (lambda (_%e182197%_) (string? (gx#stx-e _%e182197%_))))
    (define gx#stx-null? (lambda (_%e182195%_) (null? (gx#stx-e _%e182195%_))))
    (define gx#stx-pair? (lambda (_%e182193%_) (pair? (gx#stx-e _%e182193%_))))
    (define gx#stx-list?
      (lambda (_%e182155%_)
        (let* ((_%$%g182156182165%_ (gx#stx-e _%e182155%_))
               (_%$%E182159182169%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g182156182165%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%$%K182161182185%_
                 (lambda (_%rest182183%_) (gx#stx-list? _%rest182183%_)))
                (_%$%K182160182175%_
                 (lambda (_%tail182173%_) (null? _%tail182173%_))))
            (if (pair? _%$%g182156182165%_)
                (let* ((_%$%tl182163182188%_ (##cdr _%$%g182156182165%_))
                       (_%rest182191%_ _%$%tl182163182188%_))
                  (gx#stx-list? _%rest182191%_))
                (let ((_%tail182178%_ _%$%g182156182165%_))
                  (null? _%tail182178%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e182148%_)
        (let* ((_%e182150%_ (gx#stx-e _%e182148%_))
               (_%$e182152%_ (pair? _%e182150%_)))
          (if _%$e182152%_ _%$e182152%_ (null? _%e182150%_)))))
    (define gx#stx-vector?
      (lambda (_%e182146%_) (vector? (gx#stx-e _%e182146%_))))
    (define gx#stx-box? (lambda (_%e182144%_) (box? (gx#stx-e _%e182144%_))))
    (define gx#stx-eq?
      (lambda (_%x182141%_ _%y182142%_)
        (eq? (gx#stx-e _%x182141%_) (gx#stx-e _%y182142%_))))
    (define gx#stx-eqv?
      (lambda (_%x182138%_ _%y182139%_)
        (eqv? (gx#stx-e _%x182138%_) (gx#stx-e _%y182139%_))))
    (define gx#stx-equal?
      (lambda (_%x182135%_ _%y182136%_)
        (equal? (gx#stx-e _%x182135%_) (gx#stx-e _%y182136%_))))
    (define gx#stx-false? (lambda (_%x182133%_) (not (gx#stx-e _%x182133%_))))
    (define gx#stx-identifier
      (lambda (_%template182130%_ . _%args182131%_)
        (gx#datum->syntax__1
         _%template182130%_
         (apply make-symbol (gx#syntax->datum _%args182131%_))
         (gx#stx-source _%template182130%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx182128%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx182128%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx182123%_)
        (if (##structure-direct-instance-of?
             _%stx182123%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx182123%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx182123%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx182123%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx182123%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx182119%_)
        (let ((_%stx182121%_ (gx#stx-unwrap__0 _%stx182119%_)))
          (if (gx#identifier-quote? _%stx182121%_)
              (##unchecked-structure-ref _%stx182121%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx182074%_)
        (let* ((_%$%g182075182085%_ (gx#stx-e _%stx182074%_))
               (_%$%else182078182093%_ (lambda () '#f)))
          (let ((_%$%K182081182107%_
                 (lambda (_%rest182104%_ _%hd182105%_)
                   (if (gx#identifier? _%hd182105%_)
                       (gx#identifier-list? _%rest182104%_)
                       '#f)))
                (_%$%K182080182098%_ (lambda () '#t)))
            (let ((_%$%try-match182077182101%_
                   (lambda ()
                     (if (null? _%$%g182075182085%_)
                         (_%$%K182080182098%_)
                         (_%$%else182078182093%_)))))
              (if (pair? _%$%g182075182085%_)
                  (let ((_%$%tl182083182112%_ (##cdr _%$%g182075182085%_))
                        (_%$%hd182082182110%_ (##car _%$%g182075182085%_)))
                    (let ((_%hd182115%_ _%$%hd182082182110%_)
                          (_%rest182117%_ _%$%tl182083182112%_))
                      (_%$%K182081182107%_ _%rest182117%_ _%hd182115%_)))
                  (_%$%try-match182077182101%_)))))))
    (define gx#genident__%
      (lambda (_%e182054%_ _%src182055%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src182055%_) _%src182055%_ '#f)
         (make-symbol__1
          '"$%"
          (##gensym
           (let ((_%e182057%_ (gx#stx-e _%e182054%_)))
             (if (symbol? _%e182057%_) _%e182057%_ 'g))))
         _%src182055%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e182063%_ 'g) (_%src182065%_ '#f))
          (gx#genident__% _%e182063%_ _%src182065%_))))
    (define gx#genident__1
      (lambda (_%e182067%_)
        (let ((_%src182069%_ '#f))
          (gx#genident__% _%e182067%_ _%src182069%_))))
    (define gx#genident
      (lambda _g182533_
        (let ((_g182534_ (##length _g182533_)))
          (cond ((##fx= _g182534_ 0) (apply gx#genident__0 _g182533_))
                ((##fx= _g182534_ 1) (apply gx#genident__1 _g182533_))
                ((##fx= _g182534_ 2) (apply gx#genident__% _g182533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g182533_))))))
    (define gx#gentemps
      (lambda (_%stx-lst182049%_)
        (gx#stx-map1
         (lambda (_%x182051%_) (gx#genident__% _%x182051%_ _%x182051%_))
         _%stx-lst182049%_)))
    (define gx#syntax->list
      (lambda (_%stx182047%_) (gx#stx-map1 values _%stx182047%_)))
    (define gx#stx-car
      (lambda (_%stx182044%_)
        (declare (safe))
        (car (gx#syntax-e _%stx182044%_))))
    (define gx#stx-cdr
      (lambda (_%stx182041%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx182041%_))))
    (define gx#stx-length
      (lambda (_%stx182006%_)
        (let _%lp182008%_ ((_%rest182010%_ _%stx182006%_) (_%n182011%_ '0))
          (let* ((_%$%g182012182020%_ (gx#stx-e _%rest182010%_))
                 (_%$%else182014182028%_ (lambda () _%n182011%_))
                 (_%$%K182016182033%_
                  (lambda (_%rest182031%_)
                    (_%lp182008%_ _%rest182031%_ (##fx+ _%n182011%_ '1)))))
            (if (pair? _%$%g182012182020%_)
                (let* ((_%$%tl182018182036%_ (##cdr _%$%g182012182020%_))
                       (_%rest182039%_ _%$%tl182018182036%_))
                  (_%$%K182016182033%_ _%rest182039%_))
                (_%$%else182014182028%_))))))
    (define gx#stx-for-each
      (lambda _g182535_
        (let ((_g182536_ (##length _g182535_)))
          (cond ((##fx= _g182536_ 2) (apply gx#stx-for-each1 _g182535_))
                ((##fx= _g182536_ 3) (apply gx#stx-for-each2 _g182535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g182535_))))))
    (define gx#stx-for-each1
      (lambda (_%f181949%_ _%stx181950%_)
        (if (procedure? _%f181949%_)
            '#!void
            (error '"expected procedure" _%f181949%_))
        (let _%lp181952%_ ((_%rest181954%_ _%stx181950%_))
          (let* ((_%$%g181955181965%_ (gx#syntax-e _%rest181954%_))
                 (_%$%else181958181973%_
                  (lambda () (_%f181949%_ _%rest181954%_))))
            (let ((_%$%K181961181987%_
                   (lambda (_%rest181984%_ _%hd181985%_)
                     (_%f181949%_ _%hd181985%_)
                     (_%lp181952%_ _%rest181984%_)))
                  (_%$%K181960181978%_ (lambda () '#!void)))
              (let ((_%$%try-match181957181981%_
                     (lambda ()
                       (if (null? _%$%g181955181965%_)
                           (_%$%K181960181978%_)
                           (_%$%else181958181973%_)))))
                (if (pair? _%$%g181955181965%_)
                    (let ((_%$%tl181963181992%_ (##cdr _%$%g181955181965%_))
                          (_%$%hd181962181990%_ (##car _%$%g181955181965%_)))
                      (let ((_%hd181995%_ _%$%hd181962181990%_)
                            (_%rest181997%_ _%$%tl181963181992%_))
                        (_%$%K181961181987%_ _%rest181997%_ _%hd181995%_)))
                    (_%$%try-match181957181981%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f181854%_ _%xstx181855%_ _%ystx181856%_)
        (if (procedure? _%f181854%_)
            '#!void
            (error '"expected procedure" _%f181854%_))
        (let _%lp181858%_ ((_%xrest181860%_ _%xstx181855%_)
                           (_%yrest181861%_ _%ystx181856%_))
          (let* ((_%$%g181862181872%_ (gx#syntax-e _%xrest181860%_))
                 (_%$%else181865181880%_ (lambda () '#!void)))
            (let ((_%$%K181868181937%_
                   (lambda (_%xrest181906%_ _%xhd181907%_)
                     (let* ((_%$%g181908181915%_ (gx#syntax-e _%yrest181861%_))
                            (_%$%E181910181919%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g181908181915%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K181911181925%_
                             (lambda (_%yrest181922%_ _%yhd181923%_)
                               (_%f181854%_ _%xhd181907%_ _%yhd181923%_)
                               (_%lp181858%_
                                _%xrest181906%_
                                _%yrest181922%_))))
                       (if (pair? _%$%g181908181915%_)
                           (let ((_%$%hd181912181928%_
                                  (##car _%$%g181908181915%_))
                                 (_%$%tl181913181930%_
                                  (##cdr _%$%g181908181915%_)))
                             (let* ((_%yhd181933%_ _%$%hd181912181928%_)
                                    (_%yrest181935%_ _%$%tl181913181930%_))
                               (_%$%K181911181925%_
                                _%yrest181935%_
                                _%yhd181933%_)))
                           (_%$%E181910181919%_)))))
                  (_%$%K181867181900%_
                   (lambda ()
                     (let* ((_%$%yrest181884181889%_ _%yrest181861%_)
                            (_%$%E181886181893%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest181884181889%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K181887181897%_
                             (lambda ()
                               (_%f181854%_ _%xrest181860%_ _%yrest181861%_))))
                       (if (gx#stx-null? _%$%yrest181884181889%_)
                           (_%$%E181886181893%_)
                           (_%$%K181887181897%_))))))
              (let ((_%$%try-match181864181903%_
                     (lambda ()
                       (if (null? _%$%g181862181872%_)
                           (_%$%else181865181880%_)
                           (_%$%K181867181900%_)))))
                (if (pair? _%$%g181862181872%_)
                    (let ((_%$%tl181870181942%_ (##cdr _%$%g181862181872%_))
                          (_%$%hd181869181940%_ (##car _%$%g181862181872%_)))
                      (let ((_%xhd181945%_ _%$%hd181869181940%_)
                            (_%xrest181947%_ _%$%tl181870181942%_))
                        (_%$%K181868181937%_ _%xrest181947%_ _%xhd181945%_)))
                    (_%$%try-match181864181903%_))))))))
    (define gx#stx-map
      (lambda _g182537_
        (let ((_g182538_ (##length _g182537_)))
          (cond ((##fx= _g182538_ 2) (apply gx#stx-map1 _g182537_))
                ((##fx= _g182538_ 3) (apply gx#stx-map2 _g182537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g182537_))))))
    (define gx#stx-map1
      (lambda (_%f181797%_ _%stx181798%_)
        (if (procedure? _%f181797%_)
            '#!void
            (error '"expected procedure" _%f181797%_))
        (let _%recur181800%_ ((_%rest181802%_ _%stx181798%_))
          (let* ((_%$%g181803181813%_ (gx#syntax-e _%rest181802%_))
                 (_%$%else181806181821%_
                  (lambda () (_%f181797%_ _%rest181802%_))))
            (let ((_%$%K181809181835%_
                   (lambda (_%rest181832%_ _%hd181833%_)
                     (cons (_%f181797%_ _%hd181833%_)
                           (_%recur181800%_ _%rest181832%_))))
                  (_%$%K181808181826%_ (lambda () '())))
              (let ((_%$%try-match181805181829%_
                     (lambda ()
                       (if (null? _%$%g181803181813%_)
                           (_%$%K181808181826%_)
                           (_%$%else181806181821%_)))))
                (if (pair? _%$%g181803181813%_)
                    (let ((_%$%tl181811181840%_ (##cdr _%$%g181803181813%_))
                          (_%$%hd181810181838%_ (##car _%$%g181803181813%_)))
                      (let ((_%hd181843%_ _%$%hd181810181838%_)
                            (_%rest181845%_ _%$%tl181811181840%_))
                        (_%$%K181809181835%_ _%rest181845%_ _%hd181843%_)))
                    (_%$%try-match181805181829%_))))))))
    (define gx#stx-map2
      (lambda (_%f181702%_ _%xstx181703%_ _%ystx181704%_)
        (if (procedure? _%f181702%_)
            '#!void
            (error '"expected procedure" _%f181702%_))
        (let _%recur181706%_ ((_%xrest181708%_ _%xstx181703%_)
                              (_%yrest181709%_ _%ystx181704%_))
          (let* ((_%$%g181710181720%_ (gx#syntax-e _%xrest181708%_))
                 (_%$%else181713181728%_ (lambda () '())))
            (let ((_%$%K181716181785%_
                   (lambda (_%xrest181754%_ _%xhd181755%_)
                     (let* ((_%$%g181756181763%_ (gx#syntax-e _%yrest181709%_))
                            (_%$%E181758181767%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g181756181763%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K181759181773%_
                             (lambda (_%yrest181770%_ _%yhd181771%_)
                               (cons (_%f181702%_ _%xhd181755%_ _%yhd181771%_)
                                     (_%recur181706%_
                                      _%xrest181754%_
                                      _%yrest181770%_)))))
                       (if (pair? _%$%g181756181763%_)
                           (let ((_%$%hd181760181776%_
                                  (##car _%$%g181756181763%_))
                                 (_%$%tl181761181778%_
                                  (##cdr _%$%g181756181763%_)))
                             (let* ((_%yhd181781%_ _%$%hd181760181776%_)
                                    (_%yrest181783%_ _%$%tl181761181778%_))
                               (_%$%K181759181773%_
                                _%yrest181783%_
                                _%yhd181781%_)))
                           (_%$%E181758181767%_)))))
                  (_%$%K181715181748%_
                   (lambda ()
                     (let* ((_%$%yrest181732181737%_ _%yrest181709%_)
                            (_%$%E181734181741%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest181732181737%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K181735181745%_
                             (lambda ()
                               (_%f181702%_ _%xrest181708%_ _%yrest181709%_))))
                       (if (gx#stx-null? _%$%yrest181732181737%_)
                           (_%$%E181734181741%_)
                           (_%$%K181735181745%_))))))
              (let ((_%$%try-match181712181751%_
                     (lambda ()
                       (if (null? _%$%g181710181720%_)
                           (_%$%else181713181728%_)
                           (_%$%K181715181748%_)))))
                (if (pair? _%$%g181710181720%_)
                    (let ((_%$%tl181718181790%_ (##cdr _%$%g181710181720%_))
                          (_%$%hd181717181788%_ (##car _%$%g181710181720%_)))
                      (let ((_%xhd181793%_ _%$%hd181717181788%_)
                            (_%xrest181795%_ _%$%tl181718181790%_))
                        (_%$%K181716181785%_ _%xrest181795%_ _%xhd181793%_)))
                    (_%$%try-match181712181751%_))))))))
    (define gx#stx-andmap
      (lambda (_%f181652%_ _%stx181653%_)
        (if (procedure? _%f181652%_)
            '#!void
            (error '"expected procedure" _%f181652%_))
        (let _%lp181655%_ ((_%rest181657%_ _%stx181653%_))
          (let* ((_%$%g181658181668%_ (gx#syntax-e _%rest181657%_))
                 (_%$%else181661181676%_
                  (lambda () (_%f181652%_ _%rest181657%_))))
            (let ((_%$%K181664181690%_
                   (lambda (_%rest181687%_ _%hd181688%_)
                     (if (_%f181652%_ _%hd181688%_)
                         (_%lp181655%_ _%rest181687%_)
                         '#f)))
                  (_%$%K181663181681%_ (lambda () '#t)))
              (let ((_%$%try-match181660181684%_
                     (lambda ()
                       (if (null? _%$%g181658181668%_)
                           (_%$%K181663181681%_)
                           (_%$%else181661181676%_)))))
                (if (pair? _%$%g181658181668%_)
                    (let ((_%$%tl181666181695%_ (##cdr _%$%g181658181668%_))
                          (_%$%hd181665181693%_ (##car _%$%g181658181668%_)))
                      (let ((_%hd181698%_ _%$%hd181665181693%_)
                            (_%rest181700%_ _%$%tl181666181695%_))
                        (_%$%K181664181690%_ _%rest181700%_ _%hd181698%_)))
                    (_%$%try-match181660181684%_))))))))
    (define gx#stx-ormap
      (lambda (_%f181599%_ _%stx181600%_)
        (if (procedure? _%f181599%_)
            '#!void
            (error '"expected procedure" _%f181599%_))
        (let _%lp181602%_ ((_%rest181604%_ _%stx181600%_))
          (let* ((_%$%g181605181615%_ (gx#syntax-e _%rest181604%_))
                 (_%$%else181608181623%_
                  (lambda () (_%f181599%_ _%rest181604%_))))
            (let ((_%$%K181611181640%_
                   (lambda (_%rest181634%_ _%hd181635%_)
                     (let ((_%$e181637%_ (_%f181599%_ _%hd181635%_)))
                       (if _%$e181637%_
                           _%$e181637%_
                           (_%lp181602%_ _%rest181634%_)))))
                  (_%$%K181610181628%_ (lambda () '#f)))
              (let ((_%$%try-match181607181631%_
                     (lambda ()
                       (if (null? _%$%g181605181615%_)
                           (_%$%K181610181628%_)
                           (_%$%else181608181623%_)))))
                (if (pair? _%$%g181605181615%_)
                    (let ((_%$%tl181613181645%_ (##cdr _%$%g181605181615%_))
                          (_%$%hd181612181643%_ (##car _%$%g181605181615%_)))
                      (let ((_%hd181648%_ _%$%hd181612181643%_)
                            (_%rest181650%_ _%$%tl181613181645%_))
                        (_%$%K181611181640%_ _%rest181650%_ _%hd181648%_)))
                    (_%$%try-match181607181631%_))))))))
    (define gx#stx-foldl
      (lambda (_%f181547%_ _%iv181548%_ _%stx181549%_)
        (if (procedure? _%f181547%_)
            '#!void
            (error '"expected procedure" _%f181547%_))
        (let _%lp181551%_ ((_%r181553%_ _%iv181548%_)
                           (_%rest181554%_ _%stx181549%_))
          (let* ((_%$%g181555181565%_ (gx#syntax-e _%rest181554%_))
                 (_%$%else181558181573%_
                  (lambda () (_%f181547%_ _%rest181554%_ _%r181553%_))))
            (let ((_%$%K181561181587%_
                   (lambda (_%rest181584%_ _%hd181585%_)
                     (_%lp181551%_
                      (_%f181547%_ _%hd181585%_ _%r181553%_)
                      _%rest181584%_)))
                  (_%$%K181560181578%_ (lambda () _%r181553%_)))
              (let ((_%$%try-match181557181581%_
                     (lambda ()
                       (if (null? _%$%g181555181565%_)
                           (_%$%K181560181578%_)
                           (_%$%else181558181573%_)))))
                (if (pair? _%$%g181555181565%_)
                    (let ((_%$%tl181563181592%_ (##cdr _%$%g181555181565%_))
                          (_%$%hd181562181590%_ (##car _%$%g181555181565%_)))
                      (let ((_%hd181595%_ _%$%hd181562181590%_)
                            (_%rest181597%_ _%$%tl181563181592%_))
                        (_%$%K181561181587%_ _%rest181597%_ _%hd181595%_)))
                    (_%$%try-match181557181581%_))))))))
    (define gx#stx-foldr
      (lambda (_%f181496%_ _%iv181497%_ _%stx181498%_)
        (if (procedure? _%f181496%_)
            '#!void
            (error '"expected procedure" _%f181496%_))
        (let _%recur181500%_ ((_%rest181502%_ _%stx181498%_))
          (let* ((_%$%g181503181513%_ (gx#syntax-e _%rest181502%_))
                 (_%$%else181506181521%_
                  (lambda () (_%f181496%_ _%rest181502%_ _%iv181497%_))))
            (let ((_%$%K181509181535%_
                   (lambda (_%rest181532%_ _%hd181533%_)
                     (_%f181496%_
                      _%hd181533%_
                      (_%recur181500%_ _%rest181532%_))))
                  (_%$%K181508181526%_ (lambda () _%iv181497%_)))
              (let ((_%$%try-match181505181529%_
                     (lambda ()
                       (if (null? _%$%g181503181513%_)
                           (_%$%K181508181526%_)
                           (_%$%else181506181521%_)))))
                (if (pair? _%$%g181503181513%_)
                    (let ((_%$%tl181511181540%_ (##cdr _%$%g181503181513%_))
                          (_%$%hd181510181538%_ (##car _%$%g181503181513%_)))
                      (let ((_%hd181543%_ _%$%hd181510181538%_)
                            (_%rest181545%_ _%$%tl181511181540%_))
                        (_%$%K181509181535%_ _%rest181545%_ _%hd181543%_)))
                    (_%$%try-match181505181529%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx181494%_) (gx#stx-foldl cons '() _%stx181494%_)))
    (define gx#stx-last
      (lambda (_%stx181455%_)
        (let _%lp181457%_ ((_%rest181459%_ _%stx181455%_))
          (let* ((_%$%g181460181468%_ (gx#syntax-e _%rest181459%_))
                 (_%$%else181462181476%_ (lambda () _%rest181459%_))
                 (_%$%K181464181482%_
                  (lambda (_%rest181479%_ _%hd181480%_)
                    (if (gx#stx-null? _%rest181479%_)
                        _%hd181480%_
                        (_%lp181457%_ _%rest181479%_)))))
            (if (pair? _%$%g181460181468%_)
                (let ((_%$%hd181465181485%_ (##car _%$%g181460181468%_))
                      (_%$%tl181466181487%_ (##cdr _%$%g181460181468%_)))
                  (let* ((_%hd181490%_ _%$%hd181465181485%_)
                         (_%rest181492%_ _%$%tl181466181487%_))
                    (_%$%K181464181482%_ _%rest181492%_ _%hd181490%_)))
                (_%$%else181462181476%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx181426%_)
        (let _%lp181428%_ ((_%hd181430%_ _%stx181426%_))
          (let* ((_%$%g181431181438%_ (gx#syntax-e _%hd181430%_))
                 (_%$%E181433181442%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g181431181438%_
                           '([_ . rest]))
                    '#!void))
                 (_%$%K181434181447%_
                  (lambda (_%rest181445%_)
                    (if (gx#stx-pair? _%rest181445%_)
                        (_%lp181428%_ _%rest181445%_)
                        _%hd181430%_))))
            (if (pair? _%$%g181431181438%_)
                (let* ((_%$%tl181436181450%_ (##cdr _%$%g181431181438%_))
                       (_%rest181453%_ _%$%tl181436181450%_))
                  (_%$%K181434181447%_ _%rest181453%_))
                (_%$%E181433181442%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx181395%_ _%k181396%_)
        (let _%lp181398%_ ((_%rest181400%_ _%stx181395%_)
                           (_%k181401%_ _%k181396%_))
          (if (fxpositive? _%k181401%_)
              (let* ((_%$%g181402181409%_ (gx#syntax-e _%rest181400%_))
                     (_%$%E181404181413%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g181402181409%_
                               '([_ . rest]))
                        '#!void))
                     (_%$%K181405181418%_
                      (lambda (_%rest181416%_)
                        (_%lp181398%_ _%rest181416%_ (##fx- _%k181401%_ '1)))))
                (if (pair? _%$%g181402181409%_)
                    (let* ((_%$%tl181407181421%_ (##cdr _%$%g181402181409%_))
                           (_%rest181424%_ _%$%tl181407181421%_))
                      (_%$%K181405181418%_ _%rest181424%_))
                    (_%$%E181404181413%_)))
              _%rest181400%_))))
    (define gx#stx-list-ref
      (lambda (_%stx181392%_ _%k181393%_)
        (gx#stx-car (gx#stx-list-tail _%stx181392%_ _%k181393%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx181304%_ _%key?181305%_)
        (if (procedure? _%key?181305%_)
            '#!void
            (error '"expected procedure" _%key?181305%_))
        (let _%lp181307%_ ((_%rest181309%_ _%stx181304%_))
          (let* ((_%$%g181310181320%_ (gx#stx-e _%rest181309%_))
                 (_%$%else181313181328%_ (lambda () '#f)))
            (let ((_%$%K181316181370%_
                   (lambda (_%rest181339%_ _%hd181340%_)
                     (if (_%key?181305%_ _%hd181340%_)
                         (let* ((_%$%g181341181349%_ (gx#stx-e _%rest181339%_))
                                (_%$%else181343181357%_ (lambda () '#f))
                                (_%$%K181345181362%_
                                 (lambda (_%rest181360%_)
                                   (_%lp181307%_ _%rest181360%_))))
                           (if (pair? _%$%g181341181349%_)
                               (let* ((_%$%tl181347181365%_
                                       (##cdr _%$%g181341181349%_))
                                      (_%rest181368%_ _%$%tl181347181365%_))
                                 (_%lp181307%_ _%rest181368%_))
                               (_%$%else181343181357%_)))
                         '#f)))
                  (_%$%K181315181333%_ (lambda () '#t)))
              (let ((_%$%try-match181312181336%_
                     (lambda ()
                       (if (null? _%$%g181310181320%_)
                           (_%$%K181315181333%_)
                           (_%$%else181313181328%_)))))
                (if (pair? _%$%g181310181320%_)
                    (let ((_%$%tl181318181375%_ (##cdr _%$%g181310181320%_))
                          (_%$%hd181317181373%_ (##car _%$%g181310181320%_)))
                      (let ((_%hd181378%_ _%$%hd181317181373%_)
                            (_%rest181380%_ _%$%tl181318181375%_))
                        (_%$%K181316181370%_ _%rest181380%_ _%hd181378%_)))
                    (_%$%try-match181312181336%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx181385%_)
        (let ((_%key?181387%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx181385%_ _%key?181387%_))))
    (define gx#stx-plist?
      (lambda _g182539_
        (let ((_g182540_ (##length _g182539_)))
          (cond ((##fx= _g182540_ 1) (apply gx#stx-plist?__0 _g182539_))
                ((##fx= _g182540_ 2) (apply gx#stx-plist?__% _g182539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g182539_))))))
    (define gx#stx-getq__%
      (lambda (_%key181222%_ _%stx181223%_ _%key=?181224%_)
        (if (procedure? _%key=?181224%_)
            '#!void
            (error '"expected procedure" _%key=?181224%_))
        (let _%lp181226%_ ((_%rest181228%_ _%stx181223%_))
          (let* ((_%$%g181229181237%_ (gx#syntax-e _%rest181228%_))
                 (_%$%else181231181245%_ (lambda () '#f))
                 (_%$%K181233181279%_
                  (lambda (_%rest181248%_ _%hd181249%_)
                    (let* ((_%$%g181250181257%_ (gx#syntax-e _%rest181248%_))
                           (_%$%E181252181261%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g181250181257%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K181253181267%_
                            (lambda (_%rest181264%_ _%val181265%_)
                              (if (_%key=?181224%_ _%hd181249%_ _%key181222%_)
                                  _%val181265%_
                                  (_%lp181226%_ _%rest181264%_)))))
                      (if (pair? _%$%g181250181257%_)
                          (let ((_%$%hd181254181270%_
                                 (##car _%$%g181250181257%_))
                                (_%$%tl181255181272%_
                                 (##cdr _%$%g181250181257%_)))
                            (let* ((_%val181275%_ _%$%hd181254181270%_)
                                   (_%rest181277%_ _%$%tl181255181272%_))
                              (_%$%K181253181267%_
                               _%rest181277%_
                               _%val181275%_)))
                          (_%$%E181252181261%_))))))
            (if (pair? _%$%g181229181237%_)
                (let ((_%$%hd181234181282%_ (##car _%$%g181229181237%_))
                      (_%$%tl181235181284%_ (##cdr _%$%g181229181237%_)))
                  (let* ((_%hd181287%_ _%$%hd181234181282%_)
                         (_%rest181289%_ _%$%tl181235181284%_))
                    (_%$%K181233181279%_ _%rest181289%_ _%hd181287%_)))
                (_%$%else181231181245%_))))))
    (define gx#stx-getq__0
      (lambda (_%key181294%_ _%stx181295%_)
        (let ((_%key=?181297%_ gx#stx-eq?))
          (gx#stx-getq__% _%key181294%_ _%stx181295%_ _%key=?181297%_))))
    (define gx#stx-getq
      (lambda _g182541_
        (let ((_g182542_ (##length _g182541_)))
          (cond ((##fx= _g182542_ 2) (apply gx#stx-getq__0 _g182541_))
                ((##fx= _g182542_ 3) (apply gx#stx-getq__% _g182541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g182541_))))))
    (define gx#stx-plist-assq__%
      (lambda (_%key181140%_ _%stx181141%_ _%key=?181142%_)
        (if (procedure? _%key=?181142%_)
            '#!void
            (error '"expected procedure" _%key=?181142%_))
        (let _%lp181144%_ ((_%rest181146%_ _%stx181141%_))
          (let* ((_%$%g181147181155%_ (gx#syntax-e _%rest181146%_))
                 (_%$%else181149181163%_ (lambda () '#f))
                 (_%$%K181151181197%_
                  (lambda (_%rest181166%_ _%hd181167%_)
                    (let* ((_%$%g181168181175%_ (gx#syntax-e _%rest181166%_))
                           (_%$%E181170181179%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g181168181175%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K181171181185%_
                            (lambda (_%rest181182%_ _%val181183%_)
                              (if (_%key=?181142%_ _%hd181167%_ _%key181140%_)
                                  (cons _%hd181167%_ _%val181183%_)
                                  (_%lp181144%_ _%rest181182%_)))))
                      (if (pair? _%$%g181168181175%_)
                          (let ((_%$%hd181172181188%_
                                 (##car _%$%g181168181175%_))
                                (_%$%tl181173181190%_
                                 (##cdr _%$%g181168181175%_)))
                            (let* ((_%val181193%_ _%$%hd181172181188%_)
                                   (_%rest181195%_ _%$%tl181173181190%_))
                              (_%$%K181171181185%_
                               _%rest181195%_
                               _%val181193%_)))
                          (_%$%E181170181179%_))))))
            (if (pair? _%$%g181147181155%_)
                (let ((_%$%hd181152181200%_ (##car _%$%g181147181155%_))
                      (_%$%tl181153181202%_ (##cdr _%$%g181147181155%_)))
                  (let* ((_%hd181205%_ _%$%hd181152181200%_)
                         (_%rest181207%_ _%$%tl181153181202%_))
                    (_%$%K181151181197%_ _%rest181207%_ _%hd181205%_)))
                (_%$%else181149181163%_))))))
    (define gx#stx-plist-assq__0
      (lambda (_%key181212%_ _%stx181213%_)
        (let ((_%key=?181215%_ gx#stx-eq?))
          (gx#stx-plist-assq__% _%key181212%_ _%stx181213%_ _%key=?181215%_))))
    (define gx#stx-plist-assq
      (lambda _g182543_
        (let ((_g182544_ (##length _g182543_)))
          (cond ((##fx= _g182544_ 2) (apply gx#stx-plist-assq__0 _g182543_))
                ((##fx= _g182544_ 3) (apply gx#stx-plist-assq__% _g182543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist-assq
                  _g182543_))))))))
