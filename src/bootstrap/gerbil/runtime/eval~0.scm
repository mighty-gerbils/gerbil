(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1756224515)
  (begin
    (define __syntax::t
      (let ((__tmp123100 (list)) (__tmp123099 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp123100
         '(e id)
         __tmp123099
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args122904%_
        (apply make-instance __syntax::t _%$args122904%_)))
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
      (let ((__tmp123102 (list __syntax::t))
            (__tmp123101 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp123102
         '()
         __tmp123101
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args122901%_
        (apply make-instance __core-form::t _%$args122901%_)))
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
      (let ((__tmp123104 (list __core-form::t))
            (__tmp123103 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp123104
         '()
         __tmp123103
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args122898%_
        (apply make-instance __core-expression::t _%$args122898%_)))
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
      (let ((__tmp123106 (list __core-form::t))
            (__tmp123105 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp123106
         '()
         __tmp123105
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args122895%_
        (apply make-instance __core-special-form::t _%$args122895%_)))
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
      (lambda (_%id122893%_)
        (let ((__tmp123107
               (let () (declare (not safe)) (__AST-e _%id122893%_))))
          (declare (not safe))
          (__hash-get __core __tmp123107))))
    (define __core-bound-id?__%
      (lambda (_%id122876%_ _%is?122877%_)
        (let ((_%$e122879%_ (__core-resolve _%id122876%_)))
          (if _%$e122879%_ (_%is?122877%_ _%$e122879%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id122886%_)
        (let ((_%is?122888%_ true))
          (__core-bound-id?__% _%id122886%_ _%is?122888%_))))
    (define __core-bound-id?
      (lambda _g123108_
        (let ((_g123109_ (let () (declare (not safe)) (##length _g123108_))))
          (cond ((let () (declare (not safe)) (##fx= _g123109_ 1))
                 (apply __core-bound-id?__0 _g123108_))
                ((let () (declare (not safe)) (##fx= _g123109_ 2))
                 (apply __core-bound-id?__% _g123108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g123108_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id122859%_ _%e122860%_ _%make122861%_)
        (let ((__tmp123110
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e122860%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e122860%_
                   (_%make122861%_ _%e122860%_ _%id122859%_))))
          (declare (not safe))
          (__hash-put! __core _%id122859%_ __tmp123110))))
    (define __core-bind-syntax!__0
      (lambda (_%id122866%_ _%e122867%_)
        (let ((_%make122869%_ make-__syntax))
          (__core-bind-syntax!__% _%id122866%_ _%e122867%_ _%make122869%_))))
    (define __core-bind-syntax!
      (lambda _g123111_
        (let ((_g123112_ (let () (declare (not safe)) (##length _g123111_))))
          (cond ((let () (declare (not safe)) (##fx= _g123112_ 2))
                 (apply __core-bind-syntax!__0 _g123111_))
                ((let () (declare (not safe)) (##fx= _g123112_ 3))
                 (apply __core-bind-syntax!__% _g123111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g123111_))))))
    (define __SRC__%
      (lambda (_%e122839%_ _%src-stx122840%_)
        (if (or (pair? _%e122839%_) (symbol? _%e122839%_))
            (let ((__tmp123113
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx122840%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx122840%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e122839%_ __tmp123113))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e122839%_ 'gerbil#AST::t))
                (let ((__tmp123115
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e122839%_ '1 '#f '#f)))
                      (__tmp123114
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e122839%_)))))
                  (declare (not safe))
                  (##make-source __tmp123115 __tmp123114))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e122839%_))))))
    (define __SRC__0
      (lambda (_%e122851%_)
        (let ((_%src-stx122853%_ '#f))
          (__SRC__% _%e122851%_ _%src-stx122853%_))))
    (define __SRC
      (lambda _g123116_
        (let ((_g123117_ (let () (declare (not safe)) (##length _g123116_))))
          (cond ((let () (declare (not safe)) (##fx= _g123117_ 1))
                 (apply __SRC__0 _g123116_))
                ((let () (declare (not safe)) (##fx= _g123117_ 2))
                 (apply __SRC__% _g123116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g123116_))))))
    (define __locat
      (lambda (_%loc122836%_)
        (if (let () (declare (not safe)) (##locat? _%loc122836%_))
            _%loc122836%_
            '#f)))
    (define __check-values
      (lambda (_%obj122831%_ _%k122832%_)
        (let ((_%count122834%_
               (if (let () (declare (not safe)) (##values? _%obj122831%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj122831%_))
                   '1)))
          (if (fx= _%count122834%_ _%k122832%_)
              '#!void
              (let ((__tmp123119
                     (if (fx< _%count122834%_ _%k122832%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp123118
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj122831%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj122831%_))
                         _%obj122831%_)))
                (declare (not safe))
                (error __tmp123119 __tmp123118 _%k122832%_))))))
    (define __compile
      (lambda (_%stx122800%_)
        (let* ((_%$e122802%_ _%stx122800%_)
               (_%$E122804122810%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122802%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122802%_))
              (let* ((_%$tgt122805122813%_
                      (let () (declare (not safe)) (__AST-e _%$e122802%_)))
                     (_%$hd122806122816%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122805122813%_)))
                     (_%$tl122807122819%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122805122813%_)))
                     (_%form122823%_ _%$hd122806122816%_)
                     (_%$e122825%_ (__core-resolve _%form122823%_)))
                (if _%$e122825%_
                    ((lambda (_%bind122828%_)
                       ((##structure-ref _%bind122828%_ '1 __syntax::t '#f)
                        _%stx122800%_))
                     _%$e122825%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx122800%_
                       _%form122823%_))))
              (_%$E122804122810%_)))))
    (define __compile-error__%
      (lambda (_%stx122787%_ _%detail122788%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx122787%_
           _%detail122788%_))))
    (define __compile-error__0
      (lambda (_%stx122793%_)
        (let ((_%detail122795%_ '#f))
          (__compile-error__% _%stx122793%_ _%detail122795%_))))
    (define __compile-error
      (lambda _g123120_
        (let ((_g123121_ (let () (declare (not safe)) (##length _g123120_))))
          (cond ((let () (declare (not safe)) (##fx= _g123121_ 1))
                 (apply __compile-error__0 _g123120_))
                ((let () (declare (not safe)) (##fx= _g123121_ 2))
                 (apply __compile-error__% _g123120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g123120_))))))
    (define __compile-ignore%
      (lambda (_%stx122784%_) (__SRC__% ''#!void _%stx122784%_)))
    (define __compile-begin%
      (lambda (_%stx122759%_)
        (let* ((_%$e122761%_ _%stx122759%_)
               (_%$E122763122769%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122761%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122761%_))
              (let* ((_%$tgt122764122772%_
                      (let () (declare (not safe)) (__AST-e _%$e122761%_)))
                     (_%$hd122765122775%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122764122772%_)))
                     (_%$tl122766122778%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122764122772%_)))
                     (_%body122782%_ _%$tl122766122778%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body122782%_))
                 _%stx122759%_))
              (_%$E122763122769%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx122734%_)
        (let* ((_%$e122736%_ _%stx122734%_)
               (_%$E122738122744%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122736%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122736%_))
              (let* ((_%$tgt122739122747%_
                      (let () (declare (not safe)) (__AST-e _%$e122736%_)))
                     (_%$hd122740122750%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122739122747%_)))
                     (_%$tl122741122753%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122739122747%_)))
                     (_%body122757%_ _%$tl122741122753%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body122757%_)))
                 _%stx122734%_))
              (_%$E122738122744%_)))))
    (define __compile-import%
      (lambda (_%stx122709%_)
        (let* ((_%$e122711%_ _%stx122709%_)
               (_%$E122713122719%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122711%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122711%_))
              (let* ((_%$tgt122714122722%_
                      (let () (declare (not safe)) (__AST-e _%$e122711%_)))
                     (_%$hd122715122725%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122714122722%_)))
                     (_%$tl122716122728%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122714122722%_)))
                     (_%body122732%_ _%$tl122716122728%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body122732%_ '())) '()))
                 _%stx122709%_))
              (_%$E122713122719%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx122656%_)
        (let* ((_%$e122658%_ _%stx122656%_)
               (_%$E122660122672%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122658%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122658%_))
              (let* ((_%$tgt122661122675%_
                      (let () (declare (not safe)) (__AST-e _%$e122658%_)))
                     (_%$hd122662122678%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122661122675%_)))
                     (_%$tl122663122681%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122661122675%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl122663122681%_))
                    (let* ((_%$tgt122664122685%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl122663122681%_)))
                           (_%$hd122665122688%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt122664122685%_)))
                           (_%$tl122666122691%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt122664122685%_)))
                           (_%ann122695%_ _%$hd122665122688%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl122666122691%_))
                          (let* ((_%$tgt122667122697%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl122666122691%_)))
                                 (_%$hd122668122700%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122667122697%_)))
                                 (_%$tl122669122703%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122667122697%_)))
                                 (_%expr122707%_ _%$hd122668122700%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122669122703%_))
                                        '())
                                (__compile _%expr122707%_)
                                (_%$E122660122672%_)))
                          (_%$E122660122672%_)))
                    (_%$E122660122672%_)))
              (_%$E122660122672%_)))))
    (define __compile-define-values%
      (lambda (_%stx122547%_)
        (let* ((_%$e122549%_ _%stx122547%_)
               (_%$E122551122563%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122549%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122549%_))
              (let* ((_%$tgt122552122566%_
                      (let () (declare (not safe)) (__AST-e _%$e122549%_)))
                     (_%$hd122553122569%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122552122566%_)))
                     (_%$tl122554122572%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122552122566%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl122554122572%_))
                    (let* ((_%$tgt122555122576%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl122554122572%_)))
                           (_%$hd122556122579%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt122555122576%_)))
                           (_%$tl122557122582%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt122555122576%_)))
                           (_%hd122586%_ _%$hd122556122579%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl122557122582%_))
                          (let* ((_%$tgt122558122588%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl122557122582%_)))
                                 (_%$hd122559122591%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122558122588%_)))
                                 (_%$tl122560122594%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122558122588%_)))
                                 (_%expr122598%_ _%$hd122559122591%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122560122594%_))
                                        '())
                                (let* ((_%$e122600%_ _%hd122586%_)
                                       (_%$E122602122643%_
                                        (lambda ()
                                          (let ((_%$E122603122628%_
                                                 (lambda ()
                                                   (let* ((_%$E122604122615%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e122600%_))))
                  (_%ids122618%_ _%hd122586%_)
                  (_%len122620%_ (length _%ids122618%_))
                  (_%tmp122622%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp122622%_
                                       (cons (__compile _%expr122598%_) '())))
                           _%stx122547%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp122622%_
                                             (cons _%len122620%_ '())))
                                 _%stx122547%_)
                                (let ((__tmp123122
                                       (let ((__tmp123124
                                              (lambda (_%id122625%_
                                                       _%k122626%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id122625%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id122625%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp122622%_
                                           (cons _%k122626%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx122547%_)
                                                    '#f)))
                                             (__tmp123123
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len122620%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp123124
                                          _%ids122618%_
                                          __tmp123123))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp123122)))))
              _%stx122547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e122600%_))
                                                (let* ((_%$tgt122605122631%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e122600%_)))
                                                       (_%$hd122606122634%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt122605122631%_)))
                                                       (_%$tl122607122637%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt122605122631%_)))
                                                       (_%id122641%_
                                                        _%$hd122606122634%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl122607122637%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id122641%_)
                           (cons (__compile _%expr122598%_) '())))
               _%stx122547%_)
              (_%$E122603122628%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E122603122628%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e122600%_))
                                      (let* ((_%$tgt122608122646%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e122600%_)))
                                             (_%$hd122609122649%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt122608122646%_)))
                                             (_%$tl122610122652%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt122608122646%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd122609122649%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl122610122652%_))
                                                        '())
                                                (__compile _%expr122598%_)
                                                (_%$E122602122643%_))
                                            (_%$E122602122643%_)))
                                      (_%$E122602122643%_)))
                                (_%$E122551122563%_)))
                          (_%$E122551122563%_)))
                    (_%$E122551122563%_)))
              (_%$E122551122563%_)))))
    (define __compile-head-id
      (lambda (_%e122545%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e122545%_))
             _%e122545%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd122502%_)
        (let _%recur122504%_ ((_%rest122506%_ _%hd122502%_))
          (let* ((_%$e122508%_ _%rest122506%_)
                 (_%$E122510122528%_
                  (lambda ()
                    (let ((_%$E122511122525%_
                           (lambda ()
                             (let* ((_%$E122512122520%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e122508%_))))
                                    (_%tail122523%_ _%$e122508%_))
                               (__compile-head-id _%tail122523%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122508%_))
                                  '())
                          '()
                          (_%$E122511122525%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122508%_))
                (let* ((_%$tgt122513122531%_
                        (let () (declare (not safe)) (__AST-e _%$e122508%_)))
                       (_%$hd122514122534%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122513122531%_)))
                       (_%$tl122515122537%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122513122531%_)))
                       (_%hd122541%_ _%$hd122514122534%_)
                       (_%rest122543%_ _%$tl122515122537%_))
                  (cons (__compile-head-id _%hd122541%_)
                        (_%recur122504%_ _%rest122543%_)))
                (_%$E122510122528%_))))))
    (define __compile-lambda%
      (lambda (_%stx122449%_)
        (let* ((_%$e122451%_ _%stx122449%_)
               (_%$E122453122465%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122451%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122451%_))
              (let* ((_%$tgt122454122468%_
                      (let () (declare (not safe)) (__AST-e _%$e122451%_)))
                     (_%$hd122455122471%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122454122468%_)))
                     (_%$tl122456122474%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122454122468%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl122456122474%_))
                    (let* ((_%$tgt122457122478%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl122456122474%_)))
                           (_%$hd122458122481%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt122457122478%_)))
                           (_%$tl122459122484%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt122457122478%_)))
                           (_%hd122488%_ _%$hd122458122481%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl122459122484%_))
                          (let* ((_%$tgt122460122490%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl122459122484%_)))
                                 (_%$hd122461122493%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122460122490%_)))
                                 (_%$tl122462122496%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122460122490%_)))
                                 (_%body122500%_ _%$hd122461122493%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122462122496%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd122488%_)
                                             (cons (__compile _%body122500%_)
                                                   '())))
                                 _%stx122449%_)
                                (_%$E122453122465%_)))
                          (_%$E122453122465%_)))
                    (_%$E122453122465%_)))
              (_%$E122453122465%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx122241%_)
        (letrec ((_%variadic?122243%_
                  (lambda (_%hd122414%_)
                    (let* ((_%$e122416%_ _%hd122414%_)
                           (_%$E122418122434%_
                            (lambda ()
                              (let ((_%$E122419122431%_
                                     (lambda ()
                                       (let ((_%$E122420122428%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e122416%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e122416%_))
                                            '())
                                    '#f
                                    (_%$E122419122431%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122416%_))
                          (let* ((_%$tgt122421122437%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122416%_)))
                                 (_%$hd122422122440%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122421122437%_)))
                                 (_%$tl122423122443%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122421122437%_)))
                                 (_%rest122447%_ _%$tl122423122443%_))
                            (_%variadic?122243%_ _%rest122447%_))
                          (_%$E122418122434%_)))))
                 (_%arity122244%_
                  (lambda (_%hd122379%_)
                    (let _%lp122381%_ ((_%rest122383%_ _%hd122379%_)
                                       (_%k122384%_ '0))
                      (let* ((_%$e122386%_ _%rest122383%_)
                             (_%$E122388122399%_
                              (lambda ()
                                (let ((_%$E122389122396%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e122386%_)))))
                                  _%k122384%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e122386%_))
                            (let* ((_%$tgt122390122402%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e122386%_)))
                                   (_%$hd122391122405%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt122390122402%_)))
                                   (_%$tl122392122408%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt122390122402%_)))
                                   (_%rest122412%_ _%$tl122392122408%_))
                              (_%lp122381%_
                               _%rest122412%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k122384%_ '1))))
                            (_%$E122388122399%_))))))
                 (_%generate122245%_
                  (lambda (_%rest122306%_ _%args122307%_ _%len122308%_)
                    (let* ((_%$e122310%_ _%rest122306%_)
                           (_%$E122312122323%_
                            (lambda ()
                              (let ((_%$E122313122320%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e122310%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args122307%_ '())))
                                 _%stx122241%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122310%_))
                          (let* ((_%$tgt122314122326%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122310%_)))
                                 (_%$hd122315122329%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122314122326%_)))
                                 (_%$tl122316122332%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122314122326%_)))
                                 (_%clause122336%_ _%$hd122315122329%_)
                                 (_%rest122338%_ _%$tl122316122332%_)
                                 (_%$e122340%_ _%clause122336%_)
                                 (_%$E122342122351%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e122340%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e122340%_))
                                (let* ((_%$tgt122343122354%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e122340%_)))
                                       (_%$hd122344122357%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122343122354%_)))
                                       (_%$tl122345122360%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122343122354%_)))
                                       (_%hd122364%_ _%$hd122344122357%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl122345122360%_))
                                      (let* ((_%$tgt122346122366%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122345122360%_)))
                                             (_%$hd122347122369%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt122346122366%_)))
                                             (_%$tl122348122372%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt122346122366%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl122348122372%_))
                                                    '())
                                            (let ((_%clen122376%_
                                                   (_%arity122244%_
                                                    _%hd122364%_))
                                                  (_%cmp122377%_
                                                   (if (_%variadic?122243%_
                                                        _%hd122364%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp122377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len122308%_ (cons _%clen122376%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause122336%_))
                                      (cons _%args122307%_ '())))
                          _%stx122241%_)
                         (cons (_%generate122245%_
                                _%rest122338%_
                                _%args122307%_
                                _%len122308%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx122241%_))
                                            (_%$E122342122351%_)))
                                      (_%$E122342122351%_)))
                                (_%$E122342122351%_)))
                          (_%$E122312122323%_))))))
          (let* ((_%$e122247%_ _%stx122241%_)
                 (_%$E122249122281%_
                  (lambda ()
                    (let ((_%$E122250122263%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122247%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122247%_))
                          (let* ((_%$tgt122251122266%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122247%_)))
                                 (_%$hd122252122269%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122251122266%_)))
                                 (_%$tl122253122272%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122251122266%_)))
                                 (_%clauses122276%_ _%$tl122253122272%_))
                            (let ((_%args122278%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx122241%_))
                                  (_%len122279%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx122241%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args122278%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len122279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args122278%_ '()))
                                         _%stx122241%_)
                                        '()))
                            '())
                      (cons (_%generate122245%_
                             _%clauses122276%_
                             _%args122278%_
                             _%len122279%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx122241%_)
                                                 '())))
                               _%stx122241%_)))
                          (_%$E122250122263%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122247%_))
                (let* ((_%$tgt122254122284%_
                        (let () (declare (not safe)) (__AST-e _%$e122247%_)))
                       (_%$hd122255122287%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122254122284%_)))
                       (_%$tl122256122290%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122254122284%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl122256122290%_))
                      (let* ((_%$tgt122257122294%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl122256122290%_)))
                             (_%$hd122258122297%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt122257122294%_)))
                             (_%$tl122259122300%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt122257122294%_)))
                             (_%clause122304%_ _%$hd122258122297%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl122259122300%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause122304%_))
                            (_%$E122249122281%_)))
                      (_%$E122249122281%_)))
                (_%$E122249122281%_))))))
    (define __compile-let-form
      (lambda (_%stx122010%_ _%compile-simple122011%_ _%compile-values122012%_)
        (letrec ((_%simple-bind?122014%_
                  (lambda (_%hd122199%_)
                    (let* ((_%hd122200122210%_ _%hd122199%_)
                           (_%else122203122218%_ (lambda () '#f)))
                      (let ((_%K122206122231%_ (lambda (_%id122229%_) '#t))
                            (_%K122205122223%_ (lambda () '#t)))
                        (let ((_%try-match122202122226%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd122200122210%_ '#f))
                                     (_%K122205122223%_)
                                     (_%else122203122218%_)))))
                          (if (pair? _%hd122200122210%_)
                              (let ((_%tl122208122236%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd122200122210%_)))
                                    (_%hd122207122234%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd122200122210%_))))
                                (if (null? _%tl122208122236%_)
                                    (let ((_%id122239%_ _%hd122207122234%_))
                                      (_%K122206122231%_ _%id122239%_))
                                    (_%try-match122202122226%_)))
                              (_%try-match122202122226%_)))))))
                 (_%car-e122015%_
                  (lambda (_%hd122197%_)
                    (if (pair? _%hd122197%_)
                        (let () (declare (not safe)) (##car _%hd122197%_))
                        _%hd122197%_))))
          (let* ((_%$e122017%_ _%stx122010%_)
                 (_%$E122019122162%_
                  (lambda ()
                    (let ((_%$E122020122042%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122017%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122017%_))
                          (let* ((_%$tgt122021122045%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122017%_)))
                                 (_%$hd122022122048%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122021122045%_)))
                                 (_%$tl122023122051%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122021122045%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl122023122051%_))
                                (let* ((_%$tgt122024122055%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122023122051%_)))
                                       (_%$hd122025122058%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122024122055%_)))
                                       (_%$tl122026122061%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122024122055%_)))
                                       (_%hd122065%_ _%$hd122025122058%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl122026122061%_))
                                      (let* ((_%$tgt122027122067%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122026122061%_)))
                                             (_%$hd122028122070%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt122027122067%_)))
                                             (_%$tl122029122073%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt122027122067%_)))
                                             (_%body122077%_
                                              _%$hd122028122070%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl122029122073%_))
                                                    '())
                                            (let* ((_%hd-ids122117%_
                                                    (map (lambda (_%bind122079%_)
                                                           (let* ((_%$e122081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind122079%_)
                          (_%$E122083122092%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122081%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e122081%_))
                         (let* ((_%$tgt122084122095%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e122081%_)))
                                (_%$hd122085122098%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt122084122095%_)))
                                (_%$tl122086122101%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt122084122095%_)))
                                (_%ids122105%_ _%$hd122085122098%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl122086122101%_))
                               (let* ((_%$tgt122087122107%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl122086122101%_)))
                                      (_%$hd122088122110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt122087122107%_)))
                                      (_%$tl122089122113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt122087122107%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl122089122113%_))
                                             '())
                                     _%ids122105%_
                                     (_%$E122083122092%_)))
                               (_%$E122083122092%_)))
                         (_%$E122083122092%_))))
                 _%hd122065%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs122157%_
                                                    (map (lambda (_%bind122119%_)
                                                           (let* ((_%$e122121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind122119%_)
                          (_%$E122123122132%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122121%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e122121%_))
                         (let* ((_%$tgt122124122135%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e122121%_)))
                                (_%$hd122125122138%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt122124122135%_)))
                                (_%$tl122126122141%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt122124122135%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl122126122141%_))
                               (let* ((_%$tgt122127122145%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl122126122141%_)))
                                      (_%$hd122128122148%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt122127122145%_)))
                                      (_%$tl122129122151%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt122127122145%_)))
                                      (_%expr122155%_ _%$hd122128122148%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl122129122151%_))
                                             '())
                                     (__compile _%expr122155%_)
                                     (_%$E122123122132%_)))
                               (_%$E122123122132%_)))
                         (_%$E122123122132%_))))
                 _%hd122065%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body122159%_
                                                    (__compile
                                                     _%body122077%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?122014%_
                                                     _%hd-ids122117%_))
                                                  (_%compile-simple122011%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e122015%_
                                                            _%hd-ids122117%_))
                                                   _%exprs122157%_
                                                   _%body122159%_)
                                                  (_%compile-values122012%_
                                                   _%hd-ids122117%_
                                                   _%exprs122157%_
                                                   _%body122159%_)))
                                            (_%$E122020122042%_)))
                                      (_%$E122020122042%_)))
                                (_%$E122020122042%_)))
                          (_%$E122020122042%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122017%_))
                (let* ((_%$tgt122030122165%_
                        (let () (declare (not safe)) (__AST-e _%$e122017%_)))
                       (_%$hd122031122168%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122030122165%_)))
                       (_%$tl122032122171%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122030122165%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl122032122171%_))
                      (let* ((_%$tgt122033122175%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl122032122171%_)))
                             (_%$hd122034122178%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt122033122175%_)))
                             (_%$tl122035122181%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt122033122175%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd122034122178%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl122035122181%_))
                                (let* ((_%$tgt122036122185%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122035122181%_)))
                                       (_%$hd122037122188%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122036122185%_)))
                                       (_%$tl122038122191%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122036122185%_)))
                                       (_%body122195%_ _%$hd122037122188%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122038122191%_))
                                              '())
                                      (__compile _%body122195%_)
                                      (_%$E122019122162%_)))
                                (_%$E122019122162%_))
                            (_%$E122019122162%_)))
                      (_%$E122019122162%_)))
                (_%$E122019122162%_))))))
    (define __compile-let-values%
      (lambda (_%stx121822%_)
        (letrec ((_%compile-simple121824%_
                  (lambda (_%hd-ids122006%_ _%exprs122007%_ _%body122008%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp123125
                                        (map __compile-head-id
                                             _%hd-ids122006%_)))
                                   (declare (not safe))
                                   (##map list __tmp123125 _%exprs122007%_))
                                 (cons _%body122008%_ '())))
                     _%stx121822%_)))
                 (_%compile-values121825%_
                  (lambda (_%hd-ids121921%_ _%exprs121922%_ _%body121923%_)
                    (let _%lp121925%_ ((_%rest121927%_ _%hd-ids121921%_)
                                       (_%exprs121928%_ _%exprs121922%_)
                                       (_%bind121929%_ '())
                                       (_%post121930%_ '()))
                      (let* ((_%rest121931121945%_ _%rest121927%_)
                             (_%else121934121953%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind121929%_)
                                             (cons (_%compile-post121826%_
                                                    _%post121930%_
                                                    _%body121923%_)
                                                   '())))
                                 _%stx121822%_))))
                        (let ((_%K121939121989%_
                               (lambda (_%rest121986%_ _%id121987%_)
                                 (_%lp121925%_
                                  _%rest121986%_
                                  (cdr _%exprs121928%_)
                                  (cons (cons (__compile-head-id _%id121987%_)
                                              (cons (car _%exprs121928%_) '()))
                                        _%bind121929%_)
                                  _%post121930%_)))
                              (_%K121936121971%_
                               (lambda (_%rest121957%_ _%hd121958%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd121958%_))
                                     (_%lp121925%_
                                      _%rest121957%_
                                      (cdr _%exprs121928%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd121958%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs121928%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind121929%_)
                                      _%post121930%_)
                                     (if (list? _%hd121958%_)
                                         (let* ((_%len121962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd121958%_)))
                                                (_%tmp121964%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp121925%_
                                            _%rest121957%_
                                            (cdr _%exprs121928%_)
                                            (cons (cons _%tmp121964%_
                                                        (cons (car _%exprs121928%_)
                                                              '()))
                                                  _%bind121929%_)
                                            (cons (cons _%tmp121964%_
                                                        (cons _%len121962%_
                                                              (let ((__tmp123127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id121967%_ _%k121968%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id121967%_))
                                   (cons (__SRC__0 _%id121967%_) _%k121968%_)
                                   '#f)))
                            (__tmp123126
                             (let ()
                               (declare (not safe))
                               (##iota _%len121962%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp123127 _%hd121958%_ __tmp123126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post121930%_)))
                                         (__compile-error__%
                                          _%stx121822%_
                                          _%hd121958%_))))))
                          (if (pair? _%rest121931121945%_)
                              (let ((_%tl121941121994%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest121931121945%_)))
                                    (_%hd121940121992%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest121931121945%_))))
                                (if (pair? _%hd121940121992%_)
                                    (let ((_%tl121943121999%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd121940121992%_)))
                                          (_%hd121942121997%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd121940121992%_))))
                                      (if (null? _%tl121943121999%_)
                                          (let ((_%id122002%_
                                                 _%hd121942121997%_)
                                                (_%rest122004%_
                                                 _%tl121941121994%_))
                                            (_%K121939121989%_
                                             _%rest122004%_
                                             _%id122002%_))
                                          (let ((_%hd121979%_
                                                 _%hd121940121992%_)
                                                (_%rest121981%_
                                                 _%tl121941121994%_))
                                            (_%K121936121971%_
                                             _%rest121981%_
                                             _%hd121979%_))))
                                    (let ((_%hd121979%_ _%hd121940121992%_)
                                          (_%rest121981%_ _%tl121941121994%_))
                                      (_%K121936121971%_
                                       _%rest121981%_
                                       _%hd121979%_))))
                              (_%else121934121953%_)))))))
                 (_%compile-post121826%_
                  (lambda (_%post121828%_ _%body121829%_)
                    (let _%lp121831%_ ((_%rest121833%_ _%post121828%_)
                                       (_%check121834%_ '())
                                       (_%bind121835%_ '()))
                      (let* ((_%rest121836121848%_ _%rest121833%_)
                             (_%else121838121856%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp123128
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind121835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body121829%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx121822%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp123128
                                          _%check121834%_)))
                                 _%stx121822%_)))
                             (_%K121840121895%_
                              (lambda (_%rest121859%_
                                       _%init121860%_
                                       _%len121861%_
                                       _%tmp121862%_)
                                (_%lp121831%_
                                 _%rest121859%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp121862%_
                                                    (cons _%len121861%_ '())))
                                        _%stx121822%_)
                                       _%check121834%_)
                                 (let ((__tmp123129
                                        (lambda (_%hd121864%_ _%r121865%_)
                                          (let* ((_%hd121866121873%_
                                                  _%hd121864%_)
                                                 (_%E121868121877%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd121866121873%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K121869121883%_
                                                  (lambda (_%k121880%_
                                                           _%id121881%_)
                                                    (cons (cons _%id121881%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp121862%_
                                          (cons _%k121880%_ '())))
                              '()))
                  _%r121865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd121866121873%_)
                                                (let ((_%hd121870121886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd121866121873%_)))
                                                      (_%tl121871121888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd121866121873%_))))
                                                  (let* ((_%id121891%_
                                                          _%hd121870121886%_)
                                                         (_%k121893%_
                                                          _%tl121871121888%_))
                                                    (_%K121869121883%_
                                                     _%k121893%_
                                                     _%id121891%_)))
                                                (_%E121868121877%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp123129
                                    _%bind121835%_
                                    _%init121860%_))))))
                        (if (pair? _%rest121836121848%_)
                            (let ((_%hd121841121898%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest121836121848%_)))
                                  (_%tl121842121900%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest121836121848%_))))
                              (if (pair? _%hd121841121898%_)
                                  (let ((_%hd121843121903%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd121841121898%_)))
                                        (_%tl121844121905%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd121841121898%_))))
                                    (let ((_%tmp121908%_ _%hd121843121903%_))
                                      (if (pair? _%tl121844121905%_)
                                          (let ((_%hd121845121910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl121844121905%_)))
                                                (_%tl121846121912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl121844121905%_))))
                                            (let* ((_%len121915%_
                                                    _%hd121845121910%_)
                                                   (_%init121917%_
                                                    _%tl121846121912%_)
                                                   (_%rest121919%_
                                                    _%tl121842121900%_))
                                              (_%K121840121895%_
                                               _%rest121919%_
                                               _%init121917%_
                                               _%len121915%_
                                               _%tmp121908%_)))
                                          (_%else121838121856%_))))
                                  (_%else121838121856%_)))
                            (_%else121838121856%_)))))))
          (__compile-let-form
           _%stx121822%_
           _%compile-simple121824%_
           _%compile-values121825%_))))
    (define __compile-letrec-values%
      (lambda (_%stx121619%_)
        (letrec ((_%compile-simple121621%_
                  (lambda (_%hd-ids121818%_ _%exprs121819%_ _%body121820%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp123130
                                        (map __compile-head-id
                                             _%hd-ids121818%_)))
                                   (declare (not safe))
                                   (##map list __tmp123130 _%exprs121819%_))
                                 (cons _%body121820%_ '())))
                     _%stx121619%_)))
                 (_%compile-values121622%_
                  (lambda (_%hd-ids121729%_ _%exprs121730%_ _%body121731%_)
                    (let _%lp121733%_ ((_%rest121735%_ _%hd-ids121729%_)
                                       (_%exprs121736%_ _%exprs121730%_)
                                       (_%pre121737%_ '())
                                       (_%bind121738%_ '())
                                       (_%post121739%_ '()))
                      (let* ((_%rest121740121754%_ _%rest121735%_)
                             (_%else121743121762%_
                              (lambda ()
                                (_%compile-inner121623%_
                                 _%pre121737%_
                                 _%bind121738%_
                                 _%post121739%_
                                 _%body121731%_))))
                        (let ((_%K121748121801%_
                               (lambda (_%rest121798%_ _%id121799%_)
                                 (_%lp121733%_
                                  _%rest121798%_
                                  (cdr _%exprs121736%_)
                                  _%pre121737%_
                                  (cons (cons (__compile-head-id _%id121799%_)
                                              (cons (car _%exprs121736%_) '()))
                                        _%bind121738%_)
                                  _%post121739%_)))
                              (_%K121745121783%_
                               (lambda (_%rest121766%_ _%hd121767%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd121767%_))
                                     (_%lp121733%_
                                      _%rest121766%_
                                      (cdr _%exprs121736%_)
                                      _%pre121737%_
                                      (cons (cons (__compile-head-id
                                                   _%hd121767%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs121736%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind121738%_)
                                      _%post121739%_)
                                     (if (list? _%hd121767%_)
                                         (let* ((_%len121771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd121767%_)))
                                                (_%tmp121773%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp121733%_
                                            _%rest121766%_
                                            (cdr _%exprs121736%_)
                                            (let ((__tmp123131
                                                   (lambda (_%id121776%_
                                                            _%r121777%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id121776%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121776%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r121777%_)
                 _%r121777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp123131
                                               _%pre121737%_
                                               _%hd121767%_))
                                            (cons (cons _%tmp121773%_
                                                        (cons (car _%exprs121736%_)
                                                              '()))
                                                  _%bind121738%_)
                                            (cons (cons _%tmp121773%_
                                                        (cons _%len121771%_
                                                              (let ((__tmp123133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id121779%_ _%k121780%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id121779%_))
                                   (cons (__SRC__0 _%id121779%_) _%k121780%_)
                                   '#f)))
                            (__tmp123132
                             (let ()
                               (declare (not safe))
                               (##iota _%len121771%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp123133 _%hd121767%_ __tmp123132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post121739%_)))
                                         (__compile-error__%
                                          _%stx121619%_
                                          _%hd121767%_))))))
                          (if (pair? _%rest121740121754%_)
                              (let ((_%tl121750121806%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest121740121754%_)))
                                    (_%hd121749121804%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest121740121754%_))))
                                (if (pair? _%hd121749121804%_)
                                    (let ((_%tl121752121811%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd121749121804%_)))
                                          (_%hd121751121809%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd121749121804%_))))
                                      (if (null? _%tl121752121811%_)
                                          (let ((_%id121814%_
                                                 _%hd121751121809%_)
                                                (_%rest121816%_
                                                 _%tl121750121806%_))
                                            (_%K121748121801%_
                                             _%rest121816%_
                                             _%id121814%_))
                                          (let ((_%hd121791%_
                                                 _%hd121749121804%_)
                                                (_%rest121793%_
                                                 _%tl121750121806%_))
                                            (_%K121745121783%_
                                             _%rest121793%_
                                             _%hd121791%_))))
                                    (let ((_%hd121791%_ _%hd121749121804%_)
                                          (_%rest121793%_ _%tl121750121806%_))
                                      (_%K121745121783%_
                                       _%rest121793%_
                                       _%hd121791%_))))
                              (_%else121743121762%_)))))))
                 (_%compile-inner121623%_
                  (lambda (_%pre121724%_
                           _%bind121725%_
                           _%post121726%_
                           _%body121727%_)
                    (if (null? _%pre121724%_)
                        (_%compile-bind121624%_
                         _%bind121725%_
                         _%post121726%_
                         _%body121727%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre121724%_)
                                     (cons (_%compile-bind121624%_
                                            _%bind121725%_
                                            _%post121726%_
                                            _%body121727%_)
                                           '())))
                         _%stx121619%_))))
                 (_%compile-bind121624%_
                  (lambda (_%bind121720%_ _%post121721%_ _%body121722%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind121720%_)
                                 (cons (_%compile-post121625%_
                                        _%post121721%_
                                        _%body121722%_)
                                       '())))
                     _%stx121619%_)))
                 (_%compile-post121625%_
                  (lambda (_%post121627%_ _%body121628%_)
                    (let _%lp121630%_ ((_%rest121632%_ _%post121627%_)
                                       (_%check121633%_ '())
                                       (_%bind121634%_ '()))
                      (let* ((_%rest121635121647%_ _%rest121632%_)
                             (_%else121637121655%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp123134
                                              (let ((__tmp123135
                                                     (cons _%body121628%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp123135
                                                 _%bind121634%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp123134
                                          _%check121633%_)))
                                 _%stx121619%_)))
                             (_%K121639121694%_
                              (lambda (_%rest121658%_
                                       _%init121659%_
                                       _%len121660%_
                                       _%tmp121661%_)
                                (_%lp121630%_
                                 _%rest121658%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp121661%_
                                                    (cons _%len121660%_ '())))
                                        _%stx121619%_)
                                       _%check121633%_)
                                 (let ((__tmp123136
                                        (lambda (_%hd121663%_ _%r121664%_)
                                          (let* ((_%hd121665121672%_
                                                  _%hd121663%_)
                                                 (_%E121667121676%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd121665121672%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K121668121682%_
                                                  (lambda (_%k121679%_
                                                           _%id121680%_)
                                                    (cons (cons 'set!
                                                                (cons _%id121680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp121661%_
                                                (cons _%k121679%_ '())))
                                    '())))
                  _%r121664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd121665121672%_)
                                                (let ((_%hd121669121685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd121665121672%_)))
                                                      (_%tl121670121687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd121665121672%_))))
                                                  (let* ((_%id121690%_
                                                          _%hd121669121685%_)
                                                         (_%k121692%_
                                                          _%tl121670121687%_))
                                                    (_%K121668121682%_
                                                     _%k121692%_
                                                     _%id121690%_)))
                                                (_%E121667121676%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp123136
                                    _%bind121634%_
                                    _%init121659%_))))))
                        (if (pair? _%rest121635121647%_)
                            (let ((_%hd121640121697%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest121635121647%_)))
                                  (_%tl121641121699%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest121635121647%_))))
                              (if (pair? _%hd121640121697%_)
                                  (let ((_%hd121642121702%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd121640121697%_)))
                                        (_%tl121643121704%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd121640121697%_))))
                                    (let ((_%tmp121707%_ _%hd121642121702%_))
                                      (if (pair? _%tl121643121704%_)
                                          (let ((_%hd121644121709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl121643121704%_)))
                                                (_%tl121645121711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl121643121704%_))))
                                            (let* ((_%len121714%_
                                                    _%hd121644121709%_)
                                                   (_%init121716%_
                                                    _%tl121645121711%_)
                                                   (_%rest121718%_
                                                    _%tl121641121699%_))
                                              (_%K121639121694%_
                                               _%rest121718%_
                                               _%init121716%_
                                               _%len121714%_
                                               _%tmp121707%_)))
                                          (_%else121637121655%_))))
                                  (_%else121637121655%_)))
                            (_%else121637121655%_)))))))
          (__compile-let-form
           _%stx121619%_
           _%compile-simple121621%_
           _%compile-values121622%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx121370%_)
        (letrec ((_%compile-simple121372%_
                  (lambda (_%hd-ids121615%_ _%exprs121616%_ _%body121617%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp123137
                                        (map __compile-head-id
                                             _%hd-ids121615%_)))
                                   (declare (not safe))
                                   (##map list __tmp123137 _%exprs121616%_))
                                 (cons _%body121617%_ '())))
                     _%stx121370%_)))
                 (_%compile-values121373%_
                  (lambda (_%hd-ids121522%_ _%exprs121523%_ _%body121524%_)
                    (let _%lp121526%_ ((_%rest121528%_ _%hd-ids121522%_)
                                       (_%exprs121529%_ _%exprs121523%_)
                                       (_%bind121530%_ '())
                                       (_%post121531%_ '()))
                      (let* ((_%rest121532121546%_ _%rest121528%_)
                             (_%else121535121554%_
                              (lambda ()
                                (_%compile-bind121374%_
                                 _%bind121530%_
                                 _%post121531%_
                                 _%body121524%_))))
                        (let ((_%K121540121598%_
                               (lambda (_%rest121593%_ _%hd121594%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd121594%_))
                                     (let ((_%id121596%_
                                            (__SRC__0 _%hd121594%_)))
                                       (_%lp121526%_
                                        _%rest121593%_
                                        (cdr _%exprs121529%_)
                                        (cons (cons _%id121596%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind121530%_)
                                        (cons (cons _%id121596%_
                                                    (cons (car _%exprs121529%_)
                                                          '()))
                                              _%post121531%_)))
                                     (_%lp121526%_
                                      _%rest121593%_
                                      (cdr _%exprs121529%_)
                                      _%bind121530%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs121529%_)
                                                        '()))
                                            _%post121531%_)))))
                              (_%K121537121578%_
                               (lambda (_%rest121558%_ _%hd121559%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd121559%_))
                                     (let ((_%id121562%_
                                            (__SRC__0 _%hd121559%_)))
                                       (_%lp121526%_
                                        _%rest121558%_
                                        (cdr _%exprs121529%_)
                                        (cons (cons _%id121562%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind121530%_)
                                        (cons (cons _%id121562%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs121529%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post121531%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd121559%_))
                                         (if (list? _%hd121559%_)
                                             (let* ((_%len121566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd121559%_)))
                                                    (_%tmp121568%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp121526%_
                                                _%rest121558%_
                                                (cdr _%exprs121529%_)
                                                (let ((__tmp123138
                                                       (lambda (_%id121571%_
                                                                _%r121572%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id121571%_))
                     (cons (cons (__SRC__0 _%id121571%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r121572%_)
                     _%r121572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp123138
                                                   _%bind121530%_
                                                   _%hd121559%_))
                                                (cons (cons _%tmp121568%_
                                                            (cons (car _%exprs121529%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len121566%_
                                (let ((__tmp123140
                                       (lambda (_%id121574%_ _%k121575%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id121574%_))
                                             (cons (__SRC__0 _%id121574%_)
                                                   _%k121575%_)
                                             '#f)))
                                      (__tmp123139
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len121566%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp123140
                                   _%hd121559%_
                                   __tmp123139)))))
              _%post121531%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx121370%_
                                              _%hd121559%_))
                                         (_%lp121526%_
                                          _%rest121558%_
                                          (cdr _%exprs121529%_)
                                          _%bind121530%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs121529%_)
                                                            '()))
                                                _%post121531%_)))))))
                          (if (pair? _%rest121532121546%_)
                              (let ((_%tl121542121603%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest121532121546%_)))
                                    (_%hd121541121601%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest121532121546%_))))
                                (if (pair? _%hd121541121601%_)
                                    (let ((_%tl121544121608%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd121541121601%_)))
                                          (_%hd121543121606%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd121541121601%_))))
                                      (if (null? _%tl121544121608%_)
                                          (let ((_%hd121611%_
                                                 _%hd121543121606%_)
                                                (_%rest121613%_
                                                 _%tl121542121603%_))
                                            (_%K121540121598%_
                                             _%rest121613%_
                                             _%hd121611%_))
                                          (let ((_%hd121586%_
                                                 _%hd121541121601%_)
                                                (_%rest121588%_
                                                 _%tl121542121603%_))
                                            (_%K121537121578%_
                                             _%rest121588%_
                                             _%hd121586%_))))
                                    (let ((_%hd121586%_ _%hd121541121601%_)
                                          (_%rest121588%_ _%tl121542121603%_))
                                      (_%K121537121578%_
                                       _%rest121588%_
                                       _%hd121586%_))))
                              (_%else121535121554%_)))))))
                 (_%compile-bind121374%_
                  (lambda (_%bind121518%_ _%post121519%_ _%body121520%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind121518%_)
                                 (cons (_%compile-post121375%_
                                        _%post121519%_
                                        _%body121520%_)
                                       '())))
                     _%stx121370%_)))
                 (_%compile-post121375%_
                  (lambda (_%post121377%_ _%body121378%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp123141
                                  (let ((__tmp123143
                                         (lambda (_%hd121380%_ _%r121381%_)
                                           (let* ((_%hd121382121405%_
                                                   _%hd121380%_)
                                                  (_%E121386121409%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd121382121405%_
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
                                             (let ((_%K121399121503%_
                                                    (lambda (_%expr121501%_)
                                                      (cons _%expr121501%_
                                                            _%r121381%_)))
                                                   (_%K121394121481%_
                                                    (lambda (_%expr121478%_
                                                             _%id121479%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id121479%_ (cons _%expr121478%_ '())))
                     _%stx121370%_)
                    _%r121381%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K121387121448%_
                                                    (lambda (_%init121413%_
                                                             _%len121414%_
                                                             _%expr121415%_
                                                             _%tmp121416%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp121416%_
                                             (cons _%expr121415%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp121416%_
                                                    (cons _%len121414%_ '())))
                                        _%stx121370%_)
                                       (let ((__tmp123144
                                              (map (lambda (_%hd121418%_)
                                                     (let* ((_%hd121419121426%_
                                                             _%hd121418%_)
                                                            (_%E121421121430%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd121419121426%_
                                '([id . k])))
                       '#!void))
                    (_%K121422121436%_
                     (lambda (_%k121433%_ _%id121434%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id121434%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp121416%_
                                                      (cons _%k121433%_ '())))
                                          '())))
                        _%stx121370%_))))
               (if (pair? _%hd121419121426%_)
                   (let ((_%hd121423121439%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd121419121426%_)))
                         (_%tl121424121441%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd121419121426%_))))
                     (let* ((_%id121444%_ _%hd121423121439%_)
                            (_%k121446%_ _%tl121424121441%_))
                       (_%K121422121436%_ _%k121446%_ _%id121444%_)))
                   (_%E121421121430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init121413%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp123144)))))
                     _%stx121370%_)
                    _%r121381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match122997122998%_
                                                       (lambda (_%hd121388121451%_
                                                                _%tl121389121453%_
                                                                _%hd121390121458%_
                                                                _%tl121391121460%_)
                                                         (let ((_%tmp121456%_
                                                                _%hd121388121451%_)
                                                               (_%expr121463%_
                                                                _%hd121390121458%_))
                                                           (_%E121386121409%_))))
                                                      (_%__match122991122992%_
                                                       (lambda (_%hd121388121451%_
                                                                _%tl121389121453%_)
                                                         (let ((_%tmp121456%_
                                                                _%hd121388121451%_))
                                                           (_%E121386121409%_)))))
                                                 (if (pair? _%hd121382121405%_)
                                                     (let ((_%tl121401121508%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd121382121405%_)))
                                                           (_%hd121400121506%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd121382121405%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd121400121506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl121401121508%_)
                       (let ((_%tl121403121513%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl121401121508%_)))
                             (_%hd121402121511%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl121401121508%_))))
                         (if (null? _%tl121403121513%_)
                             (let ((_%expr121516%_ _%hd121402121511%_))
                               (_%K121399121503%_ _%expr121516%_))
                             (if (pair? _%tl121403121513%_)
                                 (let ((_%tl121393121467%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl121403121513%_)))
                                       (_%hd121392121465%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl121403121513%_))))
                                   (let ((_%tmp121456%_ _%hd121400121506%_)
                                         (_%expr121463%_ _%hd121402121511%_)
                                         (_%len121470%_ _%hd121392121465%_)
                                         (_%init121472%_ _%tl121393121467%_))
                                     (_%K121387121448%_
                                      _%init121472%_
                                      _%len121470%_
                                      _%expr121463%_
                                      _%tmp121456%_)))
                                 (_%__match122997122998%_
                                  _%hd121400121506%_
                                  _%tl121401121508%_
                                  _%hd121402121511%_
                                  _%tl121403121513%_))))
                       (_%__match122991122992%_
                        _%hd121400121506%_
                        _%tl121401121508%_))
                   (if (pair? _%tl121401121508%_)
                       (let ((_%tl121398121493%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl121401121508%_)))
                             (_%hd121397121491%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl121401121508%_))))
                         (if (null? _%tl121398121493%_)
                             (let ((_%id121489%_ _%hd121400121506%_)
                                   (_%expr121496%_ _%hd121397121491%_))
                               (_%K121394121481%_ _%expr121496%_ _%id121489%_))
                             (if (pair? _%tl121398121493%_)
                                 (let ((_%tl121393121467%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl121398121493%_)))
                                       (_%hd121392121465%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl121398121493%_))))
                                   (let ((_%tmp121456%_ _%hd121400121506%_)
                                         (_%expr121463%_ _%hd121397121491%_)
                                         (_%len121470%_ _%hd121392121465%_)
                                         (_%init121472%_ _%tl121393121467%_))
                                     (_%K121387121448%_
                                      _%init121472%_
                                      _%len121470%_
                                      _%expr121463%_
                                      _%tmp121456%_)))
                                 (_%__match122997122998%_
                                  _%hd121400121506%_
                                  _%tl121401121508%_
                                  _%hd121397121491%_
                                  _%tl121398121493%_))))
                       (_%__match122991122992%_
                        _%hd121400121506%_
                        _%tl121401121508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121386121409%_)))))))
                                        (__tmp123142 (list _%body121378%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp123143
                                     __tmp123142
                                     _%post121377%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp123141)))
                     _%stx121370%_))))
          (__compile-let-form
           _%stx121370%_
           _%compile-simple121372%_
           _%compile-values121373%_))))
    (define __compile-call%
      (lambda (_%stx121330%_)
        (let* ((_%$e121332%_ _%stx121330%_)
               (_%$E121334121343%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121332%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121332%_))
              (let* ((_%$tgt121335121346%_
                      (let () (declare (not safe)) (__AST-e _%$e121332%_)))
                     (_%$hd121336121349%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121335121346%_)))
                     (_%$tl121337121352%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121335121346%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121337121352%_))
                    (let* ((_%$tgt121338121356%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121337121352%_)))
                           (_%$hd121339121359%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121338121356%_)))
                           (_%$tl121340121362%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121338121356%_)))
                           (_%rator121366%_ _%$hd121339121359%_)
                           (_%rands121368%_ _%$tl121340121362%_))
                      (__SRC__%
                       (cons (__compile _%rator121366%_)
                             (map __compile _%rands121368%_))
                       _%stx121330%_))
                    (_%$E121334121343%_)))
              (_%$E121334121343%_)))))
    (define __compile-ref%
      (lambda (_%stx121292%_)
        (let* ((_%$e121294%_ _%stx121292%_)
               (_%$E121296121305%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121294%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121294%_))
              (let* ((_%$tgt121297121308%_
                      (let () (declare (not safe)) (__AST-e _%$e121294%_)))
                     (_%$hd121298121311%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121297121308%_)))
                     (_%$tl121299121314%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121297121308%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121299121314%_))
                    (let* ((_%$tgt121300121318%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121299121314%_)))
                           (_%$hd121301121321%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121300121318%_)))
                           (_%$tl121302121324%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121300121318%_)))
                           (_%id121328%_ _%$hd121301121321%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121302121324%_))
                                  '())
                          (__SRC__% _%id121328%_ _%stx121292%_)
                          (_%$E121296121305%_)))
                    (_%$E121296121305%_)))
              (_%$E121296121305%_)))))
    (define __compile-setq%
      (lambda (_%stx121239%_)
        (let* ((_%$e121241%_ _%stx121239%_)
               (_%$E121243121255%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121241%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121241%_))
              (let* ((_%$tgt121244121258%_
                      (let () (declare (not safe)) (__AST-e _%$e121241%_)))
                     (_%$hd121245121261%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121244121258%_)))
                     (_%$tl121246121264%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121244121258%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121246121264%_))
                    (let* ((_%$tgt121247121268%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121246121264%_)))
                           (_%$hd121248121271%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121247121268%_)))
                           (_%$tl121249121274%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121247121268%_)))
                           (_%id121278%_ _%$hd121248121271%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl121249121274%_))
                          (let* ((_%$tgt121250121280%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121249121274%_)))
                                 (_%$hd121251121283%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121250121280%_)))
                                 (_%$tl121252121286%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121250121280%_)))
                                 (_%expr121290%_ _%$hd121251121283%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121252121286%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id121278%_
                                              _%stx121239%_)
                                             (cons (__compile _%expr121290%_)
                                                   '())))
                                 _%stx121239%_)
                                (_%$E121243121255%_)))
                          (_%$E121243121255%_)))
                    (_%$E121243121255%_)))
              (_%$E121243121255%_)))))
    (define __compile-if%
      (lambda (_%stx121171%_)
        (let* ((_%$e121173%_ _%stx121171%_)
               (_%$E121175121190%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121173%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121173%_))
              (let* ((_%$tgt121176121193%_
                      (let () (declare (not safe)) (__AST-e _%$e121173%_)))
                     (_%$hd121177121196%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121176121193%_)))
                     (_%$tl121178121199%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121176121193%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121178121199%_))
                    (let* ((_%$tgt121179121203%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121178121199%_)))
                           (_%$hd121180121206%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121179121203%_)))
                           (_%$tl121181121209%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121179121203%_)))
                           (_%p121213%_ _%$hd121180121206%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl121181121209%_))
                          (let* ((_%$tgt121182121215%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121181121209%_)))
                                 (_%$hd121183121218%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121182121215%_)))
                                 (_%$tl121184121221%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121182121215%_)))
                                 (_%t121225%_ _%$hd121183121218%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl121184121221%_))
                                (let* ((_%$tgt121185121227%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121184121221%_)))
                                       (_%$hd121186121230%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt121185121227%_)))
                                       (_%$tl121187121233%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt121185121227%_)))
                                       (_%f121237%_ _%$hd121186121230%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl121187121233%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p121213%_)
                                                   (cons (__compile
                                                          _%t121225%_)
                                                         (cons (__compile
                                                                _%f121237%_)
                                                               '()))))
                                       _%stx121171%_)
                                      (_%$E121175121190%_)))
                                (_%$E121175121190%_)))
                          (_%$E121175121190%_)))
                    (_%$E121175121190%_)))
              (_%$E121175121190%_)))))
    (define __compile-quote%
      (lambda (_%stx121133%_)
        (let* ((_%$e121135%_ _%stx121133%_)
               (_%$E121137121146%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121135%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121135%_))
              (let* ((_%$tgt121138121149%_
                      (let () (declare (not safe)) (__AST-e _%$e121135%_)))
                     (_%$hd121139121152%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121138121149%_)))
                     (_%$tl121140121155%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121138121149%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121140121155%_))
                    (let* ((_%$tgt121141121159%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121140121155%_)))
                           (_%$hd121142121162%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121141121159%_)))
                           (_%$tl121143121165%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121141121159%_)))
                           (_%e121169%_ _%$hd121142121162%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121143121165%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e121169%_))
                                       '()))
                           _%stx121133%_)
                          (_%$E121137121146%_)))
                    (_%$E121137121146%_)))
              (_%$E121137121146%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx121095%_)
        (let* ((_%$e121097%_ _%stx121095%_)
               (_%$E121099121108%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121097%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121097%_))
              (let* ((_%$tgt121100121111%_
                      (let () (declare (not safe)) (__AST-e _%$e121097%_)))
                     (_%$hd121101121114%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121100121111%_)))
                     (_%$tl121102121117%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121100121111%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121102121117%_))
                    (let* ((_%$tgt121103121121%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121102121117%_)))
                           (_%$hd121104121124%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121103121121%_)))
                           (_%$tl121105121127%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121103121121%_)))
                           (_%e121131%_ _%$hd121104121124%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121105121127%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e121131%_ '()))
                           _%stx121095%_)
                          (_%$E121099121108%_)))
                    (_%$E121099121108%_)))
              (_%$E121099121108%_)))))
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
