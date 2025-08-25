(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1756156299)
  (begin
    (define __syntax::t
      (let ((__tmp123097 (list)) (__tmp123096 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp123097
         '(e id)
         __tmp123096
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args122901%_
        (apply make-instance __syntax::t _%$args122901%_)))
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
      (let ((__tmp123099 (list __syntax::t))
            (__tmp123098 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp123099
         '()
         __tmp123098
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args122898%_
        (apply make-instance __core-form::t _%$args122898%_)))
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
      (let ((__tmp123101 (list __core-form::t))
            (__tmp123100 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp123101
         '()
         __tmp123100
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args122895%_
        (apply make-instance __core-expression::t _%$args122895%_)))
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
      (let ((__tmp123103 (list __core-form::t))
            (__tmp123102 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp123103
         '()
         __tmp123102
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args122892%_
        (apply make-instance __core-special-form::t _%$args122892%_)))
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
      (lambda (_%id122890%_)
        (let ((__tmp123104
               (let () (declare (not safe)) (__AST-e _%id122890%_))))
          (declare (not safe))
          (__hash-get __core __tmp123104))))
    (define __core-bound-id?__%
      (lambda (_%id122873%_ _%is?122874%_)
        (let ((_%$e122876%_ (__core-resolve _%id122873%_)))
          (if _%$e122876%_ (_%is?122874%_ _%$e122876%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id122883%_)
        (let ((_%is?122885%_ true))
          (__core-bound-id?__% _%id122883%_ _%is?122885%_))))
    (define __core-bound-id?
      (lambda _g123105_
        (let ((_g123106_ (let () (declare (not safe)) (##length _g123105_))))
          (cond ((let () (declare (not safe)) (##fx= _g123106_ 1))
                 (apply __core-bound-id?__0 _g123105_))
                ((let () (declare (not safe)) (##fx= _g123106_ 2))
                 (apply __core-bound-id?__% _g123105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g123105_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id122856%_ _%e122857%_ _%make122858%_)
        (let ((__tmp123107
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e122857%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e122857%_
                   (_%make122858%_ _%e122857%_ _%id122856%_))))
          (declare (not safe))
          (__hash-put! __core _%id122856%_ __tmp123107))))
    (define __core-bind-syntax!__0
      (lambda (_%id122863%_ _%e122864%_)
        (let ((_%make122866%_ make-__syntax))
          (__core-bind-syntax!__% _%id122863%_ _%e122864%_ _%make122866%_))))
    (define __core-bind-syntax!
      (lambda _g123108_
        (let ((_g123109_ (let () (declare (not safe)) (##length _g123108_))))
          (cond ((let () (declare (not safe)) (##fx= _g123109_ 2))
                 (apply __core-bind-syntax!__0 _g123108_))
                ((let () (declare (not safe)) (##fx= _g123109_ 3))
                 (apply __core-bind-syntax!__% _g123108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g123108_))))))
    (define __SRC__%
      (lambda (_%e122836%_ _%src-stx122837%_)
        (if (or (pair? _%e122836%_) (symbol? _%e122836%_))
            (let ((__tmp123110
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx122837%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx122837%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e122836%_ __tmp123110))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e122836%_ 'gerbil#AST::t))
                (let ((__tmp123112
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e122836%_ '1 '#f '#f)))
                      (__tmp123111
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e122836%_)))))
                  (declare (not safe))
                  (##make-source __tmp123112 __tmp123111))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e122836%_))))))
    (define __SRC__0
      (lambda (_%e122848%_)
        (let ((_%src-stx122850%_ '#f))
          (__SRC__% _%e122848%_ _%src-stx122850%_))))
    (define __SRC
      (lambda _g123113_
        (let ((_g123114_ (let () (declare (not safe)) (##length _g123113_))))
          (cond ((let () (declare (not safe)) (##fx= _g123114_ 1))
                 (apply __SRC__0 _g123113_))
                ((let () (declare (not safe)) (##fx= _g123114_ 2))
                 (apply __SRC__% _g123113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g123113_))))))
    (define __locat
      (lambda (_%loc122833%_)
        (if (let () (declare (not safe)) (##locat? _%loc122833%_))
            _%loc122833%_
            '#f)))
    (define __check-values
      (lambda (_%obj122828%_ _%k122829%_)
        (let ((_%count122831%_
               (if (let () (declare (not safe)) (##values? _%obj122828%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj122828%_))
                   '1)))
          (if (fx= _%count122831%_ _%k122829%_)
              '#!void
              (let ((__tmp123116
                     (if (fx< _%count122831%_ _%k122829%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp123115
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj122828%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj122828%_))
                         _%obj122828%_)))
                (declare (not safe))
                (error __tmp123116 __tmp123115 _%k122829%_))))))
    (define __compile
      (lambda (_%stx122797%_)
        (let* ((_%$e122799%_ _%stx122797%_)
               (_%$E122801122807%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122799%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122799%_))
              (let* ((_%$tgt122802122810%_
                      (let () (declare (not safe)) (__AST-e _%$e122799%_)))
                     (_%$hd122803122813%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122802122810%_)))
                     (_%$tl122804122816%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122802122810%_)))
                     (_%form122820%_ _%$hd122803122813%_)
                     (_%$e122822%_ (__core-resolve _%form122820%_)))
                (if _%$e122822%_
                    ((lambda (_%bind122825%_)
                       ((##structure-ref _%bind122825%_ '1 __syntax::t '#f)
                        _%stx122797%_))
                     _%$e122822%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx122797%_
                       _%form122820%_))))
              (_%$E122801122807%_)))))
    (define __compile-error__%
      (lambda (_%stx122784%_ _%detail122785%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx122784%_
           _%detail122785%_))))
    (define __compile-error__0
      (lambda (_%stx122790%_)
        (let ((_%detail122792%_ '#f))
          (__compile-error__% _%stx122790%_ _%detail122792%_))))
    (define __compile-error
      (lambda _g123117_
        (let ((_g123118_ (let () (declare (not safe)) (##length _g123117_))))
          (cond ((let () (declare (not safe)) (##fx= _g123118_ 1))
                 (apply __compile-error__0 _g123117_))
                ((let () (declare (not safe)) (##fx= _g123118_ 2))
                 (apply __compile-error__% _g123117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g123117_))))))
    (define __compile-ignore%
      (lambda (_%stx122781%_) (__SRC__% ''#!void _%stx122781%_)))
    (define __compile-begin%
      (lambda (_%stx122756%_)
        (let* ((_%$e122758%_ _%stx122756%_)
               (_%$E122760122766%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122758%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122758%_))
              (let* ((_%$tgt122761122769%_
                      (let () (declare (not safe)) (__AST-e _%$e122758%_)))
                     (_%$hd122762122772%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122761122769%_)))
                     (_%$tl122763122775%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122761122769%_)))
                     (_%body122779%_ _%$tl122763122775%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body122779%_))
                 _%stx122756%_))
              (_%$E122760122766%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx122731%_)
        (let* ((_%$e122733%_ _%stx122731%_)
               (_%$E122735122741%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122733%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122733%_))
              (let* ((_%$tgt122736122744%_
                      (let () (declare (not safe)) (__AST-e _%$e122733%_)))
                     (_%$hd122737122747%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122736122744%_)))
                     (_%$tl122738122750%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122736122744%_)))
                     (_%body122754%_ _%$tl122738122750%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body122754%_)))
                 _%stx122731%_))
              (_%$E122735122741%_)))))
    (define __compile-import%
      (lambda (_%stx122706%_)
        (let* ((_%$e122708%_ _%stx122706%_)
               (_%$E122710122716%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122708%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122708%_))
              (let* ((_%$tgt122711122719%_
                      (let () (declare (not safe)) (__AST-e _%$e122708%_)))
                     (_%$hd122712122722%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122711122719%_)))
                     (_%$tl122713122725%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122711122719%_)))
                     (_%body122729%_ _%$tl122713122725%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body122729%_ '())) '()))
                 _%stx122706%_))
              (_%$E122710122716%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx122653%_)
        (let* ((_%$e122655%_ _%stx122653%_)
               (_%$E122657122669%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122655%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122655%_))
              (let* ((_%$tgt122658122672%_
                      (let () (declare (not safe)) (__AST-e _%$e122655%_)))
                     (_%$hd122659122675%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122658122672%_)))
                     (_%$tl122660122678%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122658122672%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl122660122678%_))
                    (let* ((_%$tgt122661122682%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl122660122678%_)))
                           (_%$hd122662122685%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt122661122682%_)))
                           (_%$tl122663122688%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt122661122682%_)))
                           (_%ann122692%_ _%$hd122662122685%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl122663122688%_))
                          (let* ((_%$tgt122664122694%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl122663122688%_)))
                                 (_%$hd122665122697%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122664122694%_)))
                                 (_%$tl122666122700%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122664122694%_)))
                                 (_%expr122704%_ _%$hd122665122697%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122666122700%_))
                                        '())
                                (__compile _%expr122704%_)
                                (_%$E122657122669%_)))
                          (_%$E122657122669%_)))
                    (_%$E122657122669%_)))
              (_%$E122657122669%_)))))
    (define __compile-define-values%
      (lambda (_%stx122544%_)
        (let* ((_%$e122546%_ _%stx122544%_)
               (_%$E122548122560%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122546%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122546%_))
              (let* ((_%$tgt122549122563%_
                      (let () (declare (not safe)) (__AST-e _%$e122546%_)))
                     (_%$hd122550122566%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122549122563%_)))
                     (_%$tl122551122569%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122549122563%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl122551122569%_))
                    (let* ((_%$tgt122552122573%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl122551122569%_)))
                           (_%$hd122553122576%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt122552122573%_)))
                           (_%$tl122554122579%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt122552122573%_)))
                           (_%hd122583%_ _%$hd122553122576%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl122554122579%_))
                          (let* ((_%$tgt122555122585%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl122554122579%_)))
                                 (_%$hd122556122588%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122555122585%_)))
                                 (_%$tl122557122591%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122555122585%_)))
                                 (_%expr122595%_ _%$hd122556122588%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122557122591%_))
                                        '())
                                (let* ((_%$e122597%_ _%hd122583%_)
                                       (_%$E122599122640%_
                                        (lambda ()
                                          (let ((_%$E122600122625%_
                                                 (lambda ()
                                                   (let* ((_%$E122601122612%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e122597%_))))
                  (_%ids122615%_ _%hd122583%_)
                  (_%len122617%_ (length _%ids122615%_))
                  (_%tmp122619%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp122619%_
                                       (cons (__compile _%expr122595%_) '())))
                           _%stx122544%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp122619%_
                                             (cons _%len122617%_ '())))
                                 _%stx122544%_)
                                (let ((__tmp123119
                                       (let ((__tmp123121
                                              (lambda (_%id122622%_
                                                       _%k122623%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id122622%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id122622%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp122619%_
                                           (cons _%k122623%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx122544%_)
                                                    '#f)))
                                             (__tmp123120
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len122617%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp123121
                                          _%ids122615%_
                                          __tmp123120))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp123119)))))
              _%stx122544%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e122597%_))
                                                (let* ((_%$tgt122602122628%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e122597%_)))
                                                       (_%$hd122603122631%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt122602122628%_)))
                                                       (_%$tl122604122634%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt122602122628%_)))
                                                       (_%id122638%_
                                                        _%$hd122603122631%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl122604122634%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id122638%_)
                           (cons (__compile _%expr122595%_) '())))
               _%stx122544%_)
              (_%$E122600122625%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E122600122625%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e122597%_))
                                      (let* ((_%$tgt122605122643%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e122597%_)))
                                             (_%$hd122606122646%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt122605122643%_)))
                                             (_%$tl122607122649%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt122605122643%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd122606122646%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl122607122649%_))
                                                        '())
                                                (__compile _%expr122595%_)
                                                (_%$E122599122640%_))
                                            (_%$E122599122640%_)))
                                      (_%$E122599122640%_)))
                                (_%$E122548122560%_)))
                          (_%$E122548122560%_)))
                    (_%$E122548122560%_)))
              (_%$E122548122560%_)))))
    (define __compile-head-id
      (lambda (_%e122542%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e122542%_))
             _%e122542%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd122499%_)
        (let _%recur122501%_ ((_%rest122503%_ _%hd122499%_))
          (let* ((_%$e122505%_ _%rest122503%_)
                 (_%$E122507122525%_
                  (lambda ()
                    (let ((_%$E122508122522%_
                           (lambda ()
                             (let* ((_%$E122509122517%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e122505%_))))
                                    (_%tail122520%_ _%$e122505%_))
                               (__compile-head-id _%tail122520%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122505%_))
                                  '())
                          '()
                          (_%$E122508122522%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122505%_))
                (let* ((_%$tgt122510122528%_
                        (let () (declare (not safe)) (__AST-e _%$e122505%_)))
                       (_%$hd122511122531%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122510122528%_)))
                       (_%$tl122512122534%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122510122528%_)))
                       (_%hd122538%_ _%$hd122511122531%_)
                       (_%rest122540%_ _%$tl122512122534%_))
                  (cons (__compile-head-id _%hd122538%_)
                        (_%recur122501%_ _%rest122540%_)))
                (_%$E122507122525%_))))))
    (define __compile-lambda%
      (lambda (_%stx122446%_)
        (let* ((_%$e122448%_ _%stx122446%_)
               (_%$E122450122462%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122448%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122448%_))
              (let* ((_%$tgt122451122465%_
                      (let () (declare (not safe)) (__AST-e _%$e122448%_)))
                     (_%$hd122452122468%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122451122465%_)))
                     (_%$tl122453122471%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122451122465%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl122453122471%_))
                    (let* ((_%$tgt122454122475%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl122453122471%_)))
                           (_%$hd122455122478%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt122454122475%_)))
                           (_%$tl122456122481%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt122454122475%_)))
                           (_%hd122485%_ _%$hd122455122478%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl122456122481%_))
                          (let* ((_%$tgt122457122487%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl122456122481%_)))
                                 (_%$hd122458122490%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122457122487%_)))
                                 (_%$tl122459122493%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122457122487%_)))
                                 (_%body122497%_ _%$hd122458122490%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122459122493%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd122485%_)
                                             (cons (__compile _%body122497%_)
                                                   '())))
                                 _%stx122446%_)
                                (_%$E122450122462%_)))
                          (_%$E122450122462%_)))
                    (_%$E122450122462%_)))
              (_%$E122450122462%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx122238%_)
        (letrec ((_%variadic?122240%_
                  (lambda (_%hd122411%_)
                    (let* ((_%$e122413%_ _%hd122411%_)
                           (_%$E122415122431%_
                            (lambda ()
                              (let ((_%$E122416122428%_
                                     (lambda ()
                                       (let ((_%$E122417122425%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e122413%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e122413%_))
                                            '())
                                    '#f
                                    (_%$E122416122428%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122413%_))
                          (let* ((_%$tgt122418122434%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122413%_)))
                                 (_%$hd122419122437%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122418122434%_)))
                                 (_%$tl122420122440%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122418122434%_)))
                                 (_%rest122444%_ _%$tl122420122440%_))
                            (_%variadic?122240%_ _%rest122444%_))
                          (_%$E122415122431%_)))))
                 (_%arity122241%_
                  (lambda (_%hd122376%_)
                    (let _%lp122378%_ ((_%rest122380%_ _%hd122376%_)
                                       (_%k122381%_ '0))
                      (let* ((_%$e122383%_ _%rest122380%_)
                             (_%$E122385122396%_
                              (lambda ()
                                (let ((_%$E122386122393%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e122383%_)))))
                                  _%k122381%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e122383%_))
                            (let* ((_%$tgt122387122399%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e122383%_)))
                                   (_%$hd122388122402%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt122387122399%_)))
                                   (_%$tl122389122405%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt122387122399%_)))
                                   (_%rest122409%_ _%$tl122389122405%_))
                              (_%lp122378%_
                               _%rest122409%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k122381%_ '1))))
                            (_%$E122385122396%_))))))
                 (_%generate122242%_
                  (lambda (_%rest122303%_ _%args122304%_ _%len122305%_)
                    (let* ((_%$e122307%_ _%rest122303%_)
                           (_%$E122309122320%_
                            (lambda ()
                              (let ((_%$E122310122317%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e122307%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args122304%_ '())))
                                 _%stx122238%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122307%_))
                          (let* ((_%$tgt122311122323%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122307%_)))
                                 (_%$hd122312122326%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122311122323%_)))
                                 (_%$tl122313122329%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122311122323%_)))
                                 (_%clause122333%_ _%$hd122312122326%_)
                                 (_%rest122335%_ _%$tl122313122329%_)
                                 (_%$e122337%_ _%clause122333%_)
                                 (_%$E122339122348%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e122337%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e122337%_))
                                (let* ((_%$tgt122340122351%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e122337%_)))
                                       (_%$hd122341122354%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122340122351%_)))
                                       (_%$tl122342122357%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122340122351%_)))
                                       (_%hd122361%_ _%$hd122341122354%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl122342122357%_))
                                      (let* ((_%$tgt122343122363%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122342122357%_)))
                                             (_%$hd122344122366%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt122343122363%_)))
                                             (_%$tl122345122369%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt122343122363%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl122345122369%_))
                                                    '())
                                            (let ((_%clen122373%_
                                                   (_%arity122241%_
                                                    _%hd122361%_))
                                                  (_%cmp122374%_
                                                   (if (_%variadic?122240%_
                                                        _%hd122361%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp122374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len122305%_ (cons _%clen122373%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause122333%_))
                                      (cons _%args122304%_ '())))
                          _%stx122238%_)
                         (cons (_%generate122242%_
                                _%rest122335%_
                                _%args122304%_
                                _%len122305%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx122238%_))
                                            (_%$E122339122348%_)))
                                      (_%$E122339122348%_)))
                                (_%$E122339122348%_)))
                          (_%$E122309122320%_))))))
          (let* ((_%$e122244%_ _%stx122238%_)
                 (_%$E122246122278%_
                  (lambda ()
                    (let ((_%$E122247122260%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122244%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122244%_))
                          (let* ((_%$tgt122248122263%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122244%_)))
                                 (_%$hd122249122266%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122248122263%_)))
                                 (_%$tl122250122269%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122248122263%_)))
                                 (_%clauses122273%_ _%$tl122250122269%_))
                            (let ((_%args122275%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx122238%_))
                                  (_%len122276%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx122238%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args122275%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len122276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args122275%_ '()))
                                         _%stx122238%_)
                                        '()))
                            '())
                      (cons (_%generate122242%_
                             _%clauses122273%_
                             _%args122275%_
                             _%len122276%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx122238%_)
                                                 '())))
                               _%stx122238%_)))
                          (_%$E122247122260%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122244%_))
                (let* ((_%$tgt122251122281%_
                        (let () (declare (not safe)) (__AST-e _%$e122244%_)))
                       (_%$hd122252122284%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122251122281%_)))
                       (_%$tl122253122287%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122251122281%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl122253122287%_))
                      (let* ((_%$tgt122254122291%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl122253122287%_)))
                             (_%$hd122255122294%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt122254122291%_)))
                             (_%$tl122256122297%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt122254122291%_)))
                             (_%clause122301%_ _%$hd122255122294%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl122256122297%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause122301%_))
                            (_%$E122246122278%_)))
                      (_%$E122246122278%_)))
                (_%$E122246122278%_))))))
    (define __compile-let-form
      (lambda (_%stx122007%_ _%compile-simple122008%_ _%compile-values122009%_)
        (letrec ((_%simple-bind?122011%_
                  (lambda (_%hd122196%_)
                    (let* ((_%hd122197122207%_ _%hd122196%_)
                           (_%else122200122215%_ (lambda () '#f)))
                      (let ((_%K122203122228%_ (lambda (_%id122226%_) '#t))
                            (_%K122202122220%_ (lambda () '#t)))
                        (let ((_%try-match122199122223%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd122197122207%_ '#f))
                                     (_%K122202122220%_)
                                     (_%else122200122215%_)))))
                          (if (pair? _%hd122197122207%_)
                              (let ((_%tl122205122233%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd122197122207%_)))
                                    (_%hd122204122231%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd122197122207%_))))
                                (if (null? _%tl122205122233%_)
                                    (let ((_%id122236%_ _%hd122204122231%_))
                                      (_%K122203122228%_ _%id122236%_))
                                    (_%try-match122199122223%_)))
                              (_%try-match122199122223%_)))))))
                 (_%car-e122012%_
                  (lambda (_%hd122194%_)
                    (if (pair? _%hd122194%_)
                        (let () (declare (not safe)) (##car _%hd122194%_))
                        _%hd122194%_))))
          (let* ((_%$e122014%_ _%stx122007%_)
                 (_%$E122016122159%_
                  (lambda ()
                    (let ((_%$E122017122039%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122014%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122014%_))
                          (let* ((_%$tgt122018122042%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122014%_)))
                                 (_%$hd122019122045%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122018122042%_)))
                                 (_%$tl122020122048%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122018122042%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl122020122048%_))
                                (let* ((_%$tgt122021122052%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122020122048%_)))
                                       (_%$hd122022122055%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122021122052%_)))
                                       (_%$tl122023122058%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122021122052%_)))
                                       (_%hd122062%_ _%$hd122022122055%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl122023122058%_))
                                      (let* ((_%$tgt122024122064%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122023122058%_)))
                                             (_%$hd122025122067%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt122024122064%_)))
                                             (_%$tl122026122070%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt122024122064%_)))
                                             (_%body122074%_
                                              _%$hd122025122067%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl122026122070%_))
                                                    '())
                                            (let* ((_%hd-ids122114%_
                                                    (map (lambda (_%bind122076%_)
                                                           (let* ((_%$e122078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind122076%_)
                          (_%$E122080122089%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122078%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e122078%_))
                         (let* ((_%$tgt122081122092%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e122078%_)))
                                (_%$hd122082122095%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt122081122092%_)))
                                (_%$tl122083122098%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt122081122092%_)))
                                (_%ids122102%_ _%$hd122082122095%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl122083122098%_))
                               (let* ((_%$tgt122084122104%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl122083122098%_)))
                                      (_%$hd122085122107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt122084122104%_)))
                                      (_%$tl122086122110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt122084122104%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl122086122110%_))
                                             '())
                                     _%ids122102%_
                                     (_%$E122080122089%_)))
                               (_%$E122080122089%_)))
                         (_%$E122080122089%_))))
                 _%hd122062%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs122154%_
                                                    (map (lambda (_%bind122116%_)
                                                           (let* ((_%$e122118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind122116%_)
                          (_%$E122120122129%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122118%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e122118%_))
                         (let* ((_%$tgt122121122132%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e122118%_)))
                                (_%$hd122122122135%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt122121122132%_)))
                                (_%$tl122123122138%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt122121122132%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl122123122138%_))
                               (let* ((_%$tgt122124122142%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl122123122138%_)))
                                      (_%$hd122125122145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt122124122142%_)))
                                      (_%$tl122126122148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt122124122142%_)))
                                      (_%expr122152%_ _%$hd122125122145%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl122126122148%_))
                                             '())
                                     (__compile _%expr122152%_)
                                     (_%$E122120122129%_)))
                               (_%$E122120122129%_)))
                         (_%$E122120122129%_))))
                 _%hd122062%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body122156%_
                                                    (__compile
                                                     _%body122074%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?122011%_
                                                     _%hd-ids122114%_))
                                                  (_%compile-simple122008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e122012%_
                                                            _%hd-ids122114%_))
                                                   _%exprs122154%_
                                                   _%body122156%_)
                                                  (_%compile-values122009%_
                                                   _%hd-ids122114%_
                                                   _%exprs122154%_
                                                   _%body122156%_)))
                                            (_%$E122017122039%_)))
                                      (_%$E122017122039%_)))
                                (_%$E122017122039%_)))
                          (_%$E122017122039%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122014%_))
                (let* ((_%$tgt122027122162%_
                        (let () (declare (not safe)) (__AST-e _%$e122014%_)))
                       (_%$hd122028122165%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122027122162%_)))
                       (_%$tl122029122168%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122027122162%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl122029122168%_))
                      (let* ((_%$tgt122030122172%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl122029122168%_)))
                             (_%$hd122031122175%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt122030122172%_)))
                             (_%$tl122032122178%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt122030122172%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd122031122175%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl122032122178%_))
                                (let* ((_%$tgt122033122182%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122032122178%_)))
                                       (_%$hd122034122185%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122033122182%_)))
                                       (_%$tl122035122188%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122033122182%_)))
                                       (_%body122192%_ _%$hd122034122185%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122035122188%_))
                                              '())
                                      (__compile _%body122192%_)
                                      (_%$E122016122159%_)))
                                (_%$E122016122159%_))
                            (_%$E122016122159%_)))
                      (_%$E122016122159%_)))
                (_%$E122016122159%_))))))
    (define __compile-let-values%
      (lambda (_%stx121819%_)
        (letrec ((_%compile-simple121821%_
                  (lambda (_%hd-ids122003%_ _%exprs122004%_ _%body122005%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp123122
                                        (map __compile-head-id
                                             _%hd-ids122003%_)))
                                   (declare (not safe))
                                   (##map list __tmp123122 _%exprs122004%_))
                                 (cons _%body122005%_ '())))
                     _%stx121819%_)))
                 (_%compile-values121822%_
                  (lambda (_%hd-ids121918%_ _%exprs121919%_ _%body121920%_)
                    (let _%lp121922%_ ((_%rest121924%_ _%hd-ids121918%_)
                                       (_%exprs121925%_ _%exprs121919%_)
                                       (_%bind121926%_ '())
                                       (_%post121927%_ '()))
                      (let* ((_%rest121928121942%_ _%rest121924%_)
                             (_%else121931121950%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind121926%_)
                                             (cons (_%compile-post121823%_
                                                    _%post121927%_
                                                    _%body121920%_)
                                                   '())))
                                 _%stx121819%_))))
                        (let ((_%K121936121986%_
                               (lambda (_%rest121983%_ _%id121984%_)
                                 (_%lp121922%_
                                  _%rest121983%_
                                  (cdr _%exprs121925%_)
                                  (cons (cons (__compile-head-id _%id121984%_)
                                              (cons (car _%exprs121925%_) '()))
                                        _%bind121926%_)
                                  _%post121927%_)))
                              (_%K121933121968%_
                               (lambda (_%rest121954%_ _%hd121955%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd121955%_))
                                     (_%lp121922%_
                                      _%rest121954%_
                                      (cdr _%exprs121925%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd121955%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs121925%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind121926%_)
                                      _%post121927%_)
                                     (if (list? _%hd121955%_)
                                         (let* ((_%len121959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd121955%_)))
                                                (_%tmp121961%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp121922%_
                                            _%rest121954%_
                                            (cdr _%exprs121925%_)
                                            (cons (cons _%tmp121961%_
                                                        (cons (car _%exprs121925%_)
                                                              '()))
                                                  _%bind121926%_)
                                            (cons (cons _%tmp121961%_
                                                        (cons _%len121959%_
                                                              (let ((__tmp123124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id121964%_ _%k121965%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id121964%_))
                                   (cons (__SRC__0 _%id121964%_) _%k121965%_)
                                   '#f)))
                            (__tmp123123
                             (let ()
                               (declare (not safe))
                               (##iota _%len121959%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp123124 _%hd121955%_ __tmp123123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post121927%_)))
                                         (__compile-error__%
                                          _%stx121819%_
                                          _%hd121955%_))))))
                          (if (pair? _%rest121928121942%_)
                              (let ((_%tl121938121991%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest121928121942%_)))
                                    (_%hd121937121989%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest121928121942%_))))
                                (if (pair? _%hd121937121989%_)
                                    (let ((_%tl121940121996%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd121937121989%_)))
                                          (_%hd121939121994%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd121937121989%_))))
                                      (if (null? _%tl121940121996%_)
                                          (let ((_%id121999%_
                                                 _%hd121939121994%_)
                                                (_%rest122001%_
                                                 _%tl121938121991%_))
                                            (_%K121936121986%_
                                             _%rest122001%_
                                             _%id121999%_))
                                          (let ((_%hd121976%_
                                                 _%hd121937121989%_)
                                                (_%rest121978%_
                                                 _%tl121938121991%_))
                                            (_%K121933121968%_
                                             _%rest121978%_
                                             _%hd121976%_))))
                                    (let ((_%hd121976%_ _%hd121937121989%_)
                                          (_%rest121978%_ _%tl121938121991%_))
                                      (_%K121933121968%_
                                       _%rest121978%_
                                       _%hd121976%_))))
                              (_%else121931121950%_)))))))
                 (_%compile-post121823%_
                  (lambda (_%post121825%_ _%body121826%_)
                    (let _%lp121828%_ ((_%rest121830%_ _%post121825%_)
                                       (_%check121831%_ '())
                                       (_%bind121832%_ '()))
                      (let* ((_%rest121833121845%_ _%rest121830%_)
                             (_%else121835121853%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp123125
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind121832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body121826%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx121819%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp123125
                                          _%check121831%_)))
                                 _%stx121819%_)))
                             (_%K121837121892%_
                              (lambda (_%rest121856%_
                                       _%init121857%_
                                       _%len121858%_
                                       _%tmp121859%_)
                                (_%lp121828%_
                                 _%rest121856%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp121859%_
                                                    (cons _%len121858%_ '())))
                                        _%stx121819%_)
                                       _%check121831%_)
                                 (let ((__tmp123126
                                        (lambda (_%hd121861%_ _%r121862%_)
                                          (let* ((_%hd121863121870%_
                                                  _%hd121861%_)
                                                 (_%E121865121874%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd121863121870%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K121866121880%_
                                                  (lambda (_%k121877%_
                                                           _%id121878%_)
                                                    (cons (cons _%id121878%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp121859%_
                                          (cons _%k121877%_ '())))
                              '()))
                  _%r121862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd121863121870%_)
                                                (let ((_%hd121867121883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd121863121870%_)))
                                                      (_%tl121868121885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd121863121870%_))))
                                                  (let* ((_%id121888%_
                                                          _%hd121867121883%_)
                                                         (_%k121890%_
                                                          _%tl121868121885%_))
                                                    (_%K121866121880%_
                                                     _%k121890%_
                                                     _%id121888%_)))
                                                (_%E121865121874%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp123126
                                    _%bind121832%_
                                    _%init121857%_))))))
                        (if (pair? _%rest121833121845%_)
                            (let ((_%hd121838121895%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest121833121845%_)))
                                  (_%tl121839121897%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest121833121845%_))))
                              (if (pair? _%hd121838121895%_)
                                  (let ((_%hd121840121900%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd121838121895%_)))
                                        (_%tl121841121902%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd121838121895%_))))
                                    (let ((_%tmp121905%_ _%hd121840121900%_))
                                      (if (pair? _%tl121841121902%_)
                                          (let ((_%hd121842121907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl121841121902%_)))
                                                (_%tl121843121909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl121841121902%_))))
                                            (let* ((_%len121912%_
                                                    _%hd121842121907%_)
                                                   (_%init121914%_
                                                    _%tl121843121909%_)
                                                   (_%rest121916%_
                                                    _%tl121839121897%_))
                                              (_%K121837121892%_
                                               _%rest121916%_
                                               _%init121914%_
                                               _%len121912%_
                                               _%tmp121905%_)))
                                          (_%else121835121853%_))))
                                  (_%else121835121853%_)))
                            (_%else121835121853%_)))))))
          (__compile-let-form
           _%stx121819%_
           _%compile-simple121821%_
           _%compile-values121822%_))))
    (define __compile-letrec-values%
      (lambda (_%stx121616%_)
        (letrec ((_%compile-simple121618%_
                  (lambda (_%hd-ids121815%_ _%exprs121816%_ _%body121817%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp123127
                                        (map __compile-head-id
                                             _%hd-ids121815%_)))
                                   (declare (not safe))
                                   (##map list __tmp123127 _%exprs121816%_))
                                 (cons _%body121817%_ '())))
                     _%stx121616%_)))
                 (_%compile-values121619%_
                  (lambda (_%hd-ids121726%_ _%exprs121727%_ _%body121728%_)
                    (let _%lp121730%_ ((_%rest121732%_ _%hd-ids121726%_)
                                       (_%exprs121733%_ _%exprs121727%_)
                                       (_%pre121734%_ '())
                                       (_%bind121735%_ '())
                                       (_%post121736%_ '()))
                      (let* ((_%rest121737121751%_ _%rest121732%_)
                             (_%else121740121759%_
                              (lambda ()
                                (_%compile-inner121620%_
                                 _%pre121734%_
                                 _%bind121735%_
                                 _%post121736%_
                                 _%body121728%_))))
                        (let ((_%K121745121798%_
                               (lambda (_%rest121795%_ _%id121796%_)
                                 (_%lp121730%_
                                  _%rest121795%_
                                  (cdr _%exprs121733%_)
                                  _%pre121734%_
                                  (cons (cons (__compile-head-id _%id121796%_)
                                              (cons (car _%exprs121733%_) '()))
                                        _%bind121735%_)
                                  _%post121736%_)))
                              (_%K121742121780%_
                               (lambda (_%rest121763%_ _%hd121764%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd121764%_))
                                     (_%lp121730%_
                                      _%rest121763%_
                                      (cdr _%exprs121733%_)
                                      _%pre121734%_
                                      (cons (cons (__compile-head-id
                                                   _%hd121764%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs121733%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind121735%_)
                                      _%post121736%_)
                                     (if (list? _%hd121764%_)
                                         (let* ((_%len121768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd121764%_)))
                                                (_%tmp121770%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp121730%_
                                            _%rest121763%_
                                            (cdr _%exprs121733%_)
                                            (let ((__tmp123128
                                                   (lambda (_%id121773%_
                                                            _%r121774%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id121773%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121773%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r121774%_)
                 _%r121774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp123128
                                               _%pre121734%_
                                               _%hd121764%_))
                                            (cons (cons _%tmp121770%_
                                                        (cons (car _%exprs121733%_)
                                                              '()))
                                                  _%bind121735%_)
                                            (cons (cons _%tmp121770%_
                                                        (cons _%len121768%_
                                                              (let ((__tmp123130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id121776%_ _%k121777%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id121776%_))
                                   (cons (__SRC__0 _%id121776%_) _%k121777%_)
                                   '#f)))
                            (__tmp123129
                             (let ()
                               (declare (not safe))
                               (##iota _%len121768%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp123130 _%hd121764%_ __tmp123129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post121736%_)))
                                         (__compile-error__%
                                          _%stx121616%_
                                          _%hd121764%_))))))
                          (if (pair? _%rest121737121751%_)
                              (let ((_%tl121747121803%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest121737121751%_)))
                                    (_%hd121746121801%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest121737121751%_))))
                                (if (pair? _%hd121746121801%_)
                                    (let ((_%tl121749121808%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd121746121801%_)))
                                          (_%hd121748121806%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd121746121801%_))))
                                      (if (null? _%tl121749121808%_)
                                          (let ((_%id121811%_
                                                 _%hd121748121806%_)
                                                (_%rest121813%_
                                                 _%tl121747121803%_))
                                            (_%K121745121798%_
                                             _%rest121813%_
                                             _%id121811%_))
                                          (let ((_%hd121788%_
                                                 _%hd121746121801%_)
                                                (_%rest121790%_
                                                 _%tl121747121803%_))
                                            (_%K121742121780%_
                                             _%rest121790%_
                                             _%hd121788%_))))
                                    (let ((_%hd121788%_ _%hd121746121801%_)
                                          (_%rest121790%_ _%tl121747121803%_))
                                      (_%K121742121780%_
                                       _%rest121790%_
                                       _%hd121788%_))))
                              (_%else121740121759%_)))))))
                 (_%compile-inner121620%_
                  (lambda (_%pre121721%_
                           _%bind121722%_
                           _%post121723%_
                           _%body121724%_)
                    (if (null? _%pre121721%_)
                        (_%compile-bind121621%_
                         _%bind121722%_
                         _%post121723%_
                         _%body121724%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre121721%_)
                                     (cons (_%compile-bind121621%_
                                            _%bind121722%_
                                            _%post121723%_
                                            _%body121724%_)
                                           '())))
                         _%stx121616%_))))
                 (_%compile-bind121621%_
                  (lambda (_%bind121717%_ _%post121718%_ _%body121719%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind121717%_)
                                 (cons (_%compile-post121622%_
                                        _%post121718%_
                                        _%body121719%_)
                                       '())))
                     _%stx121616%_)))
                 (_%compile-post121622%_
                  (lambda (_%post121624%_ _%body121625%_)
                    (let _%lp121627%_ ((_%rest121629%_ _%post121624%_)
                                       (_%check121630%_ '())
                                       (_%bind121631%_ '()))
                      (let* ((_%rest121632121644%_ _%rest121629%_)
                             (_%else121634121652%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp123131
                                              (let ((__tmp123132
                                                     (cons _%body121625%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp123132
                                                 _%bind121631%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp123131
                                          _%check121630%_)))
                                 _%stx121616%_)))
                             (_%K121636121691%_
                              (lambda (_%rest121655%_
                                       _%init121656%_
                                       _%len121657%_
                                       _%tmp121658%_)
                                (_%lp121627%_
                                 _%rest121655%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp121658%_
                                                    (cons _%len121657%_ '())))
                                        _%stx121616%_)
                                       _%check121630%_)
                                 (let ((__tmp123133
                                        (lambda (_%hd121660%_ _%r121661%_)
                                          (let* ((_%hd121662121669%_
                                                  _%hd121660%_)
                                                 (_%E121664121673%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd121662121669%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K121665121679%_
                                                  (lambda (_%k121676%_
                                                           _%id121677%_)
                                                    (cons (cons 'set!
                                                                (cons _%id121677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp121658%_
                                                (cons _%k121676%_ '())))
                                    '())))
                  _%r121661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd121662121669%_)
                                                (let ((_%hd121666121682%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd121662121669%_)))
                                                      (_%tl121667121684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd121662121669%_))))
                                                  (let* ((_%id121687%_
                                                          _%hd121666121682%_)
                                                         (_%k121689%_
                                                          _%tl121667121684%_))
                                                    (_%K121665121679%_
                                                     _%k121689%_
                                                     _%id121687%_)))
                                                (_%E121664121673%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp123133
                                    _%bind121631%_
                                    _%init121656%_))))))
                        (if (pair? _%rest121632121644%_)
                            (let ((_%hd121637121694%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest121632121644%_)))
                                  (_%tl121638121696%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest121632121644%_))))
                              (if (pair? _%hd121637121694%_)
                                  (let ((_%hd121639121699%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd121637121694%_)))
                                        (_%tl121640121701%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd121637121694%_))))
                                    (let ((_%tmp121704%_ _%hd121639121699%_))
                                      (if (pair? _%tl121640121701%_)
                                          (let ((_%hd121641121706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl121640121701%_)))
                                                (_%tl121642121708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl121640121701%_))))
                                            (let* ((_%len121711%_
                                                    _%hd121641121706%_)
                                                   (_%init121713%_
                                                    _%tl121642121708%_)
                                                   (_%rest121715%_
                                                    _%tl121638121696%_))
                                              (_%K121636121691%_
                                               _%rest121715%_
                                               _%init121713%_
                                               _%len121711%_
                                               _%tmp121704%_)))
                                          (_%else121634121652%_))))
                                  (_%else121634121652%_)))
                            (_%else121634121652%_)))))))
          (__compile-let-form
           _%stx121616%_
           _%compile-simple121618%_
           _%compile-values121619%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx121367%_)
        (letrec ((_%compile-simple121369%_
                  (lambda (_%hd-ids121612%_ _%exprs121613%_ _%body121614%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp123134
                                        (map __compile-head-id
                                             _%hd-ids121612%_)))
                                   (declare (not safe))
                                   (##map list __tmp123134 _%exprs121613%_))
                                 (cons _%body121614%_ '())))
                     _%stx121367%_)))
                 (_%compile-values121370%_
                  (lambda (_%hd-ids121519%_ _%exprs121520%_ _%body121521%_)
                    (let _%lp121523%_ ((_%rest121525%_ _%hd-ids121519%_)
                                       (_%exprs121526%_ _%exprs121520%_)
                                       (_%bind121527%_ '())
                                       (_%post121528%_ '()))
                      (let* ((_%rest121529121543%_ _%rest121525%_)
                             (_%else121532121551%_
                              (lambda ()
                                (_%compile-bind121371%_
                                 _%bind121527%_
                                 _%post121528%_
                                 _%body121521%_))))
                        (let ((_%K121537121595%_
                               (lambda (_%rest121590%_ _%hd121591%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd121591%_))
                                     (let ((_%id121593%_
                                            (__SRC__0 _%hd121591%_)))
                                       (_%lp121523%_
                                        _%rest121590%_
                                        (cdr _%exprs121526%_)
                                        (cons (cons _%id121593%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind121527%_)
                                        (cons (cons _%id121593%_
                                                    (cons (car _%exprs121526%_)
                                                          '()))
                                              _%post121528%_)))
                                     (_%lp121523%_
                                      _%rest121590%_
                                      (cdr _%exprs121526%_)
                                      _%bind121527%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs121526%_)
                                                        '()))
                                            _%post121528%_)))))
                              (_%K121534121575%_
                               (lambda (_%rest121555%_ _%hd121556%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd121556%_))
                                     (let ((_%id121559%_
                                            (__SRC__0 _%hd121556%_)))
                                       (_%lp121523%_
                                        _%rest121555%_
                                        (cdr _%exprs121526%_)
                                        (cons (cons _%id121559%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind121527%_)
                                        (cons (cons _%id121559%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs121526%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post121528%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd121556%_))
                                         (if (list? _%hd121556%_)
                                             (let* ((_%len121563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd121556%_)))
                                                    (_%tmp121565%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp121523%_
                                                _%rest121555%_
                                                (cdr _%exprs121526%_)
                                                (let ((__tmp123135
                                                       (lambda (_%id121568%_
                                                                _%r121569%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id121568%_))
                     (cons (cons (__SRC__0 _%id121568%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r121569%_)
                     _%r121569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp123135
                                                   _%bind121527%_
                                                   _%hd121556%_))
                                                (cons (cons _%tmp121565%_
                                                            (cons (car _%exprs121526%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len121563%_
                                (let ((__tmp123137
                                       (lambda (_%id121571%_ _%k121572%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id121571%_))
                                             (cons (__SRC__0 _%id121571%_)
                                                   _%k121572%_)
                                             '#f)))
                                      (__tmp123136
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len121563%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp123137
                                   _%hd121556%_
                                   __tmp123136)))))
              _%post121528%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx121367%_
                                              _%hd121556%_))
                                         (_%lp121523%_
                                          _%rest121555%_
                                          (cdr _%exprs121526%_)
                                          _%bind121527%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs121526%_)
                                                            '()))
                                                _%post121528%_)))))))
                          (if (pair? _%rest121529121543%_)
                              (let ((_%tl121539121600%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest121529121543%_)))
                                    (_%hd121538121598%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest121529121543%_))))
                                (if (pair? _%hd121538121598%_)
                                    (let ((_%tl121541121605%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd121538121598%_)))
                                          (_%hd121540121603%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd121538121598%_))))
                                      (if (null? _%tl121541121605%_)
                                          (let ((_%hd121608%_
                                                 _%hd121540121603%_)
                                                (_%rest121610%_
                                                 _%tl121539121600%_))
                                            (_%K121537121595%_
                                             _%rest121610%_
                                             _%hd121608%_))
                                          (let ((_%hd121583%_
                                                 _%hd121538121598%_)
                                                (_%rest121585%_
                                                 _%tl121539121600%_))
                                            (_%K121534121575%_
                                             _%rest121585%_
                                             _%hd121583%_))))
                                    (let ((_%hd121583%_ _%hd121538121598%_)
                                          (_%rest121585%_ _%tl121539121600%_))
                                      (_%K121534121575%_
                                       _%rest121585%_
                                       _%hd121583%_))))
                              (_%else121532121551%_)))))))
                 (_%compile-bind121371%_
                  (lambda (_%bind121515%_ _%post121516%_ _%body121517%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind121515%_)
                                 (cons (_%compile-post121372%_
                                        _%post121516%_
                                        _%body121517%_)
                                       '())))
                     _%stx121367%_)))
                 (_%compile-post121372%_
                  (lambda (_%post121374%_ _%body121375%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp123138
                                  (let ((__tmp123140
                                         (lambda (_%hd121377%_ _%r121378%_)
                                           (let* ((_%hd121379121402%_
                                                   _%hd121377%_)
                                                  (_%E121383121406%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd121379121402%_
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
                                             (let ((_%K121396121500%_
                                                    (lambda (_%expr121498%_)
                                                      (cons _%expr121498%_
                                                            _%r121378%_)))
                                                   (_%K121391121478%_
                                                    (lambda (_%expr121475%_
                                                             _%id121476%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id121476%_ (cons _%expr121475%_ '())))
                     _%stx121367%_)
                    _%r121378%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K121384121445%_
                                                    (lambda (_%init121410%_
                                                             _%len121411%_
                                                             _%expr121412%_
                                                             _%tmp121413%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp121413%_
                                             (cons _%expr121412%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp121413%_
                                                    (cons _%len121411%_ '())))
                                        _%stx121367%_)
                                       (let ((__tmp123141
                                              (map (lambda (_%hd121415%_)
                                                     (let* ((_%hd121416121423%_
                                                             _%hd121415%_)
                                                            (_%E121418121427%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd121416121423%_
                                '([id . k])))
                       '#!void))
                    (_%K121419121433%_
                     (lambda (_%k121430%_ _%id121431%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id121431%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp121413%_
                                                      (cons _%k121430%_ '())))
                                          '())))
                        _%stx121367%_))))
               (if (pair? _%hd121416121423%_)
                   (let ((_%hd121420121436%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd121416121423%_)))
                         (_%tl121421121438%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd121416121423%_))))
                     (let* ((_%id121441%_ _%hd121420121436%_)
                            (_%k121443%_ _%tl121421121438%_))
                       (_%K121419121433%_ _%k121443%_ _%id121441%_)))
                   (_%E121418121427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init121410%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp123141)))))
                     _%stx121367%_)
                    _%r121378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match122994122995%_
                                                       (lambda (_%hd121385121448%_
                                                                _%tl121386121450%_
                                                                _%hd121387121455%_
                                                                _%tl121388121457%_)
                                                         (let ((_%tmp121453%_
                                                                _%hd121385121448%_)
                                                               (_%expr121460%_
                                                                _%hd121387121455%_))
                                                           (_%E121383121406%_))))
                                                      (_%__match122988122989%_
                                                       (lambda (_%hd121385121448%_
                                                                _%tl121386121450%_)
                                                         (let ((_%tmp121453%_
                                                                _%hd121385121448%_))
                                                           (_%E121383121406%_)))))
                                                 (if (pair? _%hd121379121402%_)
                                                     (let ((_%tl121398121505%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd121379121402%_)))
                                                           (_%hd121397121503%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd121379121402%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd121397121503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl121398121505%_)
                       (let ((_%tl121400121510%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl121398121505%_)))
                             (_%hd121399121508%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl121398121505%_))))
                         (if (null? _%tl121400121510%_)
                             (let ((_%expr121513%_ _%hd121399121508%_))
                               (_%K121396121500%_ _%expr121513%_))
                             (if (pair? _%tl121400121510%_)
                                 (let ((_%tl121390121464%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl121400121510%_)))
                                       (_%hd121389121462%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl121400121510%_))))
                                   (let ((_%tmp121453%_ _%hd121397121503%_)
                                         (_%expr121460%_ _%hd121399121508%_)
                                         (_%len121467%_ _%hd121389121462%_)
                                         (_%init121469%_ _%tl121390121464%_))
                                     (_%K121384121445%_
                                      _%init121469%_
                                      _%len121467%_
                                      _%expr121460%_
                                      _%tmp121453%_)))
                                 (_%__match122994122995%_
                                  _%hd121397121503%_
                                  _%tl121398121505%_
                                  _%hd121399121508%_
                                  _%tl121400121510%_))))
                       (_%__match122988122989%_
                        _%hd121397121503%_
                        _%tl121398121505%_))
                   (if (pair? _%tl121398121505%_)
                       (let ((_%tl121395121490%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl121398121505%_)))
                             (_%hd121394121488%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl121398121505%_))))
                         (if (null? _%tl121395121490%_)
                             (let ((_%id121486%_ _%hd121397121503%_)
                                   (_%expr121493%_ _%hd121394121488%_))
                               (_%K121391121478%_ _%expr121493%_ _%id121486%_))
                             (if (pair? _%tl121395121490%_)
                                 (let ((_%tl121390121464%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl121395121490%_)))
                                       (_%hd121389121462%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl121395121490%_))))
                                   (let ((_%tmp121453%_ _%hd121397121503%_)
                                         (_%expr121460%_ _%hd121394121488%_)
                                         (_%len121467%_ _%hd121389121462%_)
                                         (_%init121469%_ _%tl121390121464%_))
                                     (_%K121384121445%_
                                      _%init121469%_
                                      _%len121467%_
                                      _%expr121460%_
                                      _%tmp121453%_)))
                                 (_%__match122994122995%_
                                  _%hd121397121503%_
                                  _%tl121398121505%_
                                  _%hd121394121488%_
                                  _%tl121395121490%_))))
                       (_%__match122988122989%_
                        _%hd121397121503%_
                        _%tl121398121505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121383121406%_)))))))
                                        (__tmp123139 (list _%body121375%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp123140
                                     __tmp123139
                                     _%post121374%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp123138)))
                     _%stx121367%_))))
          (__compile-let-form
           _%stx121367%_
           _%compile-simple121369%_
           _%compile-values121370%_))))
    (define __compile-call%
      (lambda (_%stx121327%_)
        (let* ((_%$e121329%_ _%stx121327%_)
               (_%$E121331121340%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121329%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121329%_))
              (let* ((_%$tgt121332121343%_
                      (let () (declare (not safe)) (__AST-e _%$e121329%_)))
                     (_%$hd121333121346%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121332121343%_)))
                     (_%$tl121334121349%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121332121343%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121334121349%_))
                    (let* ((_%$tgt121335121353%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121334121349%_)))
                           (_%$hd121336121356%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121335121353%_)))
                           (_%$tl121337121359%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121335121353%_)))
                           (_%rator121363%_ _%$hd121336121356%_)
                           (_%rands121365%_ _%$tl121337121359%_))
                      (__SRC__%
                       (cons (__compile _%rator121363%_)
                             (map __compile _%rands121365%_))
                       _%stx121327%_))
                    (_%$E121331121340%_)))
              (_%$E121331121340%_)))))
    (define __compile-ref%
      (lambda (_%stx121289%_)
        (let* ((_%$e121291%_ _%stx121289%_)
               (_%$E121293121302%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121291%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121291%_))
              (let* ((_%$tgt121294121305%_
                      (let () (declare (not safe)) (__AST-e _%$e121291%_)))
                     (_%$hd121295121308%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121294121305%_)))
                     (_%$tl121296121311%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121294121305%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121296121311%_))
                    (let* ((_%$tgt121297121315%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121296121311%_)))
                           (_%$hd121298121318%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121297121315%_)))
                           (_%$tl121299121321%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121297121315%_)))
                           (_%id121325%_ _%$hd121298121318%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121299121321%_))
                                  '())
                          (__SRC__% _%id121325%_ _%stx121289%_)
                          (_%$E121293121302%_)))
                    (_%$E121293121302%_)))
              (_%$E121293121302%_)))))
    (define __compile-setq%
      (lambda (_%stx121236%_)
        (let* ((_%$e121238%_ _%stx121236%_)
               (_%$E121240121252%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121238%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121238%_))
              (let* ((_%$tgt121241121255%_
                      (let () (declare (not safe)) (__AST-e _%$e121238%_)))
                     (_%$hd121242121258%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121241121255%_)))
                     (_%$tl121243121261%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121241121255%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121243121261%_))
                    (let* ((_%$tgt121244121265%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121243121261%_)))
                           (_%$hd121245121268%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121244121265%_)))
                           (_%$tl121246121271%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121244121265%_)))
                           (_%id121275%_ _%$hd121245121268%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl121246121271%_))
                          (let* ((_%$tgt121247121277%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121246121271%_)))
                                 (_%$hd121248121280%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121247121277%_)))
                                 (_%$tl121249121283%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121247121277%_)))
                                 (_%expr121287%_ _%$hd121248121280%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121249121283%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id121275%_
                                              _%stx121236%_)
                                             (cons (__compile _%expr121287%_)
                                                   '())))
                                 _%stx121236%_)
                                (_%$E121240121252%_)))
                          (_%$E121240121252%_)))
                    (_%$E121240121252%_)))
              (_%$E121240121252%_)))))
    (define __compile-if%
      (lambda (_%stx121168%_)
        (let* ((_%$e121170%_ _%stx121168%_)
               (_%$E121172121187%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121170%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121170%_))
              (let* ((_%$tgt121173121190%_
                      (let () (declare (not safe)) (__AST-e _%$e121170%_)))
                     (_%$hd121174121193%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121173121190%_)))
                     (_%$tl121175121196%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121173121190%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121175121196%_))
                    (let* ((_%$tgt121176121200%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121175121196%_)))
                           (_%$hd121177121203%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121176121200%_)))
                           (_%$tl121178121206%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121176121200%_)))
                           (_%p121210%_ _%$hd121177121203%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl121178121206%_))
                          (let* ((_%$tgt121179121212%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121178121206%_)))
                                 (_%$hd121180121215%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121179121212%_)))
                                 (_%$tl121181121218%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121179121212%_)))
                                 (_%t121222%_ _%$hd121180121215%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl121181121218%_))
                                (let* ((_%$tgt121182121224%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121181121218%_)))
                                       (_%$hd121183121227%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt121182121224%_)))
                                       (_%$tl121184121230%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt121182121224%_)))
                                       (_%f121234%_ _%$hd121183121227%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl121184121230%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p121210%_)
                                                   (cons (__compile
                                                          _%t121222%_)
                                                         (cons (__compile
                                                                _%f121234%_)
                                                               '()))))
                                       _%stx121168%_)
                                      (_%$E121172121187%_)))
                                (_%$E121172121187%_)))
                          (_%$E121172121187%_)))
                    (_%$E121172121187%_)))
              (_%$E121172121187%_)))))
    (define __compile-quote%
      (lambda (_%stx121130%_)
        (let* ((_%$e121132%_ _%stx121130%_)
               (_%$E121134121143%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121132%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121132%_))
              (let* ((_%$tgt121135121146%_
                      (let () (declare (not safe)) (__AST-e _%$e121132%_)))
                     (_%$hd121136121149%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121135121146%_)))
                     (_%$tl121137121152%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121135121146%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121137121152%_))
                    (let* ((_%$tgt121138121156%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121137121152%_)))
                           (_%$hd121139121159%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121138121156%_)))
                           (_%$tl121140121162%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121138121156%_)))
                           (_%e121166%_ _%$hd121139121159%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121140121162%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e121166%_))
                                       '()))
                           _%stx121130%_)
                          (_%$E121134121143%_)))
                    (_%$E121134121143%_)))
              (_%$E121134121143%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx121092%_)
        (let* ((_%$e121094%_ _%stx121092%_)
               (_%$E121096121105%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121094%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121094%_))
              (let* ((_%$tgt121097121108%_
                      (let () (declare (not safe)) (__AST-e _%$e121094%_)))
                     (_%$hd121098121111%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121097121108%_)))
                     (_%$tl121099121114%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121097121108%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121099121114%_))
                    (let* ((_%$tgt121100121118%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121099121114%_)))
                           (_%$hd121101121121%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121100121118%_)))
                           (_%$tl121102121124%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121100121118%_)))
                           (_%e121128%_ _%$hd121101121121%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121102121124%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e121128%_ '()))
                           _%stx121092%_)
                          (_%$E121096121105%_)))
                    (_%$E121096121105%_)))
              (_%$E121096121105%_)))))
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
