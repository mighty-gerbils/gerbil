(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1770342548)
  (begin
    (define __syntax::t
      (let ((__tmp158981 (list)) (__tmp158980 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp158981
         '(e id)
         __tmp158980
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args158785%_
        (apply make-instance __syntax::t _%$args158785%_)))
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
      (let ((__tmp158983 (list __syntax::t))
            (__tmp158982 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp158983
         '()
         __tmp158982
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args158782%_
        (apply make-instance __core-form::t _%$args158782%_)))
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
      (let ((__tmp158985 (list __core-form::t))
            (__tmp158984 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp158985
         '()
         __tmp158984
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args158779%_
        (apply make-instance __core-expression::t _%$args158779%_)))
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
      (let ((__tmp158987 (list __core-form::t))
            (__tmp158986 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp158987
         '()
         __tmp158986
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args158776%_
        (apply make-instance __core-special-form::t _%$args158776%_)))
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
      (lambda (_%id158774%_)
        (let ((__tmp158988
               (let () (declare (not safe)) (__AST-e _%id158774%_))))
          (declare (not safe))
          (__hash-get __core __tmp158988))))
    (define __core-bound-id?__%
      (lambda (_%id158757%_ _%is?158758%_)
        (let ((_%$e158760%_ (__core-resolve _%id158757%_)))
          (if _%$e158760%_ (_%is?158758%_ _%$e158760%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id158767%_)
        (let ((_%is?158769%_ true))
          (__core-bound-id?__% _%id158767%_ _%is?158769%_))))
    (define __core-bound-id?
      (lambda _g158989_
        (let ((_g158990_ (let () (declare (not safe)) (##length _g158989_))))
          (cond ((let () (declare (not safe)) (##fx= _g158990_ 1))
                 (apply __core-bound-id?__0 _g158989_))
                ((let () (declare (not safe)) (##fx= _g158990_ 2))
                 (apply __core-bound-id?__% _g158989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g158989_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id158740%_ _%e158741%_ _%make158742%_)
        (let ((__tmp158991
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e158741%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e158741%_
                   (_%make158742%_ _%e158741%_ _%id158740%_))))
          (declare (not safe))
          (__hash-put! __core _%id158740%_ __tmp158991))))
    (define __core-bind-syntax!__0
      (lambda (_%id158747%_ _%e158748%_)
        (let ((_%make158750%_ make-__syntax))
          (__core-bind-syntax!__% _%id158747%_ _%e158748%_ _%make158750%_))))
    (define __core-bind-syntax!
      (lambda _g158992_
        (let ((_g158993_ (let () (declare (not safe)) (##length _g158992_))))
          (cond ((let () (declare (not safe)) (##fx= _g158993_ 2))
                 (apply __core-bind-syntax!__0 _g158992_))
                ((let () (declare (not safe)) (##fx= _g158993_ 3))
                 (apply __core-bind-syntax!__% _g158992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g158992_))))))
    (define __SRC__%
      (lambda (_%e158720%_ _%src-stx158721%_)
        (if (or (pair? _%e158720%_) (symbol? _%e158720%_))
            (let ((__tmp158994
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx158721%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx158721%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e158720%_ __tmp158994))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e158720%_ 'gerbil#AST::t))
                (let ((__tmp158996
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e158720%_ '1 '#f '#f)))
                      (__tmp158995
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e158720%_)))))
                  (declare (not safe))
                  (##make-source __tmp158996 __tmp158995))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e158720%_))))))
    (define __SRC__0
      (lambda (_%e158732%_)
        (let ((_%src-stx158734%_ '#f))
          (__SRC__% _%e158732%_ _%src-stx158734%_))))
    (define __SRC
      (lambda _g158997_
        (let ((_g158998_ (let () (declare (not safe)) (##length _g158997_))))
          (cond ((let () (declare (not safe)) (##fx= _g158998_ 1))
                 (apply __SRC__0 _g158997_))
                ((let () (declare (not safe)) (##fx= _g158998_ 2))
                 (apply __SRC__% _g158997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g158997_))))))
    (define __locat
      (lambda (_%loc158717%_)
        (if (let () (declare (not safe)) (##locat? _%loc158717%_))
            _%loc158717%_
            '#f)))
    (define __check-values
      (lambda (_%obj158712%_ _%k158713%_)
        (let ((_%count158715%_
               (if (let () (declare (not safe)) (##values? _%obj158712%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj158712%_))
                   '1)))
          (if (fx= _%count158715%_ _%k158713%_)
              '#!void
              (let ((__tmp159000
                     (if (fx< _%count158715%_ _%k158713%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp158999
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj158712%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj158712%_))
                         _%obj158712%_)))
                (declare (not safe))
                (error __tmp159000 __tmp158999 _%k158713%_))))))
    (define __compile
      (lambda (_%stx158681%_)
        (let* ((_%$e158683%_ _%stx158681%_)
               (_%$E158685158691%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e158683%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e158683%_))
              (let* ((_%$tgt158686158694%_
                      (let () (declare (not safe)) (__AST-e _%$e158683%_)))
                     (_%$hd158687158697%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt158686158694%_)))
                     (_%$tl158688158700%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt158686158694%_)))
                     (_%form158704%_ _%$hd158687158697%_)
                     (_%$e158706%_ (__core-resolve _%form158704%_)))
                (if _%$e158706%_
                    ((lambda (_%bind158709%_)
                       ((##structure-ref _%bind158709%_ '1 __syntax::t '#f)
                        _%stx158681%_))
                     _%$e158706%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx158681%_
                       _%form158704%_))))
              (_%$E158685158691%_)))))
    (define __compile-error__%
      (lambda (_%stx158668%_ _%detail158669%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx158668%_
           _%detail158669%_))))
    (define __compile-error__0
      (lambda (_%stx158674%_)
        (let ((_%detail158676%_ '#f))
          (__compile-error__% _%stx158674%_ _%detail158676%_))))
    (define __compile-error
      (lambda _g159001_
        (let ((_g159002_ (let () (declare (not safe)) (##length _g159001_))))
          (cond ((let () (declare (not safe)) (##fx= _g159002_ 1))
                 (apply __compile-error__0 _g159001_))
                ((let () (declare (not safe)) (##fx= _g159002_ 2))
                 (apply __compile-error__% _g159001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g159001_))))))
    (define __compile-ignore%
      (lambda (_%stx158665%_) (__SRC__% ''#!void _%stx158665%_)))
    (define __compile-begin%
      (lambda (_%stx158640%_)
        (let* ((_%$e158642%_ _%stx158640%_)
               (_%$E158644158650%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e158642%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e158642%_))
              (let* ((_%$tgt158645158653%_
                      (let () (declare (not safe)) (__AST-e _%$e158642%_)))
                     (_%$hd158646158656%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt158645158653%_)))
                     (_%$tl158647158659%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt158645158653%_)))
                     (_%body158663%_ _%$tl158647158659%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body158663%_))
                 _%stx158640%_))
              (_%$E158644158650%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx158615%_)
        (let* ((_%$e158617%_ _%stx158615%_)
               (_%$E158619158625%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e158617%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e158617%_))
              (let* ((_%$tgt158620158628%_
                      (let () (declare (not safe)) (__AST-e _%$e158617%_)))
                     (_%$hd158621158631%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt158620158628%_)))
                     (_%$tl158622158634%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt158620158628%_)))
                     (_%body158638%_ _%$tl158622158634%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body158638%_)))
                 _%stx158615%_))
              (_%$E158619158625%_)))))
    (define __compile-import%
      (lambda (_%stx158590%_)
        (let* ((_%$e158592%_ _%stx158590%_)
               (_%$E158594158600%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e158592%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e158592%_))
              (let* ((_%$tgt158595158603%_
                      (let () (declare (not safe)) (__AST-e _%$e158592%_)))
                     (_%$hd158596158606%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt158595158603%_)))
                     (_%$tl158597158609%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt158595158603%_)))
                     (_%body158613%_ _%$tl158597158609%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body158613%_ '())) '()))
                 _%stx158590%_))
              (_%$E158594158600%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx158537%_)
        (let* ((_%$e158539%_ _%stx158537%_)
               (_%$E158541158553%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e158539%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e158539%_))
              (let* ((_%$tgt158542158556%_
                      (let () (declare (not safe)) (__AST-e _%$e158539%_)))
                     (_%$hd158543158559%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt158542158556%_)))
                     (_%$tl158544158562%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt158542158556%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl158544158562%_))
                    (let* ((_%$tgt158545158566%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl158544158562%_)))
                           (_%$hd158546158569%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt158545158566%_)))
                           (_%$tl158547158572%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt158545158566%_)))
                           (_%ann158576%_ _%$hd158546158569%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl158547158572%_))
                          (let* ((_%$tgt158548158578%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl158547158572%_)))
                                 (_%$hd158549158581%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt158548158578%_)))
                                 (_%$tl158550158584%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt158548158578%_)))
                                 (_%expr158588%_ _%$hd158549158581%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl158550158584%_))
                                        '())
                                (__compile _%expr158588%_)
                                (_%$E158541158553%_)))
                          (_%$E158541158553%_)))
                    (_%$E158541158553%_)))
              (_%$E158541158553%_)))))
    (define __compile-define-values%
      (lambda (_%stx158428%_)
        (let* ((_%$e158430%_ _%stx158428%_)
               (_%$E158432158444%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e158430%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e158430%_))
              (let* ((_%$tgt158433158447%_
                      (let () (declare (not safe)) (__AST-e _%$e158430%_)))
                     (_%$hd158434158450%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt158433158447%_)))
                     (_%$tl158435158453%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt158433158447%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl158435158453%_))
                    (let* ((_%$tgt158436158457%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl158435158453%_)))
                           (_%$hd158437158460%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt158436158457%_)))
                           (_%$tl158438158463%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt158436158457%_)))
                           (_%hd158467%_ _%$hd158437158460%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl158438158463%_))
                          (let* ((_%$tgt158439158469%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl158438158463%_)))
                                 (_%$hd158440158472%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt158439158469%_)))
                                 (_%$tl158441158475%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt158439158469%_)))
                                 (_%expr158479%_ _%$hd158440158472%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl158441158475%_))
                                        '())
                                (let* ((_%$e158481%_ _%hd158467%_)
                                       (_%$E158483158524%_
                                        (lambda ()
                                          (let ((_%$E158484158509%_
                                                 (lambda ()
                                                   (let* ((_%$E158485158496%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e158481%_))))
                  (_%ids158499%_ _%hd158467%_)
                  (_%len158501%_ (length _%ids158499%_))
                  (_%tmp158503%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp158503%_
                                       (cons (__compile _%expr158479%_) '())))
                           _%stx158428%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp158503%_
                                             (cons _%len158501%_ '())))
                                 _%stx158428%_)
                                (let ((__tmp159003
                                       (let ((__tmp159005
                                              (lambda (_%id158506%_
                                                       _%k158507%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id158506%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id158506%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp158503%_
                                           (cons _%k158507%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx158428%_)
                                                    '#f)))
                                             (__tmp159004
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len158501%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp159005
                                          _%ids158499%_
                                          __tmp159004))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp159003)))))
              _%stx158428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e158481%_))
                                                (let* ((_%$tgt158486158512%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e158481%_)))
                                                       (_%$hd158487158515%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt158486158512%_)))
                                                       (_%$tl158488158518%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt158486158512%_)))
                                                       (_%id158522%_
                                                        _%$hd158487158515%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl158488158518%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id158522%_)
                           (cons (__compile _%expr158479%_) '())))
               _%stx158428%_)
              (_%$E158484158509%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E158484158509%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e158481%_))
                                      (let* ((_%$tgt158489158527%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e158481%_)))
                                             (_%$hd158490158530%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt158489158527%_)))
                                             (_%$tl158491158533%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt158489158527%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd158490158530%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl158491158533%_))
                                                        '())
                                                (__compile _%expr158479%_)
                                                (_%$E158483158524%_))
                                            (_%$E158483158524%_)))
                                      (_%$E158483158524%_)))
                                (_%$E158432158444%_)))
                          (_%$E158432158444%_)))
                    (_%$E158432158444%_)))
              (_%$E158432158444%_)))))
    (define __compile-head-id
      (lambda (_%e158426%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e158426%_))
             _%e158426%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd158383%_)
        (let _%recur158385%_ ((_%rest158387%_ _%hd158383%_))
          (let* ((_%$e158389%_ _%rest158387%_)
                 (_%$E158391158409%_
                  (lambda ()
                    (let ((_%$E158392158406%_
                           (lambda ()
                             (let* ((_%$E158393158401%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e158389%_))))
                                    (_%tail158404%_ _%$e158389%_))
                               (__compile-head-id _%tail158404%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e158389%_))
                                  '())
                          '()
                          (_%$E158392158406%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e158389%_))
                (let* ((_%$tgt158394158412%_
                        (let () (declare (not safe)) (__AST-e _%$e158389%_)))
                       (_%$hd158395158415%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt158394158412%_)))
                       (_%$tl158396158418%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt158394158412%_)))
                       (_%hd158422%_ _%$hd158395158415%_)
                       (_%rest158424%_ _%$tl158396158418%_))
                  (cons (__compile-head-id _%hd158422%_)
                        (_%recur158385%_ _%rest158424%_)))
                (_%$E158391158409%_))))))
    (define __compile-lambda%
      (lambda (_%stx158330%_)
        (let* ((_%$e158332%_ _%stx158330%_)
               (_%$E158334158346%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e158332%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e158332%_))
              (let* ((_%$tgt158335158349%_
                      (let () (declare (not safe)) (__AST-e _%$e158332%_)))
                     (_%$hd158336158352%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt158335158349%_)))
                     (_%$tl158337158355%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt158335158349%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl158337158355%_))
                    (let* ((_%$tgt158338158359%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl158337158355%_)))
                           (_%$hd158339158362%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt158338158359%_)))
                           (_%$tl158340158365%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt158338158359%_)))
                           (_%hd158369%_ _%$hd158339158362%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl158340158365%_))
                          (let* ((_%$tgt158341158371%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl158340158365%_)))
                                 (_%$hd158342158374%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt158341158371%_)))
                                 (_%$tl158343158377%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt158341158371%_)))
                                 (_%body158381%_ _%$hd158342158374%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl158343158377%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd158369%_)
                                             (cons (__compile _%body158381%_)
                                                   '())))
                                 _%stx158330%_)
                                (_%$E158334158346%_)))
                          (_%$E158334158346%_)))
                    (_%$E158334158346%_)))
              (_%$E158334158346%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx158122%_)
        (letrec ((_%variadic?158124%_
                  (lambda (_%hd158295%_)
                    (let* ((_%$e158297%_ _%hd158295%_)
                           (_%$E158299158315%_
                            (lambda ()
                              (let ((_%$E158300158312%_
                                     (lambda ()
                                       (let ((_%$E158301158309%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e158297%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e158297%_))
                                            '())
                                    '#f
                                    (_%$E158300158312%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e158297%_))
                          (let* ((_%$tgt158302158318%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e158297%_)))
                                 (_%$hd158303158321%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt158302158318%_)))
                                 (_%$tl158304158324%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt158302158318%_)))
                                 (_%rest158328%_ _%$tl158304158324%_))
                            (_%variadic?158124%_ _%rest158328%_))
                          (_%$E158299158315%_)))))
                 (_%arity158125%_
                  (lambda (_%hd158260%_)
                    (let _%lp158262%_ ((_%rest158264%_ _%hd158260%_)
                                       (_%k158265%_ '0))
                      (let* ((_%$e158267%_ _%rest158264%_)
                             (_%$E158269158280%_
                              (lambda ()
                                (let ((_%$E158270158277%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e158267%_)))))
                                  _%k158265%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e158267%_))
                            (let* ((_%$tgt158271158283%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e158267%_)))
                                   (_%$hd158272158286%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt158271158283%_)))
                                   (_%$tl158273158289%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt158271158283%_)))
                                   (_%rest158293%_ _%$tl158273158289%_))
                              (_%lp158262%_
                               _%rest158293%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k158265%_ '1))))
                            (_%$E158269158280%_))))))
                 (_%generate158126%_
                  (lambda (_%rest158187%_ _%args158188%_ _%len158189%_)
                    (let* ((_%$e158191%_ _%rest158187%_)
                           (_%$E158193158204%_
                            (lambda ()
                              (let ((_%$E158194158201%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e158191%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args158188%_ '())))
                                 _%stx158122%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e158191%_))
                          (let* ((_%$tgt158195158207%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e158191%_)))
                                 (_%$hd158196158210%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt158195158207%_)))
                                 (_%$tl158197158213%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt158195158207%_)))
                                 (_%clause158217%_ _%$hd158196158210%_)
                                 (_%rest158219%_ _%$tl158197158213%_)
                                 (_%$e158221%_ _%clause158217%_)
                                 (_%$E158223158232%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e158221%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e158221%_))
                                (let* ((_%$tgt158224158235%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e158221%_)))
                                       (_%$hd158225158238%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt158224158235%_)))
                                       (_%$tl158226158241%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt158224158235%_)))
                                       (_%hd158245%_ _%$hd158225158238%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl158226158241%_))
                                      (let* ((_%$tgt158227158247%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl158226158241%_)))
                                             (_%$hd158228158250%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt158227158247%_)))
                                             (_%$tl158229158253%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt158227158247%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl158229158253%_))
                                                    '())
                                            (let ((_%clen158257%_
                                                   (_%arity158125%_
                                                    _%hd158245%_))
                                                  (_%cmp158258%_
                                                   (if (_%variadic?158124%_
                                                        _%hd158245%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp158258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len158189%_ (cons _%clen158257%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause158217%_))
                                      (cons _%args158188%_ '())))
                          _%stx158122%_)
                         (cons (_%generate158126%_
                                _%rest158219%_
                                _%args158188%_
                                _%len158189%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx158122%_))
                                            (_%$E158223158232%_)))
                                      (_%$E158223158232%_)))
                                (_%$E158223158232%_)))
                          (_%$E158193158204%_))))))
          (let* ((_%$e158128%_ _%stx158122%_)
                 (_%$E158130158162%_
                  (lambda ()
                    (let ((_%$E158131158144%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e158128%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e158128%_))
                          (let* ((_%$tgt158132158147%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e158128%_)))
                                 (_%$hd158133158150%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt158132158147%_)))
                                 (_%$tl158134158153%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt158132158147%_)))
                                 (_%clauses158157%_ _%$tl158134158153%_))
                            (let ((_%args158159%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx158122%_))
                                  (_%len158160%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx158122%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args158159%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len158160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args158159%_ '()))
                                         _%stx158122%_)
                                        '()))
                            '())
                      (cons (_%generate158126%_
                             _%clauses158157%_
                             _%args158159%_
                             _%len158160%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx158122%_)
                                                 '())))
                               _%stx158122%_)))
                          (_%$E158131158144%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e158128%_))
                (let* ((_%$tgt158135158165%_
                        (let () (declare (not safe)) (__AST-e _%$e158128%_)))
                       (_%$hd158136158168%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt158135158165%_)))
                       (_%$tl158137158171%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt158135158165%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl158137158171%_))
                      (let* ((_%$tgt158138158175%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl158137158171%_)))
                             (_%$hd158139158178%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt158138158175%_)))
                             (_%$tl158140158181%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt158138158175%_)))
                             (_%clause158185%_ _%$hd158139158178%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl158140158181%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause158185%_))
                            (_%$E158130158162%_)))
                      (_%$E158130158162%_)))
                (_%$E158130158162%_))))))
    (define __compile-let-form
      (lambda (_%stx157891%_ _%compile-simple157892%_ _%compile-values157893%_)
        (letrec ((_%simple-bind?157895%_
                  (lambda (_%hd158080%_)
                    (let* ((_%hd158081158091%_ _%hd158080%_)
                           (_%else158084158099%_ (lambda () '#f)))
                      (let ((_%K158087158112%_ (lambda (_%id158110%_) '#t))
                            (_%K158086158104%_ (lambda () '#t)))
                        (let ((_%try-match158083158107%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd158081158091%_ '#f))
                                     (_%K158086158104%_)
                                     (_%else158084158099%_)))))
                          (if (pair? _%hd158081158091%_)
                              (let ((_%tl158089158117%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd158081158091%_)))
                                    (_%hd158088158115%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd158081158091%_))))
                                (if (null? _%tl158089158117%_)
                                    (let ((_%id158120%_ _%hd158088158115%_))
                                      (_%K158087158112%_ _%id158120%_))
                                    (_%try-match158083158107%_)))
                              (_%try-match158083158107%_)))))))
                 (_%car-e157896%_
                  (lambda (_%hd158078%_)
                    (if (pair? _%hd158078%_)
                        (let () (declare (not safe)) (##car _%hd158078%_))
                        _%hd158078%_))))
          (let* ((_%$e157898%_ _%stx157891%_)
                 (_%$E157900158043%_
                  (lambda ()
                    (let ((_%$E157901157923%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e157898%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e157898%_))
                          (let* ((_%$tgt157902157926%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e157898%_)))
                                 (_%$hd157903157929%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt157902157926%_)))
                                 (_%$tl157904157932%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt157902157926%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl157904157932%_))
                                (let* ((_%$tgt157905157936%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl157904157932%_)))
                                       (_%$hd157906157939%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt157905157936%_)))
                                       (_%$tl157907157942%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt157905157936%_)))
                                       (_%hd157946%_ _%$hd157906157939%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl157907157942%_))
                                      (let* ((_%$tgt157908157948%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl157907157942%_)))
                                             (_%$hd157909157951%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt157908157948%_)))
                                             (_%$tl157910157954%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt157908157948%_)))
                                             (_%body157958%_
                                              _%$hd157909157951%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl157910157954%_))
                                                    '())
                                            (let* ((_%hd-ids157998%_
                                                    (map (lambda (_%bind157960%_)
                                                           (let* ((_%$e157962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind157960%_)
                          (_%$E157964157973%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e157962%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e157962%_))
                         (let* ((_%$tgt157965157976%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e157962%_)))
                                (_%$hd157966157979%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt157965157976%_)))
                                (_%$tl157967157982%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt157965157976%_)))
                                (_%ids157986%_ _%$hd157966157979%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl157967157982%_))
                               (let* ((_%$tgt157968157988%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl157967157982%_)))
                                      (_%$hd157969157991%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt157968157988%_)))
                                      (_%$tl157970157994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt157968157988%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl157970157994%_))
                                             '())
                                     _%ids157986%_
                                     (_%$E157964157973%_)))
                               (_%$E157964157973%_)))
                         (_%$E157964157973%_))))
                 _%hd157946%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs158038%_
                                                    (map (lambda (_%bind158000%_)
                                                           (let* ((_%$e158002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind158000%_)
                          (_%$E158004158013%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e158002%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e158002%_))
                         (let* ((_%$tgt158005158016%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e158002%_)))
                                (_%$hd158006158019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt158005158016%_)))
                                (_%$tl158007158022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt158005158016%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl158007158022%_))
                               (let* ((_%$tgt158008158026%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl158007158022%_)))
                                      (_%$hd158009158029%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt158008158026%_)))
                                      (_%$tl158010158032%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt158008158026%_)))
                                      (_%expr158036%_ _%$hd158009158029%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl158010158032%_))
                                             '())
                                     (__compile _%expr158036%_)
                                     (_%$E158004158013%_)))
                               (_%$E158004158013%_)))
                         (_%$E158004158013%_))))
                 _%hd157946%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body158040%_
                                                    (__compile
                                                     _%body157958%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?157895%_
                                                     _%hd-ids157998%_))
                                                  (_%compile-simple157892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e157896%_
                                                            _%hd-ids157998%_))
                                                   _%exprs158038%_
                                                   _%body158040%_)
                                                  (_%compile-values157893%_
                                                   _%hd-ids157998%_
                                                   _%exprs158038%_
                                                   _%body158040%_)))
                                            (_%$E157901157923%_)))
                                      (_%$E157901157923%_)))
                                (_%$E157901157923%_)))
                          (_%$E157901157923%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e157898%_))
                (let* ((_%$tgt157911158046%_
                        (let () (declare (not safe)) (__AST-e _%$e157898%_)))
                       (_%$hd157912158049%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt157911158046%_)))
                       (_%$tl157913158052%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt157911158046%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl157913158052%_))
                      (let* ((_%$tgt157914158056%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl157913158052%_)))
                             (_%$hd157915158059%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt157914158056%_)))
                             (_%$tl157916158062%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt157914158056%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd157915158059%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl157916158062%_))
                                (let* ((_%$tgt157917158066%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl157916158062%_)))
                                       (_%$hd157918158069%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt157917158066%_)))
                                       (_%$tl157919158072%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt157917158066%_)))
                                       (_%body158076%_ _%$hd157918158069%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl157919158072%_))
                                              '())
                                      (__compile _%body158076%_)
                                      (_%$E157900158043%_)))
                                (_%$E157900158043%_))
                            (_%$E157900158043%_)))
                      (_%$E157900158043%_)))
                (_%$E157900158043%_))))))
    (define __compile-let-values%
      (lambda (_%stx157703%_)
        (letrec ((_%compile-simple157705%_
                  (lambda (_%hd-ids157887%_ _%exprs157888%_ _%body157889%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp159006
                                        (map __compile-head-id
                                             _%hd-ids157887%_)))
                                   (declare (not safe))
                                   (##map list __tmp159006 _%exprs157888%_))
                                 (cons _%body157889%_ '())))
                     _%stx157703%_)))
                 (_%compile-values157706%_
                  (lambda (_%hd-ids157802%_ _%exprs157803%_ _%body157804%_)
                    (let _%lp157806%_ ((_%rest157808%_ _%hd-ids157802%_)
                                       (_%exprs157809%_ _%exprs157803%_)
                                       (_%bind157810%_ '())
                                       (_%post157811%_ '()))
                      (let* ((_%rest157812157826%_ _%rest157808%_)
                             (_%else157815157834%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind157810%_)
                                             (cons (_%compile-post157707%_
                                                    _%post157811%_
                                                    _%body157804%_)
                                                   '())))
                                 _%stx157703%_))))
                        (let ((_%K157820157870%_
                               (lambda (_%rest157867%_ _%id157868%_)
                                 (_%lp157806%_
                                  _%rest157867%_
                                  (cdr _%exprs157809%_)
                                  (cons (cons (__compile-head-id _%id157868%_)
                                              (cons (car _%exprs157809%_) '()))
                                        _%bind157810%_)
                                  _%post157811%_)))
                              (_%K157817157852%_
                               (lambda (_%rest157838%_ _%hd157839%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd157839%_))
                                     (_%lp157806%_
                                      _%rest157838%_
                                      (cdr _%exprs157809%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd157839%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs157809%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind157810%_)
                                      _%post157811%_)
                                     (if (list? _%hd157839%_)
                                         (let* ((_%len157843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd157839%_)))
                                                (_%tmp157845%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp157806%_
                                            _%rest157838%_
                                            (cdr _%exprs157809%_)
                                            (cons (cons _%tmp157845%_
                                                        (cons (car _%exprs157809%_)
                                                              '()))
                                                  _%bind157810%_)
                                            (cons (cons _%tmp157845%_
                                                        (cons _%len157843%_
                                                              (let ((__tmp159008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id157848%_ _%k157849%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id157848%_))
                                   (cons (__SRC__0 _%id157848%_) _%k157849%_)
                                   '#f)))
                            (__tmp159007
                             (let ()
                               (declare (not safe))
                               (##iota _%len157843%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp159008 _%hd157839%_ __tmp159007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post157811%_)))
                                         (__compile-error__%
                                          _%stx157703%_
                                          _%hd157839%_))))))
                          (if (pair? _%rest157812157826%_)
                              (let ((_%tl157822157875%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest157812157826%_)))
                                    (_%hd157821157873%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest157812157826%_))))
                                (if (pair? _%hd157821157873%_)
                                    (let ((_%tl157824157880%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd157821157873%_)))
                                          (_%hd157823157878%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd157821157873%_))))
                                      (if (null? _%tl157824157880%_)
                                          (let ((_%id157883%_
                                                 _%hd157823157878%_)
                                                (_%rest157885%_
                                                 _%tl157822157875%_))
                                            (_%K157820157870%_
                                             _%rest157885%_
                                             _%id157883%_))
                                          (let ((_%hd157860%_
                                                 _%hd157821157873%_)
                                                (_%rest157862%_
                                                 _%tl157822157875%_))
                                            (_%K157817157852%_
                                             _%rest157862%_
                                             _%hd157860%_))))
                                    (let ((_%hd157860%_ _%hd157821157873%_)
                                          (_%rest157862%_ _%tl157822157875%_))
                                      (_%K157817157852%_
                                       _%rest157862%_
                                       _%hd157860%_))))
                              (_%else157815157834%_)))))))
                 (_%compile-post157707%_
                  (lambda (_%post157709%_ _%body157710%_)
                    (let _%lp157712%_ ((_%rest157714%_ _%post157709%_)
                                       (_%check157715%_ '())
                                       (_%bind157716%_ '()))
                      (let* ((_%rest157717157729%_ _%rest157714%_)
                             (_%else157719157737%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp159009
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind157716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body157710%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx157703%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp159009
                                          _%check157715%_)))
                                 _%stx157703%_)))
                             (_%K157721157776%_
                              (lambda (_%rest157740%_
                                       _%init157741%_
                                       _%len157742%_
                                       _%tmp157743%_)
                                (_%lp157712%_
                                 _%rest157740%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp157743%_
                                                    (cons _%len157742%_ '())))
                                        _%stx157703%_)
                                       _%check157715%_)
                                 (let ((__tmp159010
                                        (lambda (_%hd157745%_ _%r157746%_)
                                          (let* ((_%hd157747157754%_
                                                  _%hd157745%_)
                                                 (_%E157749157758%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd157747157754%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K157750157764%_
                                                  (lambda (_%k157761%_
                                                           _%id157762%_)
                                                    (cons (cons _%id157762%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp157743%_
                                          (cons _%k157761%_ '())))
                              '()))
                  _%r157746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd157747157754%_)
                                                (let ((_%hd157751157767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd157747157754%_)))
                                                      (_%tl157752157769%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd157747157754%_))))
                                                  (let* ((_%id157772%_
                                                          _%hd157751157767%_)
                                                         (_%k157774%_
                                                          _%tl157752157769%_))
                                                    (_%K157750157764%_
                                                     _%k157774%_
                                                     _%id157772%_)))
                                                (_%E157749157758%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp159010
                                    _%bind157716%_
                                    _%init157741%_))))))
                        (if (pair? _%rest157717157729%_)
                            (let ((_%hd157722157779%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest157717157729%_)))
                                  (_%tl157723157781%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest157717157729%_))))
                              (if (pair? _%hd157722157779%_)
                                  (let ((_%hd157724157784%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd157722157779%_)))
                                        (_%tl157725157786%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd157722157779%_))))
                                    (let ((_%tmp157789%_ _%hd157724157784%_))
                                      (if (pair? _%tl157725157786%_)
                                          (let ((_%hd157726157791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl157725157786%_)))
                                                (_%tl157727157793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl157725157786%_))))
                                            (let* ((_%len157796%_
                                                    _%hd157726157791%_)
                                                   (_%init157798%_
                                                    _%tl157727157793%_)
                                                   (_%rest157800%_
                                                    _%tl157723157781%_))
                                              (_%K157721157776%_
                                               _%rest157800%_
                                               _%init157798%_
                                               _%len157796%_
                                               _%tmp157789%_)))
                                          (_%else157719157737%_))))
                                  (_%else157719157737%_)))
                            (_%else157719157737%_)))))))
          (__compile-let-form
           _%stx157703%_
           _%compile-simple157705%_
           _%compile-values157706%_))))
    (define __compile-letrec-values%
      (lambda (_%stx157500%_)
        (letrec ((_%compile-simple157502%_
                  (lambda (_%hd-ids157699%_ _%exprs157700%_ _%body157701%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp159011
                                        (map __compile-head-id
                                             _%hd-ids157699%_)))
                                   (declare (not safe))
                                   (##map list __tmp159011 _%exprs157700%_))
                                 (cons _%body157701%_ '())))
                     _%stx157500%_)))
                 (_%compile-values157503%_
                  (lambda (_%hd-ids157610%_ _%exprs157611%_ _%body157612%_)
                    (let _%lp157614%_ ((_%rest157616%_ _%hd-ids157610%_)
                                       (_%exprs157617%_ _%exprs157611%_)
                                       (_%pre157618%_ '())
                                       (_%bind157619%_ '())
                                       (_%post157620%_ '()))
                      (let* ((_%rest157621157635%_ _%rest157616%_)
                             (_%else157624157643%_
                              (lambda ()
                                (_%compile-inner157504%_
                                 _%pre157618%_
                                 _%bind157619%_
                                 _%post157620%_
                                 _%body157612%_))))
                        (let ((_%K157629157682%_
                               (lambda (_%rest157679%_ _%id157680%_)
                                 (_%lp157614%_
                                  _%rest157679%_
                                  (cdr _%exprs157617%_)
                                  _%pre157618%_
                                  (cons (cons (__compile-head-id _%id157680%_)
                                              (cons (car _%exprs157617%_) '()))
                                        _%bind157619%_)
                                  _%post157620%_)))
                              (_%K157626157664%_
                               (lambda (_%rest157647%_ _%hd157648%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd157648%_))
                                     (_%lp157614%_
                                      _%rest157647%_
                                      (cdr _%exprs157617%_)
                                      _%pre157618%_
                                      (cons (cons (__compile-head-id
                                                   _%hd157648%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs157617%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind157619%_)
                                      _%post157620%_)
                                     (if (list? _%hd157648%_)
                                         (let* ((_%len157652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd157648%_)))
                                                (_%tmp157654%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp157614%_
                                            _%rest157647%_
                                            (cdr _%exprs157617%_)
                                            (let ((__tmp159012
                                                   (lambda (_%id157657%_
                                                            _%r157658%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id157657%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id157657%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r157658%_)
                 _%r157658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp159012
                                               _%pre157618%_
                                               _%hd157648%_))
                                            (cons (cons _%tmp157654%_
                                                        (cons (car _%exprs157617%_)
                                                              '()))
                                                  _%bind157619%_)
                                            (cons (cons _%tmp157654%_
                                                        (cons _%len157652%_
                                                              (let ((__tmp159014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id157660%_ _%k157661%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id157660%_))
                                   (cons (__SRC__0 _%id157660%_) _%k157661%_)
                                   '#f)))
                            (__tmp159013
                             (let ()
                               (declare (not safe))
                               (##iota _%len157652%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp159014 _%hd157648%_ __tmp159013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post157620%_)))
                                         (__compile-error__%
                                          _%stx157500%_
                                          _%hd157648%_))))))
                          (if (pair? _%rest157621157635%_)
                              (let ((_%tl157631157687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest157621157635%_)))
                                    (_%hd157630157685%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest157621157635%_))))
                                (if (pair? _%hd157630157685%_)
                                    (let ((_%tl157633157692%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd157630157685%_)))
                                          (_%hd157632157690%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd157630157685%_))))
                                      (if (null? _%tl157633157692%_)
                                          (let ((_%id157695%_
                                                 _%hd157632157690%_)
                                                (_%rest157697%_
                                                 _%tl157631157687%_))
                                            (_%K157629157682%_
                                             _%rest157697%_
                                             _%id157695%_))
                                          (let ((_%hd157672%_
                                                 _%hd157630157685%_)
                                                (_%rest157674%_
                                                 _%tl157631157687%_))
                                            (_%K157626157664%_
                                             _%rest157674%_
                                             _%hd157672%_))))
                                    (let ((_%hd157672%_ _%hd157630157685%_)
                                          (_%rest157674%_ _%tl157631157687%_))
                                      (_%K157626157664%_
                                       _%rest157674%_
                                       _%hd157672%_))))
                              (_%else157624157643%_)))))))
                 (_%compile-inner157504%_
                  (lambda (_%pre157605%_
                           _%bind157606%_
                           _%post157607%_
                           _%body157608%_)
                    (if (null? _%pre157605%_)
                        (_%compile-bind157505%_
                         _%bind157606%_
                         _%post157607%_
                         _%body157608%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre157605%_)
                                     (cons (_%compile-bind157505%_
                                            _%bind157606%_
                                            _%post157607%_
                                            _%body157608%_)
                                           '())))
                         _%stx157500%_))))
                 (_%compile-bind157505%_
                  (lambda (_%bind157601%_ _%post157602%_ _%body157603%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind157601%_)
                                 (cons (_%compile-post157506%_
                                        _%post157602%_
                                        _%body157603%_)
                                       '())))
                     _%stx157500%_)))
                 (_%compile-post157506%_
                  (lambda (_%post157508%_ _%body157509%_)
                    (let _%lp157511%_ ((_%rest157513%_ _%post157508%_)
                                       (_%check157514%_ '())
                                       (_%bind157515%_ '()))
                      (let* ((_%rest157516157528%_ _%rest157513%_)
                             (_%else157518157536%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp159015
                                              (let ((__tmp159016
                                                     (cons _%body157509%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp159016
                                                 _%bind157515%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp159015
                                          _%check157514%_)))
                                 _%stx157500%_)))
                             (_%K157520157575%_
                              (lambda (_%rest157539%_
                                       _%init157540%_
                                       _%len157541%_
                                       _%tmp157542%_)
                                (_%lp157511%_
                                 _%rest157539%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp157542%_
                                                    (cons _%len157541%_ '())))
                                        _%stx157500%_)
                                       _%check157514%_)
                                 (let ((__tmp159017
                                        (lambda (_%hd157544%_ _%r157545%_)
                                          (let* ((_%hd157546157553%_
                                                  _%hd157544%_)
                                                 (_%E157548157557%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd157546157553%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K157549157563%_
                                                  (lambda (_%k157560%_
                                                           _%id157561%_)
                                                    (cons (cons 'set!
                                                                (cons _%id157561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp157542%_
                                                (cons _%k157560%_ '())))
                                    '())))
                  _%r157545%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd157546157553%_)
                                                (let ((_%hd157550157566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd157546157553%_)))
                                                      (_%tl157551157568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd157546157553%_))))
                                                  (let* ((_%id157571%_
                                                          _%hd157550157566%_)
                                                         (_%k157573%_
                                                          _%tl157551157568%_))
                                                    (_%K157549157563%_
                                                     _%k157573%_
                                                     _%id157571%_)))
                                                (_%E157548157557%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp159017
                                    _%bind157515%_
                                    _%init157540%_))))))
                        (if (pair? _%rest157516157528%_)
                            (let ((_%hd157521157578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest157516157528%_)))
                                  (_%tl157522157580%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest157516157528%_))))
                              (if (pair? _%hd157521157578%_)
                                  (let ((_%hd157523157583%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd157521157578%_)))
                                        (_%tl157524157585%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd157521157578%_))))
                                    (let ((_%tmp157588%_ _%hd157523157583%_))
                                      (if (pair? _%tl157524157585%_)
                                          (let ((_%hd157525157590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl157524157585%_)))
                                                (_%tl157526157592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl157524157585%_))))
                                            (let* ((_%len157595%_
                                                    _%hd157525157590%_)
                                                   (_%init157597%_
                                                    _%tl157526157592%_)
                                                   (_%rest157599%_
                                                    _%tl157522157580%_))
                                              (_%K157520157575%_
                                               _%rest157599%_
                                               _%init157597%_
                                               _%len157595%_
                                               _%tmp157588%_)))
                                          (_%else157518157536%_))))
                                  (_%else157518157536%_)))
                            (_%else157518157536%_)))))))
          (__compile-let-form
           _%stx157500%_
           _%compile-simple157502%_
           _%compile-values157503%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx157251%_)
        (letrec ((_%compile-simple157253%_
                  (lambda (_%hd-ids157496%_ _%exprs157497%_ _%body157498%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp159018
                                        (map __compile-head-id
                                             _%hd-ids157496%_)))
                                   (declare (not safe))
                                   (##map list __tmp159018 _%exprs157497%_))
                                 (cons _%body157498%_ '())))
                     _%stx157251%_)))
                 (_%compile-values157254%_
                  (lambda (_%hd-ids157403%_ _%exprs157404%_ _%body157405%_)
                    (let _%lp157407%_ ((_%rest157409%_ _%hd-ids157403%_)
                                       (_%exprs157410%_ _%exprs157404%_)
                                       (_%bind157411%_ '())
                                       (_%post157412%_ '()))
                      (let* ((_%rest157413157427%_ _%rest157409%_)
                             (_%else157416157435%_
                              (lambda ()
                                (_%compile-bind157255%_
                                 _%bind157411%_
                                 _%post157412%_
                                 _%body157405%_))))
                        (let ((_%K157421157479%_
                               (lambda (_%rest157474%_ _%hd157475%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd157475%_))
                                     (let ((_%id157477%_
                                            (__SRC__0 _%hd157475%_)))
                                       (_%lp157407%_
                                        _%rest157474%_
                                        (cdr _%exprs157410%_)
                                        (cons (cons _%id157477%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind157411%_)
                                        (cons (cons _%id157477%_
                                                    (cons (car _%exprs157410%_)
                                                          '()))
                                              _%post157412%_)))
                                     (_%lp157407%_
                                      _%rest157474%_
                                      (cdr _%exprs157410%_)
                                      _%bind157411%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs157410%_)
                                                        '()))
                                            _%post157412%_)))))
                              (_%K157418157459%_
                               (lambda (_%rest157439%_ _%hd157440%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd157440%_))
                                     (let ((_%id157443%_
                                            (__SRC__0 _%hd157440%_)))
                                       (_%lp157407%_
                                        _%rest157439%_
                                        (cdr _%exprs157410%_)
                                        (cons (cons _%id157443%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind157411%_)
                                        (cons (cons _%id157443%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs157410%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post157412%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd157440%_))
                                         (if (list? _%hd157440%_)
                                             (let* ((_%len157447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd157440%_)))
                                                    (_%tmp157449%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp157407%_
                                                _%rest157439%_
                                                (cdr _%exprs157410%_)
                                                (let ((__tmp159019
                                                       (lambda (_%id157452%_
                                                                _%r157453%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id157452%_))
                     (cons (cons (__SRC__0 _%id157452%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r157453%_)
                     _%r157453%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp159019
                                                   _%bind157411%_
                                                   _%hd157440%_))
                                                (cons (cons _%tmp157449%_
                                                            (cons (car _%exprs157410%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len157447%_
                                (let ((__tmp159021
                                       (lambda (_%id157455%_ _%k157456%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id157455%_))
                                             (cons (__SRC__0 _%id157455%_)
                                                   _%k157456%_)
                                             '#f)))
                                      (__tmp159020
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len157447%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp159021
                                   _%hd157440%_
                                   __tmp159020)))))
              _%post157412%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx157251%_
                                              _%hd157440%_))
                                         (_%lp157407%_
                                          _%rest157439%_
                                          (cdr _%exprs157410%_)
                                          _%bind157411%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs157410%_)
                                                            '()))
                                                _%post157412%_)))))))
                          (if (pair? _%rest157413157427%_)
                              (let ((_%tl157423157484%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest157413157427%_)))
                                    (_%hd157422157482%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest157413157427%_))))
                                (if (pair? _%hd157422157482%_)
                                    (let ((_%tl157425157489%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd157422157482%_)))
                                          (_%hd157424157487%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd157422157482%_))))
                                      (if (null? _%tl157425157489%_)
                                          (let ((_%hd157492%_
                                                 _%hd157424157487%_)
                                                (_%rest157494%_
                                                 _%tl157423157484%_))
                                            (_%K157421157479%_
                                             _%rest157494%_
                                             _%hd157492%_))
                                          (let ((_%hd157467%_
                                                 _%hd157422157482%_)
                                                (_%rest157469%_
                                                 _%tl157423157484%_))
                                            (_%K157418157459%_
                                             _%rest157469%_
                                             _%hd157467%_))))
                                    (let ((_%hd157467%_ _%hd157422157482%_)
                                          (_%rest157469%_ _%tl157423157484%_))
                                      (_%K157418157459%_
                                       _%rest157469%_
                                       _%hd157467%_))))
                              (_%else157416157435%_)))))))
                 (_%compile-bind157255%_
                  (lambda (_%bind157399%_ _%post157400%_ _%body157401%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind157399%_)
                                 (cons (_%compile-post157256%_
                                        _%post157400%_
                                        _%body157401%_)
                                       '())))
                     _%stx157251%_)))
                 (_%compile-post157256%_
                  (lambda (_%post157258%_ _%body157259%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp159022
                                  (let ((__tmp159024
                                         (lambda (_%hd157261%_ _%r157262%_)
                                           (let* ((_%hd157263157286%_
                                                   _%hd157261%_)
                                                  (_%E157267157290%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd157263157286%_
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
                                             (let ((_%K157280157384%_
                                                    (lambda (_%expr157382%_)
                                                      (cons _%expr157382%_
                                                            _%r157262%_)))
                                                   (_%K157275157362%_
                                                    (lambda (_%expr157359%_
                                                             _%id157360%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id157360%_ (cons _%expr157359%_ '())))
                     _%stx157251%_)
                    _%r157262%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K157268157329%_
                                                    (lambda (_%init157294%_
                                                             _%len157295%_
                                                             _%expr157296%_
                                                             _%tmp157297%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp157297%_
                                             (cons _%expr157296%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp157297%_
                                                    (cons _%len157295%_ '())))
                                        _%stx157251%_)
                                       (let ((__tmp159025
                                              (map (lambda (_%hd157299%_)
                                                     (let* ((_%hd157300157307%_
                                                             _%hd157299%_)
                                                            (_%E157302157311%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd157300157307%_
                                '([id . k])))
                       '#!void))
                    (_%K157303157317%_
                     (lambda (_%k157314%_ _%id157315%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id157315%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp157297%_
                                                      (cons _%k157314%_ '())))
                                          '())))
                        _%stx157251%_))))
               (if (pair? _%hd157300157307%_)
                   (let ((_%hd157304157320%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd157300157307%_)))
                         (_%tl157305157322%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd157300157307%_))))
                     (let* ((_%id157325%_ _%hd157304157320%_)
                            (_%k157327%_ _%tl157305157322%_))
                       (_%K157303157317%_ _%k157327%_ _%id157325%_)))
                   (_%E157302157311%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init157294%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp159025)))))
                     _%stx157251%_)
                    _%r157262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match158878158879%_
                                                       (lambda (_%hd157269157332%_
                                                                _%tl157270157334%_
                                                                _%hd157271157339%_
                                                                _%tl157272157341%_)
                                                         (let ((_%tmp157337%_
                                                                _%hd157269157332%_)
                                                               (_%expr157344%_
                                                                _%hd157271157339%_))
                                                           (_%E157267157290%_))))
                                                      (_%__match158872158873%_
                                                       (lambda (_%hd157269157332%_
                                                                _%tl157270157334%_)
                                                         (let ((_%tmp157337%_
                                                                _%hd157269157332%_))
                                                           (_%E157267157290%_)))))
                                                 (if (pair? _%hd157263157286%_)
                                                     (let ((_%tl157282157389%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd157263157286%_)))
                                                           (_%hd157281157387%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd157263157286%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd157281157387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl157282157389%_)
                       (let ((_%tl157284157394%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl157282157389%_)))
                             (_%hd157283157392%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl157282157389%_))))
                         (if (null? _%tl157284157394%_)
                             (let ((_%expr157397%_ _%hd157283157392%_))
                               (_%K157280157384%_ _%expr157397%_))
                             (if (pair? _%tl157284157394%_)
                                 (let ((_%tl157274157348%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl157284157394%_)))
                                       (_%hd157273157346%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl157284157394%_))))
                                   (let ((_%tmp157337%_ _%hd157281157387%_)
                                         (_%expr157344%_ _%hd157283157392%_)
                                         (_%len157351%_ _%hd157273157346%_)
                                         (_%init157353%_ _%tl157274157348%_))
                                     (_%K157268157329%_
                                      _%init157353%_
                                      _%len157351%_
                                      _%expr157344%_
                                      _%tmp157337%_)))
                                 (_%__match158878158879%_
                                  _%hd157281157387%_
                                  _%tl157282157389%_
                                  _%hd157283157392%_
                                  _%tl157284157394%_))))
                       (_%__match158872158873%_
                        _%hd157281157387%_
                        _%tl157282157389%_))
                   (if (pair? _%tl157282157389%_)
                       (let ((_%tl157279157374%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl157282157389%_)))
                             (_%hd157278157372%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl157282157389%_))))
                         (if (null? _%tl157279157374%_)
                             (let ((_%id157370%_ _%hd157281157387%_)
                                   (_%expr157377%_ _%hd157278157372%_))
                               (_%K157275157362%_ _%expr157377%_ _%id157370%_))
                             (if (pair? _%tl157279157374%_)
                                 (let ((_%tl157274157348%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl157279157374%_)))
                                       (_%hd157273157346%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl157279157374%_))))
                                   (let ((_%tmp157337%_ _%hd157281157387%_)
                                         (_%expr157344%_ _%hd157278157372%_)
                                         (_%len157351%_ _%hd157273157346%_)
                                         (_%init157353%_ _%tl157274157348%_))
                                     (_%K157268157329%_
                                      _%init157353%_
                                      _%len157351%_
                                      _%expr157344%_
                                      _%tmp157337%_)))
                                 (_%__match158878158879%_
                                  _%hd157281157387%_
                                  _%tl157282157389%_
                                  _%hd157278157372%_
                                  _%tl157279157374%_))))
                       (_%__match158872158873%_
                        _%hd157281157387%_
                        _%tl157282157389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E157267157290%_)))))))
                                        (__tmp159023 (list _%body157259%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp159024
                                     __tmp159023
                                     _%post157258%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp159022)))
                     _%stx157251%_))))
          (__compile-let-form
           _%stx157251%_
           _%compile-simple157253%_
           _%compile-values157254%_))))
    (define __compile-call%
      (lambda (_%stx157211%_)
        (let* ((_%$e157213%_ _%stx157211%_)
               (_%$E157215157224%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e157213%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e157213%_))
              (let* ((_%$tgt157216157227%_
                      (let () (declare (not safe)) (__AST-e _%$e157213%_)))
                     (_%$hd157217157230%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt157216157227%_)))
                     (_%$tl157218157233%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt157216157227%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl157218157233%_))
                    (let* ((_%$tgt157219157237%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl157218157233%_)))
                           (_%$hd157220157240%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt157219157237%_)))
                           (_%$tl157221157243%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt157219157237%_)))
                           (_%rator157247%_ _%$hd157220157240%_)
                           (_%rands157249%_ _%$tl157221157243%_))
                      (__SRC__%
                       (cons (__compile _%rator157247%_)
                             (map __compile _%rands157249%_))
                       _%stx157211%_))
                    (_%$E157215157224%_)))
              (_%$E157215157224%_)))))
    (define __compile-ref%
      (lambda (_%stx157173%_)
        (let* ((_%$e157175%_ _%stx157173%_)
               (_%$E157177157186%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e157175%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e157175%_))
              (let* ((_%$tgt157178157189%_
                      (let () (declare (not safe)) (__AST-e _%$e157175%_)))
                     (_%$hd157179157192%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt157178157189%_)))
                     (_%$tl157180157195%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt157178157189%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl157180157195%_))
                    (let* ((_%$tgt157181157199%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl157180157195%_)))
                           (_%$hd157182157202%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt157181157199%_)))
                           (_%$tl157183157205%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt157181157199%_)))
                           (_%id157209%_ _%$hd157182157202%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl157183157205%_))
                                  '())
                          (__SRC__% _%id157209%_ _%stx157173%_)
                          (_%$E157177157186%_)))
                    (_%$E157177157186%_)))
              (_%$E157177157186%_)))))
    (define __compile-setq%
      (lambda (_%stx157120%_)
        (let* ((_%$e157122%_ _%stx157120%_)
               (_%$E157124157136%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e157122%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e157122%_))
              (let* ((_%$tgt157125157139%_
                      (let () (declare (not safe)) (__AST-e _%$e157122%_)))
                     (_%$hd157126157142%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt157125157139%_)))
                     (_%$tl157127157145%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt157125157139%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl157127157145%_))
                    (let* ((_%$tgt157128157149%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl157127157145%_)))
                           (_%$hd157129157152%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt157128157149%_)))
                           (_%$tl157130157155%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt157128157149%_)))
                           (_%id157159%_ _%$hd157129157152%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl157130157155%_))
                          (let* ((_%$tgt157131157161%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl157130157155%_)))
                                 (_%$hd157132157164%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt157131157161%_)))
                                 (_%$tl157133157167%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt157131157161%_)))
                                 (_%expr157171%_ _%$hd157132157164%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl157133157167%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id157159%_
                                              _%stx157120%_)
                                             (cons (__compile _%expr157171%_)
                                                   '())))
                                 _%stx157120%_)
                                (_%$E157124157136%_)))
                          (_%$E157124157136%_)))
                    (_%$E157124157136%_)))
              (_%$E157124157136%_)))))
    (define __compile-if%
      (lambda (_%stx157052%_)
        (let* ((_%$e157054%_ _%stx157052%_)
               (_%$E157056157071%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e157054%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e157054%_))
              (let* ((_%$tgt157057157074%_
                      (let () (declare (not safe)) (__AST-e _%$e157054%_)))
                     (_%$hd157058157077%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt157057157074%_)))
                     (_%$tl157059157080%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt157057157074%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl157059157080%_))
                    (let* ((_%$tgt157060157084%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl157059157080%_)))
                           (_%$hd157061157087%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt157060157084%_)))
                           (_%$tl157062157090%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt157060157084%_)))
                           (_%p157094%_ _%$hd157061157087%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl157062157090%_))
                          (let* ((_%$tgt157063157096%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl157062157090%_)))
                                 (_%$hd157064157099%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt157063157096%_)))
                                 (_%$tl157065157102%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt157063157096%_)))
                                 (_%t157106%_ _%$hd157064157099%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl157065157102%_))
                                (let* ((_%$tgt157066157108%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl157065157102%_)))
                                       (_%$hd157067157111%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt157066157108%_)))
                                       (_%$tl157068157114%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt157066157108%_)))
                                       (_%f157118%_ _%$hd157067157111%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl157068157114%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p157094%_)
                                                   (cons (__compile
                                                          _%t157106%_)
                                                         (cons (__compile
                                                                _%f157118%_)
                                                               '()))))
                                       _%stx157052%_)
                                      (_%$E157056157071%_)))
                                (_%$E157056157071%_)))
                          (_%$E157056157071%_)))
                    (_%$E157056157071%_)))
              (_%$E157056157071%_)))))
    (define __compile-quote%
      (lambda (_%stx157014%_)
        (let* ((_%$e157016%_ _%stx157014%_)
               (_%$E157018157027%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e157016%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e157016%_))
              (let* ((_%$tgt157019157030%_
                      (let () (declare (not safe)) (__AST-e _%$e157016%_)))
                     (_%$hd157020157033%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt157019157030%_)))
                     (_%$tl157021157036%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt157019157030%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl157021157036%_))
                    (let* ((_%$tgt157022157040%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl157021157036%_)))
                           (_%$hd157023157043%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt157022157040%_)))
                           (_%$tl157024157046%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt157022157040%_)))
                           (_%e157050%_ _%$hd157023157043%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl157024157046%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e157050%_))
                                       '()))
                           _%stx157014%_)
                          (_%$E157018157027%_)))
                    (_%$E157018157027%_)))
              (_%$E157018157027%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx156976%_)
        (let* ((_%$e156978%_ _%stx156976%_)
               (_%$E156980156989%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e156978%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e156978%_))
              (let* ((_%$tgt156981156992%_
                      (let () (declare (not safe)) (__AST-e _%$e156978%_)))
                     (_%$hd156982156995%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt156981156992%_)))
                     (_%$tl156983156998%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt156981156992%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl156983156998%_))
                    (let* ((_%$tgt156984157002%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl156983156998%_)))
                           (_%$hd156985157005%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt156984157002%_)))
                           (_%$tl156986157008%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt156984157002%_)))
                           (_%e157012%_ _%$hd156985157005%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl156986157008%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e157012%_ '()))
                           _%stx156976%_)
                          (_%$E156980156989%_)))
                    (_%$E156980156989%_)))
              (_%$E156980156989%_)))))
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
