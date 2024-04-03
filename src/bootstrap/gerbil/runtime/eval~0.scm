(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712124234)
  (begin
    (define __syntax::t
      (let ((__tmp111227 (list)) (__tmp111226 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111227
         '(e id)
         __tmp111226
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args111031%_
        (apply make-instance __syntax::t _%$args111031%_)))
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
      (let ((__tmp111229 (list __syntax::t))
            (__tmp111228 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111229
         '()
         __tmp111228
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args111028%_
        (apply make-instance __core-form::t _%$args111028%_)))
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
      (let ((__tmp111231 (list __core-form::t))
            (__tmp111230 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111231
         '()
         __tmp111230
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args111025%_
        (apply make-instance __core-expression::t _%$args111025%_)))
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
      (let ((__tmp111233 (list __core-form::t))
            (__tmp111232 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111233
         '()
         __tmp111232
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args111022%_
        (apply make-instance __core-special-form::t _%$args111022%_)))
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
      (lambda (_%id111020%_)
        (let ((__tmp111234
               (let () (declare (not safe)) (__AST-e _%id111020%_))))
          (declare (not safe))
          (hash-get __core __tmp111234))))
    (define __core-bound-id?__%
      (lambda (_%id111003%_ _%is?111004%_)
        (let ((_%$e111006%_
               (let () (declare (not safe)) (__core-resolve _%id111003%_))))
          (if _%$e111006%_ (_%is?111004%_ _%$e111006%_) (let () '#f)))))
    (define __core-bound-id?__0
      (lambda (_%id111013%_)
        (let ((_%is?111015%_ true))
          (declare (not safe))
          (__core-bound-id?__% _%id111013%_ _%is?111015%_))))
    (define __core-bound-id?
      (lambda _g111236_
        (let ((_g111235_ (let () (declare (not safe)) (##length _g111236_))))
          (cond ((let () (declare (not safe)) (##fx= _g111235_ 1))
                 (apply (lambda (_%id111013%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _%id111013%_)))
                        _g111236_))
                ((let () (declare (not safe)) (##fx= _g111235_ 2))
                 (apply (lambda (_%id111017%_ _%is?111018%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _%id111017%_ _%is?111018%_)))
                        _g111236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111236_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id110986%_ _%e110987%_ _%make110988%_)
        (let ((__tmp111237
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e110987%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e110987%_
                   (_%make110988%_ _%e110987%_ _%id110986%_))))
          (declare (not safe))
          (hash-put! __core _%id110986%_ __tmp111237))))
    (define __core-bind-syntax!__0
      (lambda (_%id110993%_ _%e110994%_)
        (let ((_%make110996%_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _%id110993%_ _%e110994%_ _%make110996%_))))
    (define __core-bind-syntax!
      (lambda _g111239_
        (let ((_g111238_ (let () (declare (not safe)) (##length _g111239_))))
          (cond ((let () (declare (not safe)) (##fx= _g111238_ 2))
                 (apply (lambda (_%id110993%_ _%e110994%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _%id110993%_ _%e110994%_)))
                        _g111239_))
                ((let () (declare (not safe)) (##fx= _g111238_ 3))
                 (apply (lambda (_%id110998%_ _%e110999%_ _%make111000%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _%id110998%_
                             _%e110999%_
                             _%make111000%_)))
                        _g111239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111239_))))))
    (define __SRC__%
      (lambda (_%e110966%_ _%src-stx110967%_)
        (if (or (let () (declare (not safe)) (pair? _%e110966%_))
                (let () (declare (not safe)) (symbol? _%e110966%_)))
            (let ()
              (let ((__tmp111240
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%src-stx110967%_
                            'gerbil#AST::t))
                         (let ((__tmp111241
                                (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx110967%_))))
                           (declare (not safe))
                           (__locat __tmp111241))
                         '#f)))
                (declare (not safe))
                (##make-source _%e110966%_ __tmp111240)))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e110966%_ 'gerbil#AST::t))
                (let ()
                  (let ((__tmp111244
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref _%e110966%_ '1 '#f '#f)))
                        (__tmp111242
                         (let ((__tmp111243
                                (let ()
                                  (declare (not safe))
                                  (__AST-source _%e110966%_))))
                           (declare (not safe))
                           (__locat __tmp111243))))
                    (declare (not safe))
                    (##make-source __tmp111244 __tmp111242)))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error '"BUG! Cannot sourcify object" _%e110966%_)))))))
    (define __SRC__0
      (lambda (_%e110978%_)
        (let ((_%src-stx110980%_ '#f))
          (declare (not safe))
          (__SRC__% _%e110978%_ _%src-stx110980%_))))
    (define __SRC
      (lambda _g111246_
        (let ((_g111245_ (let () (declare (not safe)) (##length _g111246_))))
          (cond ((let () (declare (not safe)) (##fx= _g111245_ 1))
                 (apply (lambda (_%e110978%_)
                          (let () (declare (not safe)) (__SRC__0 _%e110978%_)))
                        _g111246_))
                ((let () (declare (not safe)) (##fx= _g111245_ 2))
                 (apply (lambda (_%e110982%_ _%src-stx110983%_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%e110982%_ _%src-stx110983%_)))
                        _g111246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111246_))))))
    (define __locat
      (lambda (_%loc110963%_)
        (if (let () (declare (not safe)) (##locat? _%loc110963%_))
            _%loc110963%_
            '#f)))
    (define __check-values
      (lambda (_%obj110958%_ _%k110959%_)
        (let ((_%count110961%_
               (if (let () (declare (not safe)) (##values? _%obj110958%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj110958%_))
                   '1)))
          (if (fx= _%count110961%_ _%k110959%_)
              '#!void
              (let ((__tmp111248
                     (if (fx< _%count110961%_ _%k110959%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111247
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj110958%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj110958%_))
                         _%obj110958%_)))
                (declare (not safe))
                (error __tmp111248 __tmp111247 _%k110959%_))))))
    (define __compile
      (lambda (_%stx110927%_)
        (let* ((_%$e110929%_ _%stx110927%_)
               (_%$E110931110937%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110929%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110929%_))
              (let* ((_%$tgt110932110940%_
                      (let () (declare (not safe)) (__AST-e _%$e110929%_)))
                     (_%$hd110933110943%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110932110940%_)))
                     (_%$tl110934110946%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110932110940%_))))
                (let* ((_%form110950%_ _%$hd110933110943%_)
                       (_%$e110952%_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _%form110950%_))))
                  (if _%$e110952%_
                      ((lambda (_%bind110955%_)
                         ((##structure-ref _%bind110955%_ '1 __syntax::t '#f)
                          _%stx110927%_))
                       _%$e110952%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (__raise-syntax-error
                           '#f
                           '"Bad syntax; cannot resolve form"
                           _%stx110927%_
                           _%form110950%_))))))
              (let () (declare (not safe)) (_%$E110931110937%_))))))
    (define __compile-error__%
      (lambda (_%stx110914%_ _%detail110915%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx110914%_
           _%detail110915%_))))
    (define __compile-error__0
      (lambda (_%stx110920%_)
        (let ((_%detail110922%_ '#f))
          (declare (not safe))
          (__compile-error__% _%stx110920%_ _%detail110922%_))))
    (define __compile-error
      (lambda _g111250_
        (let ((_g111249_ (let () (declare (not safe)) (##length _g111250_))))
          (cond ((let () (declare (not safe)) (##fx= _g111249_ 1))
                 (apply (lambda (_%stx110920%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _%stx110920%_)))
                        _g111250_))
                ((let () (declare (not safe)) (##fx= _g111249_ 2))
                 (apply (lambda (_%stx110924%_ _%detail110925%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__%
                             _%stx110924%_
                             _%detail110925%_)))
                        _g111250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111250_))))))
    (define __compile-ignore%
      (lambda (_%stx110911%_)
        (let () (declare (not safe)) (__SRC__% ''#!void _%stx110911%_))))
    (define __compile-begin%
      (lambda (_%stx110886%_)
        (let* ((_%$e110888%_ _%stx110886%_)
               (_%$E110890110896%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110888%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110888%_))
              (let* ((_%$tgt110891110899%_
                      (let () (declare (not safe)) (__AST-e _%$e110888%_)))
                     (_%$hd110892110902%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110891110899%_)))
                     (_%$tl110893110905%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110891110899%_))))
                (let* ((_%body110909%_ _%$tl110893110905%_)
                       (__tmp111251
                        (cons 'begin (map __compile _%body110909%_))))
                  (declare (not safe))
                  (__SRC__% __tmp111251 _%stx110886%_)))
              (let () (declare (not safe)) (_%$E110890110896%_))))))
    (define __compile-begin-foreign%
      (lambda (_%stx110861%_)
        (let* ((_%$e110863%_ _%stx110861%_)
               (_%$E110865110871%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110863%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110863%_))
              (let* ((_%$tgt110866110874%_
                      (let () (declare (not safe)) (__AST-e _%$e110863%_)))
                     (_%$hd110867110877%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110866110874%_)))
                     (_%$tl110868110880%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110866110874%_))))
                (let* ((_%body110884%_ _%$tl110868110880%_)
                       (__tmp111252
                        (cons 'begin
                              (let ()
                                (declare (not safe))
                                (__AST->datum _%body110884%_)))))
                  (declare (not safe))
                  (__SRC__% __tmp111252 _%stx110861%_)))
              (let () (declare (not safe)) (_%$E110865110871%_))))))
    (define __compile-import%
      (lambda (_%stx110836%_)
        (let* ((_%$e110838%_ _%stx110836%_)
               (_%$E110840110846%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110838%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110838%_))
              (let* ((_%$tgt110841110849%_
                      (let () (declare (not safe)) (__AST-e _%$e110838%_)))
                     (_%$hd110842110852%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110841110849%_)))
                     (_%$tl110843110855%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110841110849%_))))
                (let* ((_%body110859%_ _%$tl110843110855%_)
                       (__tmp111253
                        (cons '__eval-import
                              (cons (cons 'quote (cons _%body110859%_ '()))
                                    '()))))
                  (declare (not safe))
                  (__SRC__% __tmp111253 _%stx110836%_)))
              (let () (declare (not safe)) (_%$E110840110846%_))))))
    (define __compile-begin-annotation%
      (lambda (_%stx110783%_)
        (let* ((_%$e110785%_ _%stx110783%_)
               (_%$E110787110799%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110785%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110785%_))
              (let* ((_%$tgt110788110802%_
                      (let () (declare (not safe)) (__AST-e _%$e110785%_)))
                     (_%$hd110789110805%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110788110802%_)))
                     (_%$tl110790110808%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110788110802%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110790110808%_))
                    (let* ((_%$tgt110791110812%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110790110808%_)))
                           (_%$hd110792110815%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110791110812%_)))
                           (_%$tl110793110818%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110791110812%_))))
                      (let ((_%ann110822%_ _%$hd110792110815%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110793110818%_))
                            (let* ((_%$tgt110794110824%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110793110818%_)))
                                   (_%$hd110795110827%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110794110824%_)))
                                   (_%$tl110796110830%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110794110824%_))))
                              (let ((_%expr110834%_ _%$hd110795110827%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110796110830%_))
                                            '())
                                    (let ()
                                      (declare (not safe))
                                      (__compile _%expr110834%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110787110799%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110787110799%_)))))
                    (let () (declare (not safe)) (_%$E110787110799%_))))
              (let () (declare (not safe)) (_%$E110787110799%_))))))
    (define __compile-define-values%
      (lambda (_%stx110674%_)
        (let* ((_%$e110676%_ _%stx110674%_)
               (_%$E110678110690%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110676%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110676%_))
              (let* ((_%$tgt110679110693%_
                      (let () (declare (not safe)) (__AST-e _%$e110676%_)))
                     (_%$hd110680110696%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110679110693%_)))
                     (_%$tl110681110699%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110679110693%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110681110699%_))
                    (let* ((_%$tgt110682110703%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110681110699%_)))
                           (_%$hd110683110706%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110682110703%_)))
                           (_%$tl110684110709%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110682110703%_))))
                      (let ((_%hd110713%_ _%$hd110683110706%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110684110709%_))
                            (let* ((_%$tgt110685110715%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110684110709%_)))
                                   (_%$hd110686110718%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110685110715%_)))
                                   (_%$tl110687110721%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110685110715%_))))
                              (let ((_%expr110725%_ _%$hd110686110718%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110687110721%_))
                                            '())
                                    (let* ((_%$e110727%_ _%hd110713%_)
                                           (_%$E110729110770%_
                                            (lambda ()
                                              (let ((_%$E110730110755%_
                                                     (lambda ()
                                                       (let* ((_%$E110731110742%_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _%$e110727%_))))
                      (_%ids110745%_ _%hd110713%_)
                      (_%len110747%_ (length _%ids110745%_))
                      (_%tmp110749%_
                       (let ((__tmp111254
                              (let () (declare (not safe)) (##gensym))))
                         (declare (not safe))
                         (__SRC__0 __tmp111254))))
                 (let ((__tmp111255
                        (cons 'begin
                              (cons (let ((__tmp111256
                                           (cons 'define
                                                 (cons _%tmp110749%_
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%expr110725%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111256 _%stx110674%_))
                                    (cons (let ((__tmp111257
                                                 (cons '__check-values
                                                       (cons _%tmp110749%_
                                                             (cons _%len110747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (__SRC__%
                                             __tmp111257
                                             _%stx110674%_))
                                          (let ((__tmp111258
                                                 (let ((__tmp111260
                                                        (lambda (_%id110752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%k110753%_)
                  (if (let () (declare (not safe)) (__AST-e _%id110752%_))
                      (let ((__tmp111261
                             (cons 'define
                                   (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id110752%_))
                                         (cons (cons '##vector-ref
                                                     (cons _%tmp110749%_
                                                           (cons _%k110753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (__SRC__% __tmp111261 _%stx110674%_))
                      '#f)))
               (__tmp111259
                (let () (declare (not safe)) (##iota _%len110747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__filter-map2
                                                    __tmp111260
                                                    _%ids110745%_
                                                    __tmp111259))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp111258)))))))
                   (declare (not safe))
                   (__SRC__% __tmp111255 _%stx110674%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair?
                                                       _%$e110727%_))
                                                    (let* ((_%$tgt110732110758%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _%$e110727%_)))
                                                           (_%$hd110733110761%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$tgt110732110758%_)))
                                                           (_%$tl110734110764%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$tgt110732110758%_))))
                                                      (let ((_%id110768%_
                                                             _%$hd110733110761%_))
                                                        (if (equal? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (__AST-e _%$tl110734110764%_))
                            '())
                    (let ((__tmp111262
                           (cons 'define
                                 (cons (let ()
                                         (declare (not safe))
                                         (__SRC__0 _%id110768%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (__compile _%expr110725%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111262 _%stx110674%_))
                    (let () (declare (not safe)) (_%$E110730110755%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$E110730110755%_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _%$e110727%_))
                                          (let* ((_%$tgt110735110773%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _%$e110727%_)))
                                                 (_%$hd110736110776%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$tgt110735110773%_)))
                                                 (_%$tl110737110779%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$tgt110735110773%_))))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$hd110736110776%_))
                                                        '#f)
                                                (if (equal? (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _%$tl110737110779%_))
                                                            '())
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile
                                                       _%expr110725%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$E110729110770%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110729110770%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$E110729110770%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110678110690%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110678110690%_)))))
                    (let () (declare (not safe)) (_%$E110678110690%_))))
              (let () (declare (not safe)) (_%$E110678110690%_))))))
    (define __compile-head-id
      (lambda (_%e110672%_)
        (let ((__tmp111263
               (if (let () (declare (not safe)) (__AST-e _%e110672%_))
                   _%e110672%_
                   (let () (declare (not safe)) (##gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp111263))))
    (define __compile-lambda-head
      (lambda (_%hd110629%_)
        (let _%recur110631%_ ((_%rest110633%_ _%hd110629%_))
          (let* ((_%$e110635%_ _%rest110633%_)
                 (_%$E110637110655%_
                  (lambda ()
                    (let ((_%$E110638110652%_
                           (lambda ()
                             (let* ((_%$E110639110647%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e110635%_))))
                                    (_%tail110650%_ _%$e110635%_))
                               (declare (not safe))
                               (__compile-head-id _%tail110650%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110635%_))
                                  '())
                          '()
                          (let ()
                            (declare (not safe))
                            (_%$E110638110652%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110635%_))
                (let* ((_%$tgt110640110658%_
                        (let () (declare (not safe)) (__AST-e _%$e110635%_)))
                       (_%$hd110641110661%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110640110658%_)))
                       (_%$tl110642110664%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110640110658%_))))
                  (let* ((_%hd110668%_ _%$hd110641110661%_)
                         (_%rest110670%_ _%$tl110642110664%_))
                    (cons (let ()
                            (declare (not safe))
                            (__compile-head-id _%hd110668%_))
                          (let ()
                            (declare (not safe))
                            (_%recur110631%_ _%rest110670%_)))))
                (let () (declare (not safe)) (_%$E110637110655%_)))))))
    (define __compile-lambda%
      (lambda (_%stx110576%_)
        (let* ((_%$e110578%_ _%stx110576%_)
               (_%$E110580110592%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110578%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110578%_))
              (let* ((_%$tgt110581110595%_
                      (let () (declare (not safe)) (__AST-e _%$e110578%_)))
                     (_%$hd110582110598%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110581110595%_)))
                     (_%$tl110583110601%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110581110595%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110583110601%_))
                    (let* ((_%$tgt110584110605%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110583110601%_)))
                           (_%$hd110585110608%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110584110605%_)))
                           (_%$tl110586110611%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110584110605%_))))
                      (let ((_%hd110615%_ _%$hd110585110608%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110586110611%_))
                            (let* ((_%$tgt110587110617%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110586110611%_)))
                                   (_%$hd110588110620%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110587110617%_)))
                                   (_%$tl110589110623%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110587110617%_))))
                              (let ((_%body110627%_ _%$hd110588110620%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110589110623%_))
                                            '())
                                    (let ((__tmp111264
                                           (cons 'lambda
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (__compile-lambda-head
                                                          _%hd110615%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%body110627%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111264 _%stx110576%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110580110592%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110580110592%_)))))
                    (let () (declare (not safe)) (_%$E110580110592%_))))
              (let () (declare (not safe)) (_%$E110580110592%_))))))
    (define __compile-case-lambda%
      (lambda (_%stx110368%_)
        (letrec ((_%variadic?110370%_
                  (lambda (_%hd110541%_)
                    (let* ((_%$e110543%_ _%hd110541%_)
                           (_%$E110545110561%_
                            (lambda ()
                              (let ((_%$E110546110558%_
                                     (lambda ()
                                       (let ((_%$E110547110555%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e110543%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e110543%_))
                                            '())
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110546110558%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110543%_))
                          (let* ((_%$tgt110548110564%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110543%_)))
                                 (_%$hd110549110567%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110548110564%_)))
                                 (_%$tl110550110570%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110548110564%_))))
                            (let ((_%rest110574%_ _%$tl110550110570%_))
                              (declare (not safe))
                              (_%variadic?110370%_ _%rest110574%_)))
                          (let ()
                            (declare (not safe))
                            (_%$E110545110561%_))))))
                 (_%arity110371%_
                  (lambda (_%hd110506%_)
                    (let _%lp110508%_ ((_%rest110510%_ _%hd110506%_)
                                       (_%k110511%_ '0))
                      (let* ((_%$e110513%_ _%rest110510%_)
                             (_%$E110515110526%_
                              (lambda ()
                                (let ((_%$E110516110523%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e110513%_)))))
                                  _%k110511%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e110513%_))
                            (let* ((_%$tgt110517110529%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e110513%_)))
                                   (_%$hd110518110532%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110517110529%_)))
                                   (_%$tl110519110535%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110517110529%_))))
                              (let* ((_%rest110539%_ _%$tl110519110535%_)
                                     (__tmp111265
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%k110511%_ '1))))
                                (declare (not safe))
                                (_%lp110508%_ _%rest110539%_ __tmp111265)))
                            (let ()
                              (declare (not safe))
                              (_%$E110515110526%_)))))))
                 (_%generate110372%_
                  (lambda (_%rest110433%_ _%args110434%_ _%len110435%_)
                    (let* ((_%$e110437%_ _%rest110433%_)
                           (_%$E110439110450%_
                            (lambda ()
                              (let* ((_%$E110440110447%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _%$e110437%_))))
                                     (__tmp111266
                                      (cons 'error
                                            (cons '"No clause matching arguments"
                                                  (cons _%args110434%_ '())))))
                                (declare (not safe))
                                (__SRC__% __tmp111266 _%stx110368%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110437%_))
                          (let* ((_%$tgt110441110453%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110437%_)))
                                 (_%$hd110442110456%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110441110453%_)))
                                 (_%$tl110443110459%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110441110453%_))))
                            (let* ((_%clause110463%_ _%$hd110442110456%_)
                                   (_%rest110465%_ _%$tl110443110459%_)
                                   (_%$e110467%_ _%clause110463%_)
                                   (_%$E110469110478%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _%$e110467%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _%$e110467%_))
                                  (let* ((_%$tgt110470110481%_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _%$e110467%_)))
                                         (_%$hd110471110484%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$tgt110470110481%_)))
                                         (_%$tl110472110487%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$tgt110470110481%_))))
                                    (let ((_%hd110491%_ _%$hd110471110484%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _%$tl110472110487%_))
                                          (let* ((_%$tgt110473110493%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _%$tl110472110487%_)))
                                                 (_%$hd110474110496%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$tgt110473110493%_)))
                                                 (_%$tl110475110499%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$tgt110473110493%_))))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl110475110499%_))
                                                        '())
                                                (let ((_%clen110503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%arity110371%_
                                                          _%hd110491%_)))
                                                      (_%cmp110504%_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%variadic?110370%_
                                                              _%hd110491%_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp111267
                                                         (cons 'if
                                                               (cons (cons _%cmp110504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%len110435%_
                                         (cons _%clen110503%_ '())))
                             (cons (let ((__tmp111268
                                          (cons '##apply
                                                (cons (let ((__tmp111269
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause110463%_)))
                (declare (not safe))
                (__compile-lambda% __tmp111269))
              (cons _%args110434%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111268 _%stx110368%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (_%generate110372%_
                                            _%rest110465%_
                                            _%args110434%_
                                            _%len110435%_))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp111267
                                                     _%stx110368%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110469110478%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$E110469110478%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$E110469110478%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E110439110450%_)))))))
          (let* ((_%$e110374%_ _%stx110368%_)
                 (_%$E110376110408%_
                  (lambda ()
                    (let ((_%$E110377110390%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110374%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110374%_))
                          (let* ((_%$tgt110378110393%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110374%_)))
                                 (_%$hd110379110396%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110378110393%_)))
                                 (_%$tl110380110399%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110378110393%_))))
                            (let ((_%clauses110403%_ _%$tl110380110399%_))
                              (let ((_%args110405%_
                                     (let ((__tmp111270
                                            (let ()
                                              (declare (not safe))
                                              (##gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111270 _%stx110368%_)))
                                    (_%len110406%_
                                     (let ((__tmp111271
                                            (let ()
                                              (declare (not safe))
                                              (##gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111271 _%stx110368%_))))
                                (let ((__tmp111272
                                       (cons 'lambda
                                             (cons _%args110405%_
                                                   (cons (let ((__tmp111273
                                                                (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (cons _%len110406%_
                                                (cons (let ((__tmp111274
                                                             (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args110405%_ '()))))
                (declare (not safe))
                (__SRC__% __tmp111274 _%stx110368%_))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%generate110372%_
                                             _%clauses110403%_
                                             _%args110405%_
                                             _%len110406%_))
                                          '())))))
                   (declare (not safe))
                   (__SRC__% __tmp111273 _%stx110368%_))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__SRC__% __tmp111272 _%stx110368%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E110377110390%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110374%_))
                (let* ((_%$tgt110381110411%_
                        (let () (declare (not safe)) (__AST-e _%$e110374%_)))
                       (_%$hd110382110414%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110381110411%_)))
                       (_%$tl110383110417%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110381110411%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110383110417%_))
                      (let* ((_%$tgt110384110421%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110383110417%_)))
                             (_%$hd110385110424%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110384110421%_)))
                             (_%$tl110386110427%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110384110421%_))))
                        (let ((_%clause110431%_ _%$hd110385110424%_))
                          (if (equal? (let ()
                                        (declare (not safe))
                                        (__AST-e _%$tl110386110427%_))
                                      '())
                              (let ((__tmp111275
                                     (cons '%#lambda _%clause110431%_)))
                                (declare (not safe))
                                (__compile-lambda% __tmp111275))
                              (let ()
                                (declare (not safe))
                                (_%$E110376110408%_)))))
                      (let () (declare (not safe)) (_%$E110376110408%_))))
                (let () (declare (not safe)) (_%$E110376110408%_)))))))
    (define __compile-let-form
      (lambda (_%stx110137%_ _%compile-simple110138%_ _%compile-values110139%_)
        (letrec ((_%simple-bind?110141%_
                  (lambda (_%hd110326%_)
                    (let* ((_%hd110327110337%_ _%hd110326%_)
                           (_%else110330110345%_ (lambda () '#f)))
                      (let ((_%K110333110358%_ (lambda (_%id110356%_) '#t))
                            (_%K110332110350%_ (lambda () '#t)))
                        (let ((_%try-match110329110353%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110327110337%_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110332110350%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%else110330110345%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110327110337%_))
                              (let ((_%tl110335110363%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110327110337%_)))
                                    (_%hd110334110361%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110327110337%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110335110363%_))
                                    (let ((_%id110366%_ _%hd110334110361%_))
                                      (declare (not safe))
                                      (_%K110333110358%_ _%id110366%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%try-match110329110353%_))))
                              (let ()
                                (declare (not safe))
                                (_%try-match110329110353%_))))))))
                 (_%car-e110142%_
                  (lambda (_%hd110324%_)
                    (if (let () (declare (not safe)) (pair? _%hd110324%_))
                        (car _%hd110324%_)
                        _%hd110324%_))))
          (let* ((_%$e110144%_ _%stx110137%_)
                 (_%$E110146110289%_
                  (lambda ()
                    (let ((_%$E110147110169%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110144%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110144%_))
                          (let* ((_%$tgt110148110172%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110144%_)))
                                 (_%$hd110149110175%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110148110172%_)))
                                 (_%$tl110150110178%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110148110172%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110150110178%_))
                                (let* ((_%$tgt110151110182%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110150110178%_)))
                                       (_%$hd110152110185%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110151110182%_)))
                                       (_%$tl110153110188%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110151110182%_))))
                                  (let ((_%hd110192%_ _%$hd110152110185%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _%$tl110153110188%_))
                                        (let* ((_%$tgt110154110194%_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl110153110188%_)))
                                               (_%$hd110155110197%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$tgt110154110194%_)))
                                               (_%$tl110156110200%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$tgt110154110194%_))))
                                          (let ((_%body110204%_
                                                 _%$hd110155110197%_))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl110156110200%_))
                                                        '())
                                                (let* ((_%hd-ids110244%_
                                                        (map (lambda (_%bind110206%_)
                                                               (let* ((_%$e110208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%bind110206%_)
                              (_%$E110210110219%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _%$e110208%_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _%$e110208%_))
                             (let* ((_%$tgt110211110222%_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _%$e110208%_)))
                                    (_%$hd110212110225%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$tgt110211110222%_)))
                                    (_%$tl110213110228%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$tgt110211110222%_))))
                               (let ((_%ids110232%_ _%$hd110212110225%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _%$tl110213110228%_))
                                     (let* ((_%$tgt110214110234%_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110213110228%_)))
                                            (_%$hd110215110237%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$tgt110214110234%_)))
                                            (_%$tl110216110240%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$tgt110214110234%_))))
                                       (if (equal? (let ()
                                                     (declare (not safe))
                                                     (__AST-e _%$tl110216110240%_))
                                                   '())
                                           _%ids110232%_
                                           (let ()
                                             (declare (not safe))
                                             (_%$E110210110219%_))))
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110210110219%_)))))
                             (let ()
                               (declare (not safe))
                               (_%$E110210110219%_)))))
                     _%hd110192%_))
               (_%exprs110284%_
                (map (lambda (_%bind110246%_)
                       (let* ((_%$e110248%_ _%bind110246%_)
                              (_%$E110250110259%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _%$e110248%_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _%$e110248%_))
                             (let* ((_%$tgt110251110262%_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _%$e110248%_)))
                                    (_%$hd110252110265%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$tgt110251110262%_)))
                                    (_%$tl110253110268%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$tgt110251110262%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _%$tl110253110268%_))
                                   (let* ((_%$tgt110254110272%_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _%$tl110253110268%_)))
                                          (_%$hd110255110275%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$tgt110254110272%_)))
                                          (_%$tl110256110278%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$tgt110254110272%_))))
                                     (let ((_%expr110282%_
                                            _%$hd110255110275%_))
                                       (if (equal? (let ()
                                                     (declare (not safe))
                                                     (__AST-e _%$tl110256110278%_))
                                                   '())
                                           (let ()
                                             (declare (not safe))
                                             (__compile _%expr110282%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%$E110250110259%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$E110250110259%_))))
                             (let ()
                               (declare (not safe))
                               (_%$E110250110259%_)))))
                     _%hd110192%_))
               (_%body110286%_
                (let () (declare (not safe)) (__compile _%body110204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (__andmap1
                                                         _%simple-bind?110141%_
                                                         _%hd-ids110244%_))
                                                      (_%compile-simple110138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##map _%car-e110142%_
                                                                _%hd-ids110244%_))
                                                       _%exprs110284%_
                                                       _%body110286%_)
                                                      (_%compile-values110139%_
                                                       _%hd-ids110244%_
                                                       _%exprs110284%_
                                                       _%body110286%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110147110169%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E110147110169%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110147110169%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110147110169%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110144%_))
                (let* ((_%$tgt110157110292%_
                        (let () (declare (not safe)) (__AST-e _%$e110144%_)))
                       (_%$hd110158110295%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110157110292%_)))
                       (_%$tl110159110298%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110157110292%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110159110298%_))
                      (let* ((_%$tgt110160110302%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110159110298%_)))
                             (_%$hd110161110305%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110160110302%_)))
                             (_%$tl110162110308%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110160110302%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110161110305%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110162110308%_))
                                (let* ((_%$tgt110163110312%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110162110308%_)))
                                       (_%$hd110164110315%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110163110312%_)))
                                       (_%$tl110165110318%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110163110312%_))))
                                  (let ((_%body110322%_ _%$hd110164110315%_))
                                    (if (equal? (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl110165110318%_))
                                                '())
                                        (let ()
                                          (declare (not safe))
                                          (__compile _%body110322%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E110146110289%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110146110289%_)))
                            (let ()
                              (declare (not safe))
                              (_%$E110146110289%_))))
                      (let () (declare (not safe)) (_%$E110146110289%_))))
                (let () (declare (not safe)) (_%$E110146110289%_)))))))
    (define __compile-let-values%
      (lambda (_%stx109949%_)
        (letrec ((_%compile-simple109951%_
                  (lambda (_%hd-ids110133%_ _%exprs110134%_ _%body110135%_)
                    (let ((__tmp111276
                           (cons 'let
                                 (cons (let ((__tmp111277
                                              (map __compile-head-id
                                                   _%hd-ids110133%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111277
                                                _%exprs110134%_))
                                       (cons _%body110135%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111276 _%stx109949%_))))
                 (_%compile-values109952%_
                  (lambda (_%hd-ids110048%_ _%exprs110049%_ _%body110050%_)
                    (let _%lp110052%_ ((_%rest110054%_ _%hd-ids110048%_)
                                       (_%exprs110055%_ _%exprs110049%_)
                                       (_%bind110056%_ '())
                                       (_%post110057%_ '()))
                      (let* ((_%rest110058110072%_ _%rest110054%_)
                             (_%else110061110080%_
                              (lambda ()
                                (let ((__tmp111278
                                       (cons 'let
                                             (cons (reverse _%bind110056%_)
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%compile-post109953%_
                                                            _%post110057%_
                                                            _%body110050%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111278 _%stx109949%_)))))
                        (let ((_%K110066110116%_
                               (lambda (_%rest110113%_ _%id110114%_)
                                 (let ((__tmp111280 (cdr _%exprs110055%_))
                                       (__tmp111279
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110114%_))
                                                    (cons (car _%exprs110055%_)
                                                          '()))
                                              _%bind110056%_)))
                                   (declare (not safe))
                                   (_%lp110052%_
                                    _%rest110113%_
                                    __tmp111280
                                    __tmp111279
                                    _%post110057%_))))
                              (_%K110063110098%_
                               (lambda (_%rest110084%_ _%hd110085%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110085%_))
                                     (let ()
                                       (let ((__tmp111282
                                              (cdr _%exprs110055%_))
                                             (__tmp111281
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _%hd110085%_))
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs110055%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110056%_)))
                                         (declare (not safe))
                                         (_%lp110052%_
                                          _%rest110084%_
                                          __tmp111282
                                          __tmp111281
                                          _%post110057%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110085%_))
                                         (let ()
                                           (let* ((_%len110089%_
                                                   (length _%hd110085%_))
                                                  (_%tmp110091%_
                                                   (let ((__tmp111283
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111283))))
                                             (let ((__tmp111290
                                                    (cdr _%exprs110055%_))
                                                   (__tmp111289
                                                    (cons (cons _%tmp110091%_
                                                                (cons (car _%exprs110055%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110056%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111284
                                                    (cons (let ((__tmp111285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111286
                                (let ((__tmp111288
                                       (lambda (_%id110094%_ _%k110095%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110094%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110094%_))
                                                   _%k110095%_)
                                             '#f)))
                                      (__tmp111287
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110089%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111288
                                   _%hd110085%_
                                   __tmp111287))))
                           (declare (not safe))
                           (cons _%len110089%_ __tmp111286))))
                    (declare (not safe))
                    (cons _%tmp110091%_ __tmp111285))
                  _%post110057%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110052%_
                                                _%rest110084%_
                                                __tmp111290
                                                __tmp111289
                                                __tmp111284))))
                                         (let ()
                                           (let ()
                                             (declare (not safe))
                                             (__compile-error__%
                                              _%stx109949%_
                                              _%hd110085%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110058110072%_))
                              (let ((_%tl110068110121%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110058110072%_)))
                                    (_%hd110067110119%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110058110072%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110067110119%_))
                                    (let ((_%tl110070110126%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110067110119%_)))
                                          (_%hd110069110124%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110067110119%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110070110126%_))
                                          (let ((_%id110129%_
                                                 _%hd110069110124%_)
                                                (_%rest110131%_
                                                 _%tl110068110121%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110066110116%_
                                               _%rest110131%_
                                               _%id110129%_)))
                                          (let ((_%hd110106%_
                                                 _%hd110067110119%_)
                                                (_%rest110108%_
                                                 _%tl110068110121%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110063110098%_
                                               _%rest110108%_
                                               _%hd110106%_)))))
                                    (let ((_%hd110106%_ _%hd110067110119%_)
                                          (_%rest110108%_ _%tl110068110121%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110063110098%_
                                         _%rest110108%_
                                         _%hd110106%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110061110080%_))))))))
                 (_%compile-post109953%_
                  (lambda (_%post109955%_ _%body109956%_)
                    (let _%lp109958%_ ((_%rest109960%_ _%post109955%_)
                                       (_%check109961%_ '())
                                       (_%bind109962%_ '()))
                      (let* ((_%rest109963109975%_ _%rest109960%_)
                             (_%else109965109983%_
                              (lambda ()
                                (let ((__tmp111291
                                       (cons 'begin
                                             (let ((__tmp111292
                                                    (cons (let ((__tmp111293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons _%bind109962%_
                                     (cons _%body109956%_ '())))))
                    (declare (not safe))
                    (__SRC__% __tmp111293 _%stx109949%_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111292
                                                _%check109961%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111291 _%stx109949%_))))
                             (_%K109967110022%_
                              (lambda (_%rest109986%_
                                       _%init109987%_
                                       _%len109988%_
                                       _%tmp109989%_)
                                (let ((__tmp111296
                                       (cons (let ((__tmp111297
                                                    (cons '__check-values
                                                          (cons _%tmp109989%_
                                                                (cons _%len109988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111297
                                                _%stx109949%_))
                                             _%check109961%_))
                                      (__tmp111294
                                       (let ((__tmp111295
                                              (lambda (_%hd109991%_
                                                       _%r109992%_)
                                                (let* ((_%hd109993110000%_
                                                        _%hd109991%_)
                                                       (_%E109995110004%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd109993110000%_
                           '([id . k])))
                  '#!void))
               (_%K109996110010%_
                (lambda (_%k110007%_ _%id110008%_)
                  (cons (cons _%id110008%_
                              (cons (cons '##vector-ref
                                          (cons _%tmp109989%_
                                                (cons _%k110007%_ '())))
                                    '()))
                        _%r109992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd109993110000%_))
                                                      (let ((_%hd109997110013%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd109993110000%_)))
                    (_%tl109998110015%_
                     (let () (declare (not safe)) (##cdr _%hd109993110000%_))))
                (let* ((_%id110018%_ _%hd109997110013%_)
                       (_%k110020%_ _%tl109998110015%_))
                  (declare (not safe))
                  (_%K109996110010%_ _%k110020%_ _%id110018%_)))
              (let () (declare (not safe)) (_%E109995110004%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111295
                                          _%bind109962%_
                                          _%init109987%_))))
                                  (declare (not safe))
                                  (_%lp109958%_
                                   _%rest109986%_
                                   __tmp111296
                                   __tmp111294)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest109963109975%_))
                            (let ((_%hd109968110025%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109963109975%_)))
                                  (_%tl109969110027%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109963109975%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd109968110025%_))
                                  (let ((_%hd109970110030%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd109968110025%_)))
                                        (_%tl109971110032%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd109968110025%_))))
                                    (let ((_%tmp110035%_ _%hd109970110030%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl109971110032%_))
                                          (let ((_%hd109972110037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl109971110032%_)))
                                                (_%tl109973110039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl109971110032%_))))
                                            (let* ((_%len110042%_
                                                    _%hd109972110037%_)
                                                   (_%init110044%_
                                                    _%tl109973110039%_)
                                                   (_%rest110046%_
                                                    _%tl109969110027%_))
                                              (declare (not safe))
                                              (_%K109967110022%_
                                               _%rest110046%_
                                               _%init110044%_
                                               _%len110042%_
                                               _%tmp110035%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else109965109983%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else109965109983%_))))
                            (let ()
                              (declare (not safe))
                              (_%else109965109983%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109949%_
             _%compile-simple109951%_
             _%compile-values109952%_)))))
    (define __compile-letrec-values%
      (lambda (_%stx109746%_)
        (letrec ((_%compile-simple109748%_
                  (lambda (_%hd-ids109945%_ _%exprs109946%_ _%body109947%_)
                    (let ((__tmp111298
                           (cons 'letrec
                                 (cons (let ((__tmp111299
                                              (map __compile-head-id
                                                   _%hd-ids109945%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111299
                                                _%exprs109946%_))
                                       (cons _%body109947%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111298 _%stx109746%_))))
                 (_%compile-values109749%_
                  (lambda (_%hd-ids109856%_ _%exprs109857%_ _%body109858%_)
                    (let _%lp109860%_ ((_%rest109862%_ _%hd-ids109856%_)
                                       (_%exprs109863%_ _%exprs109857%_)
                                       (_%pre109864%_ '())
                                       (_%bind109865%_ '())
                                       (_%post109866%_ '()))
                      (let* ((_%rest109867109881%_ _%rest109862%_)
                             (_%else109870109889%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-inner109750%_
                                   _%pre109864%_
                                   _%bind109865%_
                                   _%post109866%_
                                   _%body109858%_)))))
                        (let ((_%K109875109928%_
                               (lambda (_%rest109925%_ _%id109926%_)
                                 (let ((__tmp111301 (cdr _%exprs109863%_))
                                       (__tmp111300
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id109926%_))
                                                    (cons (car _%exprs109863%_)
                                                          '()))
                                              _%bind109865%_)))
                                   (declare (not safe))
                                   (_%lp109860%_
                                    _%rest109925%_
                                    __tmp111301
                                    _%pre109864%_
                                    __tmp111300
                                    _%post109866%_))))
                              (_%K109872109910%_
                               (lambda (_%rest109893%_ _%hd109894%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109894%_))
                                     (let ()
                                       (let ((__tmp111303
                                              (cdr _%exprs109863%_))
                                             (__tmp111302
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _%hd109894%_))
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs109863%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind109865%_)))
                                         (declare (not safe))
                                         (_%lp109860%_
                                          _%rest109893%_
                                          __tmp111303
                                          _%pre109864%_
                                          __tmp111302
                                          _%post109866%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd109894%_))
                                         (let ()
                                           (let* ((_%len109898%_
                                                   (length _%hd109894%_))
                                                  (_%tmp109900%_
                                                   (let ((__tmp111304
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111304))))
                                             (let ((__tmp111313
                                                    (cdr _%exprs109863%_))
                                                   (__tmp111311
                                                    (let ((__tmp111312
                                                           (lambda (_%id109903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r109904%_)
                     (if (let () (declare (not safe)) (__AST-e _%id109903%_))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (__SRC__0 _%id109903%_))
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _%r109904%_)
                         _%r109904%_))))
              (declare (not safe))
              (__foldl1 __tmp111312 _%pre109864%_ _%hd109894%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111310
                                                    (cons (cons _%tmp109900%_
                                                                (cons (car _%exprs109863%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind109865%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111305
                                                    (cons (let ((__tmp111306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111307
                                (let ((__tmp111309
                                       (lambda (_%id109906%_ _%k109907%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id109906%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id109906%_))
                                                   _%k109907%_)
                                             '#f)))
                                      (__tmp111308
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len109898%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111309
                                   _%hd109894%_
                                   __tmp111308))))
                           (declare (not safe))
                           (cons _%len109898%_ __tmp111307))))
                    (declare (not safe))
                    (cons _%tmp109900%_ __tmp111306))
                  _%post109866%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp109860%_
                                                _%rest109893%_
                                                __tmp111313
                                                __tmp111311
                                                __tmp111310
                                                __tmp111305))))
                                         (let ()
                                           (let ()
                                             (declare (not safe))
                                             (__compile-error__%
                                              _%stx109746%_
                                              _%hd109894%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109867109881%_))
                              (let ((_%tl109877109933%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109867109881%_)))
                                    (_%hd109876109931%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109867109881%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109876109931%_))
                                    (let ((_%tl109879109938%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109876109931%_)))
                                          (_%hd109878109936%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109876109931%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109879109938%_))
                                          (let ((_%id109941%_
                                                 _%hd109878109936%_)
                                                (_%rest109943%_
                                                 _%tl109877109933%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109875109928%_
                                               _%rest109943%_
                                               _%id109941%_)))
                                          (let ((_%hd109918%_
                                                 _%hd109876109931%_)
                                                (_%rest109920%_
                                                 _%tl109877109933%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109872109910%_
                                               _%rest109920%_
                                               _%hd109918%_)))))
                                    (let ((_%hd109918%_ _%hd109876109931%_)
                                          (_%rest109920%_ _%tl109877109933%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K109872109910%_
                                         _%rest109920%_
                                         _%hd109918%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else109870109889%_))))))))
                 (_%compile-inner109750%_
                  (lambda (_%pre109851%_
                           _%bind109852%_
                           _%post109853%_
                           _%body109854%_)
                    (if (let () (declare (not safe)) (null? _%pre109851%_))
                        (let ()
                          (declare (not safe))
                          (_%compile-bind109751%_
                           _%bind109852%_
                           _%post109853%_
                           _%body109854%_))
                        (let ((__tmp111314
                               (cons 'let
                                     (cons (reverse _%pre109851%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%compile-bind109751%_
                                                    _%bind109852%_
                                                    _%post109853%_
                                                    _%body109854%_))
                                                 '())))))
                          (declare (not safe))
                          (__SRC__% __tmp111314 _%stx109746%_)))))
                 (_%compile-bind109751%_
                  (lambda (_%bind109847%_ _%post109848%_ _%body109849%_)
                    (let ((__tmp111315
                           (cons 'letrec
                                 (cons (reverse _%bind109847%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post109752%_
                                                _%post109848%_
                                                _%body109849%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111315 _%stx109746%_))))
                 (_%compile-post109752%_
                  (lambda (_%post109754%_ _%body109755%_)
                    (let _%lp109757%_ ((_%rest109759%_ _%post109754%_)
                                       (_%check109760%_ '())
                                       (_%bind109761%_ '()))
                      (let* ((_%rest109762109774%_ _%rest109759%_)
                             (_%else109764109782%_
                              (lambda ()
                                (let ((__tmp111316
                                       (cons 'begin
                                             (let ((__tmp111317
                                                    (let ((__tmp111318
                                                           (cons _%body109755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
              (declare (not safe))
              (__foldr1 cons __tmp111318 _%bind109761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111317
                                                _%check109760%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111316 _%stx109746%_))))
                             (_%K109766109821%_
                              (lambda (_%rest109785%_
                                       _%init109786%_
                                       _%len109787%_
                                       _%tmp109788%_)
                                (let ((__tmp111321
                                       (cons (let ((__tmp111322
                                                    (cons '__check-values
                                                          (cons _%tmp109788%_
                                                                (cons _%len109787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111322
                                                _%stx109746%_))
                                             _%check109760%_))
                                      (__tmp111319
                                       (let ((__tmp111320
                                              (lambda (_%hd109790%_
                                                       _%r109791%_)
                                                (let* ((_%hd109792109799%_
                                                        _%hd109790%_)
                                                       (_%E109794109803%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd109792109799%_
                           '([id . k])))
                  '#!void))
               (_%K109795109809%_
                (lambda (_%k109806%_ _%id109807%_)
                  (cons (cons 'set!
                              (cons _%id109807%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp109788%_
                                                      (cons _%k109806%_ '())))
                                          '())))
                        _%r109791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd109792109799%_))
                                                      (let ((_%hd109796109812%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd109792109799%_)))
                    (_%tl109797109814%_
                     (let () (declare (not safe)) (##cdr _%hd109792109799%_))))
                (let* ((_%id109817%_ _%hd109796109812%_)
                       (_%k109819%_ _%tl109797109814%_))
                  (declare (not safe))
                  (_%K109795109809%_ _%k109819%_ _%id109817%_)))
              (let () (declare (not safe)) (_%E109794109803%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111320
                                          _%bind109761%_
                                          _%init109786%_))))
                                  (declare (not safe))
                                  (_%lp109757%_
                                   _%rest109785%_
                                   __tmp111321
                                   __tmp111319)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest109762109774%_))
                            (let ((_%hd109767109824%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109762109774%_)))
                                  (_%tl109768109826%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109762109774%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd109767109824%_))
                                  (let ((_%hd109769109829%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd109767109824%_)))
                                        (_%tl109770109831%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd109767109824%_))))
                                    (let ((_%tmp109834%_ _%hd109769109829%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl109770109831%_))
                                          (let ((_%hd109771109836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl109770109831%_)))
                                                (_%tl109772109838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl109770109831%_))))
                                            (let* ((_%len109841%_
                                                    _%hd109771109836%_)
                                                   (_%init109843%_
                                                    _%tl109772109838%_)
                                                   (_%rest109845%_
                                                    _%tl109768109826%_))
                                              (declare (not safe))
                                              (_%K109766109821%_
                                               _%rest109845%_
                                               _%init109843%_
                                               _%len109841%_
                                               _%tmp109834%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else109764109782%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else109764109782%_))))
                            (let ()
                              (declare (not safe))
                              (_%else109764109782%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109746%_
             _%compile-simple109748%_
             _%compile-values109749%_)))))
    (define __compile-letrec*-values%
      (lambda (_%stx109497%_)
        (letrec ((_%compile-simple109499%_
                  (lambda (_%hd-ids109742%_ _%exprs109743%_ _%body109744%_)
                    (let ((__tmp111323
                           (cons 'letrec*
                                 (cons (let ((__tmp111324
                                              (map __compile-head-id
                                                   _%hd-ids109742%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111324
                                                _%exprs109743%_))
                                       (cons _%body109744%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111323 _%stx109497%_))))
                 (_%compile-values109500%_
                  (lambda (_%hd-ids109649%_ _%exprs109650%_ _%body109651%_)
                    (let _%lp109653%_ ((_%rest109655%_ _%hd-ids109649%_)
                                       (_%exprs109656%_ _%exprs109650%_)
                                       (_%bind109657%_ '())
                                       (_%post109658%_ '()))
                      (let* ((_%rest109659109673%_ _%rest109655%_)
                             (_%else109662109681%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-bind109501%_
                                   _%bind109657%_
                                   _%post109658%_
                                   _%body109651%_)))))
                        (let ((_%K109667109725%_
                               (lambda (_%rest109720%_ _%hd109721%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109721%_))
                                     (let ((_%id109723%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd109721%_))))
                                       (let ((__tmp111327
                                              (cdr _%exprs109656%_))
                                             (__tmp111326
                                              (cons (cons _%id109723%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind109657%_))
                                             (__tmp111325
                                              (cons (cons _%id109723%_
                                                          (cons (car _%exprs109656%_)
                                                                '()))
                                                    _%post109658%_)))
                                         (declare (not safe))
                                         (_%lp109653%_
                                          _%rest109720%_
                                          __tmp111327
                                          __tmp111326
                                          __tmp111325)))
                                     (let ((__tmp111329 (cdr _%exprs109656%_))
                                           (__tmp111328
                                            (cons (cons '#f
                                                        (cons (car _%exprs109656%_)
                                                              '()))
                                                  _%post109658%_)))
                                       (declare (not safe))
                                       (_%lp109653%_
                                        _%rest109720%_
                                        __tmp111329
                                        _%bind109657%_
                                        __tmp111328)))))
                              (_%K109664109705%_
                               (lambda (_%rest109685%_ _%hd109686%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109686%_))
                                     (let ()
                                       (let ((_%id109689%_
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _%hd109686%_))))
                                         (let ((__tmp111332
                                                (cdr _%exprs109656%_))
                                               (__tmp111331
                                                (cons (cons _%id109689%_
                                                            (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons '#!void '()))
                          '()))
              _%bind109657%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp111330
                                                (cons (cons _%id109689%_
                                                            (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (car _%exprs109656%_) '()))
                          '()))
              _%post109658%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp109653%_
                                            _%rest109685%_
                                            __tmp111332
                                            __tmp111331
                                            __tmp111330))))
                                     (if (let ((__tmp111333
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%hd109686%_))))
                                           (declare (not safe))
                                           (not __tmp111333))
                                         (let ()
                                           (let ((__tmp111335
                                                  (cdr _%exprs109656%_))
                                                 (__tmp111334
                                                  (cons (cons '#f
                                                              (cons (car _%exprs109656%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%post109658%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%lp109653%_
                                              _%rest109685%_
                                              __tmp111335
                                              _%bind109657%_
                                              __tmp111334)))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _%hd109686%_))
                                             (let ()
                                               (let* ((_%len109693%_
                                                       (length _%hd109686%_))
                                                      (_%tmp109695%_
                                                       (let ((__tmp111336
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym))))
                 (declare (not safe))
                 (__SRC__0 __tmp111336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp111346
                                                        (cdr _%exprs109656%_))
                                                       (__tmp111344
                                                        (let ((__tmp111345
                                                               (lambda (_%id109698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%r109699%_)
                         (if (let ()
                               (declare (not safe))
                               (__AST-e _%id109698%_))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id109698%_))
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _%r109699%_)
                             _%r109699%_))))
                  (declare (not safe))
                  (__foldl1 __tmp111345 _%bind109657%_ _%hd109686%_)))
               (__tmp111337
                (cons (let ((__tmp111338
                             (let ((__tmp111343 (car _%exprs109656%_))
                                   (__tmp111339
                                    (let ((__tmp111340
                                           (let ((__tmp111342
                                                  (lambda (_%id109701%_
                                                           _%k109702%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%id109701%_))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _%id109701%_))
                      _%k109702%_)
                '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp111341
                                                  (let ()
                                                    (declare (not safe))
                                                    (##iota _%len109693%_))))
                                             (declare (not safe))
                                             (__filter-map2
                                              __tmp111342
                                              _%hd109686%_
                                              __tmp111341))))
                                      (declare (not safe))
                                      (cons _%len109693%_ __tmp111340))))
                               (declare (not safe))
                               (cons __tmp111343 __tmp111339))))
                        (declare (not safe))
                        (cons _%tmp109695%_ __tmp111338))
                      _%post109658%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp109653%_
                                                    _%rest109685%_
                                                    __tmp111346
                                                    __tmp111344
                                                    __tmp111337))))
                                             (let ()
                                               (let ()
                                                 (declare (not safe))
                                                 (__compile-error__%
                                                  _%stx109497%_
                                                  _%hd109686%_)))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109659109673%_))
                              (let ((_%tl109669109730%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109659109673%_)))
                                    (_%hd109668109728%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109659109673%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109668109728%_))
                                    (let ((_%tl109671109735%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109668109728%_)))
                                          (_%hd109670109733%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109668109728%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109671109735%_))
                                          (let ((_%hd109738%_
                                                 _%hd109670109733%_)
                                                (_%rest109740%_
                                                 _%tl109669109730%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109667109725%_
                                               _%rest109740%_
                                               _%hd109738%_)))
                                          (let ((_%hd109713%_
                                                 _%hd109668109728%_)
                                                (_%rest109715%_
                                                 _%tl109669109730%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109664109705%_
                                               _%rest109715%_
                                               _%hd109713%_)))))
                                    (let ((_%hd109713%_ _%hd109668109728%_)
                                          (_%rest109715%_ _%tl109669109730%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K109664109705%_
                                         _%rest109715%_
                                         _%hd109713%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else109662109681%_))))))))
                 (_%compile-bind109501%_
                  (lambda (_%bind109645%_ _%post109646%_ _%body109647%_)
                    (let ((__tmp111347
                           (cons 'let
                                 (cons (reverse _%bind109645%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post109502%_
                                                _%post109646%_
                                                _%body109647%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111347 _%stx109497%_))))
                 (_%compile-post109502%_
                  (lambda (_%post109504%_ _%body109505%_)
                    (let ((__tmp111348
                           (cons 'begin
                                 (let ((__tmp111349
                                        (let ((__tmp111351
                                               (lambda (_%hd109507%_
                                                        _%r109508%_)
                                                 (let* ((_%hd109509109532%_
                                                         _%hd109507%_)
                                                        (_%E109513109536%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd109509109532%_
                            '([#f expr])
                            '([id expr])
                            '([tmp expr len . init])))
                   '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%K109526109630%_
                                                          (lambda (_%expr109628%_)
                                                            (cons _%expr109628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r109508%_)))
                 (_%K109521109608%_
                  (lambda (_%expr109605%_ _%id109606%_)
                    (cons (let ((__tmp111352
                                 (cons 'set!
                                       (cons _%id109606%_
                                             (cons _%expr109605%_ '())))))
                            (declare (not safe))
                            (__SRC__% __tmp111352 _%stx109497%_))
                          _%r109508%_)))
                 (_%K109514109575%_
                  (lambda (_%init109540%_
                           _%len109541%_
                           _%expr109542%_
                           _%tmp109543%_)
                    (cons (let ((__tmp111353
                                 (cons 'let
                                       (cons (cons (cons _%tmp109543%_
                                                         (cons _%expr109542%_
                                                               '()))
                                                   '())
                                             (cons (let ((__tmp111354
                                                          (cons '__check-values
                                                                (cons _%tmp109543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%len109541%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111354
                                                      _%stx109497%_))
                                                   (let ((__tmp111355
                                                          (map (lambda (_%hd109545%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%hd109546109553%_ _%hd109545%_)
                                (_%E109548109557%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _%hd109546109553%_
                                            '([id . k])))
                                   '#!void))
                                (_%K109549109563%_
                                 (lambda (_%k109560%_ _%id109561%_)
                                   (let ((__tmp111356
                                          (cons 'set!
                                                (cons _%id109561%_
                                                      (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%tmp109543%_ (cons _%k109560%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111356 _%stx109497%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%hd109546109553%_))
                               (let ((_%hd109550109566%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%hd109546109553%_)))
                                     (_%tl109551109568%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%hd109546109553%_))))
                                 (let* ((_%id109571%_ _%hd109550109566%_)
                                        (_%k109573%_ _%tl109551109568%_))
                                   (declare (not safe))
                                   (_%K109549109563%_
                                    _%k109573%_
                                    _%id109571%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%E109548109557%_)))))
                       _%init109540%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      '()
                                                      __tmp111355)))))))
                            (declare (not safe))
                            (__SRC__% __tmp111353 _%stx109497%_))
                          _%r109508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__match111124111125%_
                                                             (lambda (_%hd109515109578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tl109516109580%_
                              _%hd109517109585%_
                              _%tl109518109587%_)
                       (let ((_%tmp109583%_ _%hd109515109578%_)
                             (_%expr109590%_ _%hd109517109585%_))
                         (let () (declare (not safe)) (_%E109513109536%_)))))
                    (_%__match111118111119%_
                     (lambda (_%hd109515109578%_ _%tl109516109580%_)
                       (let ((_%tmp109583%_ _%hd109515109578%_))
                         (declare (not safe))
                         (_%E109513109536%_)))))
               (if (let () (declare (not safe)) (##pair? _%hd109509109532%_))
                   (let ((_%tl109528109635%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd109509109532%_)))
                         (_%hd109527109633%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd109509109532%_))))
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%hd109527109633%_ '#f))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl109528109635%_))
                             (let ((_%tl109530109640%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl109528109635%_)))
                                   (_%hd109529109638%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl109528109635%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl109530109640%_))
                                   (let ((_%expr109643%_ _%hd109529109638%_))
                                     (declare (not safe))
                                     (_%K109526109630%_ _%expr109643%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl109530109640%_))
                                       (let ((_%tl109520109594%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl109530109640%_)))
                                             (_%hd109519109592%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl109530109640%_))))
                                         (let ((_%tmp109583%_
                                                _%hd109527109633%_)
                                               (_%expr109590%_
                                                _%hd109529109638%_)
                                               (_%len109597%_
                                                _%hd109519109592%_)
                                               (_%init109599%_
                                                _%tl109520109594%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K109514109575%_
                                              _%init109599%_
                                              _%len109597%_
                                              _%expr109590%_
                                              _%tmp109583%_))))
                                       (_%__match111124111125%_
                                        _%hd109527109633%_
                                        _%tl109528109635%_
                                        _%hd109529109638%_
                                        _%tl109530109640%_))))
                             (_%__match111118111119%_
                              _%hd109527109633%_
                              _%tl109528109635%_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl109528109635%_))
                             (let ((_%tl109525109620%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl109528109635%_)))
                                   (_%hd109524109618%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl109528109635%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl109525109620%_))
                                   (let ((_%id109616%_ _%hd109527109633%_)
                                         (_%expr109623%_ _%hd109524109618%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%K109521109608%_
                                        _%expr109623%_
                                        _%id109616%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl109525109620%_))
                                       (let ((_%tl109520109594%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl109525109620%_)))
                                             (_%hd109519109592%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl109525109620%_))))
                                         (let ((_%tmp109583%_
                                                _%hd109527109633%_)
                                               (_%expr109590%_
                                                _%hd109524109618%_)
                                               (_%len109597%_
                                                _%hd109519109592%_)
                                               (_%init109599%_
                                                _%tl109520109594%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K109514109575%_
                                              _%init109599%_
                                              _%len109597%_
                                              _%expr109590%_
                                              _%tmp109583%_))))
                                       (_%__match111124111125%_
                                        _%hd109527109633%_
                                        _%tl109528109635%_
                                        _%hd109524109618%_
                                        _%tl109525109620%_))))
                             (_%__match111118111119%_
                              _%hd109527109633%_
                              _%tl109528109635%_))))
                   (let () (declare (not safe)) (_%E109513109536%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (__tmp111350
                                               (list _%body109505%_)))
                                          (declare (not safe))
                                          (__foldl1
                                           __tmp111351
                                           __tmp111350
                                           _%post109504%_))))
                                   (declare (not safe))
                                   (__foldr1 cons '() __tmp111349)))))
                      (declare (not safe))
                      (__SRC__% __tmp111348 _%stx109497%_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109497%_
             _%compile-simple109499%_
             _%compile-values109500%_)))))
    (define __compile-call%
      (lambda (_%stx109457%_)
        (let* ((_%$e109459%_ _%stx109457%_)
               (_%$E109461109470%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109459%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109459%_))
              (let* ((_%$tgt109462109473%_
                      (let () (declare (not safe)) (__AST-e _%$e109459%_)))
                     (_%$hd109463109476%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109462109473%_)))
                     (_%$tl109464109479%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109462109473%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109464109479%_))
                    (let* ((_%$tgt109465109483%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109464109479%_)))
                           (_%$hd109466109486%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109465109483%_)))
                           (_%$tl109467109489%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109465109483%_))))
                      (let* ((_%rator109493%_ _%$hd109466109486%_)
                             (_%rands109495%_ _%$tl109467109489%_)
                             (__tmp111357
                              (cons (let ()
                                      (declare (not safe))
                                      (__compile _%rator109493%_))
                                    (map __compile _%rands109495%_))))
                        (declare (not safe))
                        (__SRC__% __tmp111357 _%stx109457%_)))
                    (let () (declare (not safe)) (_%$E109461109470%_))))
              (let () (declare (not safe)) (_%$E109461109470%_))))))
    (define __compile-ref%
      (lambda (_%stx109419%_)
        (let* ((_%$e109421%_ _%stx109419%_)
               (_%$E109423109432%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109421%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109421%_))
              (let* ((_%$tgt109424109435%_
                      (let () (declare (not safe)) (__AST-e _%$e109421%_)))
                     (_%$hd109425109438%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109424109435%_)))
                     (_%$tl109426109441%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109424109435%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109426109441%_))
                    (let* ((_%$tgt109427109445%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109426109441%_)))
                           (_%$hd109428109448%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109427109445%_)))
                           (_%$tl109429109451%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109427109445%_))))
                      (let ((_%id109455%_ _%$hd109428109448%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109429109451%_))
                                    '())
                            (let ()
                              (declare (not safe))
                              (__SRC__% _%id109455%_ _%stx109419%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109423109432%_)))))
                    (let () (declare (not safe)) (_%$E109423109432%_))))
              (let () (declare (not safe)) (_%$E109423109432%_))))))
    (define __compile-setq%
      (lambda (_%stx109366%_)
        (let* ((_%$e109368%_ _%stx109366%_)
               (_%$E109370109382%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109368%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109368%_))
              (let* ((_%$tgt109371109385%_
                      (let () (declare (not safe)) (__AST-e _%$e109368%_)))
                     (_%$hd109372109388%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109371109385%_)))
                     (_%$tl109373109391%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109371109385%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109373109391%_))
                    (let* ((_%$tgt109374109395%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109373109391%_)))
                           (_%$hd109375109398%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109374109395%_)))
                           (_%$tl109376109401%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109374109395%_))))
                      (let ((_%id109405%_ _%$hd109375109398%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl109376109401%_))
                            (let* ((_%$tgt109377109407%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109376109401%_)))
                                   (_%$hd109378109410%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt109377109407%_)))
                                   (_%$tl109379109413%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt109377109407%_))))
                              (let ((_%expr109417%_ _%$hd109378109410%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl109379109413%_))
                                            '())
                                    (let ((__tmp111358
                                           (cons 'set!
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (__SRC__%
                                                          _%id109405%_
                                                          _%stx109366%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%expr109417%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111358 _%stx109366%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E109370109382%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E109370109382%_)))))
                    (let () (declare (not safe)) (_%$E109370109382%_))))
              (let () (declare (not safe)) (_%$E109370109382%_))))))
    (define __compile-if%
      (lambda (_%stx109298%_)
        (let* ((_%$e109300%_ _%stx109298%_)
               (_%$E109302109317%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109300%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109300%_))
              (let* ((_%$tgt109303109320%_
                      (let () (declare (not safe)) (__AST-e _%$e109300%_)))
                     (_%$hd109304109323%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109303109320%_)))
                     (_%$tl109305109326%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109303109320%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109305109326%_))
                    (let* ((_%$tgt109306109330%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109305109326%_)))
                           (_%$hd109307109333%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109306109330%_)))
                           (_%$tl109308109336%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109306109330%_))))
                      (let ((_%p109340%_ _%$hd109307109333%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl109308109336%_))
                            (let* ((_%$tgt109309109342%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109308109336%_)))
                                   (_%$hd109310109345%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt109309109342%_)))
                                   (_%$tl109311109348%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt109309109342%_))))
                              (let ((_%t109352%_ _%$hd109310109345%_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _%$tl109311109348%_))
                                    (let* ((_%$tgt109312109354%_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl109311109348%_)))
                                           (_%$hd109313109357%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$tgt109312109354%_)))
                                           (_%$tl109314109360%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$tgt109312109354%_))))
                                      (let ((_%f109364%_ _%$hd109313109357%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl109314109360%_))
                                                    '())
                                            (let ((__tmp111359
                                                   (cons 'if
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__compile _%p109340%_))
                       (cons (let ()
                               (declare (not safe))
                               (__compile _%t109352%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (__compile _%f109364%_))
                                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp111359
                                               _%stx109298%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E109302109317%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E109302109317%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E109302109317%_)))))
                    (let () (declare (not safe)) (_%$E109302109317%_))))
              (let () (declare (not safe)) (_%$E109302109317%_))))))
    (define __compile-quote%
      (lambda (_%stx109260%_)
        (let* ((_%$e109262%_ _%stx109260%_)
               (_%$E109264109273%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109262%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109262%_))
              (let* ((_%$tgt109265109276%_
                      (let () (declare (not safe)) (__AST-e _%$e109262%_)))
                     (_%$hd109266109279%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109265109276%_)))
                     (_%$tl109267109282%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109265109276%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109267109282%_))
                    (let* ((_%$tgt109268109286%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109267109282%_)))
                           (_%$hd109269109289%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109268109286%_)))
                           (_%$tl109270109292%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109268109286%_))))
                      (let ((_%e109296%_ _%$hd109269109289%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109270109292%_))
                                    '())
                            (let ((__tmp111360
                                   (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (__AST->datum _%e109296%_))
                                               '()))))
                              (declare (not safe))
                              (__SRC__% __tmp111360 _%stx109260%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109264109273%_)))))
                    (let () (declare (not safe)) (_%$E109264109273%_))))
              (let () (declare (not safe)) (_%$E109264109273%_))))))
    (define __compile-quote-syntax%
      (lambda (_%stx109222%_)
        (let* ((_%$e109224%_ _%stx109222%_)
               (_%$E109226109235%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109224%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109224%_))
              (let* ((_%$tgt109227109238%_
                      (let () (declare (not safe)) (__AST-e _%$e109224%_)))
                     (_%$hd109228109241%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109227109238%_)))
                     (_%$tl109229109244%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109227109238%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109229109244%_))
                    (let* ((_%$tgt109230109248%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109229109244%_)))
                           (_%$hd109231109251%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109230109248%_)))
                           (_%$tl109232109254%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109230109248%_))))
                      (let ((_%e109258%_ _%$hd109231109251%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109232109254%_))
                                    '())
                            (let ((__tmp111361
                                   (cons 'quote (cons _%e109258%_ '()))))
                              (declare (not safe))
                              (__SRC__% __tmp111361 _%stx109222%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109226109235%_)))))
                    (let () (declare (not safe)) (_%$E109226109235%_))))
              (let () (declare (not safe)) (_%$E109226109235%_))))))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin
       __compile-begin%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-foreign
       __compile-begin-foreign%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#module
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#import
       __compile-import%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#export
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#provide
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-values
       __compile-define-values%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-alias
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-runtime
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#extern
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#declare
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-annotation
       __compile-begin-annotation%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote
       __compile-quote%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote-syntax
       __compile-quote-syntax%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#lambda
       __compile-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#case-lambda
       __compile-case-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#let-values
       __compile-let-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-values
       __compile-letrec-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec*-values
       __compile-letrec*-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#include __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-syntax
       __compile-error
       make-__core-form))))
