(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1755903075)
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
      (lambda _%$args122624%_
        (apply make-instance gx#identifier-wrap::t _%$args122624%_)))
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
      (lambda _%$args122621%_
        (apply make-instance gx#syntax-wrap::t _%$args122621%_)))
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
      (lambda _%$args122618%_
        (apply make-instance gx#syntax-quote::t _%$args122618%_)))
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
      (lambda (_%stx122616%_) (symbol? (gx#stx-e _%stx122616%_))))
    (define gx#identifier-quote?
      (lambda (_%stx122614%_)
        (if (##structure-direct-instance-of? _%stx122614%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx122614%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx122609%_)
        (if (##structure-direct-instance-of? _%stx122609%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx122609%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx122609%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx122604%_)
        (if (##structure-direct-instance-of? _%stx122604%_ 'gx#syntax-quote::t)
            _%stx122604%_
            (if (##structure-direct-instance-of?
                 _%stx122604%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx122604%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx122578%_)
        (if (##structure-direct-instance-of? _%stx122578%_ 'gx#syntax-wrap::t)
            (let _%lp122581%_ ((_%e122583%_
                                (##unchecked-structure-ref
                                 _%stx122578%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks122584%_
                                (cons (##unchecked-structure-ref
                                       _%stx122578%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e122583%_)
                  (let ((_%$e122587%_
                         (##type-id (##structure-type _%e122583%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e122587%_)
                        (_%lp122581%_
                         (##unchecked-structure-ref _%e122583%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e122583%_ '3 '#f '#f)
                          _%marks122584%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e122587%_)
                                (eq? 'gx#identifier-wrap::t _%$e122587%_))
                            (##unchecked-structure-ref _%e122583%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e122587%_)
                                (_%lp122581%_
                                 (##unchecked-structure-ref
                                  _%e122583%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks122584%_)
                                _%e122583%_))))
                  (if (null? _%marks122584%_)
                      _%e122583%_
                      (if (pair? _%e122583%_)
                          (cons (gx#stx-wrap
                                 (##car _%e122583%_)
                                 _%marks122584%_)
                                (gx#stx-wrap
                                 (##cdr _%e122583%_)
                                 _%marks122584%_))
                          (if (vector? _%e122583%_)
                              (vector-map
                               (lambda (_%g122595122597%_)
                                 (gx#stx-wrap
                                  _%g122595122597%_
                                  _%marks122584%_))
                               _%e122583%_)
                              (if (box? _%e122583%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e122583%_)
                                        _%marks122584%_))
                                  _%e122583%_))))))
            (if (##structure-instance-of? _%stx122578%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx122578%_ '1 '#f '#f)
                _%stx122578%_))))
    (define gx#syntax->datum
      (lambda (_%stx122571%_)
        (if (##structure-instance-of? _%stx122571%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx122571%_ '1 '#f '#f))
            (if (pair? _%stx122571%_)
                (cons (gx#syntax->datum (##car _%stx122571%_))
                      (gx#syntax->datum (##cdr _%stx122571%_)))
                (if (vector? _%stx122571%_)
                    (vector-map gx#syntax->datum _%stx122571%_)
                    (if (box? _%stx122571%_)
                        (box (gx#syntax->datum (unbox _%stx122571%_)))
                        _%stx122571%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx122505%_ _%datum122506%_ _%src122507%_ _%quote?122508%_)
        (letrec ((_%wrap-datum122510%_
                  (lambda (_%e122543%_ _%marks122544%_)
                    (_%wrap-inner122512%_
                     _%e122543%_
                     (lambda (_%g122545122547%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g122545122547%_
                        _%src122507%_
                        _%marks122544%_)))))
                 (_%wrap-quote122511%_
                  (lambda (_%e122535%_ _%ctx122536%_ _%marks122537%_)
                    (_%wrap-inner122512%_
                     _%e122535%_
                     (lambda (_%g122538122540%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g122538122540%_
                        _%src122507%_
                        _%ctx122536%_
                        _%marks122537%_)))))
                 (_%wrap-inner122512%_
                  (lambda (_%e122523%_ _%wrap-e122524%_)
                    (let _%recur122526%_ ((_%e122528%_ _%e122523%_))
                      (if (symbol? _%e122528%_)
                          (_%wrap-e122524%_ _%e122528%_)
                          (if (pair? _%e122528%_)
                              (cons (_%recur122526%_ (##car _%e122528%_))
                                    (_%recur122526%_ (##cdr _%e122528%_)))
                              (if (vector? _%e122528%_)
                                  (vector-map _%recur122526%_ _%e122528%_)
                                  (if (box? _%e122528%_)
                                      (box (_%recur122526%_
                                            (unbox _%e122528%_)))
                                      _%e122528%_)))))))
                 (_%wrap-outer122513%_
                  (lambda (_%e122521%_)
                    (if (##structure-instance-of? _%e122521%_ 'gerbil#AST::t)
                        _%e122521%_
                        (##structure gx#AST::t _%e122521%_ _%src122507%_)))))
          (if (##structure-instance-of? _%datum122506%_ 'gerbil#AST::t)
              _%datum122506%_
              (if (not _%stx122505%_)
                  (##structure gx#AST::t _%datum122506%_ _%src122507%_)
                  (if (gx#identifier? _%stx122505%_)
                      (let ((_%stx122518%_ (gx#stx-unwrap__0 _%stx122505%_)))
                        (_%wrap-outer122513%_
                         (if (##structure-direct-instance-of?
                              _%stx122518%_
                              'gx#syntax-quote::t)
                             (if _%quote?122508%_
                                 (_%wrap-quote122511%_
                                  _%datum122506%_
                                  (##unchecked-structure-ref
                                   _%stx122518%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx122518%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum122510%_
                                  _%datum122506%_
                                  (##unchecked-structure-ref
                                   _%stx122518%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum122510%_
                              _%datum122506%_
                              (##unchecked-structure-ref
                               _%stx122518%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx122505%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx122553%_ _%datum122554%_)
        (let* ((_%src122556%_ '#f) (_%quote?122558%_ '#t))
          (gx#datum->syntax__%
           _%stx122553%_
           _%datum122554%_
           _%src122556%_
           _%quote?122558%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx122560%_ _%datum122561%_ _%src122562%_)
        (let ((_%quote?122564%_ '#t))
          (gx#datum->syntax__%
           _%stx122560%_
           _%datum122561%_
           _%src122562%_
           _%quote?122564%_))))
    (define gx#datum->syntax
      (lambda _g122704_
        (let ((_g122705_ (##length _g122704_)))
          (cond ((##fx= _g122705_ 2) (apply gx#datum->syntax__0 _g122704_))
                ((##fx= _g122705_ 3) (apply gx#datum->syntax__1 _g122704_))
                ((##fx= _g122705_ 4) (apply gx#datum->syntax__% _g122704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g122704_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx122471%_ _%marks122472%_)
        (let _%lp122474%_ ((_%e122476%_ _%stx122471%_)
                           (_%marks122477%_ _%marks122472%_)
                           (_%src122478%_ (gx#stx-source _%stx122471%_)))
          (if (##structure-direct-instance-of? _%e122476%_ 'gx#syntax-wrap::t)
              (_%lp122474%_
               (##unchecked-structure-ref _%e122476%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e122476%_ '3 '#f '#f)
                _%marks122477%_)
               (##unchecked-structure-ref _%e122476%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e122476%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks122477%_)
                      _%e122476%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e122476%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e122476%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e122476%_ '3 '#f '#f)
                        _%marks122477%_)))
                  (if (##structure-direct-instance-of?
                       _%e122476%_
                       'gx#syntax-quote::t)
                      _%e122476%_
                      (if (##structure-instance-of? _%e122476%_ 'gerbil#AST::t)
                          (_%lp122474%_
                           (##unchecked-structure-ref _%e122476%_ '1 '#f '#f)
                           _%marks122477%_
                           (##unchecked-structure-ref _%e122476%_ '2 '#f '#f))
                          (if (symbol? _%e122476%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e122476%_
                               _%src122478%_
                               (reverse _%marks122477%_))
                              (if (null? _%marks122477%_)
                                  _%e122476%_
                                  (if (pair? _%e122476%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e122476%_)
                                             _%marks122477%_)
                                            (gx#stx-wrap
                                             (##cdr _%e122476%_)
                                             _%marks122477%_))
                                      (if (vector? _%e122476%_)
                                          (vector-map
                                           (lambda (_%g122487122489%_)
                                             (gx#stx-wrap
                                              _%g122487122489%_
                                              _%marks122477%_))
                                           _%e122476%_)
                                          (if (box? _%e122476%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e122476%_)
                                                    _%marks122477%_))
                                              _%e122476%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx122497%_)
        (let ((_%marks122499%_ '()))
          (gx#stx-unwrap__% _%stx122497%_ _%marks122499%_))))
    (define gx#stx-unwrap
      (lambda _g122706_
        (let ((_g122707_ (##length _g122706_)))
          (cond ((##fx= _g122707_ 1) (apply gx#stx-unwrap__0 _g122706_))
                ((##fx= _g122707_ 2) (apply gx#stx-unwrap__% _g122706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g122706_))))))
    (define gx#stx-wrap
      (lambda (_%stx122464%_ _%marks122465%_)
        (__foldl1
         (lambda (_%mark122467%_ _%stx122468%_)
           (gx#stx-apply-mark _%stx122468%_ _%mark122467%_))
         _%stx122464%_
         _%marks122465%_)))
    (define gx#stx-rewrap
      (lambda (_%stx122458%_ _%marks122459%_)
        (__foldr1
         (lambda (_%mark122461%_ _%stx122462%_)
           (gx#stx-apply-mark _%stx122462%_ _%mark122461%_))
         _%stx122458%_
         _%marks122459%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx122452%_ _%mark122453%_)
        (if (##structure-direct-instance-of? _%stx122452%_ 'gx#syntax-quote::t)
            _%stx122452%_
            (if (and (##structure-direct-instance-of?
                      _%stx122452%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark122453%_
                          (##unchecked-structure-ref
                           _%stx122452%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx122452%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx122452%_
                 (gx#stx-source _%stx122452%_)
                 _%mark122453%_)))))
    (define gx#apply-mark
      (lambda (_%mark122416%_ _%marks122417%_)
        (let* ((_%marks122418122426%_ _%marks122417%_)
               (_%else122420122434%_
                (lambda () (cons _%mark122416%_ _%marks122417%_)))
               (_%K122422122440%_
                (lambda (_%rest122437%_ _%hd122438%_)
                  (if (eq? _%mark122416%_ _%hd122438%_)
                      _%rest122437%_
                      (cons _%mark122416%_ _%marks122417%_)))))
          (if (pair? _%marks122418122426%_)
              (let ((_%hd122423122443%_ (##car _%marks122418122426%_))
                    (_%tl122424122445%_ (##cdr _%marks122418122426%_)))
                (let* ((_%hd122448%_ _%hd122423122443%_)
                       (_%rest122450%_ _%tl122424122445%_))
                  (_%K122422122440%_ _%rest122450%_ _%hd122448%_)))
              (_%else122420122434%_)))))
    (define gx#stx-e
      (lambda (_%stx122411%_)
        (if (##structure-direct-instance-of? _%stx122411%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx122411%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx122411%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx122411%_ '1 '#f '#f)
                _%stx122411%_))))
    (define gx#stx-source
      (lambda (_%stx122409%_)
        (if (##structure-instance-of? _%stx122409%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx122409%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx122403%_ _%src122404%_)
        (if (or (##structure-instance-of? _%stx122403%_ 'gerbil#AST::t)
                (not _%src122404%_))
            _%stx122403%_
            (##structure gx#AST::t _%stx122403%_ _%src122404%_))))
    (define gx#stx-datum?
      (lambda (_%stx122401%_) (gx#self-quoting? (gx#stx-e _%stx122401%_))))
    (define gx#self-quoting?
      (lambda (_%x122384%_)
        (let ((_%$e122386%_ (immediate? _%x122384%_)))
          (if _%$e122386%_
              _%$e122386%_
              (let ((_%$e122389%_ (number? _%x122384%_)))
                (if _%$e122389%_
                    _%$e122389%_
                    (let ((_%$e122392%_ (keyword? _%x122384%_)))
                      (if _%$e122392%_
                          _%$e122392%_
                          (let ((_%$e122395%_ (string? _%x122384%_)))
                            (if _%$e122395%_
                                _%$e122395%_
                                (let ((_%$e122398%_ (vector? _%x122384%_)))
                                  (if _%$e122398%_
                                      _%$e122398%_
                                      (u8vector? _%x122384%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e122382%_) (boolean? (gx#stx-e _%e122382%_))))
    (define gx#stx-keyword?
      (lambda (_%e122380%_) (keyword? (gx#stx-e _%e122380%_))))
    (define gx#stx-char? (lambda (_%e122378%_) (char? (gx#stx-e _%e122378%_))))
    (define gx#stx-number?
      (lambda (_%e122376%_) (number? (gx#stx-e _%e122376%_))))
    (define gx#stx-fixnum?
      (lambda (_%e122374%_) (fixnum? (gx#stx-e _%e122374%_))))
    (define gx#stx-string?
      (lambda (_%e122372%_) (string? (gx#stx-e _%e122372%_))))
    (define gx#stx-null? (lambda (_%e122370%_) (null? (gx#stx-e _%e122370%_))))
    (define gx#stx-pair? (lambda (_%e122368%_) (pair? (gx#stx-e _%e122368%_))))
    (define gx#stx-list?
      (lambda (_%e122330%_)
        (let* ((_%g122331122340%_ (gx#stx-e _%e122330%_))
               (_%E122334122344%_
                (lambda ()
                  (error '"No clause matching"
                         _%g122331122340%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K122336122360%_
                 (lambda (_%rest122358%_) (gx#stx-list? _%rest122358%_)))
                (_%K122335122350%_
                 (lambda (_%tail122348%_) (null? _%tail122348%_))))
            (if (pair? _%g122331122340%_)
                (let* ((_%tl122338122363%_ (##cdr _%g122331122340%_))
                       (_%rest122366%_ _%tl122338122363%_))
                  (gx#stx-list? _%rest122366%_))
                (let ((_%tail122353%_ _%g122331122340%_))
                  (null? _%tail122353%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e122323%_)
        (let* ((_%e122325%_ (gx#stx-e _%e122323%_))
               (_%$e122327%_ (pair? _%e122325%_)))
          (if _%$e122327%_ _%$e122327%_ (null? _%e122325%_)))))
    (define gx#stx-vector?
      (lambda (_%e122321%_) (vector? (gx#stx-e _%e122321%_))))
    (define gx#stx-box? (lambda (_%e122319%_) (box? (gx#stx-e _%e122319%_))))
    (define gx#stx-eq?
      (lambda (_%x122316%_ _%y122317%_)
        (eq? (gx#stx-e _%x122316%_) (gx#stx-e _%y122317%_))))
    (define gx#stx-eqv?
      (lambda (_%x122313%_ _%y122314%_)
        (eqv? (gx#stx-e _%x122313%_) (gx#stx-e _%y122314%_))))
    (define gx#stx-equal?
      (lambda (_%x122310%_ _%y122311%_)
        (equal? (gx#stx-e _%x122310%_) (gx#stx-e _%y122311%_))))
    (define gx#stx-false? (lambda (_%x122308%_) (not (gx#stx-e _%x122308%_))))
    (define gx#stx-identifier
      (lambda (_%template122305%_ . _%args122306%_)
        (gx#datum->syntax__1
         _%template122305%_
         (apply make-symbol (gx#syntax->datum _%args122306%_))
         (gx#stx-source _%template122305%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx122303%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx122303%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx122298%_)
        (if (##structure-direct-instance-of?
             _%stx122298%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx122298%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx122298%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx122298%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx122298%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx122294%_)
        (let ((_%stx122296%_ (gx#stx-unwrap__0 _%stx122294%_)))
          (if (gx#identifier-quote? _%stx122296%_)
              (##unchecked-structure-ref _%stx122296%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx122249%_)
        (let* ((_%g122250122260%_ (gx#stx-e _%stx122249%_))
               (_%else122253122268%_ (lambda () '#f)))
          (let ((_%K122256122282%_
                 (lambda (_%rest122279%_ _%hd122280%_)
                   (if (gx#identifier? _%hd122280%_)
                       (gx#identifier-list? _%rest122279%_)
                       '#f)))
                (_%K122255122273%_ (lambda () '#t)))
            (let ((_%try-match122252122276%_
                   (lambda ()
                     (if (null? _%g122250122260%_)
                         (_%K122255122273%_)
                         (_%else122253122268%_)))))
              (if (pair? _%g122250122260%_)
                  (let ((_%tl122258122287%_ (##cdr _%g122250122260%_))
                        (_%hd122257122285%_ (##car _%g122250122260%_)))
                    (let ((_%hd122290%_ _%hd122257122285%_)
                          (_%rest122292%_ _%tl122258122287%_))
                      (_%K122256122282%_ _%rest122292%_ _%hd122290%_)))
                  (_%try-match122252122276%_)))))))
    (define gx#genident__%
      (lambda (_%e122226%_ _%src122227%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e122229%_ (gx#stx-e _%e122226%_)))
                   (if (interned-symbol? _%e122229%_) _%e122229%_ 'g)))
         (let ((_%$e122231%_ (gx#stx-source _%e122226%_)))
           (if _%$e122231%_ _%$e122231%_ _%src122227%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e122238%_ 'g) (_%src122240%_ '#f))
          (gx#genident__% _%e122238%_ _%src122240%_))))
    (define gx#genident__1
      (lambda (_%e122242%_)
        (let ((_%src122244%_ '#f))
          (gx#genident__% _%e122242%_ _%src122244%_))))
    (define gx#genident
      (lambda _g122708_
        (let ((_g122709_ (##length _g122708_)))
          (cond ((##fx= _g122709_ 0) (apply gx#genident__0 _g122708_))
                ((##fx= _g122709_ 1) (apply gx#genident__1 _g122708_))
                ((##fx= _g122709_ 2) (apply gx#genident__% _g122708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g122708_))))))
    (define gx#gentemps
      (lambda (_%stx-lst122223%_) (gx#stx-map1 gx#genident _%stx-lst122223%_)))
    (define gx#syntax->list
      (lambda (_%stx122221%_) (gx#stx-map1 values _%stx122221%_)))
    (define gx#stx-car
      (lambda (_%stx122218%_)
        (declare (safe))
        (car (gx#syntax-e _%stx122218%_))))
    (define gx#stx-cdr
      (lambda (_%stx122215%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx122215%_))))
    (define gx#stx-length
      (lambda (_%stx122180%_)
        (let _%lp122182%_ ((_%rest122184%_ _%stx122180%_) (_%n122185%_ '0))
          (let* ((_%g122186122194%_ (gx#stx-e _%rest122184%_))
                 (_%else122188122202%_ (lambda () _%n122185%_))
                 (_%K122190122207%_
                  (lambda (_%rest122205%_)
                    (_%lp122182%_ _%rest122205%_ (##fx+ _%n122185%_ '1)))))
            (if (pair? _%g122186122194%_)
                (let* ((_%tl122192122210%_ (##cdr _%g122186122194%_))
                       (_%rest122213%_ _%tl122192122210%_))
                  (_%K122190122207%_ _%rest122213%_))
                (_%else122188122202%_))))))
    (define gx#stx-for-each
      (lambda _g122710_
        (let ((_g122711_ (##length _g122710_)))
          (cond ((##fx= _g122711_ 2) (apply gx#stx-for-each1 _g122710_))
                ((##fx= _g122711_ 3) (apply gx#stx-for-each2 _g122710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g122710_))))))
    (define gx#stx-for-each1
      (lambda (_%f122123%_ _%stx122124%_)
        (if (procedure? _%f122123%_)
            '#!void
            (error '"expected procedure" _%f122123%_))
        (let _%lp122126%_ ((_%rest122128%_ _%stx122124%_))
          (let* ((_%g122129122139%_ (gx#syntax-e _%rest122128%_))
                 (_%else122132122147%_
                  (lambda () (_%f122123%_ _%rest122128%_))))
            (let ((_%K122135122161%_
                   (lambda (_%rest122158%_ _%hd122159%_)
                     (_%f122123%_ _%hd122159%_)
                     (_%lp122126%_ _%rest122158%_)))
                  (_%K122134122152%_ (lambda () '#!void)))
              (let ((_%try-match122131122155%_
                     (lambda ()
                       (if (null? _%g122129122139%_)
                           (_%K122134122152%_)
                           (_%else122132122147%_)))))
                (if (pair? _%g122129122139%_)
                    (let ((_%tl122137122166%_ (##cdr _%g122129122139%_))
                          (_%hd122136122164%_ (##car _%g122129122139%_)))
                      (let ((_%hd122169%_ _%hd122136122164%_)
                            (_%rest122171%_ _%tl122137122166%_))
                        (_%K122135122161%_ _%rest122171%_ _%hd122169%_)))
                    (_%try-match122131122155%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f122028%_ _%xstx122029%_ _%ystx122030%_)
        (if (procedure? _%f122028%_)
            '#!void
            (error '"expected procedure" _%f122028%_))
        (let _%lp122032%_ ((_%xrest122034%_ _%xstx122029%_)
                           (_%yrest122035%_ _%ystx122030%_))
          (let* ((_%g122036122046%_ (gx#syntax-e _%xrest122034%_))
                 (_%else122039122054%_ (lambda () '#!void)))
            (let ((_%K122042122111%_
                   (lambda (_%xrest122080%_ _%xhd122081%_)
                     (let* ((_%g122082122089%_ (gx#syntax-e _%yrest122035%_))
                            (_%E122084122093%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g122082122089%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K122085122099%_
                             (lambda (_%yrest122096%_ _%yhd122097%_)
                               (_%f122028%_ _%xhd122081%_ _%yhd122097%_)
                               (_%lp122032%_
                                _%xrest122080%_
                                _%yrest122096%_))))
                       (if (pair? _%g122082122089%_)
                           (let ((_%hd122086122102%_ (##car _%g122082122089%_))
                                 (_%tl122087122104%_
                                  (##cdr _%g122082122089%_)))
                             (let* ((_%yhd122107%_ _%hd122086122102%_)
                                    (_%yrest122109%_ _%tl122087122104%_))
                               (_%K122085122099%_
                                _%yrest122109%_
                                _%yhd122107%_)))
                           (_%E122084122093%_)))))
                  (_%K122041122074%_
                   (lambda ()
                     (let* ((_%yrest122058122063%_ _%yrest122035%_)
                            (_%E122060122067%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest122058122063%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K122061122071%_
                             (lambda ()
                               (_%f122028%_ _%xrest122034%_ _%yrest122035%_))))
                       (if (gx#stx-null? _%yrest122058122063%_)
                           (_%E122060122067%_)
                           (_%K122061122071%_))))))
              (let ((_%try-match122038122077%_
                     (lambda ()
                       (if (null? _%g122036122046%_)
                           (_%else122039122054%_)
                           (_%K122041122074%_)))))
                (if (pair? _%g122036122046%_)
                    (let ((_%tl122044122116%_ (##cdr _%g122036122046%_))
                          (_%hd122043122114%_ (##car _%g122036122046%_)))
                      (let ((_%xhd122119%_ _%hd122043122114%_)
                            (_%xrest122121%_ _%tl122044122116%_))
                        (_%K122042122111%_ _%xrest122121%_ _%xhd122119%_)))
                    (_%try-match122038122077%_))))))))
    (define gx#stx-map
      (lambda _g122712_
        (let ((_g122713_ (##length _g122712_)))
          (cond ((##fx= _g122713_ 2) (apply gx#stx-map1 _g122712_))
                ((##fx= _g122713_ 3) (apply gx#stx-map2 _g122712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g122712_))))))
    (define gx#stx-map1
      (lambda (_%f121971%_ _%stx121972%_)
        (if (procedure? _%f121971%_)
            '#!void
            (error '"expected procedure" _%f121971%_))
        (let _%recur121974%_ ((_%rest121976%_ _%stx121972%_))
          (let* ((_%g121977121987%_ (gx#syntax-e _%rest121976%_))
                 (_%else121980121995%_
                  (lambda () (_%f121971%_ _%rest121976%_))))
            (let ((_%K121983122009%_
                   (lambda (_%rest122006%_ _%hd122007%_)
                     (cons (_%f121971%_ _%hd122007%_)
                           (_%recur121974%_ _%rest122006%_))))
                  (_%K121982122000%_ (lambda () '())))
              (let ((_%try-match121979122003%_
                     (lambda ()
                       (if (null? _%g121977121987%_)
                           (_%K121982122000%_)
                           (_%else121980121995%_)))))
                (if (pair? _%g121977121987%_)
                    (let ((_%tl121985122014%_ (##cdr _%g121977121987%_))
                          (_%hd121984122012%_ (##car _%g121977121987%_)))
                      (let ((_%hd122017%_ _%hd121984122012%_)
                            (_%rest122019%_ _%tl121985122014%_))
                        (_%K121983122009%_ _%rest122019%_ _%hd122017%_)))
                    (_%try-match121979122003%_))))))))
    (define gx#stx-map2
      (lambda (_%f121876%_ _%xstx121877%_ _%ystx121878%_)
        (if (procedure? _%f121876%_)
            '#!void
            (error '"expected procedure" _%f121876%_))
        (let _%recur121880%_ ((_%xrest121882%_ _%xstx121877%_)
                              (_%yrest121883%_ _%ystx121878%_))
          (let* ((_%g121884121894%_ (gx#syntax-e _%xrest121882%_))
                 (_%else121887121902%_ (lambda () '())))
            (let ((_%K121890121959%_
                   (lambda (_%xrest121928%_ _%xhd121929%_)
                     (let* ((_%g121930121937%_ (gx#syntax-e _%yrest121883%_))
                            (_%E121932121941%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g121930121937%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K121933121947%_
                             (lambda (_%yrest121944%_ _%yhd121945%_)
                               (cons (_%f121876%_ _%xhd121929%_ _%yhd121945%_)
                                     (_%recur121880%_
                                      _%xrest121928%_
                                      _%yrest121944%_)))))
                       (if (pair? _%g121930121937%_)
                           (let ((_%hd121934121950%_ (##car _%g121930121937%_))
                                 (_%tl121935121952%_
                                  (##cdr _%g121930121937%_)))
                             (let* ((_%yhd121955%_ _%hd121934121950%_)
                                    (_%yrest121957%_ _%tl121935121952%_))
                               (_%K121933121947%_
                                _%yrest121957%_
                                _%yhd121955%_)))
                           (_%E121932121941%_)))))
                  (_%K121889121922%_
                   (lambda ()
                     (let* ((_%yrest121906121911%_ _%yrest121883%_)
                            (_%E121908121915%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest121906121911%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K121909121919%_
                             (lambda ()
                               (_%f121876%_ _%xrest121882%_ _%yrest121883%_))))
                       (if (gx#stx-null? _%yrest121906121911%_)
                           (_%E121908121915%_)
                           (_%K121909121919%_))))))
              (let ((_%try-match121886121925%_
                     (lambda ()
                       (if (null? _%g121884121894%_)
                           (_%else121887121902%_)
                           (_%K121889121922%_)))))
                (if (pair? _%g121884121894%_)
                    (let ((_%tl121892121964%_ (##cdr _%g121884121894%_))
                          (_%hd121891121962%_ (##car _%g121884121894%_)))
                      (let ((_%xhd121967%_ _%hd121891121962%_)
                            (_%xrest121969%_ _%tl121892121964%_))
                        (_%K121890121959%_ _%xrest121969%_ _%xhd121967%_)))
                    (_%try-match121886121925%_))))))))
    (define gx#stx-andmap
      (lambda (_%f121826%_ _%stx121827%_)
        (if (procedure? _%f121826%_)
            '#!void
            (error '"expected procedure" _%f121826%_))
        (let _%lp121829%_ ((_%rest121831%_ _%stx121827%_))
          (let* ((_%g121832121842%_ (gx#syntax-e _%rest121831%_))
                 (_%else121835121850%_
                  (lambda () (_%f121826%_ _%rest121831%_))))
            (let ((_%K121838121864%_
                   (lambda (_%rest121861%_ _%hd121862%_)
                     (if (_%f121826%_ _%hd121862%_)
                         (_%lp121829%_ _%rest121861%_)
                         '#f)))
                  (_%K121837121855%_ (lambda () '#t)))
              (let ((_%try-match121834121858%_
                     (lambda ()
                       (if (null? _%g121832121842%_)
                           (_%K121837121855%_)
                           (_%else121835121850%_)))))
                (if (pair? _%g121832121842%_)
                    (let ((_%tl121840121869%_ (##cdr _%g121832121842%_))
                          (_%hd121839121867%_ (##car _%g121832121842%_)))
                      (let ((_%hd121872%_ _%hd121839121867%_)
                            (_%rest121874%_ _%tl121840121869%_))
                        (_%K121838121864%_ _%rest121874%_ _%hd121872%_)))
                    (_%try-match121834121858%_))))))))
    (define gx#stx-ormap
      (lambda (_%f121773%_ _%stx121774%_)
        (if (procedure? _%f121773%_)
            '#!void
            (error '"expected procedure" _%f121773%_))
        (let _%lp121776%_ ((_%rest121778%_ _%stx121774%_))
          (let* ((_%g121779121789%_ (gx#syntax-e _%rest121778%_))
                 (_%else121782121797%_
                  (lambda () (_%f121773%_ _%rest121778%_))))
            (let ((_%K121785121814%_
                   (lambda (_%rest121808%_ _%hd121809%_)
                     (let ((_%$e121811%_ (_%f121773%_ _%hd121809%_)))
                       (if _%$e121811%_
                           _%$e121811%_
                           (_%lp121776%_ _%rest121808%_)))))
                  (_%K121784121802%_ (lambda () '#f)))
              (let ((_%try-match121781121805%_
                     (lambda ()
                       (if (null? _%g121779121789%_)
                           (_%K121784121802%_)
                           (_%else121782121797%_)))))
                (if (pair? _%g121779121789%_)
                    (let ((_%tl121787121819%_ (##cdr _%g121779121789%_))
                          (_%hd121786121817%_ (##car _%g121779121789%_)))
                      (let ((_%hd121822%_ _%hd121786121817%_)
                            (_%rest121824%_ _%tl121787121819%_))
                        (_%K121785121814%_ _%rest121824%_ _%hd121822%_)))
                    (_%try-match121781121805%_))))))))
    (define gx#stx-foldl
      (lambda (_%f121721%_ _%iv121722%_ _%stx121723%_)
        (if (procedure? _%f121721%_)
            '#!void
            (error '"expected procedure" _%f121721%_))
        (let _%lp121725%_ ((_%r121727%_ _%iv121722%_)
                           (_%rest121728%_ _%stx121723%_))
          (let* ((_%g121729121739%_ (gx#syntax-e _%rest121728%_))
                 (_%else121732121747%_
                  (lambda () (_%f121721%_ _%rest121728%_ _%r121727%_))))
            (let ((_%K121735121761%_
                   (lambda (_%rest121758%_ _%hd121759%_)
                     (_%lp121725%_
                      (_%f121721%_ _%hd121759%_ _%r121727%_)
                      _%rest121758%_)))
                  (_%K121734121752%_ (lambda () _%r121727%_)))
              (let ((_%try-match121731121755%_
                     (lambda ()
                       (if (null? _%g121729121739%_)
                           (_%K121734121752%_)
                           (_%else121732121747%_)))))
                (if (pair? _%g121729121739%_)
                    (let ((_%tl121737121766%_ (##cdr _%g121729121739%_))
                          (_%hd121736121764%_ (##car _%g121729121739%_)))
                      (let ((_%hd121769%_ _%hd121736121764%_)
                            (_%rest121771%_ _%tl121737121766%_))
                        (_%K121735121761%_ _%rest121771%_ _%hd121769%_)))
                    (_%try-match121731121755%_))))))))
    (define gx#stx-foldr
      (lambda (_%f121670%_ _%iv121671%_ _%stx121672%_)
        (if (procedure? _%f121670%_)
            '#!void
            (error '"expected procedure" _%f121670%_))
        (let _%recur121674%_ ((_%rest121676%_ _%stx121672%_))
          (let* ((_%g121677121687%_ (gx#syntax-e _%rest121676%_))
                 (_%else121680121695%_
                  (lambda () (_%f121670%_ _%rest121676%_ _%iv121671%_))))
            (let ((_%K121683121709%_
                   (lambda (_%rest121706%_ _%hd121707%_)
                     (_%f121670%_
                      _%hd121707%_
                      (_%recur121674%_ _%rest121706%_))))
                  (_%K121682121700%_ (lambda () _%iv121671%_)))
              (let ((_%try-match121679121703%_
                     (lambda ()
                       (if (null? _%g121677121687%_)
                           (_%K121682121700%_)
                           (_%else121680121695%_)))))
                (if (pair? _%g121677121687%_)
                    (let ((_%tl121685121714%_ (##cdr _%g121677121687%_))
                          (_%hd121684121712%_ (##car _%g121677121687%_)))
                      (let ((_%hd121717%_ _%hd121684121712%_)
                            (_%rest121719%_ _%tl121685121714%_))
                        (_%K121683121709%_ _%rest121719%_ _%hd121717%_)))
                    (_%try-match121679121703%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx121668%_) (gx#stx-foldl cons '() _%stx121668%_)))
    (define gx#stx-last
      (lambda (_%stx121629%_)
        (let _%lp121631%_ ((_%rest121633%_ _%stx121629%_))
          (let* ((_%g121634121642%_ (gx#syntax-e _%rest121633%_))
                 (_%else121636121650%_ (lambda () _%rest121633%_))
                 (_%K121638121656%_
                  (lambda (_%rest121653%_ _%hd121654%_)
                    (if (gx#stx-null? _%rest121653%_)
                        _%hd121654%_
                        (_%lp121631%_ _%rest121653%_)))))
            (if (pair? _%g121634121642%_)
                (let ((_%hd121639121659%_ (##car _%g121634121642%_))
                      (_%tl121640121661%_ (##cdr _%g121634121642%_)))
                  (let* ((_%hd121664%_ _%hd121639121659%_)
                         (_%rest121666%_ _%tl121640121661%_))
                    (_%K121638121656%_ _%rest121666%_ _%hd121664%_)))
                (_%else121636121650%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx121600%_)
        (let _%lp121602%_ ((_%hd121604%_ _%stx121600%_))
          (let* ((_%g121605121612%_ (gx#syntax-e _%hd121604%_))
                 (_%E121607121616%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g121605121612%_
                           '([_ . rest]))
                    '#!void))
                 (_%K121608121621%_
                  (lambda (_%rest121619%_)
                    (if (gx#stx-pair? _%rest121619%_)
                        (_%lp121602%_ _%rest121619%_)
                        _%hd121604%_))))
            (if (pair? _%g121605121612%_)
                (let* ((_%tl121610121624%_ (##cdr _%g121605121612%_))
                       (_%rest121627%_ _%tl121610121624%_))
                  (_%K121608121621%_ _%rest121627%_))
                (_%E121607121616%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx121569%_ _%k121570%_)
        (let _%lp121572%_ ((_%rest121574%_ _%stx121569%_)
                           (_%k121575%_ _%k121570%_))
          (if (fxpositive? _%k121575%_)
              (let* ((_%g121576121583%_ (gx#syntax-e _%rest121574%_))
                     (_%E121578121587%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g121576121583%_
                               '([_ . rest]))
                        '#!void))
                     (_%K121579121592%_
                      (lambda (_%rest121590%_)
                        (_%lp121572%_ _%rest121590%_ (##fx- _%k121575%_ '1)))))
                (if (pair? _%g121576121583%_)
                    (let* ((_%tl121581121595%_ (##cdr _%g121576121583%_))
                           (_%rest121598%_ _%tl121581121595%_))
                      (_%K121579121592%_ _%rest121598%_))
                    (_%E121578121587%_)))
              _%rest121574%_))))
    (define gx#stx-list-ref
      (lambda (_%stx121566%_ _%k121567%_)
        (gx#stx-car (gx#stx-list-tail _%stx121566%_ _%k121567%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx121478%_ _%key?121479%_)
        (if (procedure? _%key?121479%_)
            '#!void
            (error '"expected procedure" _%key?121479%_))
        (let _%lp121481%_ ((_%rest121483%_ _%stx121478%_))
          (let* ((_%g121484121494%_ (gx#stx-e _%rest121483%_))
                 (_%else121487121502%_ (lambda () '#f)))
            (let ((_%K121490121544%_
                   (lambda (_%rest121513%_ _%hd121514%_)
                     (if (_%key?121479%_ _%hd121514%_)
                         (let* ((_%g121515121523%_ (gx#stx-e _%rest121513%_))
                                (_%else121517121531%_ (lambda () '#f))
                                (_%K121519121536%_
                                 (lambda (_%rest121534%_)
                                   (_%lp121481%_ _%rest121534%_))))
                           (if (pair? _%g121515121523%_)
                               (let* ((_%tl121521121539%_
                                       (##cdr _%g121515121523%_))
                                      (_%rest121542%_ _%tl121521121539%_))
                                 (_%lp121481%_ _%rest121542%_))
                               (_%else121517121531%_)))
                         '#f)))
                  (_%K121489121507%_ (lambda () '#t)))
              (let ((_%try-match121486121510%_
                     (lambda ()
                       (if (null? _%g121484121494%_)
                           (_%K121489121507%_)
                           (_%else121487121502%_)))))
                (if (pair? _%g121484121494%_)
                    (let ((_%tl121492121549%_ (##cdr _%g121484121494%_))
                          (_%hd121491121547%_ (##car _%g121484121494%_)))
                      (let ((_%hd121552%_ _%hd121491121547%_)
                            (_%rest121554%_ _%tl121492121549%_))
                        (_%K121490121544%_ _%rest121554%_ _%hd121552%_)))
                    (_%try-match121486121510%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx121559%_)
        (let ((_%key?121561%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx121559%_ _%key?121561%_))))
    (define gx#stx-plist?
      (lambda _g122714_
        (let ((_g122715_ (##length _g122714_)))
          (cond ((##fx= _g122715_ 1) (apply gx#stx-plist?__0 _g122714_))
                ((##fx= _g122715_ 2) (apply gx#stx-plist?__% _g122714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g122714_))))))
    (define gx#stx-getq__%
      (lambda (_%key121396%_ _%stx121397%_ _%key=?121398%_)
        (if (procedure? _%key=?121398%_)
            '#!void
            (error '"expected procedure" _%key=?121398%_))
        (let _%lp121400%_ ((_%rest121402%_ _%stx121397%_))
          (let* ((_%g121403121411%_ (gx#syntax-e _%rest121402%_))
                 (_%else121405121419%_ (lambda () '#f))
                 (_%K121407121453%_
                  (lambda (_%rest121422%_ _%hd121423%_)
                    (let* ((_%g121424121431%_ (gx#syntax-e _%rest121422%_))
                           (_%E121426121435%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g121424121431%_
                                     '([val . rest]))
                              '#!void))
                           (_%K121427121441%_
                            (lambda (_%rest121438%_ _%val121439%_)
                              (if (_%key=?121398%_ _%hd121423%_ _%key121396%_)
                                  _%val121439%_
                                  (_%lp121400%_ _%rest121438%_)))))
                      (if (pair? _%g121424121431%_)
                          (let ((_%hd121428121444%_ (##car _%g121424121431%_))
                                (_%tl121429121446%_ (##cdr _%g121424121431%_)))
                            (let* ((_%val121449%_ _%hd121428121444%_)
                                   (_%rest121451%_ _%tl121429121446%_))
                              (_%K121427121441%_
                               _%rest121451%_
                               _%val121449%_)))
                          (_%E121426121435%_))))))
            (if (pair? _%g121403121411%_)
                (let ((_%hd121408121456%_ (##car _%g121403121411%_))
                      (_%tl121409121458%_ (##cdr _%g121403121411%_)))
                  (let* ((_%hd121461%_ _%hd121408121456%_)
                         (_%rest121463%_ _%tl121409121458%_))
                    (_%K121407121453%_ _%rest121463%_ _%hd121461%_)))
                (_%else121405121419%_))))))
    (define gx#stx-getq__0
      (lambda (_%key121468%_ _%stx121469%_)
        (let ((_%key=?121471%_ gx#stx-eq?))
          (gx#stx-getq__% _%key121468%_ _%stx121469%_ _%key=?121471%_))))
    (define gx#stx-getq
      (lambda _g122716_
        (let ((_g122717_ (##length _g122716_)))
          (cond ((##fx= _g122717_ 2) (apply gx#stx-getq__0 _g122716_))
                ((##fx= _g122717_ 3) (apply gx#stx-getq__% _g122716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g122716_))))))))
