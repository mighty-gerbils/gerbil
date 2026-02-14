(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1771036673)
  (begin
    (define __syntax::t
      (let ((__tmp351599 (list)) (__tmp351598 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp351599
         '(e id)
         __tmp351598
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args351403%_
        (apply make-instance __syntax::t _%$args351403%_)))
    (define __syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (__make-class-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'id)))
    (define __core-form::t
      (let ((__tmp351601 (list __syntax::t))
            (__tmp351600 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp351601
         '()
         __tmp351600
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args351400%_
        (apply make-instance __core-form::t _%$args351400%_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp351603 (list __core-form::t))
            (__tmp351602 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp351603
         '()
         __tmp351602
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args351397%_
        (apply make-instance __core-expression::t _%$args351397%_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp351605 (list __core-form::t))
            (__tmp351604 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp351605
         '()
         __tmp351604
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args351394%_
        (apply make-instance __core-special-form::t _%$args351394%_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __core (let () (declare (not safe)) (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_%id351368%_)
        (let* ((_%h351370%_ __core)
               (_%key351373%_
                (let () (declare (not safe)) (__AST-e _%id351368%_)))
               (_%h351380%_
                (let ((_%$obj351377%_ _%h351370%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj351377%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj351377%_)))
                           '#t)
                      _%$obj351377%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj351377%_)))))
               (_%h351382%_ _%h351380%_))
          (declare (not safe))
          (__hash-get _%h351382%_ _%key351373%_))))
    (define __core-bound-id?__%
      (lambda (_%id351351%_ _%is?351352%_)
        (let ((_%$e351354%_ (__core-resolve _%id351351%_)))
          (if _%$e351354%_ (_%is?351352%_ _%$e351354%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id351361%_)
        (let ((_%is?351363%_ true))
          (__core-bound-id?__% _%id351361%_ _%is?351363%_))))
    (define __core-bound-id?
      (lambda _g351606_
        (let ((_g351607_ (let () (declare (not safe)) (##length _g351606_))))
          (cond ((let () (declare (not safe)) (##fx= _g351607_ 1))
                 (apply __core-bound-id?__0 _g351606_))
                ((let () (declare (not safe)) (##fx= _g351607_ 2))
                 (apply __core-bound-id?__% _g351606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g351606_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id351306%_ _%e351307%_ _%make351308%_)
        (let* ((_%h351310%_ __core)
               (_%key351313%_ _%id351306%_)
               (_%value351316%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e351307%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e351307%_
                    (_%make351308%_ _%e351307%_ _%id351306%_)))
               (_%h351323%_
                (let ((_%$obj351320%_ _%h351310%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj351320%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj351320%_)))
                           '#t)
                      _%$obj351320%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj351320%_)))))
               (_%h351325%_ _%h351323%_))
          (declare (not safe))
          (__hash-put! _%h351325%_ _%key351313%_ _%value351316%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id351341%_ _%e351342%_)
        (let ((_%make351344%_ make-__syntax))
          (__core-bind-syntax!__% _%id351341%_ _%e351342%_ _%make351344%_))))
    (define __core-bind-syntax!
      (lambda _g351608_
        (let ((_g351609_ (let () (declare (not safe)) (##length _g351608_))))
          (cond ((let () (declare (not safe)) (##fx= _g351609_ 2))
                 (apply __core-bind-syntax!__0 _g351608_))
                ((let () (declare (not safe)) (##fx= _g351609_ 3))
                 (apply __core-bind-syntax!__% _g351608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g351608_))))))
    (define __SRC__%
      (lambda (_%e351286%_ _%src-stx351287%_)
        (if (or (pair? _%e351286%_) (symbol? _%e351286%_))
            (let ((__tmp351610
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx351287%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx351287%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e351286%_ __tmp351610))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e351286%_ 'gerbil#AST::t))
                (let ((__tmp351612
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e351286%_ '1 '#f '#f)))
                      (__tmp351611
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e351286%_)))))
                  (declare (not safe))
                  (##make-source __tmp351612 __tmp351611))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e351286%_))))))
    (define __SRC__0
      (lambda (_%e351298%_)
        (let ((_%src-stx351300%_ '#f))
          (__SRC__% _%e351298%_ _%src-stx351300%_))))
    (define __SRC
      (lambda _g351613_
        (let ((_g351614_ (let () (declare (not safe)) (##length _g351613_))))
          (cond ((let () (declare (not safe)) (##fx= _g351614_ 1))
                 (apply __SRC__0 _g351613_))
                ((let () (declare (not safe)) (##fx= _g351614_ 2))
                 (apply __SRC__% _g351613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g351613_))))))
    (define __locat
      (lambda (_%loc351283%_)
        (if (let () (declare (not safe)) (##locat? _%loc351283%_))
            _%loc351283%_
            '#f)))
    (define __check-values
      (lambda (_%obj351278%_ _%k351279%_)
        (let ((_%count351281%_
               (if (let () (declare (not safe)) (##values? _%obj351278%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj351278%_))
                   '1)))
          (if (fx= _%count351281%_ _%k351279%_)
              '#!void
              (let ((__tmp351616
                     (if (fx< _%count351281%_ _%k351279%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp351615
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj351278%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj351278%_))
                         _%obj351278%_)))
                (declare (not safe))
                (error __tmp351616 __tmp351615 _%k351279%_))))))
    (define __compile
      (lambda (_%stx351247%_)
        (let* ((_%$e351249%_ _%stx351247%_)
               (_%$E351251351257%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e351249%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e351249%_))
              (let* ((_%$tgt351252351260%_
                      (let () (declare (not safe)) (__AST-e _%$e351249%_)))
                     (_%$hd351253351263%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt351252351260%_)))
                     (_%$tl351254351266%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt351252351260%_)))
                     (_%form351270%_ _%$hd351253351263%_)
                     (_%$e351272%_ (__core-resolve _%form351270%_)))
                (if _%$e351272%_
                    ((lambda (_%bind351275%_)
                       ((##structure-ref _%bind351275%_ '1 __syntax::t '#f)
                        _%stx351247%_))
                     _%$e351272%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx351247%_
                       _%form351270%_))))
              (_%$E351251351257%_)))))
    (define __compile-error__%
      (lambda (_%stx351234%_ _%detail351235%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx351234%_
           _%detail351235%_))))
    (define __compile-error__0
      (lambda (_%stx351240%_)
        (let ((_%detail351242%_ '#f))
          (__compile-error__% _%stx351240%_ _%detail351242%_))))
    (define __compile-error
      (lambda _g351617_
        (let ((_g351618_ (let () (declare (not safe)) (##length _g351617_))))
          (cond ((let () (declare (not safe)) (##fx= _g351618_ 1))
                 (apply __compile-error__0 _g351617_))
                ((let () (declare (not safe)) (##fx= _g351618_ 2))
                 (apply __compile-error__% _g351617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g351617_))))))
    (define __compile-ignore%
      (lambda (_%stx351231%_) (__SRC__% ''#!void _%stx351231%_)))
    (define __compile-begin%
      (lambda (_%stx351206%_)
        (let* ((_%$e351208%_ _%stx351206%_)
               (_%$E351210351216%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e351208%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e351208%_))
              (let* ((_%$tgt351211351219%_
                      (let () (declare (not safe)) (__AST-e _%$e351208%_)))
                     (_%$hd351212351222%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt351211351219%_)))
                     (_%$tl351213351225%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt351211351219%_)))
                     (_%body351229%_ _%$tl351213351225%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body351229%_))
                 _%stx351206%_))
              (_%$E351210351216%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx351181%_)
        (let* ((_%$e351183%_ _%stx351181%_)
               (_%$E351185351191%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e351183%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e351183%_))
              (let* ((_%$tgt351186351194%_
                      (let () (declare (not safe)) (__AST-e _%$e351183%_)))
                     (_%$hd351187351197%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt351186351194%_)))
                     (_%$tl351188351200%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt351186351194%_)))
                     (_%body351204%_ _%$tl351188351200%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body351204%_)))
                 _%stx351181%_))
              (_%$E351185351191%_)))))
    (define __compile-import%
      (lambda (_%stx351156%_)
        (let* ((_%$e351158%_ _%stx351156%_)
               (_%$E351160351166%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e351158%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e351158%_))
              (let* ((_%$tgt351161351169%_
                      (let () (declare (not safe)) (__AST-e _%$e351158%_)))
                     (_%$hd351162351172%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt351161351169%_)))
                     (_%$tl351163351175%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt351161351169%_)))
                     (_%body351179%_ _%$tl351163351175%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body351179%_ '())) '()))
                 _%stx351156%_))
              (_%$E351160351166%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx351103%_)
        (let* ((_%$e351105%_ _%stx351103%_)
               (_%$E351107351119%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e351105%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e351105%_))
              (let* ((_%$tgt351108351122%_
                      (let () (declare (not safe)) (__AST-e _%$e351105%_)))
                     (_%$hd351109351125%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt351108351122%_)))
                     (_%$tl351110351128%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt351108351122%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl351110351128%_))
                    (let* ((_%$tgt351111351132%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl351110351128%_)))
                           (_%$hd351112351135%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt351111351132%_)))
                           (_%$tl351113351138%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt351111351132%_)))
                           (_%ann351142%_ _%$hd351112351135%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl351113351138%_))
                          (let* ((_%$tgt351114351144%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl351113351138%_)))
                                 (_%$hd351115351147%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt351114351144%_)))
                                 (_%$tl351116351150%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt351114351144%_)))
                                 (_%expr351154%_ _%$hd351115351147%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl351116351150%_))
                                        '())
                                (__compile _%expr351154%_)
                                (_%$E351107351119%_)))
                          (_%$E351107351119%_)))
                    (_%$E351107351119%_)))
              (_%$E351107351119%_)))))
    (define __compile-define-values%
      (lambda (_%stx350994%_)
        (let* ((_%$e350996%_ _%stx350994%_)
               (_%$E350998351010%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e350996%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e350996%_))
              (let* ((_%$tgt350999351013%_
                      (let () (declare (not safe)) (__AST-e _%$e350996%_)))
                     (_%$hd351000351016%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt350999351013%_)))
                     (_%$tl351001351019%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt350999351013%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl351001351019%_))
                    (let* ((_%$tgt351002351023%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl351001351019%_)))
                           (_%$hd351003351026%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt351002351023%_)))
                           (_%$tl351004351029%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt351002351023%_)))
                           (_%hd351033%_ _%$hd351003351026%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl351004351029%_))
                          (let* ((_%$tgt351005351035%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl351004351029%_)))
                                 (_%$hd351006351038%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt351005351035%_)))
                                 (_%$tl351007351041%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt351005351035%_)))
                                 (_%expr351045%_ _%$hd351006351038%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl351007351041%_))
                                        '())
                                (let* ((_%$e351047%_ _%hd351033%_)
                                       (_%$E351049351090%_
                                        (lambda ()
                                          (let ((_%$E351050351075%_
                                                 (lambda ()
                                                   (let* ((_%$E351051351062%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e351047%_))))
                  (_%ids351065%_ _%hd351033%_)
                  (_%len351067%_ (length _%ids351065%_))
                  (_%tmp351069%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp351069%_
                                       (cons (__compile _%expr351045%_) '())))
                           _%stx350994%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp351069%_
                                             (cons _%len351067%_ '())))
                                 _%stx350994%_)
                                (let ((__tmp351619
                                       (let ((__tmp351621
                                              (lambda (_%id351072%_
                                                       _%k351073%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id351072%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id351072%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp351069%_
                                           (cons _%k351073%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx350994%_)
                                                    '#f)))
                                             (__tmp351620
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len351067%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp351621
                                          _%ids351065%_
                                          __tmp351620))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp351619)))))
              _%stx350994%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e351047%_))
                                                (let* ((_%$tgt351052351078%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e351047%_)))
                                                       (_%$hd351053351081%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt351052351078%_)))
                                                       (_%$tl351054351084%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt351052351078%_)))
                                                       (_%id351088%_
                                                        _%$hd351053351081%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl351054351084%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id351088%_)
                           (cons (__compile _%expr351045%_) '())))
               _%stx350994%_)
              (_%$E351050351075%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E351050351075%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e351047%_))
                                      (let* ((_%$tgt351055351093%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e351047%_)))
                                             (_%$hd351056351096%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt351055351093%_)))
                                             (_%$tl351057351099%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt351055351093%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd351056351096%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl351057351099%_))
                                                        '())
                                                (__compile _%expr351045%_)
                                                (_%$E351049351090%_))
                                            (_%$E351049351090%_)))
                                      (_%$E351049351090%_)))
                                (_%$E350998351010%_)))
                          (_%$E350998351010%_)))
                    (_%$E350998351010%_)))
              (_%$E350998351010%_)))))
    (define __compile-head-id
      (lambda (_%e350992%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e350992%_))
             _%e350992%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd350949%_)
        (let _%recur350951%_ ((_%rest350953%_ _%hd350949%_))
          (let* ((_%$e350955%_ _%rest350953%_)
                 (_%$E350957350975%_
                  (lambda ()
                    (let ((_%$E350958350972%_
                           (lambda ()
                             (let* ((_%$E350959350967%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e350955%_))))
                                    (_%tail350970%_ _%$e350955%_))
                               (__compile-head-id _%tail350970%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e350955%_))
                                  '())
                          '()
                          (_%$E350958350972%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e350955%_))
                (let* ((_%$tgt350960350978%_
                        (let () (declare (not safe)) (__AST-e _%$e350955%_)))
                       (_%$hd350961350981%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt350960350978%_)))
                       (_%$tl350962350984%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt350960350978%_)))
                       (_%hd350988%_ _%$hd350961350981%_)
                       (_%rest350990%_ _%$tl350962350984%_))
                  (cons (__compile-head-id _%hd350988%_)
                        (_%recur350951%_ _%rest350990%_)))
                (_%$E350957350975%_))))))
    (define __compile-lambda%
      (lambda (_%stx350896%_)
        (let* ((_%$e350898%_ _%stx350896%_)
               (_%$E350900350912%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e350898%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e350898%_))
              (let* ((_%$tgt350901350915%_
                      (let () (declare (not safe)) (__AST-e _%$e350898%_)))
                     (_%$hd350902350918%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt350901350915%_)))
                     (_%$tl350903350921%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt350901350915%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl350903350921%_))
                    (let* ((_%$tgt350904350925%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl350903350921%_)))
                           (_%$hd350905350928%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt350904350925%_)))
                           (_%$tl350906350931%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt350904350925%_)))
                           (_%hd350935%_ _%$hd350905350928%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl350906350931%_))
                          (let* ((_%$tgt350907350937%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl350906350931%_)))
                                 (_%$hd350908350940%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt350907350937%_)))
                                 (_%$tl350909350943%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt350907350937%_)))
                                 (_%body350947%_ _%$hd350908350940%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl350909350943%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd350935%_)
                                             (cons (__compile _%body350947%_)
                                                   '())))
                                 _%stx350896%_)
                                (_%$E350900350912%_)))
                          (_%$E350900350912%_)))
                    (_%$E350900350912%_)))
              (_%$E350900350912%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx350661%_)
        (letrec ((_%variadic?350663%_
                  (lambda (_%hd350861%_)
                    (let* ((_%$e350863%_ _%hd350861%_)
                           (_%$E350865350881%_
                            (lambda ()
                              (let ((_%$E350866350878%_
                                     (lambda ()
                                       (let ((_%$E350867350875%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e350863%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e350863%_))
                                            '())
                                    '#f
                                    (_%$E350866350878%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e350863%_))
                          (let* ((_%$tgt350868350884%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e350863%_)))
                                 (_%$hd350869350887%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt350868350884%_)))
                                 (_%$tl350870350890%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt350868350884%_)))
                                 (_%rest350894%_ _%$tl350870350890%_))
                            (_%variadic?350663%_ _%rest350894%_))
                          (_%$E350865350881%_)))))
                 (_%arity350664%_
                  (lambda (_%hd350799%_)
                    (let _%lp350801%_ ((_%rest350803%_ _%hd350799%_)
                                       (_%k350804%_ '0))
                      (let* ((_%$e350806%_ _%rest350803%_)
                             (_%$E350808350819%_
                              (lambda ()
                                (let ((_%$E350809350816%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e350806%_)))))
                                  _%k350804%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e350806%_))
                            (let* ((_%$tgt350810350822%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e350806%_)))
                                   (_%$hd350811350825%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt350810350822%_)))
                                   (_%$tl350812350828%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt350810350822%_)))
                                   (_%rest350832%_ _%$tl350812350828%_))
                              (_%lp350801%_
                               _%rest350832%_
                               (let ((_%x350834%_ _%k350804%_))
                                 (if (fixnum? _%x350834%_)
                                     (let ((_%x350839%_ _%x350834%_))
                                       (declare (not safe))
                                       (__fx1+ _%x350839%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x350834%_)
                                       '#!void)))))
                            (_%$E350808350819%_))))))
                 (_%generate350665%_
                  (lambda (_%rest350726%_ _%args350727%_ _%len350728%_)
                    (let* ((_%$e350730%_ _%rest350726%_)
                           (_%$E350732350743%_
                            (lambda ()
                              (let ((_%$E350733350740%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e350730%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args350727%_ '())))
                                 _%stx350661%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e350730%_))
                          (let* ((_%$tgt350734350746%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e350730%_)))
                                 (_%$hd350735350749%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt350734350746%_)))
                                 (_%$tl350736350752%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt350734350746%_)))
                                 (_%clause350756%_ _%$hd350735350749%_)
                                 (_%rest350758%_ _%$tl350736350752%_)
                                 (_%$e350760%_ _%clause350756%_)
                                 (_%$E350762350771%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e350760%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e350760%_))
                                (let* ((_%$tgt350763350774%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e350760%_)))
                                       (_%$hd350764350777%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt350763350774%_)))
                                       (_%$tl350765350780%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt350763350774%_)))
                                       (_%hd350784%_ _%$hd350764350777%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl350765350780%_))
                                      (let* ((_%$tgt350766350786%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl350765350780%_)))
                                             (_%$hd350767350789%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt350766350786%_)))
                                             (_%$tl350768350792%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt350766350786%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl350768350792%_))
                                                    '())
                                            (let ((_%clen350796%_
                                                   (_%arity350664%_
                                                    _%hd350784%_))
                                                  (_%cmp350797%_
                                                   (if (_%variadic?350663%_
                                                        _%hd350784%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp350797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len350728%_ (cons _%clen350796%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause350756%_))
                                      (cons _%args350727%_ '())))
                          _%stx350661%_)
                         (cons (_%generate350665%_
                                _%rest350758%_
                                _%args350727%_
                                _%len350728%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx350661%_))
                                            (_%$E350762350771%_)))
                                      (_%$E350762350771%_)))
                                (_%$E350762350771%_)))
                          (_%$E350732350743%_))))))
          (let* ((_%$e350667%_ _%stx350661%_)
                 (_%$E350669350701%_
                  (lambda ()
                    (let ((_%$E350670350683%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e350667%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e350667%_))
                          (let* ((_%$tgt350671350686%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e350667%_)))
                                 (_%$hd350672350689%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt350671350686%_)))
                                 (_%$tl350673350692%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt350671350686%_)))
                                 (_%clauses350696%_ _%$tl350673350692%_))
                            (let ((_%args350698%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx350661%_))
                                  (_%len350699%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx350661%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args350698%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len350699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args350698%_ '()))
                                         _%stx350661%_)
                                        '()))
                            '())
                      (cons (_%generate350665%_
                             _%clauses350696%_
                             _%args350698%_
                             _%len350699%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx350661%_)
                                                 '())))
                               _%stx350661%_)))
                          (_%$E350670350683%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e350667%_))
                (let* ((_%$tgt350674350704%_
                        (let () (declare (not safe)) (__AST-e _%$e350667%_)))
                       (_%$hd350675350707%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt350674350704%_)))
                       (_%$tl350676350710%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt350674350704%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl350676350710%_))
                      (let* ((_%$tgt350677350714%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl350676350710%_)))
                             (_%$hd350678350717%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt350677350714%_)))
                             (_%$tl350679350720%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt350677350714%_)))
                             (_%clause350724%_ _%$hd350678350717%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl350679350720%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause350724%_))
                            (_%$E350669350701%_)))
                      (_%$E350669350701%_)))
                (_%$E350669350701%_))))))
    (define __compile-let-form
      (lambda (_%stx350430%_ _%compile-simple350431%_ _%compile-values350432%_)
        (letrec ((_%simple-bind?350434%_
                  (lambda (_%hd350619%_)
                    (let* ((_%hd350620350630%_ _%hd350619%_)
                           (_%else350623350638%_ (lambda () '#f)))
                      (let ((_%K350626350651%_ (lambda (_%id350649%_) '#t))
                            (_%K350625350643%_ (lambda () '#t)))
                        (let ((_%try-match350622350646%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd350620350630%_ '#f))
                                     (_%K350625350643%_)
                                     (_%else350623350638%_)))))
                          (if (pair? _%hd350620350630%_)
                              (let ((_%tl350628350656%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd350620350630%_)))
                                    (_%hd350627350654%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd350620350630%_))))
                                (if (null? _%tl350628350656%_)
                                    (let ((_%id350659%_ _%hd350627350654%_))
                                      (_%K350626350651%_ _%id350659%_))
                                    (_%try-match350622350646%_)))
                              (_%try-match350622350646%_)))))))
                 (_%car-e350435%_
                  (lambda (_%hd350617%_)
                    (if (pair? _%hd350617%_)
                        (let () (declare (not safe)) (##car _%hd350617%_))
                        _%hd350617%_))))
          (let* ((_%$e350437%_ _%stx350430%_)
                 (_%$E350439350582%_
                  (lambda ()
                    (let ((_%$E350440350462%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e350437%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e350437%_))
                          (let* ((_%$tgt350441350465%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e350437%_)))
                                 (_%$hd350442350468%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt350441350465%_)))
                                 (_%$tl350443350471%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt350441350465%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl350443350471%_))
                                (let* ((_%$tgt350444350475%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl350443350471%_)))
                                       (_%$hd350445350478%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt350444350475%_)))
                                       (_%$tl350446350481%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt350444350475%_)))
                                       (_%hd350485%_ _%$hd350445350478%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl350446350481%_))
                                      (let* ((_%$tgt350447350487%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl350446350481%_)))
                                             (_%$hd350448350490%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt350447350487%_)))
                                             (_%$tl350449350493%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt350447350487%_)))
                                             (_%body350497%_
                                              _%$hd350448350490%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl350449350493%_))
                                                    '())
                                            (let* ((_%hd-ids350537%_
                                                    (map (lambda (_%bind350499%_)
                                                           (let* ((_%$e350501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind350499%_)
                          (_%$E350503350512%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e350501%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e350501%_))
                         (let* ((_%$tgt350504350515%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e350501%_)))
                                (_%$hd350505350518%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt350504350515%_)))
                                (_%$tl350506350521%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt350504350515%_)))
                                (_%ids350525%_ _%$hd350505350518%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl350506350521%_))
                               (let* ((_%$tgt350507350527%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl350506350521%_)))
                                      (_%$hd350508350530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt350507350527%_)))
                                      (_%$tl350509350533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt350507350527%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl350509350533%_))
                                             '())
                                     _%ids350525%_
                                     (_%$E350503350512%_)))
                               (_%$E350503350512%_)))
                         (_%$E350503350512%_))))
                 _%hd350485%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs350577%_
                                                    (map (lambda (_%bind350539%_)
                                                           (let* ((_%$e350541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind350539%_)
                          (_%$E350543350552%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e350541%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e350541%_))
                         (let* ((_%$tgt350544350555%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e350541%_)))
                                (_%$hd350545350558%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt350544350555%_)))
                                (_%$tl350546350561%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt350544350555%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl350546350561%_))
                               (let* ((_%$tgt350547350565%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl350546350561%_)))
                                      (_%$hd350548350568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt350547350565%_)))
                                      (_%$tl350549350571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt350547350565%_)))
                                      (_%expr350575%_ _%$hd350548350568%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl350549350571%_))
                                             '())
                                     (__compile _%expr350575%_)
                                     (_%$E350543350552%_)))
                               (_%$E350543350552%_)))
                         (_%$E350543350552%_))))
                 _%hd350485%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body350579%_
                                                    (__compile
                                                     _%body350497%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?350434%_
                                                     _%hd-ids350537%_))
                                                  (_%compile-simple350431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e350435%_
                                                            _%hd-ids350537%_))
                                                   _%exprs350577%_
                                                   _%body350579%_)
                                                  (_%compile-values350432%_
                                                   _%hd-ids350537%_
                                                   _%exprs350577%_
                                                   _%body350579%_)))
                                            (_%$E350440350462%_)))
                                      (_%$E350440350462%_)))
                                (_%$E350440350462%_)))
                          (_%$E350440350462%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e350437%_))
                (let* ((_%$tgt350450350585%_
                        (let () (declare (not safe)) (__AST-e _%$e350437%_)))
                       (_%$hd350451350588%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt350450350585%_)))
                       (_%$tl350452350591%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt350450350585%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl350452350591%_))
                      (let* ((_%$tgt350453350595%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl350452350591%_)))
                             (_%$hd350454350598%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt350453350595%_)))
                             (_%$tl350455350601%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt350453350595%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd350454350598%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl350455350601%_))
                                (let* ((_%$tgt350456350605%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl350455350601%_)))
                                       (_%$hd350457350608%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt350456350605%_)))
                                       (_%$tl350458350611%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt350456350605%_)))
                                       (_%body350615%_ _%$hd350457350608%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl350458350611%_))
                                              '())
                                      (__compile _%body350615%_)
                                      (_%$E350439350582%_)))
                                (_%$E350439350582%_))
                            (_%$E350439350582%_)))
                      (_%$E350439350582%_)))
                (_%$E350439350582%_))))))
    (define __compile-let-values%
      (lambda (_%stx350242%_)
        (letrec ((_%compile-simple350244%_
                  (lambda (_%hd-ids350426%_ _%exprs350427%_ _%body350428%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp351622
                                        (map __compile-head-id
                                             _%hd-ids350426%_)))
                                   (declare (not safe))
                                   (##map list __tmp351622 _%exprs350427%_))
                                 (cons _%body350428%_ '())))
                     _%stx350242%_)))
                 (_%compile-values350245%_
                  (lambda (_%hd-ids350341%_ _%exprs350342%_ _%body350343%_)
                    (let _%lp350345%_ ((_%rest350347%_ _%hd-ids350341%_)
                                       (_%exprs350348%_ _%exprs350342%_)
                                       (_%bind350349%_ '())
                                       (_%post350350%_ '()))
                      (let* ((_%rest350351350365%_ _%rest350347%_)
                             (_%else350354350373%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind350349%_)
                                             (cons (_%compile-post350246%_
                                                    _%post350350%_
                                                    _%body350343%_)
                                                   '())))
                                 _%stx350242%_))))
                        (let ((_%K350359350409%_
                               (lambda (_%rest350406%_ _%id350407%_)
                                 (_%lp350345%_
                                  _%rest350406%_
                                  (cdr _%exprs350348%_)
                                  (cons (cons (__compile-head-id _%id350407%_)
                                              (cons (car _%exprs350348%_) '()))
                                        _%bind350349%_)
                                  _%post350350%_)))
                              (_%K350356350391%_
                               (lambda (_%rest350377%_ _%hd350378%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd350378%_))
                                     (_%lp350345%_
                                      _%rest350377%_
                                      (cdr _%exprs350348%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd350378%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs350348%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind350349%_)
                                      _%post350350%_)
                                     (if (list? _%hd350378%_)
                                         (let* ((_%len350382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd350378%_)))
                                                (_%tmp350384%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp350345%_
                                            _%rest350377%_
                                            (cdr _%exprs350348%_)
                                            (cons (cons _%tmp350384%_
                                                        (cons (car _%exprs350348%_)
                                                              '()))
                                                  _%bind350349%_)
                                            (cons (cons _%tmp350384%_
                                                        (cons _%len350382%_
                                                              (let ((__tmp351624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id350387%_ _%k350388%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id350387%_))
                                   (cons (__SRC__0 _%id350387%_) _%k350388%_)
                                   '#f)))
                            (__tmp351623
                             (let ()
                               (declare (not safe))
                               (##iota _%len350382%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp351624 _%hd350378%_ __tmp351623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post350350%_)))
                                         (__compile-error__%
                                          _%stx350242%_
                                          _%hd350378%_))))))
                          (if (pair? _%rest350351350365%_)
                              (let ((_%tl350361350414%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest350351350365%_)))
                                    (_%hd350360350412%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest350351350365%_))))
                                (if (pair? _%hd350360350412%_)
                                    (let ((_%tl350363350419%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd350360350412%_)))
                                          (_%hd350362350417%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd350360350412%_))))
                                      (if (null? _%tl350363350419%_)
                                          (let ((_%id350422%_
                                                 _%hd350362350417%_)
                                                (_%rest350424%_
                                                 _%tl350361350414%_))
                                            (_%K350359350409%_
                                             _%rest350424%_
                                             _%id350422%_))
                                          (let ((_%hd350399%_
                                                 _%hd350360350412%_)
                                                (_%rest350401%_
                                                 _%tl350361350414%_))
                                            (_%K350356350391%_
                                             _%rest350401%_
                                             _%hd350399%_))))
                                    (let ((_%hd350399%_ _%hd350360350412%_)
                                          (_%rest350401%_ _%tl350361350414%_))
                                      (_%K350356350391%_
                                       _%rest350401%_
                                       _%hd350399%_))))
                              (_%else350354350373%_)))))))
                 (_%compile-post350246%_
                  (lambda (_%post350248%_ _%body350249%_)
                    (let _%lp350251%_ ((_%rest350253%_ _%post350248%_)
                                       (_%check350254%_ '())
                                       (_%bind350255%_ '()))
                      (let* ((_%rest350256350268%_ _%rest350253%_)
                             (_%else350258350276%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp351625
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind350255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body350249%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx350242%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp351625
                                          _%check350254%_)))
                                 _%stx350242%_)))
                             (_%K350260350315%_
                              (lambda (_%rest350279%_
                                       _%init350280%_
                                       _%len350281%_
                                       _%tmp350282%_)
                                (_%lp350251%_
                                 _%rest350279%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp350282%_
                                                    (cons _%len350281%_ '())))
                                        _%stx350242%_)
                                       _%check350254%_)
                                 (let ((__tmp351626
                                        (lambda (_%hd350284%_ _%r350285%_)
                                          (let* ((_%hd350286350293%_
                                                  _%hd350284%_)
                                                 (_%E350288350297%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd350286350293%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K350289350303%_
                                                  (lambda (_%k350300%_
                                                           _%id350301%_)
                                                    (cons (cons _%id350301%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp350282%_
                                          (cons _%k350300%_ '())))
                              '()))
                  _%r350285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd350286350293%_)
                                                (let ((_%hd350290350306%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd350286350293%_)))
                                                      (_%tl350291350308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd350286350293%_))))
                                                  (let* ((_%id350311%_
                                                          _%hd350290350306%_)
                                                         (_%k350313%_
                                                          _%tl350291350308%_))
                                                    (_%K350289350303%_
                                                     _%k350313%_
                                                     _%id350311%_)))
                                                (_%E350288350297%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp351626
                                    _%bind350255%_
                                    _%init350280%_))))))
                        (if (pair? _%rest350256350268%_)
                            (let ((_%hd350261350318%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest350256350268%_)))
                                  (_%tl350262350320%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest350256350268%_))))
                              (if (pair? _%hd350261350318%_)
                                  (let ((_%hd350263350323%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd350261350318%_)))
                                        (_%tl350264350325%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd350261350318%_))))
                                    (let ((_%tmp350328%_ _%hd350263350323%_))
                                      (if (pair? _%tl350264350325%_)
                                          (let ((_%hd350265350330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl350264350325%_)))
                                                (_%tl350266350332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl350264350325%_))))
                                            (let* ((_%len350335%_
                                                    _%hd350265350330%_)
                                                   (_%init350337%_
                                                    _%tl350266350332%_)
                                                   (_%rest350339%_
                                                    _%tl350262350320%_))
                                              (_%K350260350315%_
                                               _%rest350339%_
                                               _%init350337%_
                                               _%len350335%_
                                               _%tmp350328%_)))
                                          (_%else350258350276%_))))
                                  (_%else350258350276%_)))
                            (_%else350258350276%_)))))))
          (__compile-let-form
           _%stx350242%_
           _%compile-simple350244%_
           _%compile-values350245%_))))
    (define __compile-letrec-values%
      (lambda (_%stx350039%_)
        (letrec ((_%compile-simple350041%_
                  (lambda (_%hd-ids350238%_ _%exprs350239%_ _%body350240%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp351627
                                        (map __compile-head-id
                                             _%hd-ids350238%_)))
                                   (declare (not safe))
                                   (##map list __tmp351627 _%exprs350239%_))
                                 (cons _%body350240%_ '())))
                     _%stx350039%_)))
                 (_%compile-values350042%_
                  (lambda (_%hd-ids350149%_ _%exprs350150%_ _%body350151%_)
                    (let _%lp350153%_ ((_%rest350155%_ _%hd-ids350149%_)
                                       (_%exprs350156%_ _%exprs350150%_)
                                       (_%pre350157%_ '())
                                       (_%bind350158%_ '())
                                       (_%post350159%_ '()))
                      (let* ((_%rest350160350174%_ _%rest350155%_)
                             (_%else350163350182%_
                              (lambda ()
                                (_%compile-inner350043%_
                                 _%pre350157%_
                                 _%bind350158%_
                                 _%post350159%_
                                 _%body350151%_))))
                        (let ((_%K350168350221%_
                               (lambda (_%rest350218%_ _%id350219%_)
                                 (_%lp350153%_
                                  _%rest350218%_
                                  (cdr _%exprs350156%_)
                                  _%pre350157%_
                                  (cons (cons (__compile-head-id _%id350219%_)
                                              (cons (car _%exprs350156%_) '()))
                                        _%bind350158%_)
                                  _%post350159%_)))
                              (_%K350165350203%_
                               (lambda (_%rest350186%_ _%hd350187%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd350187%_))
                                     (_%lp350153%_
                                      _%rest350186%_
                                      (cdr _%exprs350156%_)
                                      _%pre350157%_
                                      (cons (cons (__compile-head-id
                                                   _%hd350187%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs350156%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind350158%_)
                                      _%post350159%_)
                                     (if (list? _%hd350187%_)
                                         (let* ((_%len350191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd350187%_)))
                                                (_%tmp350193%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp350153%_
                                            _%rest350186%_
                                            (cdr _%exprs350156%_)
                                            (let ((__tmp351628
                                                   (lambda (_%id350196%_
                                                            _%r350197%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id350196%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id350196%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r350197%_)
                 _%r350197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp351628
                                               _%pre350157%_
                                               _%hd350187%_))
                                            (cons (cons _%tmp350193%_
                                                        (cons (car _%exprs350156%_)
                                                              '()))
                                                  _%bind350158%_)
                                            (cons (cons _%tmp350193%_
                                                        (cons _%len350191%_
                                                              (let ((__tmp351630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id350199%_ _%k350200%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id350199%_))
                                   (cons (__SRC__0 _%id350199%_) _%k350200%_)
                                   '#f)))
                            (__tmp351629
                             (let ()
                               (declare (not safe))
                               (##iota _%len350191%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp351630 _%hd350187%_ __tmp351629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post350159%_)))
                                         (__compile-error__%
                                          _%stx350039%_
                                          _%hd350187%_))))))
                          (if (pair? _%rest350160350174%_)
                              (let ((_%tl350170350226%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest350160350174%_)))
                                    (_%hd350169350224%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest350160350174%_))))
                                (if (pair? _%hd350169350224%_)
                                    (let ((_%tl350172350231%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd350169350224%_)))
                                          (_%hd350171350229%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd350169350224%_))))
                                      (if (null? _%tl350172350231%_)
                                          (let ((_%id350234%_
                                                 _%hd350171350229%_)
                                                (_%rest350236%_
                                                 _%tl350170350226%_))
                                            (_%K350168350221%_
                                             _%rest350236%_
                                             _%id350234%_))
                                          (let ((_%hd350211%_
                                                 _%hd350169350224%_)
                                                (_%rest350213%_
                                                 _%tl350170350226%_))
                                            (_%K350165350203%_
                                             _%rest350213%_
                                             _%hd350211%_))))
                                    (let ((_%hd350211%_ _%hd350169350224%_)
                                          (_%rest350213%_ _%tl350170350226%_))
                                      (_%K350165350203%_
                                       _%rest350213%_
                                       _%hd350211%_))))
                              (_%else350163350182%_)))))))
                 (_%compile-inner350043%_
                  (lambda (_%pre350144%_
                           _%bind350145%_
                           _%post350146%_
                           _%body350147%_)
                    (if (null? _%pre350144%_)
                        (_%compile-bind350044%_
                         _%bind350145%_
                         _%post350146%_
                         _%body350147%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre350144%_)
                                     (cons (_%compile-bind350044%_
                                            _%bind350145%_
                                            _%post350146%_
                                            _%body350147%_)
                                           '())))
                         _%stx350039%_))))
                 (_%compile-bind350044%_
                  (lambda (_%bind350140%_ _%post350141%_ _%body350142%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind350140%_)
                                 (cons (_%compile-post350045%_
                                        _%post350141%_
                                        _%body350142%_)
                                       '())))
                     _%stx350039%_)))
                 (_%compile-post350045%_
                  (lambda (_%post350047%_ _%body350048%_)
                    (let _%lp350050%_ ((_%rest350052%_ _%post350047%_)
                                       (_%check350053%_ '())
                                       (_%bind350054%_ '()))
                      (let* ((_%rest350055350067%_ _%rest350052%_)
                             (_%else350057350075%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp351631
                                              (let ((__tmp351632
                                                     (cons _%body350048%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp351632
                                                 _%bind350054%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp351631
                                          _%check350053%_)))
                                 _%stx350039%_)))
                             (_%K350059350114%_
                              (lambda (_%rest350078%_
                                       _%init350079%_
                                       _%len350080%_
                                       _%tmp350081%_)
                                (_%lp350050%_
                                 _%rest350078%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp350081%_
                                                    (cons _%len350080%_ '())))
                                        _%stx350039%_)
                                       _%check350053%_)
                                 (let ((__tmp351633
                                        (lambda (_%hd350083%_ _%r350084%_)
                                          (let* ((_%hd350085350092%_
                                                  _%hd350083%_)
                                                 (_%E350087350096%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd350085350092%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K350088350102%_
                                                  (lambda (_%k350099%_
                                                           _%id350100%_)
                                                    (cons (cons 'set!
                                                                (cons _%id350100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp350081%_
                                                (cons _%k350099%_ '())))
                                    '())))
                  _%r350084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd350085350092%_)
                                                (let ((_%hd350089350105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd350085350092%_)))
                                                      (_%tl350090350107%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd350085350092%_))))
                                                  (let* ((_%id350110%_
                                                          _%hd350089350105%_)
                                                         (_%k350112%_
                                                          _%tl350090350107%_))
                                                    (_%K350088350102%_
                                                     _%k350112%_
                                                     _%id350110%_)))
                                                (_%E350087350096%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp351633
                                    _%bind350054%_
                                    _%init350079%_))))))
                        (if (pair? _%rest350055350067%_)
                            (let ((_%hd350060350117%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest350055350067%_)))
                                  (_%tl350061350119%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest350055350067%_))))
                              (if (pair? _%hd350060350117%_)
                                  (let ((_%hd350062350122%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd350060350117%_)))
                                        (_%tl350063350124%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd350060350117%_))))
                                    (let ((_%tmp350127%_ _%hd350062350122%_))
                                      (if (pair? _%tl350063350124%_)
                                          (let ((_%hd350064350129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl350063350124%_)))
                                                (_%tl350065350131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl350063350124%_))))
                                            (let* ((_%len350134%_
                                                    _%hd350064350129%_)
                                                   (_%init350136%_
                                                    _%tl350065350131%_)
                                                   (_%rest350138%_
                                                    _%tl350061350119%_))
                                              (_%K350059350114%_
                                               _%rest350138%_
                                               _%init350136%_
                                               _%len350134%_
                                               _%tmp350127%_)))
                                          (_%else350057350075%_))))
                                  (_%else350057350075%_)))
                            (_%else350057350075%_)))))))
          (__compile-let-form
           _%stx350039%_
           _%compile-simple350041%_
           _%compile-values350042%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx349790%_)
        (letrec ((_%compile-simple349792%_
                  (lambda (_%hd-ids350035%_ _%exprs350036%_ _%body350037%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp351634
                                        (map __compile-head-id
                                             _%hd-ids350035%_)))
                                   (declare (not safe))
                                   (##map list __tmp351634 _%exprs350036%_))
                                 (cons _%body350037%_ '())))
                     _%stx349790%_)))
                 (_%compile-values349793%_
                  (lambda (_%hd-ids349942%_ _%exprs349943%_ _%body349944%_)
                    (let _%lp349946%_ ((_%rest349948%_ _%hd-ids349942%_)
                                       (_%exprs349949%_ _%exprs349943%_)
                                       (_%bind349950%_ '())
                                       (_%post349951%_ '()))
                      (let* ((_%rest349952349966%_ _%rest349948%_)
                             (_%else349955349974%_
                              (lambda ()
                                (_%compile-bind349794%_
                                 _%bind349950%_
                                 _%post349951%_
                                 _%body349944%_))))
                        (let ((_%K349960350018%_
                               (lambda (_%rest350013%_ _%hd350014%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd350014%_))
                                     (let ((_%id350016%_
                                            (__SRC__0 _%hd350014%_)))
                                       (_%lp349946%_
                                        _%rest350013%_
                                        (cdr _%exprs349949%_)
                                        (cons (cons _%id350016%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind349950%_)
                                        (cons (cons _%id350016%_
                                                    (cons (car _%exprs349949%_)
                                                          '()))
                                              _%post349951%_)))
                                     (_%lp349946%_
                                      _%rest350013%_
                                      (cdr _%exprs349949%_)
                                      _%bind349950%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs349949%_)
                                                        '()))
                                            _%post349951%_)))))
                              (_%K349957349998%_
                               (lambda (_%rest349978%_ _%hd349979%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd349979%_))
                                     (let ((_%id349982%_
                                            (__SRC__0 _%hd349979%_)))
                                       (_%lp349946%_
                                        _%rest349978%_
                                        (cdr _%exprs349949%_)
                                        (cons (cons _%id349982%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind349950%_)
                                        (cons (cons _%id349982%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs349949%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post349951%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd349979%_))
                                         (if (list? _%hd349979%_)
                                             (let* ((_%len349986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd349979%_)))
                                                    (_%tmp349988%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp349946%_
                                                _%rest349978%_
                                                (cdr _%exprs349949%_)
                                                (let ((__tmp351635
                                                       (lambda (_%id349991%_
                                                                _%r349992%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id349991%_))
                     (cons (cons (__SRC__0 _%id349991%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r349992%_)
                     _%r349992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp351635
                                                   _%bind349950%_
                                                   _%hd349979%_))
                                                (cons (cons _%tmp349988%_
                                                            (cons (car _%exprs349949%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len349986%_
                                (let ((__tmp351637
                                       (lambda (_%id349994%_ _%k349995%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id349994%_))
                                             (cons (__SRC__0 _%id349994%_)
                                                   _%k349995%_)
                                             '#f)))
                                      (__tmp351636
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len349986%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp351637
                                   _%hd349979%_
                                   __tmp351636)))))
              _%post349951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx349790%_
                                              _%hd349979%_))
                                         (_%lp349946%_
                                          _%rest349978%_
                                          (cdr _%exprs349949%_)
                                          _%bind349950%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs349949%_)
                                                            '()))
                                                _%post349951%_)))))))
                          (if (pair? _%rest349952349966%_)
                              (let ((_%tl349962350023%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest349952349966%_)))
                                    (_%hd349961350021%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest349952349966%_))))
                                (if (pair? _%hd349961350021%_)
                                    (let ((_%tl349964350028%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd349961350021%_)))
                                          (_%hd349963350026%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd349961350021%_))))
                                      (if (null? _%tl349964350028%_)
                                          (let ((_%hd350031%_
                                                 _%hd349963350026%_)
                                                (_%rest350033%_
                                                 _%tl349962350023%_))
                                            (_%K349960350018%_
                                             _%rest350033%_
                                             _%hd350031%_))
                                          (let ((_%hd350006%_
                                                 _%hd349961350021%_)
                                                (_%rest350008%_
                                                 _%tl349962350023%_))
                                            (_%K349957349998%_
                                             _%rest350008%_
                                             _%hd350006%_))))
                                    (let ((_%hd350006%_ _%hd349961350021%_)
                                          (_%rest350008%_ _%tl349962350023%_))
                                      (_%K349957349998%_
                                       _%rest350008%_
                                       _%hd350006%_))))
                              (_%else349955349974%_)))))))
                 (_%compile-bind349794%_
                  (lambda (_%bind349938%_ _%post349939%_ _%body349940%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind349938%_)
                                 (cons (_%compile-post349795%_
                                        _%post349939%_
                                        _%body349940%_)
                                       '())))
                     _%stx349790%_)))
                 (_%compile-post349795%_
                  (lambda (_%post349797%_ _%body349798%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp351638
                                  (let ((__tmp351640
                                         (lambda (_%hd349800%_ _%r349801%_)
                                           (let* ((_%hd349802349825%_
                                                   _%hd349800%_)
                                                  (_%E349806349829%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd349802349825%_
                                                              '([#f expr])
                                                              '([id expr])
                                                              '([tmp
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         expr
                         len
                         .
                         init])))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K349819349923%_
                                                    (lambda (_%expr349921%_)
                                                      (cons _%expr349921%_
                                                            _%r349801%_)))
                                                   (_%K349814349901%_
                                                    (lambda (_%expr349898%_
                                                             _%id349899%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id349899%_ (cons _%expr349898%_ '())))
                     _%stx349790%_)
                    _%r349801%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K349807349868%_
                                                    (lambda (_%init349833%_
                                                             _%len349834%_
                                                             _%expr349835%_
                                                             _%tmp349836%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp349836%_
                                             (cons _%expr349835%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp349836%_
                                                    (cons _%len349834%_ '())))
                                        _%stx349790%_)
                                       (let ((__tmp351641
                                              (map (lambda (_%hd349838%_)
                                                     (let* ((_%hd349839349846%_
                                                             _%hd349838%_)
                                                            (_%E349841349850%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd349839349846%_
                                '([id . k])))
                       '#!void))
                    (_%K349842349856%_
                     (lambda (_%k349853%_ _%id349854%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id349854%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp349836%_
                                                      (cons _%k349853%_ '())))
                                          '())))
                        _%stx349790%_))))
               (if (pair? _%hd349839349846%_)
                   (let ((_%hd349843349859%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd349839349846%_)))
                         (_%tl349844349861%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd349839349846%_))))
                     (let* ((_%id349864%_ _%hd349843349859%_)
                            (_%k349866%_ _%tl349844349861%_))
                       (_%K349842349856%_ _%k349866%_ _%id349864%_)))
                   (_%E349841349850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init349833%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp351641)))))
                     _%stx349790%_)
                    _%r349801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match351496351497%_
                                                       (lambda (_%hd349808349871%_
                                                                _%tl349809349873%_
                                                                _%hd349810349878%_
                                                                _%tl349811349880%_)
                                                         (let ((_%tmp349876%_
                                                                _%hd349808349871%_)
                                                               (_%expr349883%_
                                                                _%hd349810349878%_))
                                                           (_%E349806349829%_))))
                                                      (_%__match351490351491%_
                                                       (lambda (_%hd349808349871%_
                                                                _%tl349809349873%_)
                                                         (let ((_%tmp349876%_
                                                                _%hd349808349871%_))
                                                           (_%E349806349829%_)))))
                                                 (if (pair? _%hd349802349825%_)
                                                     (let ((_%tl349821349928%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd349802349825%_)))
                                                           (_%hd349820349926%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd349802349825%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd349820349926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl349821349928%_)
                       (let ((_%tl349823349933%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl349821349928%_)))
                             (_%hd349822349931%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl349821349928%_))))
                         (if (null? _%tl349823349933%_)
                             (let ((_%expr349936%_ _%hd349822349931%_))
                               (_%K349819349923%_ _%expr349936%_))
                             (if (pair? _%tl349823349933%_)
                                 (let ((_%tl349813349887%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl349823349933%_)))
                                       (_%hd349812349885%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl349823349933%_))))
                                   (let ((_%tmp349876%_ _%hd349820349926%_)
                                         (_%expr349883%_ _%hd349822349931%_)
                                         (_%len349890%_ _%hd349812349885%_)
                                         (_%init349892%_ _%tl349813349887%_))
                                     (_%K349807349868%_
                                      _%init349892%_
                                      _%len349890%_
                                      _%expr349883%_
                                      _%tmp349876%_)))
                                 (_%__match351496351497%_
                                  _%hd349820349926%_
                                  _%tl349821349928%_
                                  _%hd349822349931%_
                                  _%tl349823349933%_))))
                       (_%__match351490351491%_
                        _%hd349820349926%_
                        _%tl349821349928%_))
                   (if (pair? _%tl349821349928%_)
                       (let ((_%tl349818349913%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl349821349928%_)))
                             (_%hd349817349911%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl349821349928%_))))
                         (if (null? _%tl349818349913%_)
                             (let ((_%id349909%_ _%hd349820349926%_)
                                   (_%expr349916%_ _%hd349817349911%_))
                               (_%K349814349901%_ _%expr349916%_ _%id349909%_))
                             (if (pair? _%tl349818349913%_)
                                 (let ((_%tl349813349887%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl349818349913%_)))
                                       (_%hd349812349885%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl349818349913%_))))
                                   (let ((_%tmp349876%_ _%hd349820349926%_)
                                         (_%expr349883%_ _%hd349817349911%_)
                                         (_%len349890%_ _%hd349812349885%_)
                                         (_%init349892%_ _%tl349813349887%_))
                                     (_%K349807349868%_
                                      _%init349892%_
                                      _%len349890%_
                                      _%expr349883%_
                                      _%tmp349876%_)))
                                 (_%__match351496351497%_
                                  _%hd349820349926%_
                                  _%tl349821349928%_
                                  _%hd349817349911%_
                                  _%tl349818349913%_))))
                       (_%__match351490351491%_
                        _%hd349820349926%_
                        _%tl349821349928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E349806349829%_)))))))
                                        (__tmp351639 (list _%body349798%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp351640
                                     __tmp351639
                                     _%post349797%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp351638)))
                     _%stx349790%_))))
          (__compile-let-form
           _%stx349790%_
           _%compile-simple349792%_
           _%compile-values349793%_))))
    (define __compile-call%
      (lambda (_%stx349750%_)
        (let* ((_%$e349752%_ _%stx349750%_)
               (_%$E349754349763%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e349752%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e349752%_))
              (let* ((_%$tgt349755349766%_
                      (let () (declare (not safe)) (__AST-e _%$e349752%_)))
                     (_%$hd349756349769%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt349755349766%_)))
                     (_%$tl349757349772%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt349755349766%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl349757349772%_))
                    (let* ((_%$tgt349758349776%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl349757349772%_)))
                           (_%$hd349759349779%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt349758349776%_)))
                           (_%$tl349760349782%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt349758349776%_)))
                           (_%rator349786%_ _%$hd349759349779%_)
                           (_%rands349788%_ _%$tl349760349782%_))
                      (__SRC__%
                       (cons (__compile _%rator349786%_)
                             (map __compile _%rands349788%_))
                       _%stx349750%_))
                    (_%$E349754349763%_)))
              (_%$E349754349763%_)))))
    (define __compile-ref%
      (lambda (_%stx349712%_)
        (let* ((_%$e349714%_ _%stx349712%_)
               (_%$E349716349725%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e349714%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e349714%_))
              (let* ((_%$tgt349717349728%_
                      (let () (declare (not safe)) (__AST-e _%$e349714%_)))
                     (_%$hd349718349731%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt349717349728%_)))
                     (_%$tl349719349734%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt349717349728%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl349719349734%_))
                    (let* ((_%$tgt349720349738%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl349719349734%_)))
                           (_%$hd349721349741%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt349720349738%_)))
                           (_%$tl349722349744%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt349720349738%_)))
                           (_%id349748%_ _%$hd349721349741%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl349722349744%_))
                                  '())
                          (__SRC__% _%id349748%_ _%stx349712%_)
                          (_%$E349716349725%_)))
                    (_%$E349716349725%_)))
              (_%$E349716349725%_)))))
    (define __compile-setq%
      (lambda (_%stx349659%_)
        (let* ((_%$e349661%_ _%stx349659%_)
               (_%$E349663349675%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e349661%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e349661%_))
              (let* ((_%$tgt349664349678%_
                      (let () (declare (not safe)) (__AST-e _%$e349661%_)))
                     (_%$hd349665349681%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt349664349678%_)))
                     (_%$tl349666349684%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt349664349678%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl349666349684%_))
                    (let* ((_%$tgt349667349688%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl349666349684%_)))
                           (_%$hd349668349691%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt349667349688%_)))
                           (_%$tl349669349694%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt349667349688%_)))
                           (_%id349698%_ _%$hd349668349691%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl349669349694%_))
                          (let* ((_%$tgt349670349700%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl349669349694%_)))
                                 (_%$hd349671349703%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt349670349700%_)))
                                 (_%$tl349672349706%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt349670349700%_)))
                                 (_%expr349710%_ _%$hd349671349703%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl349672349706%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id349698%_
                                              _%stx349659%_)
                                             (cons (__compile _%expr349710%_)
                                                   '())))
                                 _%stx349659%_)
                                (_%$E349663349675%_)))
                          (_%$E349663349675%_)))
                    (_%$E349663349675%_)))
              (_%$E349663349675%_)))))
    (define __compile-if%
      (lambda (_%stx349591%_)
        (let* ((_%$e349593%_ _%stx349591%_)
               (_%$E349595349610%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e349593%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e349593%_))
              (let* ((_%$tgt349596349613%_
                      (let () (declare (not safe)) (__AST-e _%$e349593%_)))
                     (_%$hd349597349616%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt349596349613%_)))
                     (_%$tl349598349619%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt349596349613%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl349598349619%_))
                    (let* ((_%$tgt349599349623%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl349598349619%_)))
                           (_%$hd349600349626%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt349599349623%_)))
                           (_%$tl349601349629%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt349599349623%_)))
                           (_%p349633%_ _%$hd349600349626%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl349601349629%_))
                          (let* ((_%$tgt349602349635%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl349601349629%_)))
                                 (_%$hd349603349638%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt349602349635%_)))
                                 (_%$tl349604349641%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt349602349635%_)))
                                 (_%t349645%_ _%$hd349603349638%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl349604349641%_))
                                (let* ((_%$tgt349605349647%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl349604349641%_)))
                                       (_%$hd349606349650%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt349605349647%_)))
                                       (_%$tl349607349653%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt349605349647%_)))
                                       (_%f349657%_ _%$hd349606349650%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl349607349653%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p349633%_)
                                                   (cons (__compile
                                                          _%t349645%_)
                                                         (cons (__compile
                                                                _%f349657%_)
                                                               '()))))
                                       _%stx349591%_)
                                      (_%$E349595349610%_)))
                                (_%$E349595349610%_)))
                          (_%$E349595349610%_)))
                    (_%$E349595349610%_)))
              (_%$E349595349610%_)))))
    (define __compile-quote%
      (lambda (_%stx349553%_)
        (let* ((_%$e349555%_ _%stx349553%_)
               (_%$E349557349566%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e349555%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e349555%_))
              (let* ((_%$tgt349558349569%_
                      (let () (declare (not safe)) (__AST-e _%$e349555%_)))
                     (_%$hd349559349572%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt349558349569%_)))
                     (_%$tl349560349575%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt349558349569%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl349560349575%_))
                    (let* ((_%$tgt349561349579%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl349560349575%_)))
                           (_%$hd349562349582%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt349561349579%_)))
                           (_%$tl349563349585%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt349561349579%_)))
                           (_%e349589%_ _%$hd349562349582%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl349563349585%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e349589%_))
                                       '()))
                           _%stx349553%_)
                          (_%$E349557349566%_)))
                    (_%$E349557349566%_)))
              (_%$E349557349566%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx349515%_)
        (let* ((_%$e349517%_ _%stx349515%_)
               (_%$E349519349528%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e349517%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e349517%_))
              (let* ((_%$tgt349520349531%_
                      (let () (declare (not safe)) (__AST-e _%$e349517%_)))
                     (_%$hd349521349534%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt349520349531%_)))
                     (_%$tl349522349537%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt349520349531%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl349522349537%_))
                    (let* ((_%$tgt349523349541%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl349522349537%_)))
                           (_%$hd349524349544%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt349523349541%_)))
                           (_%$tl349525349547%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt349523349541%_)))
                           (_%e349551%_ _%$hd349524349544%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl349525349547%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e349551%_ '()))
                           _%stx349515%_)
                          (_%$E349519349528%_)))
                    (_%$E349519349528%_)))
              (_%$E349519349528%_)))))
    (__core-bind-syntax!__% '%#begin __compile-begin% make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-foreign
     __compile-begin-foreign%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#module
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#import
     __compile-import%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#export
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#provide
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-values
     __compile-define-values%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-alias
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-runtime
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#extern
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#declare
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-annotation
     __compile-begin-annotation%
     make-__core-expression)
    (__core-bind-syntax!__% '%#quote __compile-quote% make-__core-expression)
    (__core-bind-syntax!__%
     '%#quote-syntax
     __compile-quote-syntax%
     make-__core-expression)
    (__core-bind-syntax!__% '%#lambda __compile-lambda% make-__core-expression)
    (__core-bind-syntax!__%
     '%#case-lambda
     __compile-case-lambda%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#let-values
     __compile-let-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec-values
     __compile-letrec-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec*-values
     __compile-letrec*-values%
     make-__core-expression)
    (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression)
    (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression)
    (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression)
    (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression)
    (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#include __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form)
    (__core-bind-syntax!__%
     '%#letrec-syntax
     __compile-error
     make-__core-form)))
