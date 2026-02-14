(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1771092627)
  (begin
    (define __syntax::t
      (let ((__tmp168777 (list)) (__tmp168776 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp168777
         '(e id)
         __tmp168776
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args168581%_
        (apply make-instance __syntax::t _%$args168581%_)))
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
      (let ((__tmp168779 (list __syntax::t))
            (__tmp168778 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp168779
         '()
         __tmp168778
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args168578%_
        (apply make-instance __core-form::t _%$args168578%_)))
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
      (let ((__tmp168781 (list __core-form::t))
            (__tmp168780 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp168781
         '()
         __tmp168780
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args168575%_
        (apply make-instance __core-expression::t _%$args168575%_)))
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
      (let ((__tmp168783 (list __core-form::t))
            (__tmp168782 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp168783
         '()
         __tmp168782
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args168572%_
        (apply make-instance __core-special-form::t _%$args168572%_)))
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
      (lambda (_%id168546%_)
        (let* ((_%h168548%_ __core)
               (_%key168551%_
                (let () (declare (not safe)) (__AST-e _%id168546%_)))
               (_%h168558%_
                (let ((_%$obj168555%_ _%h168548%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168555%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168555%_)))
                           '#t)
                      _%$obj168555%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168555%_)))))
               (_%h168560%_ _%h168558%_))
          (declare (not safe))
          (__hash-get _%h168560%_ _%key168551%_))))
    (define __core-bound-id?__%
      (lambda (_%id168529%_ _%is?168530%_)
        (let ((_%$e168532%_ (__core-resolve _%id168529%_)))
          (if _%$e168532%_ (_%is?168530%_ _%$e168532%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id168539%_)
        (let ((_%is?168541%_ true))
          (__core-bound-id?__% _%id168539%_ _%is?168541%_))))
    (define __core-bound-id?
      (lambda _g168784_
        (let ((_g168785_ (let () (declare (not safe)) (##length _g168784_))))
          (cond ((let () (declare (not safe)) (##fx= _g168785_ 1))
                 (apply __core-bound-id?__0 _g168784_))
                ((let () (declare (not safe)) (##fx= _g168785_ 2))
                 (apply __core-bound-id?__% _g168784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g168784_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id168484%_ _%e168485%_ _%make168486%_)
        (let* ((_%h168488%_ __core)
               (_%key168491%_ _%id168484%_)
               (_%value168494%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e168485%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e168485%_
                    (_%make168486%_ _%e168485%_ _%id168484%_)))
               (_%h168501%_
                (let ((_%$obj168498%_ _%h168488%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168498%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168498%_)))
                           '#t)
                      _%$obj168498%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168498%_)))))
               (_%h168503%_ _%h168501%_))
          (declare (not safe))
          (__hash-put! _%h168503%_ _%key168491%_ _%value168494%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id168519%_ _%e168520%_)
        (let ((_%make168522%_ make-__syntax))
          (__core-bind-syntax!__% _%id168519%_ _%e168520%_ _%make168522%_))))
    (define __core-bind-syntax!
      (lambda _g168786_
        (let ((_g168787_ (let () (declare (not safe)) (##length _g168786_))))
          (cond ((let () (declare (not safe)) (##fx= _g168787_ 2))
                 (apply __core-bind-syntax!__0 _g168786_))
                ((let () (declare (not safe)) (##fx= _g168787_ 3))
                 (apply __core-bind-syntax!__% _g168786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g168786_))))))
    (define __SRC__%
      (lambda (_%e168464%_ _%src-stx168465%_)
        (if (or (pair? _%e168464%_) (symbol? _%e168464%_))
            (let ((__tmp168788
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx168465%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx168465%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e168464%_ __tmp168788))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e168464%_ 'gerbil#AST::t))
                (let ((__tmp168790
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e168464%_ '1 '#f '#f)))
                      (__tmp168789
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e168464%_)))))
                  (declare (not safe))
                  (##make-source __tmp168790 __tmp168789))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e168464%_))))))
    (define __SRC__0
      (lambda (_%e168476%_)
        (let ((_%src-stx168478%_ '#f))
          (__SRC__% _%e168476%_ _%src-stx168478%_))))
    (define __SRC
      (lambda _g168791_
        (let ((_g168792_ (let () (declare (not safe)) (##length _g168791_))))
          (cond ((let () (declare (not safe)) (##fx= _g168792_ 1))
                 (apply __SRC__0 _g168791_))
                ((let () (declare (not safe)) (##fx= _g168792_ 2))
                 (apply __SRC__% _g168791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g168791_))))))
    (define __locat
      (lambda (_%loc168461%_)
        (if (let () (declare (not safe)) (##locat? _%loc168461%_))
            _%loc168461%_
            '#f)))
    (define __check-values
      (lambda (_%obj168456%_ _%k168457%_)
        (let ((_%count168459%_
               (if (let () (declare (not safe)) (##values? _%obj168456%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj168456%_))
                   '1)))
          (if (fx= _%count168459%_ _%k168457%_)
              '#!void
              (let ((__tmp168794
                     (if (fx< _%count168459%_ _%k168457%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp168793
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj168456%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj168456%_))
                         _%obj168456%_)))
                (declare (not safe))
                (error __tmp168794 __tmp168793 _%k168457%_))))))
    (define __compile
      (lambda (_%stx168425%_)
        (let* ((_%$e168427%_ _%stx168425%_)
               (_%$E168429168435%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168427%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168427%_))
              (let* ((_%$tgt168430168438%_
                      (let () (declare (not safe)) (__AST-e _%$e168427%_)))
                     (_%$hd168431168441%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168430168438%_)))
                     (_%$tl168432168444%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168430168438%_)))
                     (_%form168448%_ _%$hd168431168441%_)
                     (_%$e168450%_ (__core-resolve _%form168448%_)))
                (if _%$e168450%_
                    ((lambda (_%bind168453%_)
                       ((##structure-ref _%bind168453%_ '1 __syntax::t '#f)
                        _%stx168425%_))
                     _%$e168450%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx168425%_
                       _%form168448%_))))
              (_%$E168429168435%_)))))
    (define __compile-error__%
      (lambda (_%stx168412%_ _%detail168413%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx168412%_
           _%detail168413%_))))
    (define __compile-error__0
      (lambda (_%stx168418%_)
        (let ((_%detail168420%_ '#f))
          (__compile-error__% _%stx168418%_ _%detail168420%_))))
    (define __compile-error
      (lambda _g168795_
        (let ((_g168796_ (let () (declare (not safe)) (##length _g168795_))))
          (cond ((let () (declare (not safe)) (##fx= _g168796_ 1))
                 (apply __compile-error__0 _g168795_))
                ((let () (declare (not safe)) (##fx= _g168796_ 2))
                 (apply __compile-error__% _g168795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g168795_))))))
    (define __compile-ignore%
      (lambda (_%stx168409%_) (__SRC__% ''#!void _%stx168409%_)))
    (define __compile-begin%
      (lambda (_%stx168384%_)
        (let* ((_%$e168386%_ _%stx168384%_)
               (_%$E168388168394%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168386%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168386%_))
              (let* ((_%$tgt168389168397%_
                      (let () (declare (not safe)) (__AST-e _%$e168386%_)))
                     (_%$hd168390168400%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168389168397%_)))
                     (_%$tl168391168403%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168389168397%_)))
                     (_%body168407%_ _%$tl168391168403%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body168407%_))
                 _%stx168384%_))
              (_%$E168388168394%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx168359%_)
        (let* ((_%$e168361%_ _%stx168359%_)
               (_%$E168363168369%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168361%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168361%_))
              (let* ((_%$tgt168364168372%_
                      (let () (declare (not safe)) (__AST-e _%$e168361%_)))
                     (_%$hd168365168375%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168364168372%_)))
                     (_%$tl168366168378%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168364168372%_)))
                     (_%body168382%_ _%$tl168366168378%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body168382%_)))
                 _%stx168359%_))
              (_%$E168363168369%_)))))
    (define __compile-import%
      (lambda (_%stx168334%_)
        (let* ((_%$e168336%_ _%stx168334%_)
               (_%$E168338168344%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168336%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168336%_))
              (let* ((_%$tgt168339168347%_
                      (let () (declare (not safe)) (__AST-e _%$e168336%_)))
                     (_%$hd168340168350%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168339168347%_)))
                     (_%$tl168341168353%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168339168347%_)))
                     (_%body168357%_ _%$tl168341168353%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body168357%_ '())) '()))
                 _%stx168334%_))
              (_%$E168338168344%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx168281%_)
        (let* ((_%$e168283%_ _%stx168281%_)
               (_%$E168285168297%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168283%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168283%_))
              (let* ((_%$tgt168286168300%_
                      (let () (declare (not safe)) (__AST-e _%$e168283%_)))
                     (_%$hd168287168303%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168286168300%_)))
                     (_%$tl168288168306%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168286168300%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168288168306%_))
                    (let* ((_%$tgt168289168310%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168288168306%_)))
                           (_%$hd168290168313%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168289168310%_)))
                           (_%$tl168291168316%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168289168310%_)))
                           (_%ann168320%_ _%$hd168290168313%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168291168316%_))
                          (let* ((_%$tgt168292168322%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168291168316%_)))
                                 (_%$hd168293168325%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168292168322%_)))
                                 (_%$tl168294168328%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168292168322%_)))
                                 (_%expr168332%_ _%$hd168293168325%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168294168328%_))
                                        '())
                                (__compile _%expr168332%_)
                                (_%$E168285168297%_)))
                          (_%$E168285168297%_)))
                    (_%$E168285168297%_)))
              (_%$E168285168297%_)))))
    (define __compile-define-values%
      (lambda (_%stx168172%_)
        (let* ((_%$e168174%_ _%stx168172%_)
               (_%$E168176168188%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168174%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168174%_))
              (let* ((_%$tgt168177168191%_
                      (let () (declare (not safe)) (__AST-e _%$e168174%_)))
                     (_%$hd168178168194%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168177168191%_)))
                     (_%$tl168179168197%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168177168191%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168179168197%_))
                    (let* ((_%$tgt168180168201%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168179168197%_)))
                           (_%$hd168181168204%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168180168201%_)))
                           (_%$tl168182168207%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168180168201%_)))
                           (_%hd168211%_ _%$hd168181168204%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168182168207%_))
                          (let* ((_%$tgt168183168213%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168182168207%_)))
                                 (_%$hd168184168216%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168183168213%_)))
                                 (_%$tl168185168219%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168183168213%_)))
                                 (_%expr168223%_ _%$hd168184168216%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168185168219%_))
                                        '())
                                (let* ((_%$e168225%_ _%hd168211%_)
                                       (_%$E168227168268%_
                                        (lambda ()
                                          (let ((_%$E168228168253%_
                                                 (lambda ()
                                                   (let* ((_%$E168229168240%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e168225%_))))
                  (_%ids168243%_ _%hd168211%_)
                  (_%len168245%_ (length _%ids168243%_))
                  (_%tmp168247%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp168247%_
                                       (cons (__compile _%expr168223%_) '())))
                           _%stx168172%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp168247%_
                                             (cons _%len168245%_ '())))
                                 _%stx168172%_)
                                (let ((__tmp168797
                                       (let ((__tmp168799
                                              (lambda (_%id168250%_
                                                       _%k168251%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id168250%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168250%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp168247%_
                                           (cons _%k168251%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx168172%_)
                                                    '#f)))
                                             (__tmp168798
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len168245%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp168799
                                          _%ids168243%_
                                          __tmp168798))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp168797)))))
              _%stx168172%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e168225%_))
                                                (let* ((_%$tgt168230168256%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e168225%_)))
                                                       (_%$hd168231168259%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt168230168256%_)))
                                                       (_%$tl168232168262%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt168230168256%_)))
                                                       (_%id168266%_
                                                        _%$hd168231168259%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl168232168262%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id168266%_)
                           (cons (__compile _%expr168223%_) '())))
               _%stx168172%_)
              (_%$E168228168253%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E168228168253%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e168225%_))
                                      (let* ((_%$tgt168233168271%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e168225%_)))
                                             (_%$hd168234168274%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168233168271%_)))
                                             (_%$tl168235168277%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168233168271%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd168234168274%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl168235168277%_))
                                                        '())
                                                (__compile _%expr168223%_)
                                                (_%$E168227168268%_))
                                            (_%$E168227168268%_)))
                                      (_%$E168227168268%_)))
                                (_%$E168176168188%_)))
                          (_%$E168176168188%_)))
                    (_%$E168176168188%_)))
              (_%$E168176168188%_)))))
    (define __compile-head-id
      (lambda (_%e168170%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e168170%_))
             _%e168170%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd168127%_)
        (let _%recur168129%_ ((_%rest168131%_ _%hd168127%_))
          (let* ((_%$e168133%_ _%rest168131%_)
                 (_%$E168135168153%_
                  (lambda ()
                    (let ((_%$E168136168150%_
                           (lambda ()
                             (let* ((_%$E168137168145%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e168133%_))))
                                    (_%tail168148%_ _%$e168133%_))
                               (__compile-head-id _%tail168148%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168133%_))
                                  '())
                          '()
                          (_%$E168136168150%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168133%_))
                (let* ((_%$tgt168138168156%_
                        (let () (declare (not safe)) (__AST-e _%$e168133%_)))
                       (_%$hd168139168159%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168138168156%_)))
                       (_%$tl168140168162%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168138168156%_)))
                       (_%hd168166%_ _%$hd168139168159%_)
                       (_%rest168168%_ _%$tl168140168162%_))
                  (cons (__compile-head-id _%hd168166%_)
                        (_%recur168129%_ _%rest168168%_)))
                (_%$E168135168153%_))))))
    (define __compile-lambda%
      (lambda (_%stx168074%_)
        (let* ((_%$e168076%_ _%stx168074%_)
               (_%$E168078168090%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168076%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168076%_))
              (let* ((_%$tgt168079168093%_
                      (let () (declare (not safe)) (__AST-e _%$e168076%_)))
                     (_%$hd168080168096%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168079168093%_)))
                     (_%$tl168081168099%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168079168093%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168081168099%_))
                    (let* ((_%$tgt168082168103%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168081168099%_)))
                           (_%$hd168083168106%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168082168103%_)))
                           (_%$tl168084168109%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168082168103%_)))
                           (_%hd168113%_ _%$hd168083168106%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168084168109%_))
                          (let* ((_%$tgt168085168115%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168084168109%_)))
                                 (_%$hd168086168118%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168085168115%_)))
                                 (_%$tl168087168121%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168085168115%_)))
                                 (_%body168125%_ _%$hd168086168118%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168087168121%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd168113%_)
                                             (cons (__compile _%body168125%_)
                                                   '())))
                                 _%stx168074%_)
                                (_%$E168078168090%_)))
                          (_%$E168078168090%_)))
                    (_%$E168078168090%_)))
              (_%$E168078168090%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx167839%_)
        (letrec ((_%variadic?167841%_
                  (lambda (_%hd168039%_)
                    (let* ((_%$e168041%_ _%hd168039%_)
                           (_%$E168043168059%_
                            (lambda ()
                              (let ((_%$E168044168056%_
                                     (lambda ()
                                       (let ((_%$E168045168053%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e168041%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e168041%_))
                                            '())
                                    '#f
                                    (_%$E168044168056%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168041%_))
                          (let* ((_%$tgt168046168062%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168041%_)))
                                 (_%$hd168047168065%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168046168062%_)))
                                 (_%$tl168048168068%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168046168062%_)))
                                 (_%rest168072%_ _%$tl168048168068%_))
                            (_%variadic?167841%_ _%rest168072%_))
                          (_%$E168043168059%_)))))
                 (_%arity167842%_
                  (lambda (_%hd167977%_)
                    (let _%lp167979%_ ((_%rest167981%_ _%hd167977%_)
                                       (_%k167982%_ '0))
                      (let* ((_%$e167984%_ _%rest167981%_)
                             (_%$E167986167997%_
                              (lambda ()
                                (let ((_%$E167987167994%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e167984%_)))))
                                  _%k167982%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e167984%_))
                            (let* ((_%$tgt167988168000%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e167984%_)))
                                   (_%$hd167989168003%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt167988168000%_)))
                                   (_%$tl167990168006%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt167988168000%_)))
                                   (_%rest168010%_ _%$tl167990168006%_))
                              (_%lp167979%_
                               _%rest168010%_
                               (let ((_%x168012%_ _%k167982%_))
                                 (if (fixnum? _%x168012%_)
                                     (let ((_%x168017%_ _%x168012%_))
                                       (declare (not safe))
                                       (__fx1+ _%x168017%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x168012%_)
                                       '#!void)))))
                            (_%$E167986167997%_))))))
                 (_%generate167843%_
                  (lambda (_%rest167904%_ _%args167905%_ _%len167906%_)
                    (let* ((_%$e167908%_ _%rest167904%_)
                           (_%$E167910167921%_
                            (lambda ()
                              (let ((_%$E167911167918%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e167908%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args167905%_ '())))
                                 _%stx167839%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e167908%_))
                          (let* ((_%$tgt167912167924%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e167908%_)))
                                 (_%$hd167913167927%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167912167924%_)))
                                 (_%$tl167914167930%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167912167924%_)))
                                 (_%clause167934%_ _%$hd167913167927%_)
                                 (_%rest167936%_ _%$tl167914167930%_)
                                 (_%$e167938%_ _%clause167934%_)
                                 (_%$E167940167949%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e167938%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e167938%_))
                                (let* ((_%$tgt167941167952%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e167938%_)))
                                       (_%$hd167942167955%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167941167952%_)))
                                       (_%$tl167943167958%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167941167952%_)))
                                       (_%hd167962%_ _%$hd167942167955%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl167943167958%_))
                                      (let* ((_%$tgt167944167964%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167943167958%_)))
                                             (_%$hd167945167967%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt167944167964%_)))
                                             (_%$tl167946167970%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt167944167964%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl167946167970%_))
                                                    '())
                                            (let ((_%clen167974%_
                                                   (_%arity167842%_
                                                    _%hd167962%_))
                                                  (_%cmp167975%_
                                                   (if (_%variadic?167841%_
                                                        _%hd167962%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp167975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len167906%_ (cons _%clen167974%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause167934%_))
                                      (cons _%args167905%_ '())))
                          _%stx167839%_)
                         (cons (_%generate167843%_
                                _%rest167936%_
                                _%args167905%_
                                _%len167906%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx167839%_))
                                            (_%$E167940167949%_)))
                                      (_%$E167940167949%_)))
                                (_%$E167940167949%_)))
                          (_%$E167910167921%_))))))
          (let* ((_%$e167845%_ _%stx167839%_)
                 (_%$E167847167879%_
                  (lambda ()
                    (let ((_%$E167848167861%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167845%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e167845%_))
                          (let* ((_%$tgt167849167864%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e167845%_)))
                                 (_%$hd167850167867%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167849167864%_)))
                                 (_%$tl167851167870%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167849167864%_)))
                                 (_%clauses167874%_ _%$tl167851167870%_))
                            (let ((_%args167876%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx167839%_))
                                  (_%len167877%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx167839%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args167876%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len167877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args167876%_ '()))
                                         _%stx167839%_)
                                        '()))
                            '())
                      (cons (_%generate167843%_
                             _%clauses167874%_
                             _%args167876%_
                             _%len167877%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx167839%_)
                                                 '())))
                               _%stx167839%_)))
                          (_%$E167848167861%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e167845%_))
                (let* ((_%$tgt167852167882%_
                        (let () (declare (not safe)) (__AST-e _%$e167845%_)))
                       (_%$hd167853167885%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt167852167882%_)))
                       (_%$tl167854167888%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt167852167882%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl167854167888%_))
                      (let* ((_%$tgt167855167892%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl167854167888%_)))
                             (_%$hd167856167895%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt167855167892%_)))
                             (_%$tl167857167898%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt167855167892%_)))
                             (_%clause167902%_ _%$hd167856167895%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl167857167898%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause167902%_))
                            (_%$E167847167879%_)))
                      (_%$E167847167879%_)))
                (_%$E167847167879%_))))))
    (define __compile-let-form
      (lambda (_%stx167608%_ _%compile-simple167609%_ _%compile-values167610%_)
        (letrec ((_%simple-bind?167612%_
                  (lambda (_%hd167797%_)
                    (let* ((_%hd167798167808%_ _%hd167797%_)
                           (_%else167801167816%_ (lambda () '#f)))
                      (let ((_%K167804167829%_ (lambda (_%id167827%_) '#t))
                            (_%K167803167821%_ (lambda () '#t)))
                        (let ((_%try-match167800167824%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd167798167808%_ '#f))
                                     (_%K167803167821%_)
                                     (_%else167801167816%_)))))
                          (if (pair? _%hd167798167808%_)
                              (let ((_%tl167806167834%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd167798167808%_)))
                                    (_%hd167805167832%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd167798167808%_))))
                                (if (null? _%tl167806167834%_)
                                    (let ((_%id167837%_ _%hd167805167832%_))
                                      (_%K167804167829%_ _%id167837%_))
                                    (_%try-match167800167824%_)))
                              (_%try-match167800167824%_)))))))
                 (_%car-e167613%_
                  (lambda (_%hd167795%_)
                    (if (pair? _%hd167795%_)
                        (let () (declare (not safe)) (##car _%hd167795%_))
                        _%hd167795%_))))
          (let* ((_%$e167615%_ _%stx167608%_)
                 (_%$E167617167760%_
                  (lambda ()
                    (let ((_%$E167618167640%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167615%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e167615%_))
                          (let* ((_%$tgt167619167643%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e167615%_)))
                                 (_%$hd167620167646%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167619167643%_)))
                                 (_%$tl167621167649%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167619167643%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl167621167649%_))
                                (let* ((_%$tgt167622167653%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167621167649%_)))
                                       (_%$hd167623167656%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167622167653%_)))
                                       (_%$tl167624167659%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167622167653%_)))
                                       (_%hd167663%_ _%$hd167623167656%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl167624167659%_))
                                      (let* ((_%$tgt167625167665%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167624167659%_)))
                                             (_%$hd167626167668%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt167625167665%_)))
                                             (_%$tl167627167671%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt167625167665%_)))
                                             (_%body167675%_
                                              _%$hd167626167668%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl167627167671%_))
                                                    '())
                                            (let* ((_%hd-ids167715%_
                                                    (map (lambda (_%bind167677%_)
                                                           (let* ((_%$e167679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind167677%_)
                          (_%$E167681167690%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167679%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e167679%_))
                         (let* ((_%$tgt167682167693%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e167679%_)))
                                (_%$hd167683167696%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt167682167693%_)))
                                (_%$tl167684167699%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt167682167693%_)))
                                (_%ids167703%_ _%$hd167683167696%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl167684167699%_))
                               (let* ((_%$tgt167685167705%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl167684167699%_)))
                                      (_%$hd167686167708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt167685167705%_)))
                                      (_%$tl167687167711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt167685167705%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl167687167711%_))
                                             '())
                                     _%ids167703%_
                                     (_%$E167681167690%_)))
                               (_%$E167681167690%_)))
                         (_%$E167681167690%_))))
                 _%hd167663%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs167755%_
                                                    (map (lambda (_%bind167717%_)
                                                           (let* ((_%$e167719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind167717%_)
                          (_%$E167721167730%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167719%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e167719%_))
                         (let* ((_%$tgt167722167733%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e167719%_)))
                                (_%$hd167723167736%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt167722167733%_)))
                                (_%$tl167724167739%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt167722167733%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl167724167739%_))
                               (let* ((_%$tgt167725167743%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl167724167739%_)))
                                      (_%$hd167726167746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt167725167743%_)))
                                      (_%$tl167727167749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt167725167743%_)))
                                      (_%expr167753%_ _%$hd167726167746%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl167727167749%_))
                                             '())
                                     (__compile _%expr167753%_)
                                     (_%$E167721167730%_)))
                               (_%$E167721167730%_)))
                         (_%$E167721167730%_))))
                 _%hd167663%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body167757%_
                                                    (__compile
                                                     _%body167675%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?167612%_
                                                     _%hd-ids167715%_))
                                                  (_%compile-simple167609%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e167613%_
                                                            _%hd-ids167715%_))
                                                   _%exprs167755%_
                                                   _%body167757%_)
                                                  (_%compile-values167610%_
                                                   _%hd-ids167715%_
                                                   _%exprs167755%_
                                                   _%body167757%_)))
                                            (_%$E167618167640%_)))
                                      (_%$E167618167640%_)))
                                (_%$E167618167640%_)))
                          (_%$E167618167640%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e167615%_))
                (let* ((_%$tgt167628167763%_
                        (let () (declare (not safe)) (__AST-e _%$e167615%_)))
                       (_%$hd167629167766%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt167628167763%_)))
                       (_%$tl167630167769%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt167628167763%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl167630167769%_))
                      (let* ((_%$tgt167631167773%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl167630167769%_)))
                             (_%$hd167632167776%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt167631167773%_)))
                             (_%$tl167633167779%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt167631167773%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd167632167776%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl167633167779%_))
                                (let* ((_%$tgt167634167783%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167633167779%_)))
                                       (_%$hd167635167786%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167634167783%_)))
                                       (_%$tl167636167789%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167634167783%_)))
                                       (_%body167793%_ _%$hd167635167786%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167636167789%_))
                                              '())
                                      (__compile _%body167793%_)
                                      (_%$E167617167760%_)))
                                (_%$E167617167760%_))
                            (_%$E167617167760%_)))
                      (_%$E167617167760%_)))
                (_%$E167617167760%_))))))
    (define __compile-let-values%
      (lambda (_%stx167420%_)
        (letrec ((_%compile-simple167422%_
                  (lambda (_%hd-ids167604%_ _%exprs167605%_ _%body167606%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp168800
                                        (map __compile-head-id
                                             _%hd-ids167604%_)))
                                   (declare (not safe))
                                   (##map list __tmp168800 _%exprs167605%_))
                                 (cons _%body167606%_ '())))
                     _%stx167420%_)))
                 (_%compile-values167423%_
                  (lambda (_%hd-ids167519%_ _%exprs167520%_ _%body167521%_)
                    (let _%lp167523%_ ((_%rest167525%_ _%hd-ids167519%_)
                                       (_%exprs167526%_ _%exprs167520%_)
                                       (_%bind167527%_ '())
                                       (_%post167528%_ '()))
                      (let* ((_%rest167529167543%_ _%rest167525%_)
                             (_%else167532167551%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind167527%_)
                                             (cons (_%compile-post167424%_
                                                    _%post167528%_
                                                    _%body167521%_)
                                                   '())))
                                 _%stx167420%_))))
                        (let ((_%K167537167587%_
                               (lambda (_%rest167584%_ _%id167585%_)
                                 (_%lp167523%_
                                  _%rest167584%_
                                  (cdr _%exprs167526%_)
                                  (cons (cons (__compile-head-id _%id167585%_)
                                              (cons (car _%exprs167526%_) '()))
                                        _%bind167527%_)
                                  _%post167528%_)))
                              (_%K167534167569%_
                               (lambda (_%rest167555%_ _%hd167556%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167556%_))
                                     (_%lp167523%_
                                      _%rest167555%_
                                      (cdr _%exprs167526%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd167556%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs167526%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind167527%_)
                                      _%post167528%_)
                                     (if (list? _%hd167556%_)
                                         (let* ((_%len167560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd167556%_)))
                                                (_%tmp167562%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp167523%_
                                            _%rest167555%_
                                            (cdr _%exprs167526%_)
                                            (cons (cons _%tmp167562%_
                                                        (cons (car _%exprs167526%_)
                                                              '()))
                                                  _%bind167527%_)
                                            (cons (cons _%tmp167562%_
                                                        (cons _%len167560%_
                                                              (let ((__tmp168802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id167565%_ _%k167566%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id167565%_))
                                   (cons (__SRC__0 _%id167565%_) _%k167566%_)
                                   '#f)))
                            (__tmp168801
                             (let ()
                               (declare (not safe))
                               (##iota _%len167560%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp168802 _%hd167556%_ __tmp168801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post167528%_)))
                                         (__compile-error__%
                                          _%stx167420%_
                                          _%hd167556%_))))))
                          (if (pair? _%rest167529167543%_)
                              (let ((_%tl167539167592%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167529167543%_)))
                                    (_%hd167538167590%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167529167543%_))))
                                (if (pair? _%hd167538167590%_)
                                    (let ((_%tl167541167597%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167538167590%_)))
                                          (_%hd167540167595%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167538167590%_))))
                                      (if (null? _%tl167541167597%_)
                                          (let ((_%id167600%_
                                                 _%hd167540167595%_)
                                                (_%rest167602%_
                                                 _%tl167539167592%_))
                                            (_%K167537167587%_
                                             _%rest167602%_
                                             _%id167600%_))
                                          (let ((_%hd167577%_
                                                 _%hd167538167590%_)
                                                (_%rest167579%_
                                                 _%tl167539167592%_))
                                            (_%K167534167569%_
                                             _%rest167579%_
                                             _%hd167577%_))))
                                    (let ((_%hd167577%_ _%hd167538167590%_)
                                          (_%rest167579%_ _%tl167539167592%_))
                                      (_%K167534167569%_
                                       _%rest167579%_
                                       _%hd167577%_))))
                              (_%else167532167551%_)))))))
                 (_%compile-post167424%_
                  (lambda (_%post167426%_ _%body167427%_)
                    (let _%lp167429%_ ((_%rest167431%_ _%post167426%_)
                                       (_%check167432%_ '())
                                       (_%bind167433%_ '()))
                      (let* ((_%rest167434167446%_ _%rest167431%_)
                             (_%else167436167454%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp168803
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind167433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body167427%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx167420%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp168803
                                          _%check167432%_)))
                                 _%stx167420%_)))
                             (_%K167438167493%_
                              (lambda (_%rest167457%_
                                       _%init167458%_
                                       _%len167459%_
                                       _%tmp167460%_)
                                (_%lp167429%_
                                 _%rest167457%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167460%_
                                                    (cons _%len167459%_ '())))
                                        _%stx167420%_)
                                       _%check167432%_)
                                 (let ((__tmp168804
                                        (lambda (_%hd167462%_ _%r167463%_)
                                          (let* ((_%hd167464167471%_
                                                  _%hd167462%_)
                                                 (_%E167466167475%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd167464167471%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K167467167481%_
                                                  (lambda (_%k167478%_
                                                           _%id167479%_)
                                                    (cons (cons _%id167479%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp167460%_
                                          (cons _%k167478%_ '())))
                              '()))
                  _%r167463%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd167464167471%_)
                                                (let ((_%hd167468167484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd167464167471%_)))
                                                      (_%tl167469167486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd167464167471%_))))
                                                  (let* ((_%id167489%_
                                                          _%hd167468167484%_)
                                                         (_%k167491%_
                                                          _%tl167469167486%_))
                                                    (_%K167467167481%_
                                                     _%k167491%_
                                                     _%id167489%_)))
                                                (_%E167466167475%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp168804
                                    _%bind167433%_
                                    _%init167458%_))))))
                        (if (pair? _%rest167434167446%_)
                            (let ((_%hd167439167496%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167434167446%_)))
                                  (_%tl167440167498%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167434167446%_))))
                              (if (pair? _%hd167439167496%_)
                                  (let ((_%hd167441167501%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd167439167496%_)))
                                        (_%tl167442167503%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd167439167496%_))))
                                    (let ((_%tmp167506%_ _%hd167441167501%_))
                                      (if (pair? _%tl167442167503%_)
                                          (let ((_%hd167443167508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl167442167503%_)))
                                                (_%tl167444167510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167442167503%_))))
                                            (let* ((_%len167513%_
                                                    _%hd167443167508%_)
                                                   (_%init167515%_
                                                    _%tl167444167510%_)
                                                   (_%rest167517%_
                                                    _%tl167440167498%_))
                                              (_%K167438167493%_
                                               _%rest167517%_
                                               _%init167515%_
                                               _%len167513%_
                                               _%tmp167506%_)))
                                          (_%else167436167454%_))))
                                  (_%else167436167454%_)))
                            (_%else167436167454%_)))))))
          (__compile-let-form
           _%stx167420%_
           _%compile-simple167422%_
           _%compile-values167423%_))))
    (define __compile-letrec-values%
      (lambda (_%stx167217%_)
        (letrec ((_%compile-simple167219%_
                  (lambda (_%hd-ids167416%_ _%exprs167417%_ _%body167418%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp168805
                                        (map __compile-head-id
                                             _%hd-ids167416%_)))
                                   (declare (not safe))
                                   (##map list __tmp168805 _%exprs167417%_))
                                 (cons _%body167418%_ '())))
                     _%stx167217%_)))
                 (_%compile-values167220%_
                  (lambda (_%hd-ids167327%_ _%exprs167328%_ _%body167329%_)
                    (let _%lp167331%_ ((_%rest167333%_ _%hd-ids167327%_)
                                       (_%exprs167334%_ _%exprs167328%_)
                                       (_%pre167335%_ '())
                                       (_%bind167336%_ '())
                                       (_%post167337%_ '()))
                      (let* ((_%rest167338167352%_ _%rest167333%_)
                             (_%else167341167360%_
                              (lambda ()
                                (_%compile-inner167221%_
                                 _%pre167335%_
                                 _%bind167336%_
                                 _%post167337%_
                                 _%body167329%_))))
                        (let ((_%K167346167399%_
                               (lambda (_%rest167396%_ _%id167397%_)
                                 (_%lp167331%_
                                  _%rest167396%_
                                  (cdr _%exprs167334%_)
                                  _%pre167335%_
                                  (cons (cons (__compile-head-id _%id167397%_)
                                              (cons (car _%exprs167334%_) '()))
                                        _%bind167336%_)
                                  _%post167337%_)))
                              (_%K167343167381%_
                               (lambda (_%rest167364%_ _%hd167365%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167365%_))
                                     (_%lp167331%_
                                      _%rest167364%_
                                      (cdr _%exprs167334%_)
                                      _%pre167335%_
                                      (cons (cons (__compile-head-id
                                                   _%hd167365%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs167334%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind167336%_)
                                      _%post167337%_)
                                     (if (list? _%hd167365%_)
                                         (let* ((_%len167369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd167365%_)))
                                                (_%tmp167371%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp167331%_
                                            _%rest167364%_
                                            (cdr _%exprs167334%_)
                                            (let ((__tmp168806
                                                   (lambda (_%id167374%_
                                                            _%r167375%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id167374%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id167374%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r167375%_)
                 _%r167375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp168806
                                               _%pre167335%_
                                               _%hd167365%_))
                                            (cons (cons _%tmp167371%_
                                                        (cons (car _%exprs167334%_)
                                                              '()))
                                                  _%bind167336%_)
                                            (cons (cons _%tmp167371%_
                                                        (cons _%len167369%_
                                                              (let ((__tmp168808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id167377%_ _%k167378%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id167377%_))
                                   (cons (__SRC__0 _%id167377%_) _%k167378%_)
                                   '#f)))
                            (__tmp168807
                             (let ()
                               (declare (not safe))
                               (##iota _%len167369%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp168808 _%hd167365%_ __tmp168807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post167337%_)))
                                         (__compile-error__%
                                          _%stx167217%_
                                          _%hd167365%_))))))
                          (if (pair? _%rest167338167352%_)
                              (let ((_%tl167348167404%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167338167352%_)))
                                    (_%hd167347167402%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167338167352%_))))
                                (if (pair? _%hd167347167402%_)
                                    (let ((_%tl167350167409%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167347167402%_)))
                                          (_%hd167349167407%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167347167402%_))))
                                      (if (null? _%tl167350167409%_)
                                          (let ((_%id167412%_
                                                 _%hd167349167407%_)
                                                (_%rest167414%_
                                                 _%tl167348167404%_))
                                            (_%K167346167399%_
                                             _%rest167414%_
                                             _%id167412%_))
                                          (let ((_%hd167389%_
                                                 _%hd167347167402%_)
                                                (_%rest167391%_
                                                 _%tl167348167404%_))
                                            (_%K167343167381%_
                                             _%rest167391%_
                                             _%hd167389%_))))
                                    (let ((_%hd167389%_ _%hd167347167402%_)
                                          (_%rest167391%_ _%tl167348167404%_))
                                      (_%K167343167381%_
                                       _%rest167391%_
                                       _%hd167389%_))))
                              (_%else167341167360%_)))))))
                 (_%compile-inner167221%_
                  (lambda (_%pre167322%_
                           _%bind167323%_
                           _%post167324%_
                           _%body167325%_)
                    (if (null? _%pre167322%_)
                        (_%compile-bind167222%_
                         _%bind167323%_
                         _%post167324%_
                         _%body167325%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre167322%_)
                                     (cons (_%compile-bind167222%_
                                            _%bind167323%_
                                            _%post167324%_
                                            _%body167325%_)
                                           '())))
                         _%stx167217%_))))
                 (_%compile-bind167222%_
                  (lambda (_%bind167318%_ _%post167319%_ _%body167320%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind167318%_)
                                 (cons (_%compile-post167223%_
                                        _%post167319%_
                                        _%body167320%_)
                                       '())))
                     _%stx167217%_)))
                 (_%compile-post167223%_
                  (lambda (_%post167225%_ _%body167226%_)
                    (let _%lp167228%_ ((_%rest167230%_ _%post167225%_)
                                       (_%check167231%_ '())
                                       (_%bind167232%_ '()))
                      (let* ((_%rest167233167245%_ _%rest167230%_)
                             (_%else167235167253%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp168809
                                              (let ((__tmp168810
                                                     (cons _%body167226%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp168810
                                                 _%bind167232%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp168809
                                          _%check167231%_)))
                                 _%stx167217%_)))
                             (_%K167237167292%_
                              (lambda (_%rest167256%_
                                       _%init167257%_
                                       _%len167258%_
                                       _%tmp167259%_)
                                (_%lp167228%_
                                 _%rest167256%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167259%_
                                                    (cons _%len167258%_ '())))
                                        _%stx167217%_)
                                       _%check167231%_)
                                 (let ((__tmp168811
                                        (lambda (_%hd167261%_ _%r167262%_)
                                          (let* ((_%hd167263167270%_
                                                  _%hd167261%_)
                                                 (_%E167265167274%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd167263167270%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K167266167280%_
                                                  (lambda (_%k167277%_
                                                           _%id167278%_)
                                                    (cons (cons 'set!
                                                                (cons _%id167278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp167259%_
                                                (cons _%k167277%_ '())))
                                    '())))
                  _%r167262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd167263167270%_)
                                                (let ((_%hd167267167283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd167263167270%_)))
                                                      (_%tl167268167285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd167263167270%_))))
                                                  (let* ((_%id167288%_
                                                          _%hd167267167283%_)
                                                         (_%k167290%_
                                                          _%tl167268167285%_))
                                                    (_%K167266167280%_
                                                     _%k167290%_
                                                     _%id167288%_)))
                                                (_%E167265167274%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp168811
                                    _%bind167232%_
                                    _%init167257%_))))))
                        (if (pair? _%rest167233167245%_)
                            (let ((_%hd167238167295%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167233167245%_)))
                                  (_%tl167239167297%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167233167245%_))))
                              (if (pair? _%hd167238167295%_)
                                  (let ((_%hd167240167300%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd167238167295%_)))
                                        (_%tl167241167302%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd167238167295%_))))
                                    (let ((_%tmp167305%_ _%hd167240167300%_))
                                      (if (pair? _%tl167241167302%_)
                                          (let ((_%hd167242167307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl167241167302%_)))
                                                (_%tl167243167309%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167241167302%_))))
                                            (let* ((_%len167312%_
                                                    _%hd167242167307%_)
                                                   (_%init167314%_
                                                    _%tl167243167309%_)
                                                   (_%rest167316%_
                                                    _%tl167239167297%_))
                                              (_%K167237167292%_
                                               _%rest167316%_
                                               _%init167314%_
                                               _%len167312%_
                                               _%tmp167305%_)))
                                          (_%else167235167253%_))))
                                  (_%else167235167253%_)))
                            (_%else167235167253%_)))))))
          (__compile-let-form
           _%stx167217%_
           _%compile-simple167219%_
           _%compile-values167220%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx166968%_)
        (letrec ((_%compile-simple166970%_
                  (lambda (_%hd-ids167213%_ _%exprs167214%_ _%body167215%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp168812
                                        (map __compile-head-id
                                             _%hd-ids167213%_)))
                                   (declare (not safe))
                                   (##map list __tmp168812 _%exprs167214%_))
                                 (cons _%body167215%_ '())))
                     _%stx166968%_)))
                 (_%compile-values166971%_
                  (lambda (_%hd-ids167120%_ _%exprs167121%_ _%body167122%_)
                    (let _%lp167124%_ ((_%rest167126%_ _%hd-ids167120%_)
                                       (_%exprs167127%_ _%exprs167121%_)
                                       (_%bind167128%_ '())
                                       (_%post167129%_ '()))
                      (let* ((_%rest167130167144%_ _%rest167126%_)
                             (_%else167133167152%_
                              (lambda ()
                                (_%compile-bind166972%_
                                 _%bind167128%_
                                 _%post167129%_
                                 _%body167122%_))))
                        (let ((_%K167138167196%_
                               (lambda (_%rest167191%_ _%hd167192%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167192%_))
                                     (let ((_%id167194%_
                                            (__SRC__0 _%hd167192%_)))
                                       (_%lp167124%_
                                        _%rest167191%_
                                        (cdr _%exprs167127%_)
                                        (cons (cons _%id167194%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind167128%_)
                                        (cons (cons _%id167194%_
                                                    (cons (car _%exprs167127%_)
                                                          '()))
                                              _%post167129%_)))
                                     (_%lp167124%_
                                      _%rest167191%_
                                      (cdr _%exprs167127%_)
                                      _%bind167128%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs167127%_)
                                                        '()))
                                            _%post167129%_)))))
                              (_%K167135167176%_
                               (lambda (_%rest167156%_ _%hd167157%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167157%_))
                                     (let ((_%id167160%_
                                            (__SRC__0 _%hd167157%_)))
                                       (_%lp167124%_
                                        _%rest167156%_
                                        (cdr _%exprs167127%_)
                                        (cons (cons _%id167160%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind167128%_)
                                        (cons (cons _%id167160%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs167127%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post167129%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd167157%_))
                                         (if (list? _%hd167157%_)
                                             (let* ((_%len167164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd167157%_)))
                                                    (_%tmp167166%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp167124%_
                                                _%rest167156%_
                                                (cdr _%exprs167127%_)
                                                (let ((__tmp168813
                                                       (lambda (_%id167169%_
                                                                _%r167170%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id167169%_))
                     (cons (cons (__SRC__0 _%id167169%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r167170%_)
                     _%r167170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp168813
                                                   _%bind167128%_
                                                   _%hd167157%_))
                                                (cons (cons _%tmp167166%_
                                                            (cons (car _%exprs167127%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len167164%_
                                (let ((__tmp168815
                                       (lambda (_%id167172%_ _%k167173%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id167172%_))
                                             (cons (__SRC__0 _%id167172%_)
                                                   _%k167173%_)
                                             '#f)))
                                      (__tmp168814
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len167164%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp168815
                                   _%hd167157%_
                                   __tmp168814)))))
              _%post167129%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx166968%_
                                              _%hd167157%_))
                                         (_%lp167124%_
                                          _%rest167156%_
                                          (cdr _%exprs167127%_)
                                          _%bind167128%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs167127%_)
                                                            '()))
                                                _%post167129%_)))))))
                          (if (pair? _%rest167130167144%_)
                              (let ((_%tl167140167201%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167130167144%_)))
                                    (_%hd167139167199%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167130167144%_))))
                                (if (pair? _%hd167139167199%_)
                                    (let ((_%tl167142167206%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167139167199%_)))
                                          (_%hd167141167204%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167139167199%_))))
                                      (if (null? _%tl167142167206%_)
                                          (let ((_%hd167209%_
                                                 _%hd167141167204%_)
                                                (_%rest167211%_
                                                 _%tl167140167201%_))
                                            (_%K167138167196%_
                                             _%rest167211%_
                                             _%hd167209%_))
                                          (let ((_%hd167184%_
                                                 _%hd167139167199%_)
                                                (_%rest167186%_
                                                 _%tl167140167201%_))
                                            (_%K167135167176%_
                                             _%rest167186%_
                                             _%hd167184%_))))
                                    (let ((_%hd167184%_ _%hd167139167199%_)
                                          (_%rest167186%_ _%tl167140167201%_))
                                      (_%K167135167176%_
                                       _%rest167186%_
                                       _%hd167184%_))))
                              (_%else167133167152%_)))))))
                 (_%compile-bind166972%_
                  (lambda (_%bind167116%_ _%post167117%_ _%body167118%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind167116%_)
                                 (cons (_%compile-post166973%_
                                        _%post167117%_
                                        _%body167118%_)
                                       '())))
                     _%stx166968%_)))
                 (_%compile-post166973%_
                  (lambda (_%post166975%_ _%body166976%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp168816
                                  (let ((__tmp168818
                                         (lambda (_%hd166978%_ _%r166979%_)
                                           (let* ((_%hd166980167003%_
                                                   _%hd166978%_)
                                                  (_%E166984167007%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd166980167003%_
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
                                             (let ((_%K166997167101%_
                                                    (lambda (_%expr167099%_)
                                                      (cons _%expr167099%_
                                                            _%r166979%_)))
                                                   (_%K166992167079%_
                                                    (lambda (_%expr167076%_
                                                             _%id167077%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id167077%_ (cons _%expr167076%_ '())))
                     _%stx166968%_)
                    _%r166979%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K166985167046%_
                                                    (lambda (_%init167011%_
                                                             _%len167012%_
                                                             _%expr167013%_
                                                             _%tmp167014%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp167014%_
                                             (cons _%expr167013%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167014%_
                                                    (cons _%len167012%_ '())))
                                        _%stx166968%_)
                                       (let ((__tmp168819
                                              (map (lambda (_%hd167016%_)
                                                     (let* ((_%hd167017167024%_
                                                             _%hd167016%_)
                                                            (_%E167019167028%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd167017167024%_
                                '([id . k])))
                       '#!void))
                    (_%K167020167034%_
                     (lambda (_%k167031%_ _%id167032%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id167032%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp167014%_
                                                      (cons _%k167031%_ '())))
                                          '())))
                        _%stx166968%_))))
               (if (pair? _%hd167017167024%_)
                   (let ((_%hd167021167037%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd167017167024%_)))
                         (_%tl167022167039%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd167017167024%_))))
                     (let* ((_%id167042%_ _%hd167021167037%_)
                            (_%k167044%_ _%tl167022167039%_))
                       (_%K167020167034%_ _%k167044%_ _%id167042%_)))
                   (_%E167019167028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init167011%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp168819)))))
                     _%stx166968%_)
                    _%r166979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match168674168675%_
                                                       (lambda (_%hd166986167049%_
                                                                _%tl166987167051%_
                                                                _%hd166988167056%_
                                                                _%tl166989167058%_)
                                                         (let ((_%tmp167054%_
                                                                _%hd166986167049%_)
                                                               (_%expr167061%_
                                                                _%hd166988167056%_))
                                                           (_%E166984167007%_))))
                                                      (_%__match168668168669%_
                                                       (lambda (_%hd166986167049%_
                                                                _%tl166987167051%_)
                                                         (let ((_%tmp167054%_
                                                                _%hd166986167049%_))
                                                           (_%E166984167007%_)))))
                                                 (if (pair? _%hd166980167003%_)
                                                     (let ((_%tl166999167106%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd166980167003%_)))
                                                           (_%hd166998167104%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd166980167003%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd166998167104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl166999167106%_)
                       (let ((_%tl167001167111%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl166999167106%_)))
                             (_%hd167000167109%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl166999167106%_))))
                         (if (null? _%tl167001167111%_)
                             (let ((_%expr167114%_ _%hd167000167109%_))
                               (_%K166997167101%_ _%expr167114%_))
                             (if (pair? _%tl167001167111%_)
                                 (let ((_%tl166991167065%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl167001167111%_)))
                                       (_%hd166990167063%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl167001167111%_))))
                                   (let ((_%tmp167054%_ _%hd166998167104%_)
                                         (_%expr167061%_ _%hd167000167109%_)
                                         (_%len167068%_ _%hd166990167063%_)
                                         (_%init167070%_ _%tl166991167065%_))
                                     (_%K166985167046%_
                                      _%init167070%_
                                      _%len167068%_
                                      _%expr167061%_
                                      _%tmp167054%_)))
                                 (_%__match168674168675%_
                                  _%hd166998167104%_
                                  _%tl166999167106%_
                                  _%hd167000167109%_
                                  _%tl167001167111%_))))
                       (_%__match168668168669%_
                        _%hd166998167104%_
                        _%tl166999167106%_))
                   (if (pair? _%tl166999167106%_)
                       (let ((_%tl166996167091%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl166999167106%_)))
                             (_%hd166995167089%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl166999167106%_))))
                         (if (null? _%tl166996167091%_)
                             (let ((_%id167087%_ _%hd166998167104%_)
                                   (_%expr167094%_ _%hd166995167089%_))
                               (_%K166992167079%_ _%expr167094%_ _%id167087%_))
                             (if (pair? _%tl166996167091%_)
                                 (let ((_%tl166991167065%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl166996167091%_)))
                                       (_%hd166990167063%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl166996167091%_))))
                                   (let ((_%tmp167054%_ _%hd166998167104%_)
                                         (_%expr167061%_ _%hd166995167089%_)
                                         (_%len167068%_ _%hd166990167063%_)
                                         (_%init167070%_ _%tl166991167065%_))
                                     (_%K166985167046%_
                                      _%init167070%_
                                      _%len167068%_
                                      _%expr167061%_
                                      _%tmp167054%_)))
                                 (_%__match168674168675%_
                                  _%hd166998167104%_
                                  _%tl166999167106%_
                                  _%hd166995167089%_
                                  _%tl166996167091%_))))
                       (_%__match168668168669%_
                        _%hd166998167104%_
                        _%tl166999167106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E166984167007%_)))))))
                                        (__tmp168817 (list _%body166976%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp168818
                                     __tmp168817
                                     _%post166975%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp168816)))
                     _%stx166968%_))))
          (__compile-let-form
           _%stx166968%_
           _%compile-simple166970%_
           _%compile-values166971%_))))
    (define __compile-call%
      (lambda (_%stx166928%_)
        (let* ((_%$e166930%_ _%stx166928%_)
               (_%$E166932166941%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166930%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166930%_))
              (let* ((_%$tgt166933166944%_
                      (let () (declare (not safe)) (__AST-e _%$e166930%_)))
                     (_%$hd166934166947%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166933166944%_)))
                     (_%$tl166935166950%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166933166944%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166935166950%_))
                    (let* ((_%$tgt166936166954%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166935166950%_)))
                           (_%$hd166937166957%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166936166954%_)))
                           (_%$tl166938166960%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166936166954%_)))
                           (_%rator166964%_ _%$hd166937166957%_)
                           (_%rands166966%_ _%$tl166938166960%_))
                      (__SRC__%
                       (cons (__compile _%rator166964%_)
                             (map __compile _%rands166966%_))
                       _%stx166928%_))
                    (_%$E166932166941%_)))
              (_%$E166932166941%_)))))
    (define __compile-ref%
      (lambda (_%stx166890%_)
        (let* ((_%$e166892%_ _%stx166890%_)
               (_%$E166894166903%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166892%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166892%_))
              (let* ((_%$tgt166895166906%_
                      (let () (declare (not safe)) (__AST-e _%$e166892%_)))
                     (_%$hd166896166909%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166895166906%_)))
                     (_%$tl166897166912%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166895166906%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166897166912%_))
                    (let* ((_%$tgt166898166916%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166897166912%_)))
                           (_%$hd166899166919%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166898166916%_)))
                           (_%$tl166900166922%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166898166916%_)))
                           (_%id166926%_ _%$hd166899166919%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166900166922%_))
                                  '())
                          (__SRC__% _%id166926%_ _%stx166890%_)
                          (_%$E166894166903%_)))
                    (_%$E166894166903%_)))
              (_%$E166894166903%_)))))
    (define __compile-setq%
      (lambda (_%stx166837%_)
        (let* ((_%$e166839%_ _%stx166837%_)
               (_%$E166841166853%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166839%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166839%_))
              (let* ((_%$tgt166842166856%_
                      (let () (declare (not safe)) (__AST-e _%$e166839%_)))
                     (_%$hd166843166859%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166842166856%_)))
                     (_%$tl166844166862%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166842166856%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166844166862%_))
                    (let* ((_%$tgt166845166866%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166844166862%_)))
                           (_%$hd166846166869%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166845166866%_)))
                           (_%$tl166847166872%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166845166866%_)))
                           (_%id166876%_ _%$hd166846166869%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl166847166872%_))
                          (let* ((_%$tgt166848166878%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166847166872%_)))
                                 (_%$hd166849166881%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt166848166878%_)))
                                 (_%$tl166850166884%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt166848166878%_)))
                                 (_%expr166888%_ _%$hd166849166881%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl166850166884%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id166876%_
                                              _%stx166837%_)
                                             (cons (__compile _%expr166888%_)
                                                   '())))
                                 _%stx166837%_)
                                (_%$E166841166853%_)))
                          (_%$E166841166853%_)))
                    (_%$E166841166853%_)))
              (_%$E166841166853%_)))))
    (define __compile-if%
      (lambda (_%stx166769%_)
        (let* ((_%$e166771%_ _%stx166769%_)
               (_%$E166773166788%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166771%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166771%_))
              (let* ((_%$tgt166774166791%_
                      (let () (declare (not safe)) (__AST-e _%$e166771%_)))
                     (_%$hd166775166794%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166774166791%_)))
                     (_%$tl166776166797%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166774166791%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166776166797%_))
                    (let* ((_%$tgt166777166801%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166776166797%_)))
                           (_%$hd166778166804%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166777166801%_)))
                           (_%$tl166779166807%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166777166801%_)))
                           (_%p166811%_ _%$hd166778166804%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl166779166807%_))
                          (let* ((_%$tgt166780166813%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166779166807%_)))
                                 (_%$hd166781166816%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt166780166813%_)))
                                 (_%$tl166782166819%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt166780166813%_)))
                                 (_%t166823%_ _%$hd166781166816%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl166782166819%_))
                                (let* ((_%$tgt166783166825%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl166782166819%_)))
                                       (_%$hd166784166828%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt166783166825%_)))
                                       (_%$tl166785166831%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt166783166825%_)))
                                       (_%f166835%_ _%$hd166784166828%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl166785166831%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p166811%_)
                                                   (cons (__compile
                                                          _%t166823%_)
                                                         (cons (__compile
                                                                _%f166835%_)
                                                               '()))))
                                       _%stx166769%_)
                                      (_%$E166773166788%_)))
                                (_%$E166773166788%_)))
                          (_%$E166773166788%_)))
                    (_%$E166773166788%_)))
              (_%$E166773166788%_)))))
    (define __compile-quote%
      (lambda (_%stx166731%_)
        (let* ((_%$e166733%_ _%stx166731%_)
               (_%$E166735166744%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166733%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166733%_))
              (let* ((_%$tgt166736166747%_
                      (let () (declare (not safe)) (__AST-e _%$e166733%_)))
                     (_%$hd166737166750%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166736166747%_)))
                     (_%$tl166738166753%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166736166747%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166738166753%_))
                    (let* ((_%$tgt166739166757%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166738166753%_)))
                           (_%$hd166740166760%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166739166757%_)))
                           (_%$tl166741166763%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166739166757%_)))
                           (_%e166767%_ _%$hd166740166760%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166741166763%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e166767%_))
                                       '()))
                           _%stx166731%_)
                          (_%$E166735166744%_)))
                    (_%$E166735166744%_)))
              (_%$E166735166744%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx166693%_)
        (let* ((_%$e166695%_ _%stx166693%_)
               (_%$E166697166706%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166695%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166695%_))
              (let* ((_%$tgt166698166709%_
                      (let () (declare (not safe)) (__AST-e _%$e166695%_)))
                     (_%$hd166699166712%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166698166709%_)))
                     (_%$tl166700166715%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166698166709%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166700166715%_))
                    (let* ((_%$tgt166701166719%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166700166715%_)))
                           (_%$hd166702166722%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166701166719%_)))
                           (_%$tl166703166725%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166701166719%_)))
                           (_%e166729%_ _%$hd166702166722%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166703166725%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e166729%_ '()))
                           _%stx166693%_)
                          (_%$E166697166706%_)))
                    (_%$E166697166706%_)))
              (_%$E166697166706%_)))))
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
