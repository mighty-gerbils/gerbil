(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1773012984)
  (begin
    (define __syntax::t
      (let ((__tmp169856 (list)) (__tmp169855 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp169856
         '(e id)
         __tmp169855
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args169660%_
        (apply make-instance __syntax::t _%$args169660%_)))
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
      (let ((__tmp169858 (list __syntax::t))
            (__tmp169857 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp169858
         '()
         __tmp169857
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args169657%_
        (apply make-instance __core-form::t _%$args169657%_)))
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
      (let ((__tmp169860 (list __core-form::t))
            (__tmp169859 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp169860
         '()
         __tmp169859
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args169654%_
        (apply make-instance __core-expression::t _%$args169654%_)))
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
      (let ((__tmp169862 (list __core-form::t))
            (__tmp169861 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp169862
         '()
         __tmp169861
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args169651%_
        (apply make-instance __core-special-form::t _%$args169651%_)))
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
      (lambda (_%id169625%_)
        (let* ((_%h169627%_ __core)
               (_%key169630%_
                (let () (declare (not safe)) (__AST-e _%id169625%_)))
               (_%h169637%_
                (let ((_%$obj169634%_ _%h169627%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169634%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169634%_)))
                           '#t)
                      _%$obj169634%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169634%_)))))
               (_%h169639%_ _%h169637%_))
          (declare (not safe))
          (__hash-get _%h169639%_ _%key169630%_))))
    (define __core-bound-id?__%
      (lambda (_%id169608%_ _%is?169609%_)
        (let ((_%$e169611%_ (__core-resolve _%id169608%_)))
          (if _%$e169611%_ (_%is?169609%_ _%$e169611%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id169618%_)
        (let ((_%is?169620%_ true))
          (__core-bound-id?__% _%id169618%_ _%is?169620%_))))
    (define __core-bound-id?
      (lambda _g169863_
        (let ((_g169864_ (let () (declare (not safe)) (##length _g169863_))))
          (cond ((let () (declare (not safe)) (##fx= _g169864_ 1))
                 (apply __core-bound-id?__0 _g169863_))
                ((let () (declare (not safe)) (##fx= _g169864_ 2))
                 (apply __core-bound-id?__% _g169863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g169863_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id169563%_ _%e169564%_ _%make169565%_)
        (let* ((_%h169567%_ __core)
               (_%key169570%_ _%id169563%_)
               (_%value169573%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e169564%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e169564%_
                    (_%make169565%_ _%e169564%_ _%id169563%_)))
               (_%h169580%_
                (let ((_%$obj169577%_ _%h169567%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169577%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169577%_)))
                           '#t)
                      _%$obj169577%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169577%_)))))
               (_%h169582%_ _%h169580%_))
          (declare (not safe))
          (__hash-put! _%h169582%_ _%key169570%_ _%value169573%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id169598%_ _%e169599%_)
        (let ((_%make169601%_ make-__syntax))
          (__core-bind-syntax!__% _%id169598%_ _%e169599%_ _%make169601%_))))
    (define __core-bind-syntax!
      (lambda _g169865_
        (let ((_g169866_ (let () (declare (not safe)) (##length _g169865_))))
          (cond ((let () (declare (not safe)) (##fx= _g169866_ 2))
                 (apply __core-bind-syntax!__0 _g169865_))
                ((let () (declare (not safe)) (##fx= _g169866_ 3))
                 (apply __core-bind-syntax!__% _g169865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g169865_))))))
    (define __SRC__%
      (lambda (_%e169543%_ _%src-stx169544%_)
        (if (or (pair? _%e169543%_) (symbol? _%e169543%_))
            (let ((__tmp169867
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx169544%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx169544%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e169543%_ __tmp169867))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e169543%_ 'gerbil#AST::t))
                (let ((__tmp169869
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e169543%_ '1 '#f '#f)))
                      (__tmp169868
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e169543%_)))))
                  (declare (not safe))
                  (##make-source __tmp169869 __tmp169868))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e169543%_))))))
    (define __SRC__0
      (lambda (_%e169555%_)
        (let ((_%src-stx169557%_ '#f))
          (__SRC__% _%e169555%_ _%src-stx169557%_))))
    (define __SRC
      (lambda _g169870_
        (let ((_g169871_ (let () (declare (not safe)) (##length _g169870_))))
          (cond ((let () (declare (not safe)) (##fx= _g169871_ 1))
                 (apply __SRC__0 _g169870_))
                ((let () (declare (not safe)) (##fx= _g169871_ 2))
                 (apply __SRC__% _g169870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g169870_))))))
    (define __locat
      (lambda (_%loc169540%_)
        (if (let () (declare (not safe)) (##locat? _%loc169540%_))
            _%loc169540%_
            '#f)))
    (define __check-values
      (lambda (_%obj169535%_ _%k169536%_)
        (let ((_%count169538%_
               (if (let () (declare (not safe)) (##values? _%obj169535%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj169535%_))
                   '1)))
          (if (fx= _%count169538%_ _%k169536%_)
              '#!void
              (let ((__tmp169873
                     (if (fx< _%count169538%_ _%k169536%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp169872
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj169535%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj169535%_))
                         _%obj169535%_)))
                (declare (not safe))
                (error __tmp169873 __tmp169872 _%k169536%_))))))
    (define __compile
      (lambda (_%stx169504%_)
        (let* ((_%$e169506%_ _%stx169504%_)
               (_%$E169508169514%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169506%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169506%_))
              (let* ((_%$tgt169509169517%_
                      (let () (declare (not safe)) (__AST-e _%$e169506%_)))
                     (_%$hd169510169520%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169509169517%_)))
                     (_%$tl169511169523%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169509169517%_)))
                     (_%form169527%_ _%$hd169510169520%_)
                     (_%$e169529%_ (__core-resolve _%form169527%_)))
                (if _%$e169529%_
                    ((lambda (_%bind169532%_)
                       ((##structure-ref _%bind169532%_ '1 __syntax::t '#f)
                        _%stx169504%_))
                     _%$e169529%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx169504%_
                       _%form169527%_))))
              (_%$E169508169514%_)))))
    (define __compile-error__%
      (lambda (_%stx169491%_ _%detail169492%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx169491%_
           _%detail169492%_))))
    (define __compile-error__0
      (lambda (_%stx169497%_)
        (let ((_%detail169499%_ '#f))
          (__compile-error__% _%stx169497%_ _%detail169499%_))))
    (define __compile-error
      (lambda _g169874_
        (let ((_g169875_ (let () (declare (not safe)) (##length _g169874_))))
          (cond ((let () (declare (not safe)) (##fx= _g169875_ 1))
                 (apply __compile-error__0 _g169874_))
                ((let () (declare (not safe)) (##fx= _g169875_ 2))
                 (apply __compile-error__% _g169874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g169874_))))))
    (define __compile-ignore%
      (lambda (_%stx169488%_) (__SRC__% ''#!void _%stx169488%_)))
    (define __compile-begin%
      (lambda (_%stx169463%_)
        (let* ((_%$e169465%_ _%stx169463%_)
               (_%$E169467169473%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169465%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169465%_))
              (let* ((_%$tgt169468169476%_
                      (let () (declare (not safe)) (__AST-e _%$e169465%_)))
                     (_%$hd169469169479%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169468169476%_)))
                     (_%$tl169470169482%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169468169476%_)))
                     (_%body169486%_ _%$tl169470169482%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body169486%_))
                 _%stx169463%_))
              (_%$E169467169473%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx169438%_)
        (let* ((_%$e169440%_ _%stx169438%_)
               (_%$E169442169448%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169440%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169440%_))
              (let* ((_%$tgt169443169451%_
                      (let () (declare (not safe)) (__AST-e _%$e169440%_)))
                     (_%$hd169444169454%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169443169451%_)))
                     (_%$tl169445169457%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169443169451%_)))
                     (_%body169461%_ _%$tl169445169457%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body169461%_)))
                 _%stx169438%_))
              (_%$E169442169448%_)))))
    (define __compile-import%
      (lambda (_%stx169413%_)
        (let* ((_%$e169415%_ _%stx169413%_)
               (_%$E169417169423%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169415%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169415%_))
              (let* ((_%$tgt169418169426%_
                      (let () (declare (not safe)) (__AST-e _%$e169415%_)))
                     (_%$hd169419169429%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169418169426%_)))
                     (_%$tl169420169432%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169418169426%_)))
                     (_%body169436%_ _%$tl169420169432%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body169436%_ '())) '()))
                 _%stx169413%_))
              (_%$E169417169423%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx169360%_)
        (let* ((_%$e169362%_ _%stx169360%_)
               (_%$E169364169376%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169362%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169362%_))
              (let* ((_%$tgt169365169379%_
                      (let () (declare (not safe)) (__AST-e _%$e169362%_)))
                     (_%$hd169366169382%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169365169379%_)))
                     (_%$tl169367169385%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169365169379%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169367169385%_))
                    (let* ((_%$tgt169368169389%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169367169385%_)))
                           (_%$hd169369169392%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169368169389%_)))
                           (_%$tl169370169395%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169368169389%_)))
                           (_%ann169399%_ _%$hd169369169392%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl169370169395%_))
                          (let* ((_%$tgt169371169401%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169370169395%_)))
                                 (_%$hd169372169404%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169371169401%_)))
                                 (_%$tl169373169407%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169371169401%_)))
                                 (_%expr169411%_ _%$hd169372169404%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169373169407%_))
                                        '())
                                (__compile _%expr169411%_)
                                (_%$E169364169376%_)))
                          (_%$E169364169376%_)))
                    (_%$E169364169376%_)))
              (_%$E169364169376%_)))))
    (define __compile-define-values%
      (lambda (_%stx169251%_)
        (let* ((_%$e169253%_ _%stx169251%_)
               (_%$E169255169267%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169253%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169253%_))
              (let* ((_%$tgt169256169270%_
                      (let () (declare (not safe)) (__AST-e _%$e169253%_)))
                     (_%$hd169257169273%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169256169270%_)))
                     (_%$tl169258169276%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169256169270%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169258169276%_))
                    (let* ((_%$tgt169259169280%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169258169276%_)))
                           (_%$hd169260169283%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169259169280%_)))
                           (_%$tl169261169286%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169259169280%_)))
                           (_%hd169290%_ _%$hd169260169283%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl169261169286%_))
                          (let* ((_%$tgt169262169292%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169261169286%_)))
                                 (_%$hd169263169295%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169262169292%_)))
                                 (_%$tl169264169298%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169262169292%_)))
                                 (_%expr169302%_ _%$hd169263169295%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169264169298%_))
                                        '())
                                (let* ((_%$e169304%_ _%hd169290%_)
                                       (_%$E169306169347%_
                                        (lambda ()
                                          (let ((_%$E169307169332%_
                                                 (lambda ()
                                                   (let* ((_%$E169308169319%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e169304%_))))
                  (_%ids169322%_ _%hd169290%_)
                  (_%len169324%_ (length _%ids169322%_))
                  (_%tmp169326%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp169326%_
                                       (cons (__compile _%expr169302%_) '())))
                           _%stx169251%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp169326%_
                                             (cons _%len169324%_ '())))
                                 _%stx169251%_)
                                (let ((__tmp169876
                                       (let ((__tmp169878
                                              (lambda (_%id169329%_
                                                       _%k169330%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id169329%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id169329%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp169326%_
                                           (cons _%k169330%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx169251%_)
                                                    '#f)))
                                             (__tmp169877
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len169324%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp169878
                                          _%ids169322%_
                                          __tmp169877))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp169876)))))
              _%stx169251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e169304%_))
                                                (let* ((_%$tgt169309169335%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e169304%_)))
                                                       (_%$hd169310169338%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt169309169335%_)))
                                                       (_%$tl169311169341%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt169309169335%_)))
                                                       (_%id169345%_
                                                        _%$hd169310169338%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl169311169341%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id169345%_)
                           (cons (__compile _%expr169302%_) '())))
               _%stx169251%_)
              (_%$E169307169332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E169307169332%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e169304%_))
                                      (let* ((_%$tgt169312169350%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e169304%_)))
                                             (_%$hd169313169353%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt169312169350%_)))
                                             (_%$tl169314169356%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt169312169350%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd169313169353%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl169314169356%_))
                                                        '())
                                                (__compile _%expr169302%_)
                                                (_%$E169306169347%_))
                                            (_%$E169306169347%_)))
                                      (_%$E169306169347%_)))
                                (_%$E169255169267%_)))
                          (_%$E169255169267%_)))
                    (_%$E169255169267%_)))
              (_%$E169255169267%_)))))
    (define __compile-head-id
      (lambda (_%e169249%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e169249%_))
             _%e169249%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd169206%_)
        (let _%recur169208%_ ((_%rest169210%_ _%hd169206%_))
          (let* ((_%$e169212%_ _%rest169210%_)
                 (_%$E169214169232%_
                  (lambda ()
                    (let ((_%$E169215169229%_
                           (lambda ()
                             (let* ((_%$E169216169224%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e169212%_))))
                                    (_%tail169227%_ _%$e169212%_))
                               (__compile-head-id _%tail169227%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169212%_))
                                  '())
                          '()
                          (_%$E169215169229%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e169212%_))
                (let* ((_%$tgt169217169235%_
                        (let () (declare (not safe)) (__AST-e _%$e169212%_)))
                       (_%$hd169218169238%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt169217169235%_)))
                       (_%$tl169219169241%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt169217169235%_)))
                       (_%hd169245%_ _%$hd169218169238%_)
                       (_%rest169247%_ _%$tl169219169241%_))
                  (cons (__compile-head-id _%hd169245%_)
                        (_%recur169208%_ _%rest169247%_)))
                (_%$E169214169232%_))))))
    (define __compile-lambda%
      (lambda (_%stx169153%_)
        (let* ((_%$e169155%_ _%stx169153%_)
               (_%$E169157169169%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169155%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169155%_))
              (let* ((_%$tgt169158169172%_
                      (let () (declare (not safe)) (__AST-e _%$e169155%_)))
                     (_%$hd169159169175%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169158169172%_)))
                     (_%$tl169160169178%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169158169172%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169160169178%_))
                    (let* ((_%$tgt169161169182%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169160169178%_)))
                           (_%$hd169162169185%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169161169182%_)))
                           (_%$tl169163169188%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169161169182%_)))
                           (_%hd169192%_ _%$hd169162169185%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl169163169188%_))
                          (let* ((_%$tgt169164169194%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169163169188%_)))
                                 (_%$hd169165169197%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169164169194%_)))
                                 (_%$tl169166169200%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169164169194%_)))
                                 (_%body169204%_ _%$hd169165169197%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169166169200%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd169192%_)
                                             (cons (__compile _%body169204%_)
                                                   '())))
                                 _%stx169153%_)
                                (_%$E169157169169%_)))
                          (_%$E169157169169%_)))
                    (_%$E169157169169%_)))
              (_%$E169157169169%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx168918%_)
        (letrec ((_%variadic?168920%_
                  (lambda (_%hd169118%_)
                    (let* ((_%$e169120%_ _%hd169118%_)
                           (_%$E169122169138%_
                            (lambda ()
                              (let ((_%$E169123169135%_
                                     (lambda ()
                                       (let ((_%$E169124169132%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e169120%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e169120%_))
                                            '())
                                    '#f
                                    (_%$E169123169135%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169120%_))
                          (let* ((_%$tgt169125169141%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169120%_)))
                                 (_%$hd169126169144%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169125169141%_)))
                                 (_%$tl169127169147%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169125169141%_)))
                                 (_%rest169151%_ _%$tl169127169147%_))
                            (_%variadic?168920%_ _%rest169151%_))
                          (_%$E169122169138%_)))))
                 (_%arity168921%_
                  (lambda (_%hd169056%_)
                    (let _%lp169058%_ ((_%rest169060%_ _%hd169056%_)
                                       (_%k169061%_ '0))
                      (let* ((_%$e169063%_ _%rest169060%_)
                             (_%$E169065169076%_
                              (lambda ()
                                (let ((_%$E169066169073%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e169063%_)))))
                                  _%k169061%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e169063%_))
                            (let* ((_%$tgt169067169079%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e169063%_)))
                                   (_%$hd169068169082%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt169067169079%_)))
                                   (_%$tl169069169085%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt169067169079%_)))
                                   (_%rest169089%_ _%$tl169069169085%_))
                              (_%lp169058%_
                               _%rest169089%_
                               (let ((_%x169091%_ _%k169061%_))
                                 (if (fixnum? _%x169091%_)
                                     (let ((_%x169096%_ _%x169091%_))
                                       (declare (not safe))
                                       (__fx1+ _%x169096%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x169091%_)
                                       '#!void)))))
                            (_%$E169065169076%_))))))
                 (_%generate168922%_
                  (lambda (_%rest168983%_ _%args168984%_ _%len168985%_)
                    (let* ((_%$e168987%_ _%rest168983%_)
                           (_%$E168989169000%_
                            (lambda ()
                              (let ((_%$E168990168997%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e168987%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args168984%_ '())))
                                 _%stx168918%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168987%_))
                          (let* ((_%$tgt168991169003%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168987%_)))
                                 (_%$hd168992169006%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168991169003%_)))
                                 (_%$tl168993169009%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168991169003%_)))
                                 (_%clause169013%_ _%$hd168992169006%_)
                                 (_%rest169015%_ _%$tl168993169009%_)
                                 (_%$e169017%_ _%clause169013%_)
                                 (_%$E169019169028%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e169017%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e169017%_))
                                (let* ((_%$tgt169020169031%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e169017%_)))
                                       (_%$hd169021169034%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt169020169031%_)))
                                       (_%$tl169022169037%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt169020169031%_)))
                                       (_%hd169041%_ _%$hd169021169034%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl169022169037%_))
                                      (let* ((_%$tgt169023169043%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl169022169037%_)))
                                             (_%$hd169024169046%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt169023169043%_)))
                                             (_%$tl169025169049%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt169023169043%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl169025169049%_))
                                                    '())
                                            (let ((_%clen169053%_
                                                   (_%arity168921%_
                                                    _%hd169041%_))
                                                  (_%cmp169054%_
                                                   (if (_%variadic?168920%_
                                                        _%hd169041%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp169054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len168985%_ (cons _%clen169053%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause169013%_))
                                      (cons _%args168984%_ '())))
                          _%stx168918%_)
                         (cons (_%generate168922%_
                                _%rest169015%_
                                _%args168984%_
                                _%len168985%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx168918%_))
                                            (_%$E169019169028%_)))
                                      (_%$E169019169028%_)))
                                (_%$E169019169028%_)))
                          (_%$E168989169000%_))))))
          (let* ((_%$e168924%_ _%stx168918%_)
                 (_%$E168926168958%_
                  (lambda ()
                    (let ((_%$E168927168940%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168924%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168924%_))
                          (let* ((_%$tgt168928168943%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168924%_)))
                                 (_%$hd168929168946%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168928168943%_)))
                                 (_%$tl168930168949%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168928168943%_)))
                                 (_%clauses168953%_ _%$tl168930168949%_))
                            (let ((_%args168955%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx168918%_))
                                  (_%len168956%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx168918%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args168955%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len168956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args168955%_ '()))
                                         _%stx168918%_)
                                        '()))
                            '())
                      (cons (_%generate168922%_
                             _%clauses168953%_
                             _%args168955%_
                             _%len168956%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx168918%_)
                                                 '())))
                               _%stx168918%_)))
                          (_%$E168927168940%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168924%_))
                (let* ((_%$tgt168931168961%_
                        (let () (declare (not safe)) (__AST-e _%$e168924%_)))
                       (_%$hd168932168964%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168931168961%_)))
                       (_%$tl168933168967%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168931168961%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl168933168967%_))
                      (let* ((_%$tgt168934168971%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl168933168967%_)))
                             (_%$hd168935168974%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt168934168971%_)))
                             (_%$tl168936168977%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt168934168971%_)))
                             (_%clause168981%_ _%$hd168935168974%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl168936168977%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause168981%_))
                            (_%$E168926168958%_)))
                      (_%$E168926168958%_)))
                (_%$E168926168958%_))))))
    (define __compile-let-form
      (lambda (_%stx168687%_ _%compile-simple168688%_ _%compile-values168689%_)
        (letrec ((_%simple-bind?168691%_
                  (lambda (_%hd168876%_)
                    (let* ((_%hd168877168887%_ _%hd168876%_)
                           (_%else168880168895%_ (lambda () '#f)))
                      (let ((_%K168883168908%_ (lambda (_%id168906%_) '#t))
                            (_%K168882168900%_ (lambda () '#t)))
                        (let ((_%try-match168879168903%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd168877168887%_ '#f))
                                     (_%K168882168900%_)
                                     (_%else168880168895%_)))))
                          (if (pair? _%hd168877168887%_)
                              (let ((_%tl168885168913%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd168877168887%_)))
                                    (_%hd168884168911%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd168877168887%_))))
                                (if (null? _%tl168885168913%_)
                                    (let ((_%id168916%_ _%hd168884168911%_))
                                      (_%K168883168908%_ _%id168916%_))
                                    (_%try-match168879168903%_)))
                              (_%try-match168879168903%_)))))))
                 (_%car-e168692%_
                  (lambda (_%hd168874%_)
                    (if (pair? _%hd168874%_)
                        (let () (declare (not safe)) (##car _%hd168874%_))
                        _%hd168874%_))))
          (let* ((_%$e168694%_ _%stx168687%_)
                 (_%$E168696168839%_
                  (lambda ()
                    (let ((_%$E168697168719%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168694%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168694%_))
                          (let* ((_%$tgt168698168722%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168694%_)))
                                 (_%$hd168699168725%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168698168722%_)))
                                 (_%$tl168700168728%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168698168722%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168700168728%_))
                                (let* ((_%$tgt168701168732%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168700168728%_)))
                                       (_%$hd168702168735%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168701168732%_)))
                                       (_%$tl168703168738%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168701168732%_)))
                                       (_%hd168742%_ _%$hd168702168735%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl168703168738%_))
                                      (let* ((_%$tgt168704168744%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168703168738%_)))
                                             (_%$hd168705168747%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168704168744%_)))
                                             (_%$tl168706168750%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168704168744%_)))
                                             (_%body168754%_
                                              _%$hd168705168747%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl168706168750%_))
                                                    '())
                                            (let* ((_%hd-ids168794%_
                                                    (map (lambda (_%bind168756%_)
                                                           (let* ((_%$e168758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind168756%_)
                          (_%$E168760168769%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168758%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e168758%_))
                         (let* ((_%$tgt168761168772%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e168758%_)))
                                (_%$hd168762168775%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt168761168772%_)))
                                (_%$tl168763168778%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt168761168772%_)))
                                (_%ids168782%_ _%$hd168762168775%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl168763168778%_))
                               (let* ((_%$tgt168764168784%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl168763168778%_)))
                                      (_%$hd168765168787%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt168764168784%_)))
                                      (_%$tl168766168790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt168764168784%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl168766168790%_))
                                             '())
                                     _%ids168782%_
                                     (_%$E168760168769%_)))
                               (_%$E168760168769%_)))
                         (_%$E168760168769%_))))
                 _%hd168742%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs168834%_
                                                    (map (lambda (_%bind168796%_)
                                                           (let* ((_%$e168798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind168796%_)
                          (_%$E168800168809%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168798%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e168798%_))
                         (let* ((_%$tgt168801168812%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e168798%_)))
                                (_%$hd168802168815%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt168801168812%_)))
                                (_%$tl168803168818%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt168801168812%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl168803168818%_))
                               (let* ((_%$tgt168804168822%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl168803168818%_)))
                                      (_%$hd168805168825%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt168804168822%_)))
                                      (_%$tl168806168828%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt168804168822%_)))
                                      (_%expr168832%_ _%$hd168805168825%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl168806168828%_))
                                             '())
                                     (__compile _%expr168832%_)
                                     (_%$E168800168809%_)))
                               (_%$E168800168809%_)))
                         (_%$E168800168809%_))))
                 _%hd168742%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body168836%_
                                                    (__compile
                                                     _%body168754%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?168691%_
                                                     _%hd-ids168794%_))
                                                  (_%compile-simple168688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e168692%_
                                                            _%hd-ids168794%_))
                                                   _%exprs168834%_
                                                   _%body168836%_)
                                                  (_%compile-values168689%_
                                                   _%hd-ids168794%_
                                                   _%exprs168834%_
                                                   _%body168836%_)))
                                            (_%$E168697168719%_)))
                                      (_%$E168697168719%_)))
                                (_%$E168697168719%_)))
                          (_%$E168697168719%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168694%_))
                (let* ((_%$tgt168707168842%_
                        (let () (declare (not safe)) (__AST-e _%$e168694%_)))
                       (_%$hd168708168845%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168707168842%_)))
                       (_%$tl168709168848%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168707168842%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl168709168848%_))
                      (let* ((_%$tgt168710168852%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl168709168848%_)))
                             (_%$hd168711168855%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt168710168852%_)))
                             (_%$tl168712168858%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt168710168852%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd168711168855%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168712168858%_))
                                (let* ((_%$tgt168713168862%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168712168858%_)))
                                       (_%$hd168714168865%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168713168862%_)))
                                       (_%$tl168715168868%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168713168862%_)))
                                       (_%body168872%_ _%$hd168714168865%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168715168868%_))
                                              '())
                                      (__compile _%body168872%_)
                                      (_%$E168696168839%_)))
                                (_%$E168696168839%_))
                            (_%$E168696168839%_)))
                      (_%$E168696168839%_)))
                (_%$E168696168839%_))))))
    (define __compile-let-values%
      (lambda (_%stx168499%_)
        (letrec ((_%compile-simple168501%_
                  (lambda (_%hd-ids168683%_ _%exprs168684%_ _%body168685%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp169879
                                        (map __compile-head-id
                                             _%hd-ids168683%_)))
                                   (declare (not safe))
                                   (##map list __tmp169879 _%exprs168684%_))
                                 (cons _%body168685%_ '())))
                     _%stx168499%_)))
                 (_%compile-values168502%_
                  (lambda (_%hd-ids168598%_ _%exprs168599%_ _%body168600%_)
                    (let _%lp168602%_ ((_%rest168604%_ _%hd-ids168598%_)
                                       (_%exprs168605%_ _%exprs168599%_)
                                       (_%bind168606%_ '())
                                       (_%post168607%_ '()))
                      (let* ((_%rest168608168622%_ _%rest168604%_)
                             (_%else168611168630%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind168606%_)
                                             (cons (_%compile-post168503%_
                                                    _%post168607%_
                                                    _%body168600%_)
                                                   '())))
                                 _%stx168499%_))))
                        (let ((_%K168616168666%_
                               (lambda (_%rest168663%_ _%id168664%_)
                                 (_%lp168602%_
                                  _%rest168663%_
                                  (cdr _%exprs168605%_)
                                  (cons (cons (__compile-head-id _%id168664%_)
                                              (cons (car _%exprs168605%_) '()))
                                        _%bind168606%_)
                                  _%post168607%_)))
                              (_%K168613168648%_
                               (lambda (_%rest168634%_ _%hd168635%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168635%_))
                                     (_%lp168602%_
                                      _%rest168634%_
                                      (cdr _%exprs168605%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd168635%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs168605%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind168606%_)
                                      _%post168607%_)
                                     (if (list? _%hd168635%_)
                                         (let* ((_%len168639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd168635%_)))
                                                (_%tmp168641%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp168602%_
                                            _%rest168634%_
                                            (cdr _%exprs168605%_)
                                            (cons (cons _%tmp168641%_
                                                        (cons (car _%exprs168605%_)
                                                              '()))
                                                  _%bind168606%_)
                                            (cons (cons _%tmp168641%_
                                                        (cons _%len168639%_
                                                              (let ((__tmp169881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id168644%_ _%k168645%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id168644%_))
                                   (cons (__SRC__0 _%id168644%_) _%k168645%_)
                                   '#f)))
                            (__tmp169880
                             (let ()
                               (declare (not safe))
                               (##iota _%len168639%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp169881 _%hd168635%_ __tmp169880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post168607%_)))
                                         (__compile-error__%
                                          _%stx168499%_
                                          _%hd168635%_))))))
                          (if (pair? _%rest168608168622%_)
                              (let ((_%tl168618168671%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168608168622%_)))
                                    (_%hd168617168669%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168608168622%_))))
                                (if (pair? _%hd168617168669%_)
                                    (let ((_%tl168620168676%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168617168669%_)))
                                          (_%hd168619168674%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168617168669%_))))
                                      (if (null? _%tl168620168676%_)
                                          (let ((_%id168679%_
                                                 _%hd168619168674%_)
                                                (_%rest168681%_
                                                 _%tl168618168671%_))
                                            (_%K168616168666%_
                                             _%rest168681%_
                                             _%id168679%_))
                                          (let ((_%hd168656%_
                                                 _%hd168617168669%_)
                                                (_%rest168658%_
                                                 _%tl168618168671%_))
                                            (_%K168613168648%_
                                             _%rest168658%_
                                             _%hd168656%_))))
                                    (let ((_%hd168656%_ _%hd168617168669%_)
                                          (_%rest168658%_ _%tl168618168671%_))
                                      (_%K168613168648%_
                                       _%rest168658%_
                                       _%hd168656%_))))
                              (_%else168611168630%_)))))))
                 (_%compile-post168503%_
                  (lambda (_%post168505%_ _%body168506%_)
                    (let _%lp168508%_ ((_%rest168510%_ _%post168505%_)
                                       (_%check168511%_ '())
                                       (_%bind168512%_ '()))
                      (let* ((_%rest168513168525%_ _%rest168510%_)
                             (_%else168515168533%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp169882
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind168512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body168506%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx168499%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp169882
                                          _%check168511%_)))
                                 _%stx168499%_)))
                             (_%K168517168572%_
                              (lambda (_%rest168536%_
                                       _%init168537%_
                                       _%len168538%_
                                       _%tmp168539%_)
                                (_%lp168508%_
                                 _%rest168536%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp168539%_
                                                    (cons _%len168538%_ '())))
                                        _%stx168499%_)
                                       _%check168511%_)
                                 (let ((__tmp169883
                                        (lambda (_%hd168541%_ _%r168542%_)
                                          (let* ((_%hd168543168550%_
                                                  _%hd168541%_)
                                                 (_%E168545168554%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd168543168550%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K168546168560%_
                                                  (lambda (_%k168557%_
                                                           _%id168558%_)
                                                    (cons (cons _%id168558%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp168539%_
                                          (cons _%k168557%_ '())))
                              '()))
                  _%r168542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd168543168550%_)
                                                (let ((_%hd168547168563%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168543168550%_)))
                                                      (_%tl168548168565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168543168550%_))))
                                                  (let* ((_%id168568%_
                                                          _%hd168547168563%_)
                                                         (_%k168570%_
                                                          _%tl168548168565%_))
                                                    (_%K168546168560%_
                                                     _%k168570%_
                                                     _%id168568%_)))
                                                (_%E168545168554%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp169883
                                    _%bind168512%_
                                    _%init168537%_))))))
                        (if (pair? _%rest168513168525%_)
                            (let ((_%hd168518168575%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest168513168525%_)))
                                  (_%tl168519168577%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest168513168525%_))))
                              (if (pair? _%hd168518168575%_)
                                  (let ((_%hd168520168580%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd168518168575%_)))
                                        (_%tl168521168582%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd168518168575%_))))
                                    (let ((_%tmp168585%_ _%hd168520168580%_))
                                      (if (pair? _%tl168521168582%_)
                                          (let ((_%hd168522168587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl168521168582%_)))
                                                (_%tl168523168589%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl168521168582%_))))
                                            (let* ((_%len168592%_
                                                    _%hd168522168587%_)
                                                   (_%init168594%_
                                                    _%tl168523168589%_)
                                                   (_%rest168596%_
                                                    _%tl168519168577%_))
                                              (_%K168517168572%_
                                               _%rest168596%_
                                               _%init168594%_
                                               _%len168592%_
                                               _%tmp168585%_)))
                                          (_%else168515168533%_))))
                                  (_%else168515168533%_)))
                            (_%else168515168533%_)))))))
          (__compile-let-form
           _%stx168499%_
           _%compile-simple168501%_
           _%compile-values168502%_))))
    (define __compile-letrec-values%
      (lambda (_%stx168296%_)
        (letrec ((_%compile-simple168298%_
                  (lambda (_%hd-ids168495%_ _%exprs168496%_ _%body168497%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp169884
                                        (map __compile-head-id
                                             _%hd-ids168495%_)))
                                   (declare (not safe))
                                   (##map list __tmp169884 _%exprs168496%_))
                                 (cons _%body168497%_ '())))
                     _%stx168296%_)))
                 (_%compile-values168299%_
                  (lambda (_%hd-ids168406%_ _%exprs168407%_ _%body168408%_)
                    (let _%lp168410%_ ((_%rest168412%_ _%hd-ids168406%_)
                                       (_%exprs168413%_ _%exprs168407%_)
                                       (_%pre168414%_ '())
                                       (_%bind168415%_ '())
                                       (_%post168416%_ '()))
                      (let* ((_%rest168417168431%_ _%rest168412%_)
                             (_%else168420168439%_
                              (lambda ()
                                (_%compile-inner168300%_
                                 _%pre168414%_
                                 _%bind168415%_
                                 _%post168416%_
                                 _%body168408%_))))
                        (let ((_%K168425168478%_
                               (lambda (_%rest168475%_ _%id168476%_)
                                 (_%lp168410%_
                                  _%rest168475%_
                                  (cdr _%exprs168413%_)
                                  _%pre168414%_
                                  (cons (cons (__compile-head-id _%id168476%_)
                                              (cons (car _%exprs168413%_) '()))
                                        _%bind168415%_)
                                  _%post168416%_)))
                              (_%K168422168460%_
                               (lambda (_%rest168443%_ _%hd168444%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168444%_))
                                     (_%lp168410%_
                                      _%rest168443%_
                                      (cdr _%exprs168413%_)
                                      _%pre168414%_
                                      (cons (cons (__compile-head-id
                                                   _%hd168444%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs168413%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind168415%_)
                                      _%post168416%_)
                                     (if (list? _%hd168444%_)
                                         (let* ((_%len168448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd168444%_)))
                                                (_%tmp168450%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp168410%_
                                            _%rest168443%_
                                            (cdr _%exprs168413%_)
                                            (let ((__tmp169885
                                                   (lambda (_%id168453%_
                                                            _%r168454%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id168453%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id168453%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r168454%_)
                 _%r168454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp169885
                                               _%pre168414%_
                                               _%hd168444%_))
                                            (cons (cons _%tmp168450%_
                                                        (cons (car _%exprs168413%_)
                                                              '()))
                                                  _%bind168415%_)
                                            (cons (cons _%tmp168450%_
                                                        (cons _%len168448%_
                                                              (let ((__tmp169887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id168456%_ _%k168457%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id168456%_))
                                   (cons (__SRC__0 _%id168456%_) _%k168457%_)
                                   '#f)))
                            (__tmp169886
                             (let ()
                               (declare (not safe))
                               (##iota _%len168448%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp169887 _%hd168444%_ __tmp169886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post168416%_)))
                                         (__compile-error__%
                                          _%stx168296%_
                                          _%hd168444%_))))))
                          (if (pair? _%rest168417168431%_)
                              (let ((_%tl168427168483%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168417168431%_)))
                                    (_%hd168426168481%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168417168431%_))))
                                (if (pair? _%hd168426168481%_)
                                    (let ((_%tl168429168488%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168426168481%_)))
                                          (_%hd168428168486%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168426168481%_))))
                                      (if (null? _%tl168429168488%_)
                                          (let ((_%id168491%_
                                                 _%hd168428168486%_)
                                                (_%rest168493%_
                                                 _%tl168427168483%_))
                                            (_%K168425168478%_
                                             _%rest168493%_
                                             _%id168491%_))
                                          (let ((_%hd168468%_
                                                 _%hd168426168481%_)
                                                (_%rest168470%_
                                                 _%tl168427168483%_))
                                            (_%K168422168460%_
                                             _%rest168470%_
                                             _%hd168468%_))))
                                    (let ((_%hd168468%_ _%hd168426168481%_)
                                          (_%rest168470%_ _%tl168427168483%_))
                                      (_%K168422168460%_
                                       _%rest168470%_
                                       _%hd168468%_))))
                              (_%else168420168439%_)))))))
                 (_%compile-inner168300%_
                  (lambda (_%pre168401%_
                           _%bind168402%_
                           _%post168403%_
                           _%body168404%_)
                    (if (null? _%pre168401%_)
                        (_%compile-bind168301%_
                         _%bind168402%_
                         _%post168403%_
                         _%body168404%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre168401%_)
                                     (cons (_%compile-bind168301%_
                                            _%bind168402%_
                                            _%post168403%_
                                            _%body168404%_)
                                           '())))
                         _%stx168296%_))))
                 (_%compile-bind168301%_
                  (lambda (_%bind168397%_ _%post168398%_ _%body168399%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind168397%_)
                                 (cons (_%compile-post168302%_
                                        _%post168398%_
                                        _%body168399%_)
                                       '())))
                     _%stx168296%_)))
                 (_%compile-post168302%_
                  (lambda (_%post168304%_ _%body168305%_)
                    (let _%lp168307%_ ((_%rest168309%_ _%post168304%_)
                                       (_%check168310%_ '())
                                       (_%bind168311%_ '()))
                      (let* ((_%rest168312168324%_ _%rest168309%_)
                             (_%else168314168332%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp169888
                                              (let ((__tmp169889
                                                     (cons _%body168305%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp169889
                                                 _%bind168311%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp169888
                                          _%check168310%_)))
                                 _%stx168296%_)))
                             (_%K168316168371%_
                              (lambda (_%rest168335%_
                                       _%init168336%_
                                       _%len168337%_
                                       _%tmp168338%_)
                                (_%lp168307%_
                                 _%rest168335%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp168338%_
                                                    (cons _%len168337%_ '())))
                                        _%stx168296%_)
                                       _%check168310%_)
                                 (let ((__tmp169890
                                        (lambda (_%hd168340%_ _%r168341%_)
                                          (let* ((_%hd168342168349%_
                                                  _%hd168340%_)
                                                 (_%E168344168353%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd168342168349%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K168345168359%_
                                                  (lambda (_%k168356%_
                                                           _%id168357%_)
                                                    (cons (cons 'set!
                                                                (cons _%id168357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp168338%_
                                                (cons _%k168356%_ '())))
                                    '())))
                  _%r168341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd168342168349%_)
                                                (let ((_%hd168346168362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168342168349%_)))
                                                      (_%tl168347168364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168342168349%_))))
                                                  (let* ((_%id168367%_
                                                          _%hd168346168362%_)
                                                         (_%k168369%_
                                                          _%tl168347168364%_))
                                                    (_%K168345168359%_
                                                     _%k168369%_
                                                     _%id168367%_)))
                                                (_%E168344168353%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp169890
                                    _%bind168311%_
                                    _%init168336%_))))))
                        (if (pair? _%rest168312168324%_)
                            (let ((_%hd168317168374%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest168312168324%_)))
                                  (_%tl168318168376%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest168312168324%_))))
                              (if (pair? _%hd168317168374%_)
                                  (let ((_%hd168319168379%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd168317168374%_)))
                                        (_%tl168320168381%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd168317168374%_))))
                                    (let ((_%tmp168384%_ _%hd168319168379%_))
                                      (if (pair? _%tl168320168381%_)
                                          (let ((_%hd168321168386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl168320168381%_)))
                                                (_%tl168322168388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl168320168381%_))))
                                            (let* ((_%len168391%_
                                                    _%hd168321168386%_)
                                                   (_%init168393%_
                                                    _%tl168322168388%_)
                                                   (_%rest168395%_
                                                    _%tl168318168376%_))
                                              (_%K168316168371%_
                                               _%rest168395%_
                                               _%init168393%_
                                               _%len168391%_
                                               _%tmp168384%_)))
                                          (_%else168314168332%_))))
                                  (_%else168314168332%_)))
                            (_%else168314168332%_)))))))
          (__compile-let-form
           _%stx168296%_
           _%compile-simple168298%_
           _%compile-values168299%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx168047%_)
        (letrec ((_%compile-simple168049%_
                  (lambda (_%hd-ids168292%_ _%exprs168293%_ _%body168294%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp169891
                                        (map __compile-head-id
                                             _%hd-ids168292%_)))
                                   (declare (not safe))
                                   (##map list __tmp169891 _%exprs168293%_))
                                 (cons _%body168294%_ '())))
                     _%stx168047%_)))
                 (_%compile-values168050%_
                  (lambda (_%hd-ids168199%_ _%exprs168200%_ _%body168201%_)
                    (let _%lp168203%_ ((_%rest168205%_ _%hd-ids168199%_)
                                       (_%exprs168206%_ _%exprs168200%_)
                                       (_%bind168207%_ '())
                                       (_%post168208%_ '()))
                      (let* ((_%rest168209168223%_ _%rest168205%_)
                             (_%else168212168231%_
                              (lambda ()
                                (_%compile-bind168051%_
                                 _%bind168207%_
                                 _%post168208%_
                                 _%body168201%_))))
                        (let ((_%K168217168275%_
                               (lambda (_%rest168270%_ _%hd168271%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168271%_))
                                     (let ((_%id168273%_
                                            (__SRC__0 _%hd168271%_)))
                                       (_%lp168203%_
                                        _%rest168270%_
                                        (cdr _%exprs168206%_)
                                        (cons (cons _%id168273%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind168207%_)
                                        (cons (cons _%id168273%_
                                                    (cons (car _%exprs168206%_)
                                                          '()))
                                              _%post168208%_)))
                                     (_%lp168203%_
                                      _%rest168270%_
                                      (cdr _%exprs168206%_)
                                      _%bind168207%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs168206%_)
                                                        '()))
                                            _%post168208%_)))))
                              (_%K168214168255%_
                               (lambda (_%rest168235%_ _%hd168236%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168236%_))
                                     (let ((_%id168239%_
                                            (__SRC__0 _%hd168236%_)))
                                       (_%lp168203%_
                                        _%rest168235%_
                                        (cdr _%exprs168206%_)
                                        (cons (cons _%id168239%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind168207%_)
                                        (cons (cons _%id168239%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs168206%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post168208%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd168236%_))
                                         (if (list? _%hd168236%_)
                                             (let* ((_%len168243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd168236%_)))
                                                    (_%tmp168245%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp168203%_
                                                _%rest168235%_
                                                (cdr _%exprs168206%_)
                                                (let ((__tmp169892
                                                       (lambda (_%id168248%_
                                                                _%r168249%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id168248%_))
                     (cons (cons (__SRC__0 _%id168248%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r168249%_)
                     _%r168249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp169892
                                                   _%bind168207%_
                                                   _%hd168236%_))
                                                (cons (cons _%tmp168245%_
                                                            (cons (car _%exprs168206%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len168243%_
                                (let ((__tmp169894
                                       (lambda (_%id168251%_ _%k168252%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id168251%_))
                                             (cons (__SRC__0 _%id168251%_)
                                                   _%k168252%_)
                                             '#f)))
                                      (__tmp169893
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len168243%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp169894
                                   _%hd168236%_
                                   __tmp169893)))))
              _%post168208%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx168047%_
                                              _%hd168236%_))
                                         (_%lp168203%_
                                          _%rest168235%_
                                          (cdr _%exprs168206%_)
                                          _%bind168207%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs168206%_)
                                                            '()))
                                                _%post168208%_)))))))
                          (if (pair? _%rest168209168223%_)
                              (let ((_%tl168219168280%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168209168223%_)))
                                    (_%hd168218168278%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168209168223%_))))
                                (if (pair? _%hd168218168278%_)
                                    (let ((_%tl168221168285%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168218168278%_)))
                                          (_%hd168220168283%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168218168278%_))))
                                      (if (null? _%tl168221168285%_)
                                          (let ((_%hd168288%_
                                                 _%hd168220168283%_)
                                                (_%rest168290%_
                                                 _%tl168219168280%_))
                                            (_%K168217168275%_
                                             _%rest168290%_
                                             _%hd168288%_))
                                          (let ((_%hd168263%_
                                                 _%hd168218168278%_)
                                                (_%rest168265%_
                                                 _%tl168219168280%_))
                                            (_%K168214168255%_
                                             _%rest168265%_
                                             _%hd168263%_))))
                                    (let ((_%hd168263%_ _%hd168218168278%_)
                                          (_%rest168265%_ _%tl168219168280%_))
                                      (_%K168214168255%_
                                       _%rest168265%_
                                       _%hd168263%_))))
                              (_%else168212168231%_)))))))
                 (_%compile-bind168051%_
                  (lambda (_%bind168195%_ _%post168196%_ _%body168197%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind168195%_)
                                 (cons (_%compile-post168052%_
                                        _%post168196%_
                                        _%body168197%_)
                                       '())))
                     _%stx168047%_)))
                 (_%compile-post168052%_
                  (lambda (_%post168054%_ _%body168055%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp169895
                                  (let ((__tmp169897
                                         (lambda (_%hd168057%_ _%r168058%_)
                                           (let* ((_%hd168059168082%_
                                                   _%hd168057%_)
                                                  (_%E168063168086%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd168059168082%_
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
                                             (let ((_%K168076168180%_
                                                    (lambda (_%expr168178%_)
                                                      (cons _%expr168178%_
                                                            _%r168058%_)))
                                                   (_%K168071168158%_
                                                    (lambda (_%expr168155%_
                                                             _%id168156%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id168156%_ (cons _%expr168155%_ '())))
                     _%stx168047%_)
                    _%r168058%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K168064168125%_
                                                    (lambda (_%init168090%_
                                                             _%len168091%_
                                                             _%expr168092%_
                                                             _%tmp168093%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp168093%_
                                             (cons _%expr168092%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp168093%_
                                                    (cons _%len168091%_ '())))
                                        _%stx168047%_)
                                       (let ((__tmp169898
                                              (map (lambda (_%hd168095%_)
                                                     (let* ((_%hd168096168103%_
                                                             _%hd168095%_)
                                                            (_%E168098168107%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd168096168103%_
                                '([id . k])))
                       '#!void))
                    (_%K168099168113%_
                     (lambda (_%k168110%_ _%id168111%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id168111%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp168093%_
                                                      (cons _%k168110%_ '())))
                                          '())))
                        _%stx168047%_))))
               (if (pair? _%hd168096168103%_)
                   (let ((_%hd168100168116%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd168096168103%_)))
                         (_%tl168101168118%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd168096168103%_))))
                     (let* ((_%id168121%_ _%hd168100168116%_)
                            (_%k168123%_ _%tl168101168118%_))
                       (_%K168099168113%_ _%k168123%_ _%id168121%_)))
                   (_%E168098168107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init168090%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp169898)))))
                     _%stx168047%_)
                    _%r168058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match169753169754%_
                                                       (lambda (_%hd168065168128%_
                                                                _%tl168066168130%_
                                                                _%hd168067168135%_
                                                                _%tl168068168137%_)
                                                         (let ((_%tmp168133%_
                                                                _%hd168065168128%_)
                                                               (_%expr168140%_
                                                                _%hd168067168135%_))
                                                           (_%E168063168086%_))))
                                                      (_%__match169747169748%_
                                                       (lambda (_%hd168065168128%_
                                                                _%tl168066168130%_)
                                                         (let ((_%tmp168133%_
                                                                _%hd168065168128%_))
                                                           (_%E168063168086%_)))))
                                                 (if (pair? _%hd168059168082%_)
                                                     (let ((_%tl168078168185%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd168059168082%_)))
                                                           (_%hd168077168183%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd168059168082%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd168077168183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl168078168185%_)
                       (let ((_%tl168080168190%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl168078168185%_)))
                             (_%hd168079168188%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl168078168185%_))))
                         (if (null? _%tl168080168190%_)
                             (let ((_%expr168193%_ _%hd168079168188%_))
                               (_%K168076168180%_ _%expr168193%_))
                             (if (pair? _%tl168080168190%_)
                                 (let ((_%tl168070168144%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl168080168190%_)))
                                       (_%hd168069168142%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl168080168190%_))))
                                   (let ((_%tmp168133%_ _%hd168077168183%_)
                                         (_%expr168140%_ _%hd168079168188%_)
                                         (_%len168147%_ _%hd168069168142%_)
                                         (_%init168149%_ _%tl168070168144%_))
                                     (_%K168064168125%_
                                      _%init168149%_
                                      _%len168147%_
                                      _%expr168140%_
                                      _%tmp168133%_)))
                                 (_%__match169753169754%_
                                  _%hd168077168183%_
                                  _%tl168078168185%_
                                  _%hd168079168188%_
                                  _%tl168080168190%_))))
                       (_%__match169747169748%_
                        _%hd168077168183%_
                        _%tl168078168185%_))
                   (if (pair? _%tl168078168185%_)
                       (let ((_%tl168075168170%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl168078168185%_)))
                             (_%hd168074168168%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl168078168185%_))))
                         (if (null? _%tl168075168170%_)
                             (let ((_%id168166%_ _%hd168077168183%_)
                                   (_%expr168173%_ _%hd168074168168%_))
                               (_%K168071168158%_ _%expr168173%_ _%id168166%_))
                             (if (pair? _%tl168075168170%_)
                                 (let ((_%tl168070168144%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl168075168170%_)))
                                       (_%hd168069168142%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl168075168170%_))))
                                   (let ((_%tmp168133%_ _%hd168077168183%_)
                                         (_%expr168140%_ _%hd168074168168%_)
                                         (_%len168147%_ _%hd168069168142%_)
                                         (_%init168149%_ _%tl168070168144%_))
                                     (_%K168064168125%_
                                      _%init168149%_
                                      _%len168147%_
                                      _%expr168140%_
                                      _%tmp168133%_)))
                                 (_%__match169753169754%_
                                  _%hd168077168183%_
                                  _%tl168078168185%_
                                  _%hd168074168168%_
                                  _%tl168075168170%_))))
                       (_%__match169747169748%_
                        _%hd168077168183%_
                        _%tl168078168185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E168063168086%_)))))))
                                        (__tmp169896 (list _%body168055%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp169897
                                     __tmp169896
                                     _%post168054%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp169895)))
                     _%stx168047%_))))
          (__compile-let-form
           _%stx168047%_
           _%compile-simple168049%_
           _%compile-values168050%_))))
    (define __compile-call%
      (lambda (_%stx168007%_)
        (let* ((_%$e168009%_ _%stx168007%_)
               (_%$E168011168020%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168009%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168009%_))
              (let* ((_%$tgt168012168023%_
                      (let () (declare (not safe)) (__AST-e _%$e168009%_)))
                     (_%$hd168013168026%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168012168023%_)))
                     (_%$tl168014168029%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168012168023%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168014168029%_))
                    (let* ((_%$tgt168015168033%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168014168029%_)))
                           (_%$hd168016168036%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168015168033%_)))
                           (_%$tl168017168039%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168015168033%_)))
                           (_%rator168043%_ _%$hd168016168036%_)
                           (_%rands168045%_ _%$tl168017168039%_))
                      (__SRC__%
                       (cons (__compile _%rator168043%_)
                             (map __compile _%rands168045%_))
                       _%stx168007%_))
                    (_%$E168011168020%_)))
              (_%$E168011168020%_)))))
    (define __compile-ref%
      (lambda (_%stx167969%_)
        (let* ((_%$e167971%_ _%stx167969%_)
               (_%$E167973167982%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167971%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167971%_))
              (let* ((_%$tgt167974167985%_
                      (let () (declare (not safe)) (__AST-e _%$e167971%_)))
                     (_%$hd167975167988%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167974167985%_)))
                     (_%$tl167976167991%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167974167985%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167976167991%_))
                    (let* ((_%$tgt167977167995%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167976167991%_)))
                           (_%$hd167978167998%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167977167995%_)))
                           (_%$tl167979168001%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167977167995%_)))
                           (_%id168005%_ _%$hd167978167998%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167979168001%_))
                                  '())
                          (__SRC__% _%id168005%_ _%stx167969%_)
                          (_%$E167973167982%_)))
                    (_%$E167973167982%_)))
              (_%$E167973167982%_)))))
    (define __compile-setq%
      (lambda (_%stx167916%_)
        (let* ((_%$e167918%_ _%stx167916%_)
               (_%$E167920167932%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167918%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167918%_))
              (let* ((_%$tgt167921167935%_
                      (let () (declare (not safe)) (__AST-e _%$e167918%_)))
                     (_%$hd167922167938%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167921167935%_)))
                     (_%$tl167923167941%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167921167935%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167923167941%_))
                    (let* ((_%$tgt167924167945%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167923167941%_)))
                           (_%$hd167925167948%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167924167945%_)))
                           (_%$tl167926167951%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167924167945%_)))
                           (_%id167955%_ _%$hd167925167948%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167926167951%_))
                          (let* ((_%$tgt167927167957%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167926167951%_)))
                                 (_%$hd167928167960%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167927167957%_)))
                                 (_%$tl167929167963%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167927167957%_)))
                                 (_%expr167967%_ _%$hd167928167960%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167929167963%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id167955%_
                                              _%stx167916%_)
                                             (cons (__compile _%expr167967%_)
                                                   '())))
                                 _%stx167916%_)
                                (_%$E167920167932%_)))
                          (_%$E167920167932%_)))
                    (_%$E167920167932%_)))
              (_%$E167920167932%_)))))
    (define __compile-if%
      (lambda (_%stx167848%_)
        (let* ((_%$e167850%_ _%stx167848%_)
               (_%$E167852167867%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167850%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167850%_))
              (let* ((_%$tgt167853167870%_
                      (let () (declare (not safe)) (__AST-e _%$e167850%_)))
                     (_%$hd167854167873%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167853167870%_)))
                     (_%$tl167855167876%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167853167870%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167855167876%_))
                    (let* ((_%$tgt167856167880%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167855167876%_)))
                           (_%$hd167857167883%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167856167880%_)))
                           (_%$tl167858167886%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167856167880%_)))
                           (_%p167890%_ _%$hd167857167883%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167858167886%_))
                          (let* ((_%$tgt167859167892%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167858167886%_)))
                                 (_%$hd167860167895%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167859167892%_)))
                                 (_%$tl167861167898%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167859167892%_)))
                                 (_%t167902%_ _%$hd167860167895%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl167861167898%_))
                                (let* ((_%$tgt167862167904%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167861167898%_)))
                                       (_%$hd167863167907%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167862167904%_)))
                                       (_%$tl167864167910%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167862167904%_)))
                                       (_%f167914%_ _%$hd167863167907%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167864167910%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p167890%_)
                                                   (cons (__compile
                                                          _%t167902%_)
                                                         (cons (__compile
                                                                _%f167914%_)
                                                               '()))))
                                       _%stx167848%_)
                                      (_%$E167852167867%_)))
                                (_%$E167852167867%_)))
                          (_%$E167852167867%_)))
                    (_%$E167852167867%_)))
              (_%$E167852167867%_)))))
    (define __compile-quote%
      (lambda (_%stx167810%_)
        (let* ((_%$e167812%_ _%stx167810%_)
               (_%$E167814167823%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167812%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167812%_))
              (let* ((_%$tgt167815167826%_
                      (let () (declare (not safe)) (__AST-e _%$e167812%_)))
                     (_%$hd167816167829%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167815167826%_)))
                     (_%$tl167817167832%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167815167826%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167817167832%_))
                    (let* ((_%$tgt167818167836%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167817167832%_)))
                           (_%$hd167819167839%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167818167836%_)))
                           (_%$tl167820167842%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167818167836%_)))
                           (_%e167846%_ _%$hd167819167839%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167820167842%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e167846%_))
                                       '()))
                           _%stx167810%_)
                          (_%$E167814167823%_)))
                    (_%$E167814167823%_)))
              (_%$E167814167823%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx167772%_)
        (let* ((_%$e167774%_ _%stx167772%_)
               (_%$E167776167785%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167774%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167774%_))
              (let* ((_%$tgt167777167788%_
                      (let () (declare (not safe)) (__AST-e _%$e167774%_)))
                     (_%$hd167778167791%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167777167788%_)))
                     (_%$tl167779167794%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167777167788%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167779167794%_))
                    (let* ((_%$tgt167780167798%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167779167794%_)))
                           (_%$hd167781167801%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167780167798%_)))
                           (_%$tl167782167804%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167780167798%_)))
                           (_%e167808%_ _%$hd167781167801%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167782167804%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e167808%_ '()))
                           _%stx167772%_)
                          (_%$E167776167785%_)))
                    (_%$E167776167785%_)))
              (_%$E167776167785%_)))))
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
