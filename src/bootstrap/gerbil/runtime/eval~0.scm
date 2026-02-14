(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1771093448)
  (begin
    (define __syntax::t
      (let ((__tmp168781 (list)) (__tmp168780 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp168781
         '(e id)
         __tmp168780
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args168585%_
        (apply make-instance __syntax::t _%$args168585%_)))
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
      (let ((__tmp168783 (list __syntax::t))
            (__tmp168782 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp168783
         '()
         __tmp168782
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args168582%_
        (apply make-instance __core-form::t _%$args168582%_)))
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
      (let ((__tmp168785 (list __core-form::t))
            (__tmp168784 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp168785
         '()
         __tmp168784
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args168579%_
        (apply make-instance __core-expression::t _%$args168579%_)))
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
      (let ((__tmp168787 (list __core-form::t))
            (__tmp168786 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp168787
         '()
         __tmp168786
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args168576%_
        (apply make-instance __core-special-form::t _%$args168576%_)))
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
      (lambda (_%id168550%_)
        (let* ((_%h168552%_ __core)
               (_%key168555%_
                (let () (declare (not safe)) (__AST-e _%id168550%_)))
               (_%h168562%_
                (let ((_%$obj168559%_ _%h168552%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168559%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168559%_)))
                           '#t)
                      _%$obj168559%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168559%_)))))
               (_%h168564%_ _%h168562%_))
          (declare (not safe))
          (__hash-get _%h168564%_ _%key168555%_))))
    (define __core-bound-id?__%
      (lambda (_%id168533%_ _%is?168534%_)
        (let ((_%$e168536%_ (__core-resolve _%id168533%_)))
          (if _%$e168536%_ (_%is?168534%_ _%$e168536%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id168543%_)
        (let ((_%is?168545%_ true))
          (__core-bound-id?__% _%id168543%_ _%is?168545%_))))
    (define __core-bound-id?
      (lambda _g168788_
        (let ((_g168789_ (let () (declare (not safe)) (##length _g168788_))))
          (cond ((let () (declare (not safe)) (##fx= _g168789_ 1))
                 (apply __core-bound-id?__0 _g168788_))
                ((let () (declare (not safe)) (##fx= _g168789_ 2))
                 (apply __core-bound-id?__% _g168788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g168788_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id168488%_ _%e168489%_ _%make168490%_)
        (let* ((_%h168492%_ __core)
               (_%key168495%_ _%id168488%_)
               (_%value168498%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e168489%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e168489%_
                    (_%make168490%_ _%e168489%_ _%id168488%_)))
               (_%h168505%_
                (let ((_%$obj168502%_ _%h168492%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168502%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168502%_)))
                           '#t)
                      _%$obj168502%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168502%_)))))
               (_%h168507%_ _%h168505%_))
          (declare (not safe))
          (__hash-put! _%h168507%_ _%key168495%_ _%value168498%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id168523%_ _%e168524%_)
        (let ((_%make168526%_ make-__syntax))
          (__core-bind-syntax!__% _%id168523%_ _%e168524%_ _%make168526%_))))
    (define __core-bind-syntax!
      (lambda _g168790_
        (let ((_g168791_ (let () (declare (not safe)) (##length _g168790_))))
          (cond ((let () (declare (not safe)) (##fx= _g168791_ 2))
                 (apply __core-bind-syntax!__0 _g168790_))
                ((let () (declare (not safe)) (##fx= _g168791_ 3))
                 (apply __core-bind-syntax!__% _g168790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g168790_))))))
    (define __SRC__%
      (lambda (_%e168468%_ _%src-stx168469%_)
        (if (or (pair? _%e168468%_) (symbol? _%e168468%_))
            (let ((__tmp168792
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx168469%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx168469%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e168468%_ __tmp168792))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e168468%_ 'gerbil#AST::t))
                (let ((__tmp168794
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e168468%_ '1 '#f '#f)))
                      (__tmp168793
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e168468%_)))))
                  (declare (not safe))
                  (##make-source __tmp168794 __tmp168793))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e168468%_))))))
    (define __SRC__0
      (lambda (_%e168480%_)
        (let ((_%src-stx168482%_ '#f))
          (__SRC__% _%e168480%_ _%src-stx168482%_))))
    (define __SRC
      (lambda _g168795_
        (let ((_g168796_ (let () (declare (not safe)) (##length _g168795_))))
          (cond ((let () (declare (not safe)) (##fx= _g168796_ 1))
                 (apply __SRC__0 _g168795_))
                ((let () (declare (not safe)) (##fx= _g168796_ 2))
                 (apply __SRC__% _g168795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g168795_))))))
    (define __locat
      (lambda (_%loc168465%_)
        (if (let () (declare (not safe)) (##locat? _%loc168465%_))
            _%loc168465%_
            '#f)))
    (define __check-values
      (lambda (_%obj168460%_ _%k168461%_)
        (let ((_%count168463%_
               (if (let () (declare (not safe)) (##values? _%obj168460%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj168460%_))
                   '1)))
          (if (fx= _%count168463%_ _%k168461%_)
              '#!void
              (let ((__tmp168798
                     (if (fx< _%count168463%_ _%k168461%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp168797
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj168460%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj168460%_))
                         _%obj168460%_)))
                (declare (not safe))
                (error __tmp168798 __tmp168797 _%k168461%_))))))
    (define __compile
      (lambda (_%stx168429%_)
        (let* ((_%$e168431%_ _%stx168429%_)
               (_%$E168433168439%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168431%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168431%_))
              (let* ((_%$tgt168434168442%_
                      (let () (declare (not safe)) (__AST-e _%$e168431%_)))
                     (_%$hd168435168445%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168434168442%_)))
                     (_%$tl168436168448%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168434168442%_)))
                     (_%form168452%_ _%$hd168435168445%_)
                     (_%$e168454%_ (__core-resolve _%form168452%_)))
                (if _%$e168454%_
                    ((lambda (_%bind168457%_)
                       ((##structure-ref _%bind168457%_ '1 __syntax::t '#f)
                        _%stx168429%_))
                     _%$e168454%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx168429%_
                       _%form168452%_))))
              (_%$E168433168439%_)))))
    (define __compile-error__%
      (lambda (_%stx168416%_ _%detail168417%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx168416%_
           _%detail168417%_))))
    (define __compile-error__0
      (lambda (_%stx168422%_)
        (let ((_%detail168424%_ '#f))
          (__compile-error__% _%stx168422%_ _%detail168424%_))))
    (define __compile-error
      (lambda _g168799_
        (let ((_g168800_ (let () (declare (not safe)) (##length _g168799_))))
          (cond ((let () (declare (not safe)) (##fx= _g168800_ 1))
                 (apply __compile-error__0 _g168799_))
                ((let () (declare (not safe)) (##fx= _g168800_ 2))
                 (apply __compile-error__% _g168799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g168799_))))))
    (define __compile-ignore%
      (lambda (_%stx168413%_) (__SRC__% ''#!void _%stx168413%_)))
    (define __compile-begin%
      (lambda (_%stx168388%_)
        (let* ((_%$e168390%_ _%stx168388%_)
               (_%$E168392168398%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168390%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168390%_))
              (let* ((_%$tgt168393168401%_
                      (let () (declare (not safe)) (__AST-e _%$e168390%_)))
                     (_%$hd168394168404%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168393168401%_)))
                     (_%$tl168395168407%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168393168401%_)))
                     (_%body168411%_ _%$tl168395168407%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body168411%_))
                 _%stx168388%_))
              (_%$E168392168398%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx168363%_)
        (let* ((_%$e168365%_ _%stx168363%_)
               (_%$E168367168373%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168365%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168365%_))
              (let* ((_%$tgt168368168376%_
                      (let () (declare (not safe)) (__AST-e _%$e168365%_)))
                     (_%$hd168369168379%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168368168376%_)))
                     (_%$tl168370168382%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168368168376%_)))
                     (_%body168386%_ _%$tl168370168382%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body168386%_)))
                 _%stx168363%_))
              (_%$E168367168373%_)))))
    (define __compile-import%
      (lambda (_%stx168338%_)
        (let* ((_%$e168340%_ _%stx168338%_)
               (_%$E168342168348%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168340%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168340%_))
              (let* ((_%$tgt168343168351%_
                      (let () (declare (not safe)) (__AST-e _%$e168340%_)))
                     (_%$hd168344168354%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168343168351%_)))
                     (_%$tl168345168357%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168343168351%_)))
                     (_%body168361%_ _%$tl168345168357%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body168361%_ '())) '()))
                 _%stx168338%_))
              (_%$E168342168348%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx168285%_)
        (let* ((_%$e168287%_ _%stx168285%_)
               (_%$E168289168301%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168287%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168287%_))
              (let* ((_%$tgt168290168304%_
                      (let () (declare (not safe)) (__AST-e _%$e168287%_)))
                     (_%$hd168291168307%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168290168304%_)))
                     (_%$tl168292168310%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168290168304%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168292168310%_))
                    (let* ((_%$tgt168293168314%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168292168310%_)))
                           (_%$hd168294168317%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168293168314%_)))
                           (_%$tl168295168320%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168293168314%_)))
                           (_%ann168324%_ _%$hd168294168317%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168295168320%_))
                          (let* ((_%$tgt168296168326%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168295168320%_)))
                                 (_%$hd168297168329%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168296168326%_)))
                                 (_%$tl168298168332%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168296168326%_)))
                                 (_%expr168336%_ _%$hd168297168329%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168298168332%_))
                                        '())
                                (__compile _%expr168336%_)
                                (_%$E168289168301%_)))
                          (_%$E168289168301%_)))
                    (_%$E168289168301%_)))
              (_%$E168289168301%_)))))
    (define __compile-define-values%
      (lambda (_%stx168176%_)
        (let* ((_%$e168178%_ _%stx168176%_)
               (_%$E168180168192%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168178%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168178%_))
              (let* ((_%$tgt168181168195%_
                      (let () (declare (not safe)) (__AST-e _%$e168178%_)))
                     (_%$hd168182168198%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168181168195%_)))
                     (_%$tl168183168201%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168181168195%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168183168201%_))
                    (let* ((_%$tgt168184168205%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168183168201%_)))
                           (_%$hd168185168208%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168184168205%_)))
                           (_%$tl168186168211%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168184168205%_)))
                           (_%hd168215%_ _%$hd168185168208%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168186168211%_))
                          (let* ((_%$tgt168187168217%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168186168211%_)))
                                 (_%$hd168188168220%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168187168217%_)))
                                 (_%$tl168189168223%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168187168217%_)))
                                 (_%expr168227%_ _%$hd168188168220%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168189168223%_))
                                        '())
                                (let* ((_%$e168229%_ _%hd168215%_)
                                       (_%$E168231168272%_
                                        (lambda ()
                                          (let ((_%$E168232168257%_
                                                 (lambda ()
                                                   (let* ((_%$E168233168244%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e168229%_))))
                  (_%ids168247%_ _%hd168215%_)
                  (_%len168249%_ (length _%ids168247%_))
                  (_%tmp168251%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp168251%_
                                       (cons (__compile _%expr168227%_) '())))
                           _%stx168176%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp168251%_
                                             (cons _%len168249%_ '())))
                                 _%stx168176%_)
                                (let ((__tmp168801
                                       (let ((__tmp168803
                                              (lambda (_%id168254%_
                                                       _%k168255%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id168254%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168254%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp168251%_
                                           (cons _%k168255%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx168176%_)
                                                    '#f)))
                                             (__tmp168802
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len168249%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp168803
                                          _%ids168247%_
                                          __tmp168802))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp168801)))))
              _%stx168176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e168229%_))
                                                (let* ((_%$tgt168234168260%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e168229%_)))
                                                       (_%$hd168235168263%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt168234168260%_)))
                                                       (_%$tl168236168266%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt168234168260%_)))
                                                       (_%id168270%_
                                                        _%$hd168235168263%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl168236168266%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id168270%_)
                           (cons (__compile _%expr168227%_) '())))
               _%stx168176%_)
              (_%$E168232168257%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E168232168257%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e168229%_))
                                      (let* ((_%$tgt168237168275%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e168229%_)))
                                             (_%$hd168238168278%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168237168275%_)))
                                             (_%$tl168239168281%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168237168275%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd168238168278%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl168239168281%_))
                                                        '())
                                                (__compile _%expr168227%_)
                                                (_%$E168231168272%_))
                                            (_%$E168231168272%_)))
                                      (_%$E168231168272%_)))
                                (_%$E168180168192%_)))
                          (_%$E168180168192%_)))
                    (_%$E168180168192%_)))
              (_%$E168180168192%_)))))
    (define __compile-head-id
      (lambda (_%e168174%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e168174%_))
             _%e168174%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd168131%_)
        (let _%recur168133%_ ((_%rest168135%_ _%hd168131%_))
          (let* ((_%$e168137%_ _%rest168135%_)
                 (_%$E168139168157%_
                  (lambda ()
                    (let ((_%$E168140168154%_
                           (lambda ()
                             (let* ((_%$E168141168149%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e168137%_))))
                                    (_%tail168152%_ _%$e168137%_))
                               (__compile-head-id _%tail168152%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168137%_))
                                  '())
                          '()
                          (_%$E168140168154%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168137%_))
                (let* ((_%$tgt168142168160%_
                        (let () (declare (not safe)) (__AST-e _%$e168137%_)))
                       (_%$hd168143168163%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168142168160%_)))
                       (_%$tl168144168166%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168142168160%_)))
                       (_%hd168170%_ _%$hd168143168163%_)
                       (_%rest168172%_ _%$tl168144168166%_))
                  (cons (__compile-head-id _%hd168170%_)
                        (_%recur168133%_ _%rest168172%_)))
                (_%$E168139168157%_))))))
    (define __compile-lambda%
      (lambda (_%stx168078%_)
        (let* ((_%$e168080%_ _%stx168078%_)
               (_%$E168082168094%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168080%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168080%_))
              (let* ((_%$tgt168083168097%_
                      (let () (declare (not safe)) (__AST-e _%$e168080%_)))
                     (_%$hd168084168100%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168083168097%_)))
                     (_%$tl168085168103%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168083168097%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168085168103%_))
                    (let* ((_%$tgt168086168107%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168085168103%_)))
                           (_%$hd168087168110%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168086168107%_)))
                           (_%$tl168088168113%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168086168107%_)))
                           (_%hd168117%_ _%$hd168087168110%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168088168113%_))
                          (let* ((_%$tgt168089168119%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168088168113%_)))
                                 (_%$hd168090168122%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168089168119%_)))
                                 (_%$tl168091168125%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168089168119%_)))
                                 (_%body168129%_ _%$hd168090168122%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168091168125%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd168117%_)
                                             (cons (__compile _%body168129%_)
                                                   '())))
                                 _%stx168078%_)
                                (_%$E168082168094%_)))
                          (_%$E168082168094%_)))
                    (_%$E168082168094%_)))
              (_%$E168082168094%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx167843%_)
        (letrec ((_%variadic?167845%_
                  (lambda (_%hd168043%_)
                    (let* ((_%$e168045%_ _%hd168043%_)
                           (_%$E168047168063%_
                            (lambda ()
                              (let ((_%$E168048168060%_
                                     (lambda ()
                                       (let ((_%$E168049168057%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e168045%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e168045%_))
                                            '())
                                    '#f
                                    (_%$E168048168060%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168045%_))
                          (let* ((_%$tgt168050168066%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168045%_)))
                                 (_%$hd168051168069%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168050168066%_)))
                                 (_%$tl168052168072%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168050168066%_)))
                                 (_%rest168076%_ _%$tl168052168072%_))
                            (_%variadic?167845%_ _%rest168076%_))
                          (_%$E168047168063%_)))))
                 (_%arity167846%_
                  (lambda (_%hd167981%_)
                    (let _%lp167983%_ ((_%rest167985%_ _%hd167981%_)
                                       (_%k167986%_ '0))
                      (let* ((_%$e167988%_ _%rest167985%_)
                             (_%$E167990168001%_
                              (lambda ()
                                (let ((_%$E167991167998%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e167988%_)))))
                                  _%k167986%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e167988%_))
                            (let* ((_%$tgt167992168004%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e167988%_)))
                                   (_%$hd167993168007%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt167992168004%_)))
                                   (_%$tl167994168010%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt167992168004%_)))
                                   (_%rest168014%_ _%$tl167994168010%_))
                              (_%lp167983%_
                               _%rest168014%_
                               (let ((_%x168016%_ _%k167986%_))
                                 (if (fixnum? _%x168016%_)
                                     (let ((_%x168021%_ _%x168016%_))
                                       (declare (not safe))
                                       (__fx1+ _%x168021%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x168016%_)
                                       '#!void)))))
                            (_%$E167990168001%_))))))
                 (_%generate167847%_
                  (lambda (_%rest167908%_ _%args167909%_ _%len167910%_)
                    (let* ((_%$e167912%_ _%rest167908%_)
                           (_%$E167914167925%_
                            (lambda ()
                              (let ((_%$E167915167922%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e167912%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args167909%_ '())))
                                 _%stx167843%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e167912%_))
                          (let* ((_%$tgt167916167928%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e167912%_)))
                                 (_%$hd167917167931%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167916167928%_)))
                                 (_%$tl167918167934%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167916167928%_)))
                                 (_%clause167938%_ _%$hd167917167931%_)
                                 (_%rest167940%_ _%$tl167918167934%_)
                                 (_%$e167942%_ _%clause167938%_)
                                 (_%$E167944167953%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e167942%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e167942%_))
                                (let* ((_%$tgt167945167956%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e167942%_)))
                                       (_%$hd167946167959%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167945167956%_)))
                                       (_%$tl167947167962%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167945167956%_)))
                                       (_%hd167966%_ _%$hd167946167959%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl167947167962%_))
                                      (let* ((_%$tgt167948167968%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167947167962%_)))
                                             (_%$hd167949167971%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt167948167968%_)))
                                             (_%$tl167950167974%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt167948167968%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl167950167974%_))
                                                    '())
                                            (let ((_%clen167978%_
                                                   (_%arity167846%_
                                                    _%hd167966%_))
                                                  (_%cmp167979%_
                                                   (if (_%variadic?167845%_
                                                        _%hd167966%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp167979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len167910%_ (cons _%clen167978%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause167938%_))
                                      (cons _%args167909%_ '())))
                          _%stx167843%_)
                         (cons (_%generate167847%_
                                _%rest167940%_
                                _%args167909%_
                                _%len167910%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx167843%_))
                                            (_%$E167944167953%_)))
                                      (_%$E167944167953%_)))
                                (_%$E167944167953%_)))
                          (_%$E167914167925%_))))))
          (let* ((_%$e167849%_ _%stx167843%_)
                 (_%$E167851167883%_
                  (lambda ()
                    (let ((_%$E167852167865%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167849%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e167849%_))
                          (let* ((_%$tgt167853167868%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e167849%_)))
                                 (_%$hd167854167871%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167853167868%_)))
                                 (_%$tl167855167874%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167853167868%_)))
                                 (_%clauses167878%_ _%$tl167855167874%_))
                            (let ((_%args167880%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx167843%_))
                                  (_%len167881%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx167843%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args167880%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len167881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args167880%_ '()))
                                         _%stx167843%_)
                                        '()))
                            '())
                      (cons (_%generate167847%_
                             _%clauses167878%_
                             _%args167880%_
                             _%len167881%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx167843%_)
                                                 '())))
                               _%stx167843%_)))
                          (_%$E167852167865%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e167849%_))
                (let* ((_%$tgt167856167886%_
                        (let () (declare (not safe)) (__AST-e _%$e167849%_)))
                       (_%$hd167857167889%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt167856167886%_)))
                       (_%$tl167858167892%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt167856167886%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl167858167892%_))
                      (let* ((_%$tgt167859167896%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl167858167892%_)))
                             (_%$hd167860167899%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt167859167896%_)))
                             (_%$tl167861167902%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt167859167896%_)))
                             (_%clause167906%_ _%$hd167860167899%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl167861167902%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause167906%_))
                            (_%$E167851167883%_)))
                      (_%$E167851167883%_)))
                (_%$E167851167883%_))))))
    (define __compile-let-form
      (lambda (_%stx167612%_ _%compile-simple167613%_ _%compile-values167614%_)
        (letrec ((_%simple-bind?167616%_
                  (lambda (_%hd167801%_)
                    (let* ((_%hd167802167812%_ _%hd167801%_)
                           (_%else167805167820%_ (lambda () '#f)))
                      (let ((_%K167808167833%_ (lambda (_%id167831%_) '#t))
                            (_%K167807167825%_ (lambda () '#t)))
                        (let ((_%try-match167804167828%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd167802167812%_ '#f))
                                     (_%K167807167825%_)
                                     (_%else167805167820%_)))))
                          (if (pair? _%hd167802167812%_)
                              (let ((_%tl167810167838%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd167802167812%_)))
                                    (_%hd167809167836%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd167802167812%_))))
                                (if (null? _%tl167810167838%_)
                                    (let ((_%id167841%_ _%hd167809167836%_))
                                      (_%K167808167833%_ _%id167841%_))
                                    (_%try-match167804167828%_)))
                              (_%try-match167804167828%_)))))))
                 (_%car-e167617%_
                  (lambda (_%hd167799%_)
                    (if (pair? _%hd167799%_)
                        (let () (declare (not safe)) (##car _%hd167799%_))
                        _%hd167799%_))))
          (let* ((_%$e167619%_ _%stx167612%_)
                 (_%$E167621167764%_
                  (lambda ()
                    (let ((_%$E167622167644%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167619%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e167619%_))
                          (let* ((_%$tgt167623167647%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e167619%_)))
                                 (_%$hd167624167650%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167623167647%_)))
                                 (_%$tl167625167653%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167623167647%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl167625167653%_))
                                (let* ((_%$tgt167626167657%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167625167653%_)))
                                       (_%$hd167627167660%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167626167657%_)))
                                       (_%$tl167628167663%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167626167657%_)))
                                       (_%hd167667%_ _%$hd167627167660%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl167628167663%_))
                                      (let* ((_%$tgt167629167669%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167628167663%_)))
                                             (_%$hd167630167672%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt167629167669%_)))
                                             (_%$tl167631167675%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt167629167669%_)))
                                             (_%body167679%_
                                              _%$hd167630167672%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl167631167675%_))
                                                    '())
                                            (let* ((_%hd-ids167719%_
                                                    (map (lambda (_%bind167681%_)
                                                           (let* ((_%$e167683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind167681%_)
                          (_%$E167685167694%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167683%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e167683%_))
                         (let* ((_%$tgt167686167697%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e167683%_)))
                                (_%$hd167687167700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt167686167697%_)))
                                (_%$tl167688167703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt167686167697%_)))
                                (_%ids167707%_ _%$hd167687167700%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl167688167703%_))
                               (let* ((_%$tgt167689167709%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl167688167703%_)))
                                      (_%$hd167690167712%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt167689167709%_)))
                                      (_%$tl167691167715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt167689167709%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl167691167715%_))
                                             '())
                                     _%ids167707%_
                                     (_%$E167685167694%_)))
                               (_%$E167685167694%_)))
                         (_%$E167685167694%_))))
                 _%hd167667%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs167759%_
                                                    (map (lambda (_%bind167721%_)
                                                           (let* ((_%$e167723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind167721%_)
                          (_%$E167725167734%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167723%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e167723%_))
                         (let* ((_%$tgt167726167737%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e167723%_)))
                                (_%$hd167727167740%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt167726167737%_)))
                                (_%$tl167728167743%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt167726167737%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl167728167743%_))
                               (let* ((_%$tgt167729167747%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl167728167743%_)))
                                      (_%$hd167730167750%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt167729167747%_)))
                                      (_%$tl167731167753%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt167729167747%_)))
                                      (_%expr167757%_ _%$hd167730167750%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl167731167753%_))
                                             '())
                                     (__compile _%expr167757%_)
                                     (_%$E167725167734%_)))
                               (_%$E167725167734%_)))
                         (_%$E167725167734%_))))
                 _%hd167667%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body167761%_
                                                    (__compile
                                                     _%body167679%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?167616%_
                                                     _%hd-ids167719%_))
                                                  (_%compile-simple167613%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e167617%_
                                                            _%hd-ids167719%_))
                                                   _%exprs167759%_
                                                   _%body167761%_)
                                                  (_%compile-values167614%_
                                                   _%hd-ids167719%_
                                                   _%exprs167759%_
                                                   _%body167761%_)))
                                            (_%$E167622167644%_)))
                                      (_%$E167622167644%_)))
                                (_%$E167622167644%_)))
                          (_%$E167622167644%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e167619%_))
                (let* ((_%$tgt167632167767%_
                        (let () (declare (not safe)) (__AST-e _%$e167619%_)))
                       (_%$hd167633167770%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt167632167767%_)))
                       (_%$tl167634167773%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt167632167767%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl167634167773%_))
                      (let* ((_%$tgt167635167777%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl167634167773%_)))
                             (_%$hd167636167780%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt167635167777%_)))
                             (_%$tl167637167783%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt167635167777%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd167636167780%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl167637167783%_))
                                (let* ((_%$tgt167638167787%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167637167783%_)))
                                       (_%$hd167639167790%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167638167787%_)))
                                       (_%$tl167640167793%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167638167787%_)))
                                       (_%body167797%_ _%$hd167639167790%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167640167793%_))
                                              '())
                                      (__compile _%body167797%_)
                                      (_%$E167621167764%_)))
                                (_%$E167621167764%_))
                            (_%$E167621167764%_)))
                      (_%$E167621167764%_)))
                (_%$E167621167764%_))))))
    (define __compile-let-values%
      (lambda (_%stx167424%_)
        (letrec ((_%compile-simple167426%_
                  (lambda (_%hd-ids167608%_ _%exprs167609%_ _%body167610%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp168804
                                        (map __compile-head-id
                                             _%hd-ids167608%_)))
                                   (declare (not safe))
                                   (##map list __tmp168804 _%exprs167609%_))
                                 (cons _%body167610%_ '())))
                     _%stx167424%_)))
                 (_%compile-values167427%_
                  (lambda (_%hd-ids167523%_ _%exprs167524%_ _%body167525%_)
                    (let _%lp167527%_ ((_%rest167529%_ _%hd-ids167523%_)
                                       (_%exprs167530%_ _%exprs167524%_)
                                       (_%bind167531%_ '())
                                       (_%post167532%_ '()))
                      (let* ((_%rest167533167547%_ _%rest167529%_)
                             (_%else167536167555%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind167531%_)
                                             (cons (_%compile-post167428%_
                                                    _%post167532%_
                                                    _%body167525%_)
                                                   '())))
                                 _%stx167424%_))))
                        (let ((_%K167541167591%_
                               (lambda (_%rest167588%_ _%id167589%_)
                                 (_%lp167527%_
                                  _%rest167588%_
                                  (cdr _%exprs167530%_)
                                  (cons (cons (__compile-head-id _%id167589%_)
                                              (cons (car _%exprs167530%_) '()))
                                        _%bind167531%_)
                                  _%post167532%_)))
                              (_%K167538167573%_
                               (lambda (_%rest167559%_ _%hd167560%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167560%_))
                                     (_%lp167527%_
                                      _%rest167559%_
                                      (cdr _%exprs167530%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd167560%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs167530%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind167531%_)
                                      _%post167532%_)
                                     (if (list? _%hd167560%_)
                                         (let* ((_%len167564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd167560%_)))
                                                (_%tmp167566%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp167527%_
                                            _%rest167559%_
                                            (cdr _%exprs167530%_)
                                            (cons (cons _%tmp167566%_
                                                        (cons (car _%exprs167530%_)
                                                              '()))
                                                  _%bind167531%_)
                                            (cons (cons _%tmp167566%_
                                                        (cons _%len167564%_
                                                              (let ((__tmp168806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id167569%_ _%k167570%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id167569%_))
                                   (cons (__SRC__0 _%id167569%_) _%k167570%_)
                                   '#f)))
                            (__tmp168805
                             (let ()
                               (declare (not safe))
                               (##iota _%len167564%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp168806 _%hd167560%_ __tmp168805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post167532%_)))
                                         (__compile-error__%
                                          _%stx167424%_
                                          _%hd167560%_))))))
                          (if (pair? _%rest167533167547%_)
                              (let ((_%tl167543167596%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167533167547%_)))
                                    (_%hd167542167594%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167533167547%_))))
                                (if (pair? _%hd167542167594%_)
                                    (let ((_%tl167545167601%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167542167594%_)))
                                          (_%hd167544167599%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167542167594%_))))
                                      (if (null? _%tl167545167601%_)
                                          (let ((_%id167604%_
                                                 _%hd167544167599%_)
                                                (_%rest167606%_
                                                 _%tl167543167596%_))
                                            (_%K167541167591%_
                                             _%rest167606%_
                                             _%id167604%_))
                                          (let ((_%hd167581%_
                                                 _%hd167542167594%_)
                                                (_%rest167583%_
                                                 _%tl167543167596%_))
                                            (_%K167538167573%_
                                             _%rest167583%_
                                             _%hd167581%_))))
                                    (let ((_%hd167581%_ _%hd167542167594%_)
                                          (_%rest167583%_ _%tl167543167596%_))
                                      (_%K167538167573%_
                                       _%rest167583%_
                                       _%hd167581%_))))
                              (_%else167536167555%_)))))))
                 (_%compile-post167428%_
                  (lambda (_%post167430%_ _%body167431%_)
                    (let _%lp167433%_ ((_%rest167435%_ _%post167430%_)
                                       (_%check167436%_ '())
                                       (_%bind167437%_ '()))
                      (let* ((_%rest167438167450%_ _%rest167435%_)
                             (_%else167440167458%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp168807
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind167437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body167431%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx167424%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp168807
                                          _%check167436%_)))
                                 _%stx167424%_)))
                             (_%K167442167497%_
                              (lambda (_%rest167461%_
                                       _%init167462%_
                                       _%len167463%_
                                       _%tmp167464%_)
                                (_%lp167433%_
                                 _%rest167461%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167464%_
                                                    (cons _%len167463%_ '())))
                                        _%stx167424%_)
                                       _%check167436%_)
                                 (let ((__tmp168808
                                        (lambda (_%hd167466%_ _%r167467%_)
                                          (let* ((_%hd167468167475%_
                                                  _%hd167466%_)
                                                 (_%E167470167479%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd167468167475%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K167471167485%_
                                                  (lambda (_%k167482%_
                                                           _%id167483%_)
                                                    (cons (cons _%id167483%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp167464%_
                                          (cons _%k167482%_ '())))
                              '()))
                  _%r167467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd167468167475%_)
                                                (let ((_%hd167472167488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd167468167475%_)))
                                                      (_%tl167473167490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd167468167475%_))))
                                                  (let* ((_%id167493%_
                                                          _%hd167472167488%_)
                                                         (_%k167495%_
                                                          _%tl167473167490%_))
                                                    (_%K167471167485%_
                                                     _%k167495%_
                                                     _%id167493%_)))
                                                (_%E167470167479%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp168808
                                    _%bind167437%_
                                    _%init167462%_))))))
                        (if (pair? _%rest167438167450%_)
                            (let ((_%hd167443167500%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167438167450%_)))
                                  (_%tl167444167502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167438167450%_))))
                              (if (pair? _%hd167443167500%_)
                                  (let ((_%hd167445167505%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd167443167500%_)))
                                        (_%tl167446167507%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd167443167500%_))))
                                    (let ((_%tmp167510%_ _%hd167445167505%_))
                                      (if (pair? _%tl167446167507%_)
                                          (let ((_%hd167447167512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl167446167507%_)))
                                                (_%tl167448167514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167446167507%_))))
                                            (let* ((_%len167517%_
                                                    _%hd167447167512%_)
                                                   (_%init167519%_
                                                    _%tl167448167514%_)
                                                   (_%rest167521%_
                                                    _%tl167444167502%_))
                                              (_%K167442167497%_
                                               _%rest167521%_
                                               _%init167519%_
                                               _%len167517%_
                                               _%tmp167510%_)))
                                          (_%else167440167458%_))))
                                  (_%else167440167458%_)))
                            (_%else167440167458%_)))))))
          (__compile-let-form
           _%stx167424%_
           _%compile-simple167426%_
           _%compile-values167427%_))))
    (define __compile-letrec-values%
      (lambda (_%stx167221%_)
        (letrec ((_%compile-simple167223%_
                  (lambda (_%hd-ids167420%_ _%exprs167421%_ _%body167422%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp168809
                                        (map __compile-head-id
                                             _%hd-ids167420%_)))
                                   (declare (not safe))
                                   (##map list __tmp168809 _%exprs167421%_))
                                 (cons _%body167422%_ '())))
                     _%stx167221%_)))
                 (_%compile-values167224%_
                  (lambda (_%hd-ids167331%_ _%exprs167332%_ _%body167333%_)
                    (let _%lp167335%_ ((_%rest167337%_ _%hd-ids167331%_)
                                       (_%exprs167338%_ _%exprs167332%_)
                                       (_%pre167339%_ '())
                                       (_%bind167340%_ '())
                                       (_%post167341%_ '()))
                      (let* ((_%rest167342167356%_ _%rest167337%_)
                             (_%else167345167364%_
                              (lambda ()
                                (_%compile-inner167225%_
                                 _%pre167339%_
                                 _%bind167340%_
                                 _%post167341%_
                                 _%body167333%_))))
                        (let ((_%K167350167403%_
                               (lambda (_%rest167400%_ _%id167401%_)
                                 (_%lp167335%_
                                  _%rest167400%_
                                  (cdr _%exprs167338%_)
                                  _%pre167339%_
                                  (cons (cons (__compile-head-id _%id167401%_)
                                              (cons (car _%exprs167338%_) '()))
                                        _%bind167340%_)
                                  _%post167341%_)))
                              (_%K167347167385%_
                               (lambda (_%rest167368%_ _%hd167369%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167369%_))
                                     (_%lp167335%_
                                      _%rest167368%_
                                      (cdr _%exprs167338%_)
                                      _%pre167339%_
                                      (cons (cons (__compile-head-id
                                                   _%hd167369%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs167338%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind167340%_)
                                      _%post167341%_)
                                     (if (list? _%hd167369%_)
                                         (let* ((_%len167373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd167369%_)))
                                                (_%tmp167375%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp167335%_
                                            _%rest167368%_
                                            (cdr _%exprs167338%_)
                                            (let ((__tmp168810
                                                   (lambda (_%id167378%_
                                                            _%r167379%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id167378%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id167378%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r167379%_)
                 _%r167379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp168810
                                               _%pre167339%_
                                               _%hd167369%_))
                                            (cons (cons _%tmp167375%_
                                                        (cons (car _%exprs167338%_)
                                                              '()))
                                                  _%bind167340%_)
                                            (cons (cons _%tmp167375%_
                                                        (cons _%len167373%_
                                                              (let ((__tmp168812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id167381%_ _%k167382%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id167381%_))
                                   (cons (__SRC__0 _%id167381%_) _%k167382%_)
                                   '#f)))
                            (__tmp168811
                             (let ()
                               (declare (not safe))
                               (##iota _%len167373%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp168812 _%hd167369%_ __tmp168811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post167341%_)))
                                         (__compile-error__%
                                          _%stx167221%_
                                          _%hd167369%_))))))
                          (if (pair? _%rest167342167356%_)
                              (let ((_%tl167352167408%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167342167356%_)))
                                    (_%hd167351167406%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167342167356%_))))
                                (if (pair? _%hd167351167406%_)
                                    (let ((_%tl167354167413%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167351167406%_)))
                                          (_%hd167353167411%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167351167406%_))))
                                      (if (null? _%tl167354167413%_)
                                          (let ((_%id167416%_
                                                 _%hd167353167411%_)
                                                (_%rest167418%_
                                                 _%tl167352167408%_))
                                            (_%K167350167403%_
                                             _%rest167418%_
                                             _%id167416%_))
                                          (let ((_%hd167393%_
                                                 _%hd167351167406%_)
                                                (_%rest167395%_
                                                 _%tl167352167408%_))
                                            (_%K167347167385%_
                                             _%rest167395%_
                                             _%hd167393%_))))
                                    (let ((_%hd167393%_ _%hd167351167406%_)
                                          (_%rest167395%_ _%tl167352167408%_))
                                      (_%K167347167385%_
                                       _%rest167395%_
                                       _%hd167393%_))))
                              (_%else167345167364%_)))))))
                 (_%compile-inner167225%_
                  (lambda (_%pre167326%_
                           _%bind167327%_
                           _%post167328%_
                           _%body167329%_)
                    (if (null? _%pre167326%_)
                        (_%compile-bind167226%_
                         _%bind167327%_
                         _%post167328%_
                         _%body167329%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre167326%_)
                                     (cons (_%compile-bind167226%_
                                            _%bind167327%_
                                            _%post167328%_
                                            _%body167329%_)
                                           '())))
                         _%stx167221%_))))
                 (_%compile-bind167226%_
                  (lambda (_%bind167322%_ _%post167323%_ _%body167324%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind167322%_)
                                 (cons (_%compile-post167227%_
                                        _%post167323%_
                                        _%body167324%_)
                                       '())))
                     _%stx167221%_)))
                 (_%compile-post167227%_
                  (lambda (_%post167229%_ _%body167230%_)
                    (let _%lp167232%_ ((_%rest167234%_ _%post167229%_)
                                       (_%check167235%_ '())
                                       (_%bind167236%_ '()))
                      (let* ((_%rest167237167249%_ _%rest167234%_)
                             (_%else167239167257%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp168813
                                              (let ((__tmp168814
                                                     (cons _%body167230%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp168814
                                                 _%bind167236%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp168813
                                          _%check167235%_)))
                                 _%stx167221%_)))
                             (_%K167241167296%_
                              (lambda (_%rest167260%_
                                       _%init167261%_
                                       _%len167262%_
                                       _%tmp167263%_)
                                (_%lp167232%_
                                 _%rest167260%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167263%_
                                                    (cons _%len167262%_ '())))
                                        _%stx167221%_)
                                       _%check167235%_)
                                 (let ((__tmp168815
                                        (lambda (_%hd167265%_ _%r167266%_)
                                          (let* ((_%hd167267167274%_
                                                  _%hd167265%_)
                                                 (_%E167269167278%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd167267167274%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K167270167284%_
                                                  (lambda (_%k167281%_
                                                           _%id167282%_)
                                                    (cons (cons 'set!
                                                                (cons _%id167282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp167263%_
                                                (cons _%k167281%_ '())))
                                    '())))
                  _%r167266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd167267167274%_)
                                                (let ((_%hd167271167287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd167267167274%_)))
                                                      (_%tl167272167289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd167267167274%_))))
                                                  (let* ((_%id167292%_
                                                          _%hd167271167287%_)
                                                         (_%k167294%_
                                                          _%tl167272167289%_))
                                                    (_%K167270167284%_
                                                     _%k167294%_
                                                     _%id167292%_)))
                                                (_%E167269167278%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp168815
                                    _%bind167236%_
                                    _%init167261%_))))))
                        (if (pair? _%rest167237167249%_)
                            (let ((_%hd167242167299%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167237167249%_)))
                                  (_%tl167243167301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167237167249%_))))
                              (if (pair? _%hd167242167299%_)
                                  (let ((_%hd167244167304%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd167242167299%_)))
                                        (_%tl167245167306%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd167242167299%_))))
                                    (let ((_%tmp167309%_ _%hd167244167304%_))
                                      (if (pair? _%tl167245167306%_)
                                          (let ((_%hd167246167311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl167245167306%_)))
                                                (_%tl167247167313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167245167306%_))))
                                            (let* ((_%len167316%_
                                                    _%hd167246167311%_)
                                                   (_%init167318%_
                                                    _%tl167247167313%_)
                                                   (_%rest167320%_
                                                    _%tl167243167301%_))
                                              (_%K167241167296%_
                                               _%rest167320%_
                                               _%init167318%_
                                               _%len167316%_
                                               _%tmp167309%_)))
                                          (_%else167239167257%_))))
                                  (_%else167239167257%_)))
                            (_%else167239167257%_)))))))
          (__compile-let-form
           _%stx167221%_
           _%compile-simple167223%_
           _%compile-values167224%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx166972%_)
        (letrec ((_%compile-simple166974%_
                  (lambda (_%hd-ids167217%_ _%exprs167218%_ _%body167219%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp168816
                                        (map __compile-head-id
                                             _%hd-ids167217%_)))
                                   (declare (not safe))
                                   (##map list __tmp168816 _%exprs167218%_))
                                 (cons _%body167219%_ '())))
                     _%stx166972%_)))
                 (_%compile-values166975%_
                  (lambda (_%hd-ids167124%_ _%exprs167125%_ _%body167126%_)
                    (let _%lp167128%_ ((_%rest167130%_ _%hd-ids167124%_)
                                       (_%exprs167131%_ _%exprs167125%_)
                                       (_%bind167132%_ '())
                                       (_%post167133%_ '()))
                      (let* ((_%rest167134167148%_ _%rest167130%_)
                             (_%else167137167156%_
                              (lambda ()
                                (_%compile-bind166976%_
                                 _%bind167132%_
                                 _%post167133%_
                                 _%body167126%_))))
                        (let ((_%K167142167200%_
                               (lambda (_%rest167195%_ _%hd167196%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167196%_))
                                     (let ((_%id167198%_
                                            (__SRC__0 _%hd167196%_)))
                                       (_%lp167128%_
                                        _%rest167195%_
                                        (cdr _%exprs167131%_)
                                        (cons (cons _%id167198%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind167132%_)
                                        (cons (cons _%id167198%_
                                                    (cons (car _%exprs167131%_)
                                                          '()))
                                              _%post167133%_)))
                                     (_%lp167128%_
                                      _%rest167195%_
                                      (cdr _%exprs167131%_)
                                      _%bind167132%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs167131%_)
                                                        '()))
                                            _%post167133%_)))))
                              (_%K167139167180%_
                               (lambda (_%rest167160%_ _%hd167161%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167161%_))
                                     (let ((_%id167164%_
                                            (__SRC__0 _%hd167161%_)))
                                       (_%lp167128%_
                                        _%rest167160%_
                                        (cdr _%exprs167131%_)
                                        (cons (cons _%id167164%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind167132%_)
                                        (cons (cons _%id167164%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs167131%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post167133%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd167161%_))
                                         (if (list? _%hd167161%_)
                                             (let* ((_%len167168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd167161%_)))
                                                    (_%tmp167170%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp167128%_
                                                _%rest167160%_
                                                (cdr _%exprs167131%_)
                                                (let ((__tmp168817
                                                       (lambda (_%id167173%_
                                                                _%r167174%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id167173%_))
                     (cons (cons (__SRC__0 _%id167173%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r167174%_)
                     _%r167174%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp168817
                                                   _%bind167132%_
                                                   _%hd167161%_))
                                                (cons (cons _%tmp167170%_
                                                            (cons (car _%exprs167131%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len167168%_
                                (let ((__tmp168819
                                       (lambda (_%id167176%_ _%k167177%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id167176%_))
                                             (cons (__SRC__0 _%id167176%_)
                                                   _%k167177%_)
                                             '#f)))
                                      (__tmp168818
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len167168%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp168819
                                   _%hd167161%_
                                   __tmp168818)))))
              _%post167133%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx166972%_
                                              _%hd167161%_))
                                         (_%lp167128%_
                                          _%rest167160%_
                                          (cdr _%exprs167131%_)
                                          _%bind167132%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs167131%_)
                                                            '()))
                                                _%post167133%_)))))))
                          (if (pair? _%rest167134167148%_)
                              (let ((_%tl167144167205%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167134167148%_)))
                                    (_%hd167143167203%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167134167148%_))))
                                (if (pair? _%hd167143167203%_)
                                    (let ((_%tl167146167210%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167143167203%_)))
                                          (_%hd167145167208%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167143167203%_))))
                                      (if (null? _%tl167146167210%_)
                                          (let ((_%hd167213%_
                                                 _%hd167145167208%_)
                                                (_%rest167215%_
                                                 _%tl167144167205%_))
                                            (_%K167142167200%_
                                             _%rest167215%_
                                             _%hd167213%_))
                                          (let ((_%hd167188%_
                                                 _%hd167143167203%_)
                                                (_%rest167190%_
                                                 _%tl167144167205%_))
                                            (_%K167139167180%_
                                             _%rest167190%_
                                             _%hd167188%_))))
                                    (let ((_%hd167188%_ _%hd167143167203%_)
                                          (_%rest167190%_ _%tl167144167205%_))
                                      (_%K167139167180%_
                                       _%rest167190%_
                                       _%hd167188%_))))
                              (_%else167137167156%_)))))))
                 (_%compile-bind166976%_
                  (lambda (_%bind167120%_ _%post167121%_ _%body167122%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind167120%_)
                                 (cons (_%compile-post166977%_
                                        _%post167121%_
                                        _%body167122%_)
                                       '())))
                     _%stx166972%_)))
                 (_%compile-post166977%_
                  (lambda (_%post166979%_ _%body166980%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp168820
                                  (let ((__tmp168822
                                         (lambda (_%hd166982%_ _%r166983%_)
                                           (let* ((_%hd166984167007%_
                                                   _%hd166982%_)
                                                  (_%E166988167011%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd166984167007%_
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
                                             (let ((_%K167001167105%_
                                                    (lambda (_%expr167103%_)
                                                      (cons _%expr167103%_
                                                            _%r166983%_)))
                                                   (_%K166996167083%_
                                                    (lambda (_%expr167080%_
                                                             _%id167081%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id167081%_ (cons _%expr167080%_ '())))
                     _%stx166972%_)
                    _%r166983%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K166989167050%_
                                                    (lambda (_%init167015%_
                                                             _%len167016%_
                                                             _%expr167017%_
                                                             _%tmp167018%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp167018%_
                                             (cons _%expr167017%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167018%_
                                                    (cons _%len167016%_ '())))
                                        _%stx166972%_)
                                       (let ((__tmp168823
                                              (map (lambda (_%hd167020%_)
                                                     (let* ((_%hd167021167028%_
                                                             _%hd167020%_)
                                                            (_%E167023167032%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd167021167028%_
                                '([id . k])))
                       '#!void))
                    (_%K167024167038%_
                     (lambda (_%k167035%_ _%id167036%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id167036%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp167018%_
                                                      (cons _%k167035%_ '())))
                                          '())))
                        _%stx166972%_))))
               (if (pair? _%hd167021167028%_)
                   (let ((_%hd167025167041%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd167021167028%_)))
                         (_%tl167026167043%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd167021167028%_))))
                     (let* ((_%id167046%_ _%hd167025167041%_)
                            (_%k167048%_ _%tl167026167043%_))
                       (_%K167024167038%_ _%k167048%_ _%id167046%_)))
                   (_%E167023167032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init167015%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp168823)))))
                     _%stx166972%_)
                    _%r166983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match168678168679%_
                                                       (lambda (_%hd166990167053%_
                                                                _%tl166991167055%_
                                                                _%hd166992167060%_
                                                                _%tl166993167062%_)
                                                         (let ((_%tmp167058%_
                                                                _%hd166990167053%_)
                                                               (_%expr167065%_
                                                                _%hd166992167060%_))
                                                           (_%E166988167011%_))))
                                                      (_%__match168672168673%_
                                                       (lambda (_%hd166990167053%_
                                                                _%tl166991167055%_)
                                                         (let ((_%tmp167058%_
                                                                _%hd166990167053%_))
                                                           (_%E166988167011%_)))))
                                                 (if (pair? _%hd166984167007%_)
                                                     (let ((_%tl167003167110%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd166984167007%_)))
                                                           (_%hd167002167108%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd166984167007%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd167002167108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl167003167110%_)
                       (let ((_%tl167005167115%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl167003167110%_)))
                             (_%hd167004167113%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl167003167110%_))))
                         (if (null? _%tl167005167115%_)
                             (let ((_%expr167118%_ _%hd167004167113%_))
                               (_%K167001167105%_ _%expr167118%_))
                             (if (pair? _%tl167005167115%_)
                                 (let ((_%tl166995167069%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl167005167115%_)))
                                       (_%hd166994167067%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl167005167115%_))))
                                   (let ((_%tmp167058%_ _%hd167002167108%_)
                                         (_%expr167065%_ _%hd167004167113%_)
                                         (_%len167072%_ _%hd166994167067%_)
                                         (_%init167074%_ _%tl166995167069%_))
                                     (_%K166989167050%_
                                      _%init167074%_
                                      _%len167072%_
                                      _%expr167065%_
                                      _%tmp167058%_)))
                                 (_%__match168678168679%_
                                  _%hd167002167108%_
                                  _%tl167003167110%_
                                  _%hd167004167113%_
                                  _%tl167005167115%_))))
                       (_%__match168672168673%_
                        _%hd167002167108%_
                        _%tl167003167110%_))
                   (if (pair? _%tl167003167110%_)
                       (let ((_%tl167000167095%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl167003167110%_)))
                             (_%hd166999167093%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl167003167110%_))))
                         (if (null? _%tl167000167095%_)
                             (let ((_%id167091%_ _%hd167002167108%_)
                                   (_%expr167098%_ _%hd166999167093%_))
                               (_%K166996167083%_ _%expr167098%_ _%id167091%_))
                             (if (pair? _%tl167000167095%_)
                                 (let ((_%tl166995167069%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl167000167095%_)))
                                       (_%hd166994167067%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl167000167095%_))))
                                   (let ((_%tmp167058%_ _%hd167002167108%_)
                                         (_%expr167065%_ _%hd166999167093%_)
                                         (_%len167072%_ _%hd166994167067%_)
                                         (_%init167074%_ _%tl166995167069%_))
                                     (_%K166989167050%_
                                      _%init167074%_
                                      _%len167072%_
                                      _%expr167065%_
                                      _%tmp167058%_)))
                                 (_%__match168678168679%_
                                  _%hd167002167108%_
                                  _%tl167003167110%_
                                  _%hd166999167093%_
                                  _%tl167000167095%_))))
                       (_%__match168672168673%_
                        _%hd167002167108%_
                        _%tl167003167110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E166988167011%_)))))))
                                        (__tmp168821 (list _%body166980%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp168822
                                     __tmp168821
                                     _%post166979%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp168820)))
                     _%stx166972%_))))
          (__compile-let-form
           _%stx166972%_
           _%compile-simple166974%_
           _%compile-values166975%_))))
    (define __compile-call%
      (lambda (_%stx166932%_)
        (let* ((_%$e166934%_ _%stx166932%_)
               (_%$E166936166945%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166934%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166934%_))
              (let* ((_%$tgt166937166948%_
                      (let () (declare (not safe)) (__AST-e _%$e166934%_)))
                     (_%$hd166938166951%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166937166948%_)))
                     (_%$tl166939166954%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166937166948%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166939166954%_))
                    (let* ((_%$tgt166940166958%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166939166954%_)))
                           (_%$hd166941166961%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166940166958%_)))
                           (_%$tl166942166964%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166940166958%_)))
                           (_%rator166968%_ _%$hd166941166961%_)
                           (_%rands166970%_ _%$tl166942166964%_))
                      (__SRC__%
                       (cons (__compile _%rator166968%_)
                             (map __compile _%rands166970%_))
                       _%stx166932%_))
                    (_%$E166936166945%_)))
              (_%$E166936166945%_)))))
    (define __compile-ref%
      (lambda (_%stx166894%_)
        (let* ((_%$e166896%_ _%stx166894%_)
               (_%$E166898166907%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166896%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166896%_))
              (let* ((_%$tgt166899166910%_
                      (let () (declare (not safe)) (__AST-e _%$e166896%_)))
                     (_%$hd166900166913%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166899166910%_)))
                     (_%$tl166901166916%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166899166910%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166901166916%_))
                    (let* ((_%$tgt166902166920%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166901166916%_)))
                           (_%$hd166903166923%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166902166920%_)))
                           (_%$tl166904166926%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166902166920%_)))
                           (_%id166930%_ _%$hd166903166923%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166904166926%_))
                                  '())
                          (__SRC__% _%id166930%_ _%stx166894%_)
                          (_%$E166898166907%_)))
                    (_%$E166898166907%_)))
              (_%$E166898166907%_)))))
    (define __compile-setq%
      (lambda (_%stx166841%_)
        (let* ((_%$e166843%_ _%stx166841%_)
               (_%$E166845166857%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166843%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166843%_))
              (let* ((_%$tgt166846166860%_
                      (let () (declare (not safe)) (__AST-e _%$e166843%_)))
                     (_%$hd166847166863%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166846166860%_)))
                     (_%$tl166848166866%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166846166860%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166848166866%_))
                    (let* ((_%$tgt166849166870%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166848166866%_)))
                           (_%$hd166850166873%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166849166870%_)))
                           (_%$tl166851166876%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166849166870%_)))
                           (_%id166880%_ _%$hd166850166873%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl166851166876%_))
                          (let* ((_%$tgt166852166882%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166851166876%_)))
                                 (_%$hd166853166885%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt166852166882%_)))
                                 (_%$tl166854166888%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt166852166882%_)))
                                 (_%expr166892%_ _%$hd166853166885%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl166854166888%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id166880%_
                                              _%stx166841%_)
                                             (cons (__compile _%expr166892%_)
                                                   '())))
                                 _%stx166841%_)
                                (_%$E166845166857%_)))
                          (_%$E166845166857%_)))
                    (_%$E166845166857%_)))
              (_%$E166845166857%_)))))
    (define __compile-if%
      (lambda (_%stx166773%_)
        (let* ((_%$e166775%_ _%stx166773%_)
               (_%$E166777166792%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166775%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166775%_))
              (let* ((_%$tgt166778166795%_
                      (let () (declare (not safe)) (__AST-e _%$e166775%_)))
                     (_%$hd166779166798%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166778166795%_)))
                     (_%$tl166780166801%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166778166795%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166780166801%_))
                    (let* ((_%$tgt166781166805%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166780166801%_)))
                           (_%$hd166782166808%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166781166805%_)))
                           (_%$tl166783166811%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166781166805%_)))
                           (_%p166815%_ _%$hd166782166808%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl166783166811%_))
                          (let* ((_%$tgt166784166817%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166783166811%_)))
                                 (_%$hd166785166820%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt166784166817%_)))
                                 (_%$tl166786166823%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt166784166817%_)))
                                 (_%t166827%_ _%$hd166785166820%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl166786166823%_))
                                (let* ((_%$tgt166787166829%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl166786166823%_)))
                                       (_%$hd166788166832%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt166787166829%_)))
                                       (_%$tl166789166835%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt166787166829%_)))
                                       (_%f166839%_ _%$hd166788166832%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl166789166835%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p166815%_)
                                                   (cons (__compile
                                                          _%t166827%_)
                                                         (cons (__compile
                                                                _%f166839%_)
                                                               '()))))
                                       _%stx166773%_)
                                      (_%$E166777166792%_)))
                                (_%$E166777166792%_)))
                          (_%$E166777166792%_)))
                    (_%$E166777166792%_)))
              (_%$E166777166792%_)))))
    (define __compile-quote%
      (lambda (_%stx166735%_)
        (let* ((_%$e166737%_ _%stx166735%_)
               (_%$E166739166748%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166737%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166737%_))
              (let* ((_%$tgt166740166751%_
                      (let () (declare (not safe)) (__AST-e _%$e166737%_)))
                     (_%$hd166741166754%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166740166751%_)))
                     (_%$tl166742166757%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166740166751%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166742166757%_))
                    (let* ((_%$tgt166743166761%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166742166757%_)))
                           (_%$hd166744166764%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166743166761%_)))
                           (_%$tl166745166767%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166743166761%_)))
                           (_%e166771%_ _%$hd166744166764%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166745166767%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e166771%_))
                                       '()))
                           _%stx166735%_)
                          (_%$E166739166748%_)))
                    (_%$E166739166748%_)))
              (_%$E166739166748%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx166697%_)
        (let* ((_%$e166699%_ _%stx166697%_)
               (_%$E166701166710%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166699%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166699%_))
              (let* ((_%$tgt166702166713%_
                      (let () (declare (not safe)) (__AST-e _%$e166699%_)))
                     (_%$hd166703166716%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166702166713%_)))
                     (_%$tl166704166719%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166702166713%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166704166719%_))
                    (let* ((_%$tgt166705166723%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166704166719%_)))
                           (_%$hd166706166726%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166705166723%_)))
                           (_%$tl166707166729%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166705166723%_)))
                           (_%e166733%_ _%$hd166706166726%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166707166729%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e166733%_ '()))
                           _%stx166697%_)
                          (_%$E166701166710%_)))
                    (_%$E166701166710%_)))
              (_%$E166701166710%_)))))
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
