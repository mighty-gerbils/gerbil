(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1769382894)
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
      (lambda _%$args130426%_
        (apply make-instance gx#identifier-wrap::t _%$args130426%_)))
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
      (lambda _%$args130423%_
        (apply make-instance gx#syntax-wrap::t _%$args130423%_)))
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
      (lambda _%$args130420%_
        (apply make-instance gx#syntax-quote::t _%$args130420%_)))
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
      (lambda (_%stx130418%_) (symbol? (gx#stx-e _%stx130418%_))))
    (define gx#identifier-quote?
      (lambda (_%stx130416%_)
        (if (##structure-direct-instance-of? _%stx130416%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx130416%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx130411%_)
        (if (##structure-direct-instance-of? _%stx130411%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx130411%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx130411%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx130406%_)
        (if (##structure-direct-instance-of? _%stx130406%_ 'gx#syntax-quote::t)
            _%stx130406%_
            (if (##structure-direct-instance-of?
                 _%stx130406%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx130406%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx130380%_)
        (if (##structure-direct-instance-of? _%stx130380%_ 'gx#syntax-wrap::t)
            (let _%lp130383%_ ((_%e130385%_
                                (##unchecked-structure-ref
                                 _%stx130380%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks130386%_
                                (cons (##unchecked-structure-ref
                                       _%stx130380%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e130385%_)
                  (let ((_%$e130389%_
                         (##type-id (##structure-type _%e130385%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e130389%_)
                        (_%lp130383%_
                         (##unchecked-structure-ref _%e130385%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e130385%_ '3 '#f '#f)
                          _%marks130386%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e130389%_)
                                (eq? 'gx#identifier-wrap::t _%$e130389%_))
                            (##unchecked-structure-ref _%e130385%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e130389%_)
                                (_%lp130383%_
                                 (##unchecked-structure-ref
                                  _%e130385%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks130386%_)
                                _%e130385%_))))
                  (if (null? _%marks130386%_)
                      _%e130385%_
                      (if (pair? _%e130385%_)
                          (cons (gx#stx-wrap
                                 (##car _%e130385%_)
                                 _%marks130386%_)
                                (gx#stx-wrap
                                 (##cdr _%e130385%_)
                                 _%marks130386%_))
                          (if (vector? _%e130385%_)
                              (vector-map
                               (lambda (_%g130397130399%_)
                                 (gx#stx-wrap
                                  _%g130397130399%_
                                  _%marks130386%_))
                               _%e130385%_)
                              (if (box? _%e130385%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e130385%_)
                                        _%marks130386%_))
                                  _%e130385%_))))))
            (if (##structure-instance-of? _%stx130380%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx130380%_ '1 '#f '#f)
                _%stx130380%_))))
    (define gx#syntax->datum
      (lambda (_%stx130373%_)
        (if (##structure-instance-of? _%stx130373%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx130373%_ '1 '#f '#f))
            (if (pair? _%stx130373%_)
                (cons (gx#syntax->datum (##car _%stx130373%_))
                      (gx#syntax->datum (##cdr _%stx130373%_)))
                (if (vector? _%stx130373%_)
                    (vector-map gx#syntax->datum _%stx130373%_)
                    (if (box? _%stx130373%_)
                        (box (gx#syntax->datum (unbox _%stx130373%_)))
                        _%stx130373%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx130307%_ _%datum130308%_ _%src130309%_ _%quote?130310%_)
        (letrec ((_%wrap-datum130312%_
                  (lambda (_%e130345%_ _%marks130346%_)
                    (_%wrap-inner130314%_
                     _%e130345%_
                     (lambda (_%g130347130349%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g130347130349%_
                        _%src130309%_
                        _%marks130346%_)))))
                 (_%wrap-quote130313%_
                  (lambda (_%e130337%_ _%ctx130338%_ _%marks130339%_)
                    (_%wrap-inner130314%_
                     _%e130337%_
                     (lambda (_%g130340130342%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g130340130342%_
                        _%src130309%_
                        _%ctx130338%_
                        _%marks130339%_)))))
                 (_%wrap-inner130314%_
                  (lambda (_%e130325%_ _%wrap-e130326%_)
                    (let _%recur130328%_ ((_%e130330%_ _%e130325%_))
                      (if (symbol? _%e130330%_)
                          (_%wrap-e130326%_ _%e130330%_)
                          (if (pair? _%e130330%_)
                              (cons (_%recur130328%_ (##car _%e130330%_))
                                    (_%recur130328%_ (##cdr _%e130330%_)))
                              (if (vector? _%e130330%_)
                                  (vector-map _%recur130328%_ _%e130330%_)
                                  (if (box? _%e130330%_)
                                      (box (_%recur130328%_
                                            (unbox _%e130330%_)))
                                      _%e130330%_)))))))
                 (_%wrap-outer130315%_
                  (lambda (_%e130323%_)
                    (if (##structure-instance-of? _%e130323%_ 'gerbil#AST::t)
                        _%e130323%_
                        (##structure gx#AST::t _%e130323%_ _%src130309%_)))))
          (if (##structure-instance-of? _%datum130308%_ 'gerbil#AST::t)
              _%datum130308%_
              (if (not _%stx130307%_)
                  (##structure gx#AST::t _%datum130308%_ _%src130309%_)
                  (if (gx#identifier? _%stx130307%_)
                      (let ((_%stx130320%_ (gx#stx-unwrap__0 _%stx130307%_)))
                        (_%wrap-outer130315%_
                         (if (##structure-direct-instance-of?
                              _%stx130320%_
                              'gx#syntax-quote::t)
                             (if _%quote?130310%_
                                 (_%wrap-quote130313%_
                                  _%datum130308%_
                                  (##unchecked-structure-ref
                                   _%stx130320%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx130320%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum130312%_
                                  _%datum130308%_
                                  (##unchecked-structure-ref
                                   _%stx130320%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum130312%_
                              _%datum130308%_
                              (##unchecked-structure-ref
                               _%stx130320%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx130307%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx130355%_ _%datum130356%_)
        (let* ((_%src130358%_ '#f) (_%quote?130360%_ '#t))
          (gx#datum->syntax__%
           _%stx130355%_
           _%datum130356%_
           _%src130358%_
           _%quote?130360%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx130362%_ _%datum130363%_ _%src130364%_)
        (let ((_%quote?130366%_ '#t))
          (gx#datum->syntax__%
           _%stx130362%_
           _%datum130363%_
           _%src130364%_
           _%quote?130366%_))))
    (define gx#datum->syntax
      (lambda _g130506_
        (let ((_g130507_ (##length _g130506_)))
          (cond ((##fx= _g130507_ 2) (apply gx#datum->syntax__0 _g130506_))
                ((##fx= _g130507_ 3) (apply gx#datum->syntax__1 _g130506_))
                ((##fx= _g130507_ 4) (apply gx#datum->syntax__% _g130506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g130506_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx130273%_ _%marks130274%_)
        (let _%lp130276%_ ((_%e130278%_ _%stx130273%_)
                           (_%marks130279%_ _%marks130274%_)
                           (_%src130280%_ (gx#stx-source _%stx130273%_)))
          (if (##structure-direct-instance-of? _%e130278%_ 'gx#syntax-wrap::t)
              (_%lp130276%_
               (##unchecked-structure-ref _%e130278%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e130278%_ '3 '#f '#f)
                _%marks130279%_)
               (##unchecked-structure-ref _%e130278%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e130278%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks130279%_)
                      _%e130278%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e130278%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e130278%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e130278%_ '3 '#f '#f)
                        _%marks130279%_)))
                  (if (##structure-direct-instance-of?
                       _%e130278%_
                       'gx#syntax-quote::t)
                      _%e130278%_
                      (if (##structure-instance-of? _%e130278%_ 'gerbil#AST::t)
                          (_%lp130276%_
                           (##unchecked-structure-ref _%e130278%_ '1 '#f '#f)
                           _%marks130279%_
                           (##unchecked-structure-ref _%e130278%_ '2 '#f '#f))
                          (if (symbol? _%e130278%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e130278%_
                               _%src130280%_
                               (reverse _%marks130279%_))
                              (if (null? _%marks130279%_)
                                  _%e130278%_
                                  (if (pair? _%e130278%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e130278%_)
                                             _%marks130279%_)
                                            (gx#stx-wrap
                                             (##cdr _%e130278%_)
                                             _%marks130279%_))
                                      (if (vector? _%e130278%_)
                                          (vector-map
                                           (lambda (_%g130289130291%_)
                                             (gx#stx-wrap
                                              _%g130289130291%_
                                              _%marks130279%_))
                                           _%e130278%_)
                                          (if (box? _%e130278%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e130278%_)
                                                    _%marks130279%_))
                                              _%e130278%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx130299%_)
        (let ((_%marks130301%_ '()))
          (gx#stx-unwrap__% _%stx130299%_ _%marks130301%_))))
    (define gx#stx-unwrap
      (lambda _g130508_
        (let ((_g130509_ (##length _g130508_)))
          (cond ((##fx= _g130509_ 1) (apply gx#stx-unwrap__0 _g130508_))
                ((##fx= _g130509_ 2) (apply gx#stx-unwrap__% _g130508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g130508_))))))
    (define gx#stx-wrap
      (lambda (_%stx130266%_ _%marks130267%_)
        (__foldl1
         (lambda (_%mark130269%_ _%stx130270%_)
           (gx#stx-apply-mark _%stx130270%_ _%mark130269%_))
         _%stx130266%_
         _%marks130267%_)))
    (define gx#stx-rewrap
      (lambda (_%stx130260%_ _%marks130261%_)
        (__foldr1
         (lambda (_%mark130263%_ _%stx130264%_)
           (gx#stx-apply-mark _%stx130264%_ _%mark130263%_))
         _%stx130260%_
         _%marks130261%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx130254%_ _%mark130255%_)
        (if (##structure-direct-instance-of? _%stx130254%_ 'gx#syntax-quote::t)
            _%stx130254%_
            (if (and (##structure-direct-instance-of?
                      _%stx130254%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark130255%_
                          (##unchecked-structure-ref
                           _%stx130254%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx130254%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx130254%_
                 (gx#stx-source _%stx130254%_)
                 _%mark130255%_)))))
    (define gx#apply-mark
      (lambda (_%mark130218%_ _%marks130219%_)
        (let* ((_%marks130220130228%_ _%marks130219%_)
               (_%else130222130236%_
                (lambda () (cons _%mark130218%_ _%marks130219%_)))
               (_%K130224130242%_
                (lambda (_%rest130239%_ _%hd130240%_)
                  (if (eq? _%mark130218%_ _%hd130240%_)
                      _%rest130239%_
                      (cons _%mark130218%_ _%marks130219%_)))))
          (if (pair? _%marks130220130228%_)
              (let ((_%hd130225130245%_ (##car _%marks130220130228%_))
                    (_%tl130226130247%_ (##cdr _%marks130220130228%_)))
                (let* ((_%hd130250%_ _%hd130225130245%_)
                       (_%rest130252%_ _%tl130226130247%_))
                  (_%K130224130242%_ _%rest130252%_ _%hd130250%_)))
              (_%else130222130236%_)))))
    (define gx#stx-e
      (lambda (_%stx130213%_)
        (if (##structure-direct-instance-of? _%stx130213%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx130213%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx130213%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx130213%_ '1 '#f '#f)
                _%stx130213%_))))
    (define gx#stx-source
      (lambda (_%stx130211%_)
        (if (##structure-instance-of? _%stx130211%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx130211%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx130205%_ _%src130206%_)
        (if (or (##structure-instance-of? _%stx130205%_ 'gerbil#AST::t)
                (not _%src130206%_))
            _%stx130205%_
            (##structure gx#AST::t _%stx130205%_ _%src130206%_))))
    (define gx#stx-datum?
      (lambda (_%stx130203%_) (gx#self-quoting? (gx#stx-e _%stx130203%_))))
    (define gx#self-quoting?
      (lambda (_%x130186%_)
        (let ((_%$e130188%_ (immediate? _%x130186%_)))
          (if _%$e130188%_
              _%$e130188%_
              (let ((_%$e130191%_ (number? _%x130186%_)))
                (if _%$e130191%_
                    _%$e130191%_
                    (let ((_%$e130194%_ (keyword? _%x130186%_)))
                      (if _%$e130194%_
                          _%$e130194%_
                          (let ((_%$e130197%_ (string? _%x130186%_)))
                            (if _%$e130197%_
                                _%$e130197%_
                                (let ((_%$e130200%_ (vector? _%x130186%_)))
                                  (if _%$e130200%_
                                      _%$e130200%_
                                      (u8vector? _%x130186%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e130184%_) (boolean? (gx#stx-e _%e130184%_))))
    (define gx#stx-keyword?
      (lambda (_%e130182%_) (keyword? (gx#stx-e _%e130182%_))))
    (define gx#stx-char? (lambda (_%e130180%_) (char? (gx#stx-e _%e130180%_))))
    (define gx#stx-number?
      (lambda (_%e130178%_) (number? (gx#stx-e _%e130178%_))))
    (define gx#stx-fixnum?
      (lambda (_%e130176%_) (fixnum? (gx#stx-e _%e130176%_))))
    (define gx#stx-string?
      (lambda (_%e130174%_) (string? (gx#stx-e _%e130174%_))))
    (define gx#stx-null? (lambda (_%e130172%_) (null? (gx#stx-e _%e130172%_))))
    (define gx#stx-pair? (lambda (_%e130170%_) (pair? (gx#stx-e _%e130170%_))))
    (define gx#stx-list?
      (lambda (_%e130132%_)
        (let* ((_%g130133130142%_ (gx#stx-e _%e130132%_))
               (_%E130136130146%_
                (lambda ()
                  (error '"No clause matching"
                         _%g130133130142%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K130138130162%_
                 (lambda (_%rest130160%_) (gx#stx-list? _%rest130160%_)))
                (_%K130137130152%_
                 (lambda (_%tail130150%_) (null? _%tail130150%_))))
            (if (pair? _%g130133130142%_)
                (let* ((_%tl130140130165%_ (##cdr _%g130133130142%_))
                       (_%rest130168%_ _%tl130140130165%_))
                  (gx#stx-list? _%rest130168%_))
                (let ((_%tail130155%_ _%g130133130142%_))
                  (null? _%tail130155%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e130125%_)
        (let* ((_%e130127%_ (gx#stx-e _%e130125%_))
               (_%$e130129%_ (pair? _%e130127%_)))
          (if _%$e130129%_ _%$e130129%_ (null? _%e130127%_)))))
    (define gx#stx-vector?
      (lambda (_%e130123%_) (vector? (gx#stx-e _%e130123%_))))
    (define gx#stx-box? (lambda (_%e130121%_) (box? (gx#stx-e _%e130121%_))))
    (define gx#stx-eq?
      (lambda (_%x130118%_ _%y130119%_)
        (eq? (gx#stx-e _%x130118%_) (gx#stx-e _%y130119%_))))
    (define gx#stx-eqv?
      (lambda (_%x130115%_ _%y130116%_)
        (eqv? (gx#stx-e _%x130115%_) (gx#stx-e _%y130116%_))))
    (define gx#stx-equal?
      (lambda (_%x130112%_ _%y130113%_)
        (equal? (gx#stx-e _%x130112%_) (gx#stx-e _%y130113%_))))
    (define gx#stx-false? (lambda (_%x130110%_) (not (gx#stx-e _%x130110%_))))
    (define gx#stx-identifier
      (lambda (_%template130107%_ . _%args130108%_)
        (gx#datum->syntax__1
         _%template130107%_
         (apply make-symbol (gx#syntax->datum _%args130108%_))
         (gx#stx-source _%template130107%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx130105%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx130105%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx130100%_)
        (if (##structure-direct-instance-of?
             _%stx130100%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx130100%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx130100%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx130100%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx130100%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx130096%_)
        (let ((_%stx130098%_ (gx#stx-unwrap__0 _%stx130096%_)))
          (if (gx#identifier-quote? _%stx130098%_)
              (##unchecked-structure-ref _%stx130098%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx130051%_)
        (let* ((_%g130052130062%_ (gx#stx-e _%stx130051%_))
               (_%else130055130070%_ (lambda () '#f)))
          (let ((_%K130058130084%_
                 (lambda (_%rest130081%_ _%hd130082%_)
                   (if (gx#identifier? _%hd130082%_)
                       (gx#identifier-list? _%rest130081%_)
                       '#f)))
                (_%K130057130075%_ (lambda () '#t)))
            (let ((_%try-match130054130078%_
                   (lambda ()
                     (if (null? _%g130052130062%_)
                         (_%K130057130075%_)
                         (_%else130055130070%_)))))
              (if (pair? _%g130052130062%_)
                  (let ((_%tl130060130089%_ (##cdr _%g130052130062%_))
                        (_%hd130059130087%_ (##car _%g130052130062%_)))
                    (let ((_%hd130092%_ _%hd130059130087%_)
                          (_%rest130094%_ _%tl130060130089%_))
                      (_%K130058130084%_ _%rest130094%_ _%hd130092%_)))
                  (_%try-match130054130078%_)))))))
    (define gx#genident__%
      (lambda (_%e130031%_ _%src130032%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src130032%_) _%src130032%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e130034%_ (gx#stx-e _%e130031%_)))
              (if (symbol? _%e130034%_) _%e130034%_ 'g)))))
         _%src130032%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e130040%_ 'g) (_%src130042%_ '#f))
          (gx#genident__% _%e130040%_ _%src130042%_))))
    (define gx#genident__1
      (lambda (_%e130044%_)
        (let ((_%src130046%_ '#f))
          (gx#genident__% _%e130044%_ _%src130046%_))))
    (define gx#genident
      (lambda _g130510_
        (let ((_g130511_ (##length _g130510_)))
          (cond ((##fx= _g130511_ 0) (apply gx#genident__0 _g130510_))
                ((##fx= _g130511_ 1) (apply gx#genident__1 _g130510_))
                ((##fx= _g130511_ 2) (apply gx#genident__% _g130510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g130510_))))))
    (define gx#gentemps
      (lambda (_%stx-lst130026%_)
        (gx#stx-map1
         (lambda (_%x130028%_) (gx#genident__% _%x130028%_ _%x130028%_))
         _%stx-lst130026%_)))
    (define gx#syntax->list
      (lambda (_%stx130024%_) (gx#stx-map1 values _%stx130024%_)))
    (define gx#stx-car
      (lambda (_%stx130021%_)
        (declare (safe))
        (car (gx#syntax-e _%stx130021%_))))
    (define gx#stx-cdr
      (lambda (_%stx130018%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx130018%_))))
    (define gx#stx-length
      (lambda (_%stx129983%_)
        (let _%lp129985%_ ((_%rest129987%_ _%stx129983%_) (_%n129988%_ '0))
          (let* ((_%g129989129997%_ (gx#stx-e _%rest129987%_))
                 (_%else129991130005%_ (lambda () _%n129988%_))
                 (_%K129993130010%_
                  (lambda (_%rest130008%_)
                    (_%lp129985%_ _%rest130008%_ (##fx+ _%n129988%_ '1)))))
            (if (pair? _%g129989129997%_)
                (let* ((_%tl129995130013%_ (##cdr _%g129989129997%_))
                       (_%rest130016%_ _%tl129995130013%_))
                  (_%K129993130010%_ _%rest130016%_))
                (_%else129991130005%_))))))
    (define gx#stx-for-each
      (lambda _g130512_
        (let ((_g130513_ (##length _g130512_)))
          (cond ((##fx= _g130513_ 2) (apply gx#stx-for-each1 _g130512_))
                ((##fx= _g130513_ 3) (apply gx#stx-for-each2 _g130512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g130512_))))))
    (define gx#stx-for-each1
      (lambda (_%f129926%_ _%stx129927%_)
        (if (procedure? _%f129926%_)
            '#!void
            (error '"expected procedure" _%f129926%_))
        (let _%lp129929%_ ((_%rest129931%_ _%stx129927%_))
          (let* ((_%g129932129942%_ (gx#syntax-e _%rest129931%_))
                 (_%else129935129950%_
                  (lambda () (_%f129926%_ _%rest129931%_))))
            (let ((_%K129938129964%_
                   (lambda (_%rest129961%_ _%hd129962%_)
                     (_%f129926%_ _%hd129962%_)
                     (_%lp129929%_ _%rest129961%_)))
                  (_%K129937129955%_ (lambda () '#!void)))
              (let ((_%try-match129934129958%_
                     (lambda ()
                       (if (null? _%g129932129942%_)
                           (_%K129937129955%_)
                           (_%else129935129950%_)))))
                (if (pair? _%g129932129942%_)
                    (let ((_%tl129940129969%_ (##cdr _%g129932129942%_))
                          (_%hd129939129967%_ (##car _%g129932129942%_)))
                      (let ((_%hd129972%_ _%hd129939129967%_)
                            (_%rest129974%_ _%tl129940129969%_))
                        (_%K129938129964%_ _%rest129974%_ _%hd129972%_)))
                    (_%try-match129934129958%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f129831%_ _%xstx129832%_ _%ystx129833%_)
        (if (procedure? _%f129831%_)
            '#!void
            (error '"expected procedure" _%f129831%_))
        (let _%lp129835%_ ((_%xrest129837%_ _%xstx129832%_)
                           (_%yrest129838%_ _%ystx129833%_))
          (let* ((_%g129839129849%_ (gx#syntax-e _%xrest129837%_))
                 (_%else129842129857%_ (lambda () '#!void)))
            (let ((_%K129845129914%_
                   (lambda (_%xrest129883%_ _%xhd129884%_)
                     (let* ((_%g129885129892%_ (gx#syntax-e _%yrest129838%_))
                            (_%E129887129896%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g129885129892%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K129888129902%_
                             (lambda (_%yrest129899%_ _%yhd129900%_)
                               (_%f129831%_ _%xhd129884%_ _%yhd129900%_)
                               (_%lp129835%_
                                _%xrest129883%_
                                _%yrest129899%_))))
                       (if (pair? _%g129885129892%_)
                           (let ((_%hd129889129905%_ (##car _%g129885129892%_))
                                 (_%tl129890129907%_
                                  (##cdr _%g129885129892%_)))
                             (let* ((_%yhd129910%_ _%hd129889129905%_)
                                    (_%yrest129912%_ _%tl129890129907%_))
                               (_%K129888129902%_
                                _%yrest129912%_
                                _%yhd129910%_)))
                           (_%E129887129896%_)))))
                  (_%K129844129877%_
                   (lambda ()
                     (let* ((_%yrest129861129866%_ _%yrest129838%_)
                            (_%E129863129870%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest129861129866%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K129864129874%_
                             (lambda ()
                               (_%f129831%_ _%xrest129837%_ _%yrest129838%_))))
                       (if (gx#stx-null? _%yrest129861129866%_)
                           (_%E129863129870%_)
                           (_%K129864129874%_))))))
              (let ((_%try-match129841129880%_
                     (lambda ()
                       (if (null? _%g129839129849%_)
                           (_%else129842129857%_)
                           (_%K129844129877%_)))))
                (if (pair? _%g129839129849%_)
                    (let ((_%tl129847129919%_ (##cdr _%g129839129849%_))
                          (_%hd129846129917%_ (##car _%g129839129849%_)))
                      (let ((_%xhd129922%_ _%hd129846129917%_)
                            (_%xrest129924%_ _%tl129847129919%_))
                        (_%K129845129914%_ _%xrest129924%_ _%xhd129922%_)))
                    (_%try-match129841129880%_))))))))
    (define gx#stx-map
      (lambda _g130514_
        (let ((_g130515_ (##length _g130514_)))
          (cond ((##fx= _g130515_ 2) (apply gx#stx-map1 _g130514_))
                ((##fx= _g130515_ 3) (apply gx#stx-map2 _g130514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g130514_))))))
    (define gx#stx-map1
      (lambda (_%f129774%_ _%stx129775%_)
        (if (procedure? _%f129774%_)
            '#!void
            (error '"expected procedure" _%f129774%_))
        (let _%recur129777%_ ((_%rest129779%_ _%stx129775%_))
          (let* ((_%g129780129790%_ (gx#syntax-e _%rest129779%_))
                 (_%else129783129798%_
                  (lambda () (_%f129774%_ _%rest129779%_))))
            (let ((_%K129786129812%_
                   (lambda (_%rest129809%_ _%hd129810%_)
                     (cons (_%f129774%_ _%hd129810%_)
                           (_%recur129777%_ _%rest129809%_))))
                  (_%K129785129803%_ (lambda () '())))
              (let ((_%try-match129782129806%_
                     (lambda ()
                       (if (null? _%g129780129790%_)
                           (_%K129785129803%_)
                           (_%else129783129798%_)))))
                (if (pair? _%g129780129790%_)
                    (let ((_%tl129788129817%_ (##cdr _%g129780129790%_))
                          (_%hd129787129815%_ (##car _%g129780129790%_)))
                      (let ((_%hd129820%_ _%hd129787129815%_)
                            (_%rest129822%_ _%tl129788129817%_))
                        (_%K129786129812%_ _%rest129822%_ _%hd129820%_)))
                    (_%try-match129782129806%_))))))))
    (define gx#stx-map2
      (lambda (_%f129679%_ _%xstx129680%_ _%ystx129681%_)
        (if (procedure? _%f129679%_)
            '#!void
            (error '"expected procedure" _%f129679%_))
        (let _%recur129683%_ ((_%xrest129685%_ _%xstx129680%_)
                              (_%yrest129686%_ _%ystx129681%_))
          (let* ((_%g129687129697%_ (gx#syntax-e _%xrest129685%_))
                 (_%else129690129705%_ (lambda () '())))
            (let ((_%K129693129762%_
                   (lambda (_%xrest129731%_ _%xhd129732%_)
                     (let* ((_%g129733129740%_ (gx#syntax-e _%yrest129686%_))
                            (_%E129735129744%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g129733129740%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K129736129750%_
                             (lambda (_%yrest129747%_ _%yhd129748%_)
                               (cons (_%f129679%_ _%xhd129732%_ _%yhd129748%_)
                                     (_%recur129683%_
                                      _%xrest129731%_
                                      _%yrest129747%_)))))
                       (if (pair? _%g129733129740%_)
                           (let ((_%hd129737129753%_ (##car _%g129733129740%_))
                                 (_%tl129738129755%_
                                  (##cdr _%g129733129740%_)))
                             (let* ((_%yhd129758%_ _%hd129737129753%_)
                                    (_%yrest129760%_ _%tl129738129755%_))
                               (_%K129736129750%_
                                _%yrest129760%_
                                _%yhd129758%_)))
                           (_%E129735129744%_)))))
                  (_%K129692129725%_
                   (lambda ()
                     (let* ((_%yrest129709129714%_ _%yrest129686%_)
                            (_%E129711129718%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest129709129714%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K129712129722%_
                             (lambda ()
                               (_%f129679%_ _%xrest129685%_ _%yrest129686%_))))
                       (if (gx#stx-null? _%yrest129709129714%_)
                           (_%E129711129718%_)
                           (_%K129712129722%_))))))
              (let ((_%try-match129689129728%_
                     (lambda ()
                       (if (null? _%g129687129697%_)
                           (_%else129690129705%_)
                           (_%K129692129725%_)))))
                (if (pair? _%g129687129697%_)
                    (let ((_%tl129695129767%_ (##cdr _%g129687129697%_))
                          (_%hd129694129765%_ (##car _%g129687129697%_)))
                      (let ((_%xhd129770%_ _%hd129694129765%_)
                            (_%xrest129772%_ _%tl129695129767%_))
                        (_%K129693129762%_ _%xrest129772%_ _%xhd129770%_)))
                    (_%try-match129689129728%_))))))))
    (define gx#stx-andmap
      (lambda (_%f129629%_ _%stx129630%_)
        (if (procedure? _%f129629%_)
            '#!void
            (error '"expected procedure" _%f129629%_))
        (let _%lp129632%_ ((_%rest129634%_ _%stx129630%_))
          (let* ((_%g129635129645%_ (gx#syntax-e _%rest129634%_))
                 (_%else129638129653%_
                  (lambda () (_%f129629%_ _%rest129634%_))))
            (let ((_%K129641129667%_
                   (lambda (_%rest129664%_ _%hd129665%_)
                     (if (_%f129629%_ _%hd129665%_)
                         (_%lp129632%_ _%rest129664%_)
                         '#f)))
                  (_%K129640129658%_ (lambda () '#t)))
              (let ((_%try-match129637129661%_
                     (lambda ()
                       (if (null? _%g129635129645%_)
                           (_%K129640129658%_)
                           (_%else129638129653%_)))))
                (if (pair? _%g129635129645%_)
                    (let ((_%tl129643129672%_ (##cdr _%g129635129645%_))
                          (_%hd129642129670%_ (##car _%g129635129645%_)))
                      (let ((_%hd129675%_ _%hd129642129670%_)
                            (_%rest129677%_ _%tl129643129672%_))
                        (_%K129641129667%_ _%rest129677%_ _%hd129675%_)))
                    (_%try-match129637129661%_))))))))
    (define gx#stx-ormap
      (lambda (_%f129576%_ _%stx129577%_)
        (if (procedure? _%f129576%_)
            '#!void
            (error '"expected procedure" _%f129576%_))
        (let _%lp129579%_ ((_%rest129581%_ _%stx129577%_))
          (let* ((_%g129582129592%_ (gx#syntax-e _%rest129581%_))
                 (_%else129585129600%_
                  (lambda () (_%f129576%_ _%rest129581%_))))
            (let ((_%K129588129617%_
                   (lambda (_%rest129611%_ _%hd129612%_)
                     (let ((_%$e129614%_ (_%f129576%_ _%hd129612%_)))
                       (if _%$e129614%_
                           _%$e129614%_
                           (_%lp129579%_ _%rest129611%_)))))
                  (_%K129587129605%_ (lambda () '#f)))
              (let ((_%try-match129584129608%_
                     (lambda ()
                       (if (null? _%g129582129592%_)
                           (_%K129587129605%_)
                           (_%else129585129600%_)))))
                (if (pair? _%g129582129592%_)
                    (let ((_%tl129590129622%_ (##cdr _%g129582129592%_))
                          (_%hd129589129620%_ (##car _%g129582129592%_)))
                      (let ((_%hd129625%_ _%hd129589129620%_)
                            (_%rest129627%_ _%tl129590129622%_))
                        (_%K129588129617%_ _%rest129627%_ _%hd129625%_)))
                    (_%try-match129584129608%_))))))))
    (define gx#stx-foldl
      (lambda (_%f129524%_ _%iv129525%_ _%stx129526%_)
        (if (procedure? _%f129524%_)
            '#!void
            (error '"expected procedure" _%f129524%_))
        (let _%lp129528%_ ((_%r129530%_ _%iv129525%_)
                           (_%rest129531%_ _%stx129526%_))
          (let* ((_%g129532129542%_ (gx#syntax-e _%rest129531%_))
                 (_%else129535129550%_
                  (lambda () (_%f129524%_ _%rest129531%_ _%r129530%_))))
            (let ((_%K129538129564%_
                   (lambda (_%rest129561%_ _%hd129562%_)
                     (_%lp129528%_
                      (_%f129524%_ _%hd129562%_ _%r129530%_)
                      _%rest129561%_)))
                  (_%K129537129555%_ (lambda () _%r129530%_)))
              (let ((_%try-match129534129558%_
                     (lambda ()
                       (if (null? _%g129532129542%_)
                           (_%K129537129555%_)
                           (_%else129535129550%_)))))
                (if (pair? _%g129532129542%_)
                    (let ((_%tl129540129569%_ (##cdr _%g129532129542%_))
                          (_%hd129539129567%_ (##car _%g129532129542%_)))
                      (let ((_%hd129572%_ _%hd129539129567%_)
                            (_%rest129574%_ _%tl129540129569%_))
                        (_%K129538129564%_ _%rest129574%_ _%hd129572%_)))
                    (_%try-match129534129558%_))))))))
    (define gx#stx-foldr
      (lambda (_%f129473%_ _%iv129474%_ _%stx129475%_)
        (if (procedure? _%f129473%_)
            '#!void
            (error '"expected procedure" _%f129473%_))
        (let _%recur129477%_ ((_%rest129479%_ _%stx129475%_))
          (let* ((_%g129480129490%_ (gx#syntax-e _%rest129479%_))
                 (_%else129483129498%_
                  (lambda () (_%f129473%_ _%rest129479%_ _%iv129474%_))))
            (let ((_%K129486129512%_
                   (lambda (_%rest129509%_ _%hd129510%_)
                     (_%f129473%_
                      _%hd129510%_
                      (_%recur129477%_ _%rest129509%_))))
                  (_%K129485129503%_ (lambda () _%iv129474%_)))
              (let ((_%try-match129482129506%_
                     (lambda ()
                       (if (null? _%g129480129490%_)
                           (_%K129485129503%_)
                           (_%else129483129498%_)))))
                (if (pair? _%g129480129490%_)
                    (let ((_%tl129488129517%_ (##cdr _%g129480129490%_))
                          (_%hd129487129515%_ (##car _%g129480129490%_)))
                      (let ((_%hd129520%_ _%hd129487129515%_)
                            (_%rest129522%_ _%tl129488129517%_))
                        (_%K129486129512%_ _%rest129522%_ _%hd129520%_)))
                    (_%try-match129482129506%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx129471%_) (gx#stx-foldl cons '() _%stx129471%_)))
    (define gx#stx-last
      (lambda (_%stx129432%_)
        (let _%lp129434%_ ((_%rest129436%_ _%stx129432%_))
          (let* ((_%g129437129445%_ (gx#syntax-e _%rest129436%_))
                 (_%else129439129453%_ (lambda () _%rest129436%_))
                 (_%K129441129459%_
                  (lambda (_%rest129456%_ _%hd129457%_)
                    (if (gx#stx-null? _%rest129456%_)
                        _%hd129457%_
                        (_%lp129434%_ _%rest129456%_)))))
            (if (pair? _%g129437129445%_)
                (let ((_%hd129442129462%_ (##car _%g129437129445%_))
                      (_%tl129443129464%_ (##cdr _%g129437129445%_)))
                  (let* ((_%hd129467%_ _%hd129442129462%_)
                         (_%rest129469%_ _%tl129443129464%_))
                    (_%K129441129459%_ _%rest129469%_ _%hd129467%_)))
                (_%else129439129453%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx129403%_)
        (let _%lp129405%_ ((_%hd129407%_ _%stx129403%_))
          (let* ((_%g129408129415%_ (gx#syntax-e _%hd129407%_))
                 (_%E129410129419%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g129408129415%_
                           '([_ . rest]))
                    '#!void))
                 (_%K129411129424%_
                  (lambda (_%rest129422%_)
                    (if (gx#stx-pair? _%rest129422%_)
                        (_%lp129405%_ _%rest129422%_)
                        _%hd129407%_))))
            (if (pair? _%g129408129415%_)
                (let* ((_%tl129413129427%_ (##cdr _%g129408129415%_))
                       (_%rest129430%_ _%tl129413129427%_))
                  (_%K129411129424%_ _%rest129430%_))
                (_%E129410129419%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx129372%_ _%k129373%_)
        (let _%lp129375%_ ((_%rest129377%_ _%stx129372%_)
                           (_%k129378%_ _%k129373%_))
          (if (fxpositive? _%k129378%_)
              (let* ((_%g129379129386%_ (gx#syntax-e _%rest129377%_))
                     (_%E129381129390%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g129379129386%_
                               '([_ . rest]))
                        '#!void))
                     (_%K129382129395%_
                      (lambda (_%rest129393%_)
                        (_%lp129375%_ _%rest129393%_ (##fx- _%k129378%_ '1)))))
                (if (pair? _%g129379129386%_)
                    (let* ((_%tl129384129398%_ (##cdr _%g129379129386%_))
                           (_%rest129401%_ _%tl129384129398%_))
                      (_%K129382129395%_ _%rest129401%_))
                    (_%E129381129390%_)))
              _%rest129377%_))))
    (define gx#stx-list-ref
      (lambda (_%stx129369%_ _%k129370%_)
        (gx#stx-car (gx#stx-list-tail _%stx129369%_ _%k129370%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx129281%_ _%key?129282%_)
        (if (procedure? _%key?129282%_)
            '#!void
            (error '"expected procedure" _%key?129282%_))
        (let _%lp129284%_ ((_%rest129286%_ _%stx129281%_))
          (let* ((_%g129287129297%_ (gx#stx-e _%rest129286%_))
                 (_%else129290129305%_ (lambda () '#f)))
            (let ((_%K129293129347%_
                   (lambda (_%rest129316%_ _%hd129317%_)
                     (if (_%key?129282%_ _%hd129317%_)
                         (let* ((_%g129318129326%_ (gx#stx-e _%rest129316%_))
                                (_%else129320129334%_ (lambda () '#f))
                                (_%K129322129339%_
                                 (lambda (_%rest129337%_)
                                   (_%lp129284%_ _%rest129337%_))))
                           (if (pair? _%g129318129326%_)
                               (let* ((_%tl129324129342%_
                                       (##cdr _%g129318129326%_))
                                      (_%rest129345%_ _%tl129324129342%_))
                                 (_%lp129284%_ _%rest129345%_))
                               (_%else129320129334%_)))
                         '#f)))
                  (_%K129292129310%_ (lambda () '#t)))
              (let ((_%try-match129289129313%_
                     (lambda ()
                       (if (null? _%g129287129297%_)
                           (_%K129292129310%_)
                           (_%else129290129305%_)))))
                (if (pair? _%g129287129297%_)
                    (let ((_%tl129295129352%_ (##cdr _%g129287129297%_))
                          (_%hd129294129350%_ (##car _%g129287129297%_)))
                      (let ((_%hd129355%_ _%hd129294129350%_)
                            (_%rest129357%_ _%tl129295129352%_))
                        (_%K129293129347%_ _%rest129357%_ _%hd129355%_)))
                    (_%try-match129289129313%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx129362%_)
        (let ((_%key?129364%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx129362%_ _%key?129364%_))))
    (define gx#stx-plist?
      (lambda _g130516_
        (let ((_g130517_ (##length _g130516_)))
          (cond ((##fx= _g130517_ 1) (apply gx#stx-plist?__0 _g130516_))
                ((##fx= _g130517_ 2) (apply gx#stx-plist?__% _g130516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g130516_))))))
    (define gx#stx-getq__%
      (lambda (_%key129199%_ _%stx129200%_ _%key=?129201%_)
        (if (procedure? _%key=?129201%_)
            '#!void
            (error '"expected procedure" _%key=?129201%_))
        (let _%lp129203%_ ((_%rest129205%_ _%stx129200%_))
          (let* ((_%g129206129214%_ (gx#syntax-e _%rest129205%_))
                 (_%else129208129222%_ (lambda () '#f))
                 (_%K129210129256%_
                  (lambda (_%rest129225%_ _%hd129226%_)
                    (let* ((_%g129227129234%_ (gx#syntax-e _%rest129225%_))
                           (_%E129229129238%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g129227129234%_
                                     '([val . rest]))
                              '#!void))
                           (_%K129230129244%_
                            (lambda (_%rest129241%_ _%val129242%_)
                              (if (_%key=?129201%_ _%hd129226%_ _%key129199%_)
                                  _%val129242%_
                                  (_%lp129203%_ _%rest129241%_)))))
                      (if (pair? _%g129227129234%_)
                          (let ((_%hd129231129247%_ (##car _%g129227129234%_))
                                (_%tl129232129249%_ (##cdr _%g129227129234%_)))
                            (let* ((_%val129252%_ _%hd129231129247%_)
                                   (_%rest129254%_ _%tl129232129249%_))
                              (_%K129230129244%_
                               _%rest129254%_
                               _%val129252%_)))
                          (_%E129229129238%_))))))
            (if (pair? _%g129206129214%_)
                (let ((_%hd129211129259%_ (##car _%g129206129214%_))
                      (_%tl129212129261%_ (##cdr _%g129206129214%_)))
                  (let* ((_%hd129264%_ _%hd129211129259%_)
                         (_%rest129266%_ _%tl129212129261%_))
                    (_%K129210129256%_ _%rest129266%_ _%hd129264%_)))
                (_%else129208129222%_))))))
    (define gx#stx-getq__0
      (lambda (_%key129271%_ _%stx129272%_)
        (let ((_%key=?129274%_ gx#stx-eq?))
          (gx#stx-getq__% _%key129271%_ _%stx129272%_ _%key=?129274%_))))
    (define gx#stx-getq
      (lambda _g130518_
        (let ((_g130519_ (##length _g130518_)))
          (cond ((##fx= _g130519_ 2) (apply gx#stx-getq__0 _g130518_))
                ((##fx= _g130519_ 3) (apply gx#stx-getq__% _g130518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g130518_))))))))
