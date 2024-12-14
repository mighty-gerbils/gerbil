(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1734215269)
  (begin
    (define __syntax::t
      (let ((__tmp115211 (list)) (__tmp115210 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp115211
         '(e id)
         __tmp115210
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args115015%_
        (apply make-instance __syntax::t _%$args115015%_)))
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
      (let ((__tmp115213 (list __syntax::t))
            (__tmp115212 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp115213
         '()
         __tmp115212
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args115012%_
        (apply make-instance __core-form::t _%$args115012%_)))
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
      (let ((__tmp115215 (list __core-form::t))
            (__tmp115214 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp115215
         '()
         __tmp115214
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args115009%_
        (apply make-instance __core-expression::t _%$args115009%_)))
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
      (let ((__tmp115217 (list __core-form::t))
            (__tmp115216 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp115217
         '()
         __tmp115216
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args115006%_
        (apply make-instance __core-special-form::t _%$args115006%_)))
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
      (lambda (_%id115004%_)
        (let ((__tmp115218
               (let () (declare (not safe)) (__AST-e _%id115004%_))))
          (declare (not safe))
          (__hash-get __core __tmp115218))))
    (define __core-bound-id?__%
      (lambda (_%id114987%_ _%is?114988%_)
        (let ((_%$e114990%_ (__core-resolve _%id114987%_)))
          (if _%$e114990%_ (_%is?114988%_ _%$e114990%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id114997%_)
        (let ((_%is?114999%_ true))
          (__core-bound-id?__% _%id114997%_ _%is?114999%_))))
    (define __core-bound-id?
      (lambda _g115220_
        (let ((_g115219_ (let () (declare (not safe)) (##length _g115220_))))
          (cond ((let () (declare (not safe)) (##fx= _g115219_ 1))
                 (apply __core-bound-id?__0 _g115220_))
                ((let () (declare (not safe)) (##fx= _g115219_ 2))
                 (apply __core-bound-id?__% _g115220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g115220_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id114970%_ _%e114971%_ _%make114972%_)
        (let ((__tmp115221
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e114971%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e114971%_
                   (_%make114972%_ _%e114971%_ _%id114970%_))))
          (declare (not safe))
          (__hash-put! __core _%id114970%_ __tmp115221))))
    (define __core-bind-syntax!__0
      (lambda (_%id114977%_ _%e114978%_)
        (let ((_%make114980%_ make-__syntax))
          (__core-bind-syntax!__% _%id114977%_ _%e114978%_ _%make114980%_))))
    (define __core-bind-syntax!
      (lambda _g115223_
        (let ((_g115222_ (let () (declare (not safe)) (##length _g115223_))))
          (cond ((let () (declare (not safe)) (##fx= _g115222_ 2))
                 (apply __core-bind-syntax!__0 _g115223_))
                ((let () (declare (not safe)) (##fx= _g115222_ 3))
                 (apply __core-bind-syntax!__% _g115223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g115223_))))))
    (define __SRC__%
      (lambda (_%e114950%_ _%src-stx114951%_)
        (if (or (pair? _%e114950%_) (symbol? _%e114950%_))
            (let ((__tmp115224
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx114951%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx114951%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e114950%_ __tmp115224))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e114950%_ 'gerbil#AST::t))
                (let ((__tmp115226
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e114950%_ '1 '#f '#f)))
                      (__tmp115225
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e114950%_)))))
                  (declare (not safe))
                  (##make-source __tmp115226 __tmp115225))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e114950%_))))))
    (define __SRC__0
      (lambda (_%e114962%_)
        (let ((_%src-stx114964%_ '#f))
          (__SRC__% _%e114962%_ _%src-stx114964%_))))
    (define __SRC
      (lambda _g115228_
        (let ((_g115227_ (let () (declare (not safe)) (##length _g115228_))))
          (cond ((let () (declare (not safe)) (##fx= _g115227_ 1))
                 (apply __SRC__0 _g115228_))
                ((let () (declare (not safe)) (##fx= _g115227_ 2))
                 (apply __SRC__% _g115228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g115228_))))))
    (define __locat
      (lambda (_%loc114947%_)
        (if (let () (declare (not safe)) (##locat? _%loc114947%_))
            _%loc114947%_
            '#f)))
    (define __check-values
      (lambda (_%obj114942%_ _%k114943%_)
        (let ((_%count114945%_
               (if (let () (declare (not safe)) (##values? _%obj114942%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj114942%_))
                   '1)))
          (if (fx= _%count114945%_ _%k114943%_)
              '#!void
              (let ((__tmp115230
                     (if (fx< _%count114945%_ _%k114943%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp115229
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj114942%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj114942%_))
                         _%obj114942%_)))
                (declare (not safe))
                (error __tmp115230 __tmp115229 _%k114943%_))))))
    (define __compile
      (lambda (_%stx114911%_)
        (let* ((_%$e114913%_ _%stx114911%_)
               (_%$E114915114921%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114913%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114913%_))
              (let* ((_%$tgt114916114924%_
                      (let () (declare (not safe)) (__AST-e _%$e114913%_)))
                     (_%$hd114917114927%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114916114924%_)))
                     (_%$tl114918114930%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114916114924%_)))
                     (_%form114934%_ _%$hd114917114927%_)
                     (_%$e114936%_ (__core-resolve _%form114934%_)))
                (if _%$e114936%_
                    ((lambda (_%bind114939%_)
                       ((##structure-ref _%bind114939%_ '1 __syntax::t '#f)
                        _%stx114911%_))
                     _%$e114936%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx114911%_
                       _%form114934%_))))
              (_%$E114915114921%_)))))
    (define __compile-error__%
      (lambda (_%stx114898%_ _%detail114899%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx114898%_
           _%detail114899%_))))
    (define __compile-error__0
      (lambda (_%stx114904%_)
        (let ((_%detail114906%_ '#f))
          (__compile-error__% _%stx114904%_ _%detail114906%_))))
    (define __compile-error
      (lambda _g115232_
        (let ((_g115231_ (let () (declare (not safe)) (##length _g115232_))))
          (cond ((let () (declare (not safe)) (##fx= _g115231_ 1))
                 (apply __compile-error__0 _g115232_))
                ((let () (declare (not safe)) (##fx= _g115231_ 2))
                 (apply __compile-error__% _g115232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g115232_))))))
    (define __compile-ignore%
      (lambda (_%stx114895%_) (__SRC__% ''#!void _%stx114895%_)))
    (define __compile-begin%
      (lambda (_%stx114870%_)
        (let* ((_%$e114872%_ _%stx114870%_)
               (_%$E114874114880%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114872%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114872%_))
              (let* ((_%$tgt114875114883%_
                      (let () (declare (not safe)) (__AST-e _%$e114872%_)))
                     (_%$hd114876114886%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114875114883%_)))
                     (_%$tl114877114889%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114875114883%_)))
                     (_%body114893%_ _%$tl114877114889%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body114893%_))
                 _%stx114870%_))
              (_%$E114874114880%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx114845%_)
        (let* ((_%$e114847%_ _%stx114845%_)
               (_%$E114849114855%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114847%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114847%_))
              (let* ((_%$tgt114850114858%_
                      (let () (declare (not safe)) (__AST-e _%$e114847%_)))
                     (_%$hd114851114861%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114850114858%_)))
                     (_%$tl114852114864%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114850114858%_)))
                     (_%body114868%_ _%$tl114852114864%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body114868%_)))
                 _%stx114845%_))
              (_%$E114849114855%_)))))
    (define __compile-import%
      (lambda (_%stx114820%_)
        (let* ((_%$e114822%_ _%stx114820%_)
               (_%$E114824114830%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114822%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114822%_))
              (let* ((_%$tgt114825114833%_
                      (let () (declare (not safe)) (__AST-e _%$e114822%_)))
                     (_%$hd114826114836%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114825114833%_)))
                     (_%$tl114827114839%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114825114833%_)))
                     (_%body114843%_ _%$tl114827114839%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body114843%_ '())) '()))
                 _%stx114820%_))
              (_%$E114824114830%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx114767%_)
        (let* ((_%$e114769%_ _%stx114767%_)
               (_%$E114771114783%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114769%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114769%_))
              (let* ((_%$tgt114772114786%_
                      (let () (declare (not safe)) (__AST-e _%$e114769%_)))
                     (_%$hd114773114789%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114772114786%_)))
                     (_%$tl114774114792%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114772114786%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114774114792%_))
                    (let* ((_%$tgt114775114796%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114774114792%_)))
                           (_%$hd114776114799%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114775114796%_)))
                           (_%$tl114777114802%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114775114796%_)))
                           (_%ann114806%_ _%$hd114776114799%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114777114802%_))
                          (let* ((_%$tgt114778114808%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114777114802%_)))
                                 (_%$hd114779114811%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114778114808%_)))
                                 (_%$tl114780114814%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114778114808%_)))
                                 (_%expr114818%_ _%$hd114779114811%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114780114814%_))
                                        '())
                                (__compile _%expr114818%_)
                                (_%$E114771114783%_)))
                          (_%$E114771114783%_)))
                    (_%$E114771114783%_)))
              (_%$E114771114783%_)))))
    (define __compile-define-values%
      (lambda (_%stx114658%_)
        (let* ((_%$e114660%_ _%stx114658%_)
               (_%$E114662114674%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114660%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114660%_))
              (let* ((_%$tgt114663114677%_
                      (let () (declare (not safe)) (__AST-e _%$e114660%_)))
                     (_%$hd114664114680%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114663114677%_)))
                     (_%$tl114665114683%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114663114677%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114665114683%_))
                    (let* ((_%$tgt114666114687%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114665114683%_)))
                           (_%$hd114667114690%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114666114687%_)))
                           (_%$tl114668114693%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114666114687%_)))
                           (_%hd114697%_ _%$hd114667114690%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114668114693%_))
                          (let* ((_%$tgt114669114699%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114668114693%_)))
                                 (_%$hd114670114702%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114669114699%_)))
                                 (_%$tl114671114705%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114669114699%_)))
                                 (_%expr114709%_ _%$hd114670114702%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114671114705%_))
                                        '())
                                (let* ((_%$e114711%_ _%hd114697%_)
                                       (_%$E114713114754%_
                                        (lambda ()
                                          (let ((_%$E114714114739%_
                                                 (lambda ()
                                                   (let* ((_%$E114715114726%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e114711%_))))
                  (_%ids114729%_ _%hd114697%_)
                  (_%len114731%_ (length _%ids114729%_))
                  (_%tmp114733%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp114733%_
                                       (cons (__compile _%expr114709%_) '())))
                           _%stx114658%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp114733%_
                                             (cons _%len114731%_ '())))
                                 _%stx114658%_)
                                (let ((__tmp115233
                                       (let ((__tmp115235
                                              (lambda (_%id114736%_
                                                       _%k114737%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id114736%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id114736%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp114733%_
                                           (cons _%k114737%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx114658%_)
                                                    '#f)))
                                             (__tmp115234
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len114731%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp115235
                                          _%ids114729%_
                                          __tmp115234))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp115233)))))
              _%stx114658%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e114711%_))
                                                (let* ((_%$tgt114716114742%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e114711%_)))
                                                       (_%$hd114717114745%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt114716114742%_)))
                                                       (_%$tl114718114748%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt114716114742%_)))
                                                       (_%id114752%_
                                                        _%$hd114717114745%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl114718114748%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id114752%_)
                           (cons (__compile _%expr114709%_) '())))
               _%stx114658%_)
              (_%$E114714114739%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E114714114739%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e114711%_))
                                      (let* ((_%$tgt114719114757%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e114711%_)))
                                             (_%$hd114720114760%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114719114757%_)))
                                             (_%$tl114721114763%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114719114757%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd114720114760%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl114721114763%_))
                                                        '())
                                                (__compile _%expr114709%_)
                                                (_%$E114713114754%_))
                                            (_%$E114713114754%_)))
                                      (_%$E114713114754%_)))
                                (_%$E114662114674%_)))
                          (_%$E114662114674%_)))
                    (_%$E114662114674%_)))
              (_%$E114662114674%_)))))
    (define __compile-head-id
      (lambda (_%e114656%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e114656%_))
             _%e114656%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd114613%_)
        (let _%recur114615%_ ((_%rest114617%_ _%hd114613%_))
          (let* ((_%$e114619%_ _%rest114617%_)
                 (_%$E114621114639%_
                  (lambda ()
                    (let ((_%$E114622114636%_
                           (lambda ()
                             (let* ((_%$E114623114631%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e114619%_))))
                                    (_%tail114634%_ _%$e114619%_))
                               (__compile-head-id _%tail114634%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114619%_))
                                  '())
                          '()
                          (_%$E114622114636%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114619%_))
                (let* ((_%$tgt114624114642%_
                        (let () (declare (not safe)) (__AST-e _%$e114619%_)))
                       (_%$hd114625114645%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114624114642%_)))
                       (_%$tl114626114648%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114624114642%_)))
                       (_%hd114652%_ _%$hd114625114645%_)
                       (_%rest114654%_ _%$tl114626114648%_))
                  (cons (__compile-head-id _%hd114652%_)
                        (_%recur114615%_ _%rest114654%_)))
                (_%$E114621114639%_))))))
    (define __compile-lambda%
      (lambda (_%stx114560%_)
        (let* ((_%$e114562%_ _%stx114560%_)
               (_%$E114564114576%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114562%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114562%_))
              (let* ((_%$tgt114565114579%_
                      (let () (declare (not safe)) (__AST-e _%$e114562%_)))
                     (_%$hd114566114582%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114565114579%_)))
                     (_%$tl114567114585%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114565114579%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114567114585%_))
                    (let* ((_%$tgt114568114589%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114567114585%_)))
                           (_%$hd114569114592%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114568114589%_)))
                           (_%$tl114570114595%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114568114589%_)))
                           (_%hd114599%_ _%$hd114569114592%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114570114595%_))
                          (let* ((_%$tgt114571114601%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114570114595%_)))
                                 (_%$hd114572114604%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114571114601%_)))
                                 (_%$tl114573114607%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114571114601%_)))
                                 (_%body114611%_ _%$hd114572114604%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114573114607%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd114599%_)
                                             (cons (__compile _%body114611%_)
                                                   '())))
                                 _%stx114560%_)
                                (_%$E114564114576%_)))
                          (_%$E114564114576%_)))
                    (_%$E114564114576%_)))
              (_%$E114564114576%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx114352%_)
        (letrec ((_%variadic?114354%_
                  (lambda (_%hd114525%_)
                    (let* ((_%$e114527%_ _%hd114525%_)
                           (_%$E114529114545%_
                            (lambda ()
                              (let ((_%$E114530114542%_
                                     (lambda ()
                                       (let ((_%$E114531114539%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e114527%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e114527%_))
                                            '())
                                    '#f
                                    (_%$E114530114542%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114527%_))
                          (let* ((_%$tgt114532114548%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114527%_)))
                                 (_%$hd114533114551%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114532114548%_)))
                                 (_%$tl114534114554%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114532114548%_)))
                                 (_%rest114558%_ _%$tl114534114554%_))
                            (_%variadic?114354%_ _%rest114558%_))
                          (_%$E114529114545%_)))))
                 (_%arity114355%_
                  (lambda (_%hd114490%_)
                    (let _%lp114492%_ ((_%rest114494%_ _%hd114490%_)
                                       (_%k114495%_ '0))
                      (let* ((_%$e114497%_ _%rest114494%_)
                             (_%$E114499114510%_
                              (lambda ()
                                (let ((_%$E114500114507%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e114497%_)))))
                                  _%k114495%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e114497%_))
                            (let* ((_%$tgt114501114513%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e114497%_)))
                                   (_%$hd114502114516%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt114501114513%_)))
                                   (_%$tl114503114519%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt114501114513%_)))
                                   (_%rest114523%_ _%$tl114503114519%_))
                              (_%lp114492%_
                               _%rest114523%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k114495%_ '1))))
                            (_%$E114499114510%_))))))
                 (_%generate114356%_
                  (lambda (_%rest114417%_ _%args114418%_ _%len114419%_)
                    (let* ((_%$e114421%_ _%rest114417%_)
                           (_%$E114423114434%_
                            (lambda ()
                              (let ((_%$E114424114431%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e114421%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args114418%_ '())))
                                 _%stx114352%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114421%_))
                          (let* ((_%$tgt114425114437%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114421%_)))
                                 (_%$hd114426114440%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114425114437%_)))
                                 (_%$tl114427114443%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114425114437%_)))
                                 (_%clause114447%_ _%$hd114426114440%_)
                                 (_%rest114449%_ _%$tl114427114443%_)
                                 (_%$e114451%_ _%clause114447%_)
                                 (_%$E114453114462%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e114451%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e114451%_))
                                (let* ((_%$tgt114454114465%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e114451%_)))
                                       (_%$hd114455114468%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114454114465%_)))
                                       (_%$tl114456114471%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114454114465%_)))
                                       (_%hd114475%_ _%$hd114455114468%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl114456114471%_))
                                      (let* ((_%$tgt114457114477%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114456114471%_)))
                                             (_%$hd114458114480%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114457114477%_)))
                                             (_%$tl114459114483%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114457114477%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl114459114483%_))
                                                    '())
                                            (let ((_%clen114487%_
                                                   (_%arity114355%_
                                                    _%hd114475%_))
                                                  (_%cmp114488%_
                                                   (if (_%variadic?114354%_
                                                        _%hd114475%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp114488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len114419%_ (cons _%clen114487%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause114447%_))
                                      (cons _%args114418%_ '())))
                          _%stx114352%_)
                         (cons (_%generate114356%_
                                _%rest114449%_
                                _%args114418%_
                                _%len114419%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx114352%_))
                                            (_%$E114453114462%_)))
                                      (_%$E114453114462%_)))
                                (_%$E114453114462%_)))
                          (_%$E114423114434%_))))))
          (let* ((_%$e114358%_ _%stx114352%_)
                 (_%$E114360114392%_
                  (lambda ()
                    (let ((_%$E114361114374%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114358%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114358%_))
                          (let* ((_%$tgt114362114377%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114358%_)))
                                 (_%$hd114363114380%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114362114377%_)))
                                 (_%$tl114364114383%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114362114377%_)))
                                 (_%clauses114387%_ _%$tl114364114383%_))
                            (let ((_%args114389%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx114352%_))
                                  (_%len114390%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx114352%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args114389%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len114390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args114389%_ '()))
                                         _%stx114352%_)
                                        '()))
                            '())
                      (cons (_%generate114356%_
                             _%clauses114387%_
                             _%args114389%_
                             _%len114390%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx114352%_)
                                                 '())))
                               _%stx114352%_)))
                          (_%$E114361114374%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114358%_))
                (let* ((_%$tgt114365114395%_
                        (let () (declare (not safe)) (__AST-e _%$e114358%_)))
                       (_%$hd114366114398%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114365114395%_)))
                       (_%$tl114367114401%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114365114395%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl114367114401%_))
                      (let* ((_%$tgt114368114405%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl114367114401%_)))
                             (_%$hd114369114408%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt114368114405%_)))
                             (_%$tl114370114411%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt114368114405%_)))
                             (_%clause114415%_ _%$hd114369114408%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl114370114411%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause114415%_))
                            (_%$E114360114392%_)))
                      (_%$E114360114392%_)))
                (_%$E114360114392%_))))))
    (define __compile-let-form
      (lambda (_%stx114121%_ _%compile-simple114122%_ _%compile-values114123%_)
        (letrec ((_%simple-bind?114125%_
                  (lambda (_%hd114310%_)
                    (let* ((_%hd114311114321%_ _%hd114310%_)
                           (_%else114314114329%_ (lambda () '#f)))
                      (let ((_%K114317114342%_ (lambda (_%id114340%_) '#t))
                            (_%K114316114334%_ (lambda () '#t)))
                        (let ((_%try-match114313114337%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd114311114321%_ '#f))
                                     (_%K114316114334%_)
                                     (_%else114314114329%_)))))
                          (if (pair? _%hd114311114321%_)
                              (let ((_%tl114319114347%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd114311114321%_)))
                                    (_%hd114318114345%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd114311114321%_))))
                                (if (null? _%tl114319114347%_)
                                    (let ((_%id114350%_ _%hd114318114345%_))
                                      (_%K114317114342%_ _%id114350%_))
                                    (_%try-match114313114337%_)))
                              (_%try-match114313114337%_)))))))
                 (_%car-e114126%_
                  (lambda (_%hd114308%_)
                    (if (pair? _%hd114308%_)
                        (let () (declare (not safe)) (##car _%hd114308%_))
                        _%hd114308%_))))
          (let* ((_%$e114128%_ _%stx114121%_)
                 (_%$E114130114273%_
                  (lambda ()
                    (let ((_%$E114131114153%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114128%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114128%_))
                          (let* ((_%$tgt114132114156%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114128%_)))
                                 (_%$hd114133114159%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114132114156%_)))
                                 (_%$tl114134114162%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114132114156%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114134114162%_))
                                (let* ((_%$tgt114135114166%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114134114162%_)))
                                       (_%$hd114136114169%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114135114166%_)))
                                       (_%$tl114137114172%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114135114166%_)))
                                       (_%hd114176%_ _%$hd114136114169%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl114137114172%_))
                                      (let* ((_%$tgt114138114178%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114137114172%_)))
                                             (_%$hd114139114181%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114138114178%_)))
                                             (_%$tl114140114184%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114138114178%_)))
                                             (_%body114188%_
                                              _%$hd114139114181%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl114140114184%_))
                                                    '())
                                            (let* ((_%hd-ids114228%_
                                                    (map (lambda (_%bind114190%_)
                                                           (let* ((_%$e114192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind114190%_)
                          (_%$E114194114203%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114192%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e114192%_))
                         (let* ((_%$tgt114195114206%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e114192%_)))
                                (_%$hd114196114209%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt114195114206%_)))
                                (_%$tl114197114212%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt114195114206%_)))
                                (_%ids114216%_ _%$hd114196114209%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl114197114212%_))
                               (let* ((_%$tgt114198114218%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl114197114212%_)))
                                      (_%$hd114199114221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt114198114218%_)))
                                      (_%$tl114200114224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt114198114218%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl114200114224%_))
                                             '())
                                     _%ids114216%_
                                     (_%$E114194114203%_)))
                               (_%$E114194114203%_)))
                         (_%$E114194114203%_))))
                 _%hd114176%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs114268%_
                                                    (map (lambda (_%bind114230%_)
                                                           (let* ((_%$e114232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind114230%_)
                          (_%$E114234114243%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114232%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e114232%_))
                         (let* ((_%$tgt114235114246%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e114232%_)))
                                (_%$hd114236114249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt114235114246%_)))
                                (_%$tl114237114252%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt114235114246%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl114237114252%_))
                               (let* ((_%$tgt114238114256%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl114237114252%_)))
                                      (_%$hd114239114259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt114238114256%_)))
                                      (_%$tl114240114262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt114238114256%_)))
                                      (_%expr114266%_ _%$hd114239114259%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl114240114262%_))
                                             '())
                                     (__compile _%expr114266%_)
                                     (_%$E114234114243%_)))
                               (_%$E114234114243%_)))
                         (_%$E114234114243%_))))
                 _%hd114176%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body114270%_
                                                    (__compile
                                                     _%body114188%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?114125%_
                                                     _%hd-ids114228%_))
                                                  (_%compile-simple114122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e114126%_
                                                            _%hd-ids114228%_))
                                                   _%exprs114268%_
                                                   _%body114270%_)
                                                  (_%compile-values114123%_
                                                   _%hd-ids114228%_
                                                   _%exprs114268%_
                                                   _%body114270%_)))
                                            (_%$E114131114153%_)))
                                      (_%$E114131114153%_)))
                                (_%$E114131114153%_)))
                          (_%$E114131114153%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114128%_))
                (let* ((_%$tgt114141114276%_
                        (let () (declare (not safe)) (__AST-e _%$e114128%_)))
                       (_%$hd114142114279%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114141114276%_)))
                       (_%$tl114143114282%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114141114276%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl114143114282%_))
                      (let* ((_%$tgt114144114286%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl114143114282%_)))
                             (_%$hd114145114289%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt114144114286%_)))
                             (_%$tl114146114292%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt114144114286%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd114145114289%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114146114292%_))
                                (let* ((_%$tgt114147114296%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114146114292%_)))
                                       (_%$hd114148114299%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114147114296%_)))
                                       (_%$tl114149114302%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114147114296%_)))
                                       (_%body114306%_ _%$hd114148114299%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114149114302%_))
                                              '())
                                      (__compile _%body114306%_)
                                      (_%$E114130114273%_)))
                                (_%$E114130114273%_))
                            (_%$E114130114273%_)))
                      (_%$E114130114273%_)))
                (_%$E114130114273%_))))))
    (define __compile-let-values%
      (lambda (_%stx113933%_)
        (letrec ((_%compile-simple113935%_
                  (lambda (_%hd-ids114117%_ _%exprs114118%_ _%body114119%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp115236
                                        (map __compile-head-id
                                             _%hd-ids114117%_)))
                                   (declare (not safe))
                                   (##map list __tmp115236 _%exprs114118%_))
                                 (cons _%body114119%_ '())))
                     _%stx113933%_)))
                 (_%compile-values113936%_
                  (lambda (_%hd-ids114032%_ _%exprs114033%_ _%body114034%_)
                    (let _%lp114036%_ ((_%rest114038%_ _%hd-ids114032%_)
                                       (_%exprs114039%_ _%exprs114033%_)
                                       (_%bind114040%_ '())
                                       (_%post114041%_ '()))
                      (let* ((_%rest114042114056%_ _%rest114038%_)
                             (_%else114045114064%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind114040%_)
                                             (cons (_%compile-post113937%_
                                                    _%post114041%_
                                                    _%body114034%_)
                                                   '())))
                                 _%stx113933%_))))
                        (let ((_%K114050114100%_
                               (lambda (_%rest114097%_ _%id114098%_)
                                 (_%lp114036%_
                                  _%rest114097%_
                                  (cdr _%exprs114039%_)
                                  (cons (cons (__compile-head-id _%id114098%_)
                                              (cons (car _%exprs114039%_) '()))
                                        _%bind114040%_)
                                  _%post114041%_)))
                              (_%K114047114082%_
                               (lambda (_%rest114068%_ _%hd114069%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114069%_))
                                     (_%lp114036%_
                                      _%rest114068%_
                                      (cdr _%exprs114039%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd114069%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114039%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114040%_)
                                      _%post114041%_)
                                     (if (list? _%hd114069%_)
                                         (let* ((_%len114073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114069%_)))
                                                (_%tmp114075%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114036%_
                                            _%rest114068%_
                                            (cdr _%exprs114039%_)
                                            (cons (cons _%tmp114075%_
                                                        (cons (car _%exprs114039%_)
                                                              '()))
                                                  _%bind114040%_)
                                            (cons (cons _%tmp114075%_
                                                        (cons _%len114073%_
                                                              (let ((__tmp115238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114078%_ _%k114079%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114078%_))
                                   (cons (__SRC__0 _%id114078%_) _%k114079%_)
                                   '#f)))
                            (__tmp115237
                             (let ()
                               (declare (not safe))
                               (##iota _%len114073%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp115238 _%hd114069%_ __tmp115237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114041%_)))
                                         (__compile-error__%
                                          _%stx113933%_
                                          _%hd114069%_))))))
                          (if (pair? _%rest114042114056%_)
                              (let ((_%tl114052114105%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114042114056%_)))
                                    (_%hd114051114103%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114042114056%_))))
                                (if (pair? _%hd114051114103%_)
                                    (let ((_%tl114054114110%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114051114103%_)))
                                          (_%hd114053114108%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114051114103%_))))
                                      (if (null? _%tl114054114110%_)
                                          (let ((_%id114113%_
                                                 _%hd114053114108%_)
                                                (_%rest114115%_
                                                 _%tl114052114105%_))
                                            (_%K114050114100%_
                                             _%rest114115%_
                                             _%id114113%_))
                                          (let ((_%hd114090%_
                                                 _%hd114051114103%_)
                                                (_%rest114092%_
                                                 _%tl114052114105%_))
                                            (_%K114047114082%_
                                             _%rest114092%_
                                             _%hd114090%_))))
                                    (let ((_%hd114090%_ _%hd114051114103%_)
                                          (_%rest114092%_ _%tl114052114105%_))
                                      (_%K114047114082%_
                                       _%rest114092%_
                                       _%hd114090%_))))
                              (_%else114045114064%_)))))))
                 (_%compile-post113937%_
                  (lambda (_%post113939%_ _%body113940%_)
                    (let _%lp113942%_ ((_%rest113944%_ _%post113939%_)
                                       (_%check113945%_ '())
                                       (_%bind113946%_ '()))
                      (let* ((_%rest113947113959%_ _%rest113944%_)
                             (_%else113949113967%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp115239
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind113946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body113940%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx113933%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp115239
                                          _%check113945%_)))
                                 _%stx113933%_)))
                             (_%K113951114006%_
                              (lambda (_%rest113970%_
                                       _%init113971%_
                                       _%len113972%_
                                       _%tmp113973%_)
                                (_%lp113942%_
                                 _%rest113970%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113973%_
                                                    (cons _%len113972%_ '())))
                                        _%stx113933%_)
                                       _%check113945%_)
                                 (let ((__tmp115240
                                        (lambda (_%hd113975%_ _%r113976%_)
                                          (let* ((_%hd113977113984%_
                                                  _%hd113975%_)
                                                 (_%E113979113988%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd113977113984%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K113980113994%_
                                                  (lambda (_%k113991%_
                                                           _%id113992%_)
                                                    (cons (cons _%id113992%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp113973%_
                                          (cons _%k113991%_ '())))
                              '()))
                  _%r113976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd113977113984%_)
                                                (let ((_%hd113981113997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd113977113984%_)))
                                                      (_%tl113982113999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd113977113984%_))))
                                                  (let* ((_%id114002%_
                                                          _%hd113981113997%_)
                                                         (_%k114004%_
                                                          _%tl113982113999%_))
                                                    (_%K113980113994%_
                                                     _%k114004%_
                                                     _%id114002%_)))
                                                (_%E113979113988%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp115240
                                    _%bind113946%_
                                    _%init113971%_))))))
                        (if (pair? _%rest113947113959%_)
                            (let ((_%hd113952114009%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest113947113959%_)))
                                  (_%tl113953114011%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest113947113959%_))))
                              (if (pair? _%hd113952114009%_)
                                  (let ((_%hd113954114014%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd113952114009%_)))
                                        (_%tl113955114016%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd113952114009%_))))
                                    (let ((_%tmp114019%_ _%hd113954114014%_))
                                      (if (pair? _%tl113955114016%_)
                                          (let ((_%hd113956114021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl113955114016%_)))
                                                (_%tl113957114023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl113955114016%_))))
                                            (let* ((_%len114026%_
                                                    _%hd113956114021%_)
                                                   (_%init114028%_
                                                    _%tl113957114023%_)
                                                   (_%rest114030%_
                                                    _%tl113953114011%_))
                                              (_%K113951114006%_
                                               _%rest114030%_
                                               _%init114028%_
                                               _%len114026%_
                                               _%tmp114019%_)))
                                          (_%else113949113967%_))))
                                  (_%else113949113967%_)))
                            (_%else113949113967%_)))))))
          (__compile-let-form
           _%stx113933%_
           _%compile-simple113935%_
           _%compile-values113936%_))))
    (define __compile-letrec-values%
      (lambda (_%stx113730%_)
        (letrec ((_%compile-simple113732%_
                  (lambda (_%hd-ids113929%_ _%exprs113930%_ _%body113931%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp115241
                                        (map __compile-head-id
                                             _%hd-ids113929%_)))
                                   (declare (not safe))
                                   (##map list __tmp115241 _%exprs113930%_))
                                 (cons _%body113931%_ '())))
                     _%stx113730%_)))
                 (_%compile-values113733%_
                  (lambda (_%hd-ids113840%_ _%exprs113841%_ _%body113842%_)
                    (let _%lp113844%_ ((_%rest113846%_ _%hd-ids113840%_)
                                       (_%exprs113847%_ _%exprs113841%_)
                                       (_%pre113848%_ '())
                                       (_%bind113849%_ '())
                                       (_%post113850%_ '()))
                      (let* ((_%rest113851113865%_ _%rest113846%_)
                             (_%else113854113873%_
                              (lambda ()
                                (_%compile-inner113734%_
                                 _%pre113848%_
                                 _%bind113849%_
                                 _%post113850%_
                                 _%body113842%_))))
                        (let ((_%K113859113912%_
                               (lambda (_%rest113909%_ _%id113910%_)
                                 (_%lp113844%_
                                  _%rest113909%_
                                  (cdr _%exprs113847%_)
                                  _%pre113848%_
                                  (cons (cons (__compile-head-id _%id113910%_)
                                              (cons (car _%exprs113847%_) '()))
                                        _%bind113849%_)
                                  _%post113850%_)))
                              (_%K113856113894%_
                               (lambda (_%rest113877%_ _%hd113878%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113878%_))
                                     (_%lp113844%_
                                      _%rest113877%_
                                      (cdr _%exprs113847%_)
                                      _%pre113848%_
                                      (cons (cons (__compile-head-id
                                                   _%hd113878%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs113847%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind113849%_)
                                      _%post113850%_)
                                     (if (list? _%hd113878%_)
                                         (let* ((_%len113882%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd113878%_)))
                                                (_%tmp113884%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp113844%_
                                            _%rest113877%_
                                            (cdr _%exprs113847%_)
                                            (let ((__tmp115242
                                                   (lambda (_%id113887%_
                                                            _%r113888%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id113887%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id113887%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r113888%_)
                 _%r113888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp115242
                                               _%pre113848%_
                                               _%hd113878%_))
                                            (cons (cons _%tmp113884%_
                                                        (cons (car _%exprs113847%_)
                                                              '()))
                                                  _%bind113849%_)
                                            (cons (cons _%tmp113884%_
                                                        (cons _%len113882%_
                                                              (let ((__tmp115244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id113890%_ _%k113891%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id113890%_))
                                   (cons (__SRC__0 _%id113890%_) _%k113891%_)
                                   '#f)))
                            (__tmp115243
                             (let ()
                               (declare (not safe))
                               (##iota _%len113882%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp115244 _%hd113878%_ __tmp115243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post113850%_)))
                                         (__compile-error__%
                                          _%stx113730%_
                                          _%hd113878%_))))))
                          (if (pair? _%rest113851113865%_)
                              (let ((_%tl113861113917%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113851113865%_)))
                                    (_%hd113860113915%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113851113865%_))))
                                (if (pair? _%hd113860113915%_)
                                    (let ((_%tl113863113922%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113860113915%_)))
                                          (_%hd113862113920%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113860113915%_))))
                                      (if (null? _%tl113863113922%_)
                                          (let ((_%id113925%_
                                                 _%hd113862113920%_)
                                                (_%rest113927%_
                                                 _%tl113861113917%_))
                                            (_%K113859113912%_
                                             _%rest113927%_
                                             _%id113925%_))
                                          (let ((_%hd113902%_
                                                 _%hd113860113915%_)
                                                (_%rest113904%_
                                                 _%tl113861113917%_))
                                            (_%K113856113894%_
                                             _%rest113904%_
                                             _%hd113902%_))))
                                    (let ((_%hd113902%_ _%hd113860113915%_)
                                          (_%rest113904%_ _%tl113861113917%_))
                                      (_%K113856113894%_
                                       _%rest113904%_
                                       _%hd113902%_))))
                              (_%else113854113873%_)))))))
                 (_%compile-inner113734%_
                  (lambda (_%pre113835%_
                           _%bind113836%_
                           _%post113837%_
                           _%body113838%_)
                    (if (null? _%pre113835%_)
                        (_%compile-bind113735%_
                         _%bind113836%_
                         _%post113837%_
                         _%body113838%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre113835%_)
                                     (cons (_%compile-bind113735%_
                                            _%bind113836%_
                                            _%post113837%_
                                            _%body113838%_)
                                           '())))
                         _%stx113730%_))))
                 (_%compile-bind113735%_
                  (lambda (_%bind113831%_ _%post113832%_ _%body113833%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind113831%_)
                                 (cons (_%compile-post113736%_
                                        _%post113832%_
                                        _%body113833%_)
                                       '())))
                     _%stx113730%_)))
                 (_%compile-post113736%_
                  (lambda (_%post113738%_ _%body113739%_)
                    (let _%lp113741%_ ((_%rest113743%_ _%post113738%_)
                                       (_%check113744%_ '())
                                       (_%bind113745%_ '()))
                      (let* ((_%rest113746113758%_ _%rest113743%_)
                             (_%else113748113766%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp115245
                                              (let ((__tmp115246
                                                     (cons _%body113739%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp115246
                                                 _%bind113745%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp115245
                                          _%check113744%_)))
                                 _%stx113730%_)))
                             (_%K113750113805%_
                              (lambda (_%rest113769%_
                                       _%init113770%_
                                       _%len113771%_
                                       _%tmp113772%_)
                                (_%lp113741%_
                                 _%rest113769%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113772%_
                                                    (cons _%len113771%_ '())))
                                        _%stx113730%_)
                                       _%check113744%_)
                                 (let ((__tmp115247
                                        (lambda (_%hd113774%_ _%r113775%_)
                                          (let* ((_%hd113776113783%_
                                                  _%hd113774%_)
                                                 (_%E113778113787%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd113776113783%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K113779113793%_
                                                  (lambda (_%k113790%_
                                                           _%id113791%_)
                                                    (cons (cons 'set!
                                                                (cons _%id113791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp113772%_
                                                (cons _%k113790%_ '())))
                                    '())))
                  _%r113775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd113776113783%_)
                                                (let ((_%hd113780113796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd113776113783%_)))
                                                      (_%tl113781113798%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd113776113783%_))))
                                                  (let* ((_%id113801%_
                                                          _%hd113780113796%_)
                                                         (_%k113803%_
                                                          _%tl113781113798%_))
                                                    (_%K113779113793%_
                                                     _%k113803%_
                                                     _%id113801%_)))
                                                (_%E113778113787%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp115247
                                    _%bind113745%_
                                    _%init113770%_))))))
                        (if (pair? _%rest113746113758%_)
                            (let ((_%hd113751113808%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest113746113758%_)))
                                  (_%tl113752113810%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest113746113758%_))))
                              (if (pair? _%hd113751113808%_)
                                  (let ((_%hd113753113813%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd113751113808%_)))
                                        (_%tl113754113815%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd113751113808%_))))
                                    (let ((_%tmp113818%_ _%hd113753113813%_))
                                      (if (pair? _%tl113754113815%_)
                                          (let ((_%hd113755113820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl113754113815%_)))
                                                (_%tl113756113822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl113754113815%_))))
                                            (let* ((_%len113825%_
                                                    _%hd113755113820%_)
                                                   (_%init113827%_
                                                    _%tl113756113822%_)
                                                   (_%rest113829%_
                                                    _%tl113752113810%_))
                                              (_%K113750113805%_
                                               _%rest113829%_
                                               _%init113827%_
                                               _%len113825%_
                                               _%tmp113818%_)))
                                          (_%else113748113766%_))))
                                  (_%else113748113766%_)))
                            (_%else113748113766%_)))))))
          (__compile-let-form
           _%stx113730%_
           _%compile-simple113732%_
           _%compile-values113733%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx113481%_)
        (letrec ((_%compile-simple113483%_
                  (lambda (_%hd-ids113726%_ _%exprs113727%_ _%body113728%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp115248
                                        (map __compile-head-id
                                             _%hd-ids113726%_)))
                                   (declare (not safe))
                                   (##map list __tmp115248 _%exprs113727%_))
                                 (cons _%body113728%_ '())))
                     _%stx113481%_)))
                 (_%compile-values113484%_
                  (lambda (_%hd-ids113633%_ _%exprs113634%_ _%body113635%_)
                    (let _%lp113637%_ ((_%rest113639%_ _%hd-ids113633%_)
                                       (_%exprs113640%_ _%exprs113634%_)
                                       (_%bind113641%_ '())
                                       (_%post113642%_ '()))
                      (let* ((_%rest113643113657%_ _%rest113639%_)
                             (_%else113646113665%_
                              (lambda ()
                                (_%compile-bind113485%_
                                 _%bind113641%_
                                 _%post113642%_
                                 _%body113635%_))))
                        (let ((_%K113651113709%_
                               (lambda (_%rest113704%_ _%hd113705%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113705%_))
                                     (let ((_%id113707%_
                                            (__SRC__0 _%hd113705%_)))
                                       (_%lp113637%_
                                        _%rest113704%_
                                        (cdr _%exprs113640%_)
                                        (cons (cons _%id113707%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind113641%_)
                                        (cons (cons _%id113707%_
                                                    (cons (car _%exprs113640%_)
                                                          '()))
                                              _%post113642%_)))
                                     (_%lp113637%_
                                      _%rest113704%_
                                      (cdr _%exprs113640%_)
                                      _%bind113641%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs113640%_)
                                                        '()))
                                            _%post113642%_)))))
                              (_%K113648113689%_
                               (lambda (_%rest113669%_ _%hd113670%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113670%_))
                                     (let ((_%id113673%_
                                            (__SRC__0 _%hd113670%_)))
                                       (_%lp113637%_
                                        _%rest113669%_
                                        (cdr _%exprs113640%_)
                                        (cons (cons _%id113673%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind113641%_)
                                        (cons (cons _%id113673%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs113640%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post113642%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd113670%_))
                                         (if (list? _%hd113670%_)
                                             (let* ((_%len113677%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd113670%_)))
                                                    (_%tmp113679%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp113637%_
                                                _%rest113669%_
                                                (cdr _%exprs113640%_)
                                                (let ((__tmp115249
                                                       (lambda (_%id113682%_
                                                                _%r113683%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id113682%_))
                     (cons (cons (__SRC__0 _%id113682%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r113683%_)
                     _%r113683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp115249
                                                   _%bind113641%_
                                                   _%hd113670%_))
                                                (cons (cons _%tmp113679%_
                                                            (cons (car _%exprs113640%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len113677%_
                                (let ((__tmp115251
                                       (lambda (_%id113685%_ _%k113686%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id113685%_))
                                             (cons (__SRC__0 _%id113685%_)
                                                   _%k113686%_)
                                             '#f)))
                                      (__tmp115250
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len113677%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp115251
                                   _%hd113670%_
                                   __tmp115250)))))
              _%post113642%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx113481%_
                                              _%hd113670%_))
                                         (_%lp113637%_
                                          _%rest113669%_
                                          (cdr _%exprs113640%_)
                                          _%bind113641%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs113640%_)
                                                            '()))
                                                _%post113642%_)))))))
                          (if (pair? _%rest113643113657%_)
                              (let ((_%tl113653113714%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113643113657%_)))
                                    (_%hd113652113712%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113643113657%_))))
                                (if (pair? _%hd113652113712%_)
                                    (let ((_%tl113655113719%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113652113712%_)))
                                          (_%hd113654113717%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113652113712%_))))
                                      (if (null? _%tl113655113719%_)
                                          (let ((_%hd113722%_
                                                 _%hd113654113717%_)
                                                (_%rest113724%_
                                                 _%tl113653113714%_))
                                            (_%K113651113709%_
                                             _%rest113724%_
                                             _%hd113722%_))
                                          (let ((_%hd113697%_
                                                 _%hd113652113712%_)
                                                (_%rest113699%_
                                                 _%tl113653113714%_))
                                            (_%K113648113689%_
                                             _%rest113699%_
                                             _%hd113697%_))))
                                    (let ((_%hd113697%_ _%hd113652113712%_)
                                          (_%rest113699%_ _%tl113653113714%_))
                                      (_%K113648113689%_
                                       _%rest113699%_
                                       _%hd113697%_))))
                              (_%else113646113665%_)))))))
                 (_%compile-bind113485%_
                  (lambda (_%bind113629%_ _%post113630%_ _%body113631%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind113629%_)
                                 (cons (_%compile-post113486%_
                                        _%post113630%_
                                        _%body113631%_)
                                       '())))
                     _%stx113481%_)))
                 (_%compile-post113486%_
                  (lambda (_%post113488%_ _%body113489%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp115252
                                  (let ((__tmp115254
                                         (lambda (_%hd113491%_ _%r113492%_)
                                           (let* ((_%hd113493113516%_
                                                   _%hd113491%_)
                                                  (_%E113497113520%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd113493113516%_
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
                                             (let ((_%K113510113614%_
                                                    (lambda (_%expr113612%_)
                                                      (cons _%expr113612%_
                                                            _%r113492%_)))
                                                   (_%K113505113592%_
                                                    (lambda (_%expr113589%_
                                                             _%id113590%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id113590%_ (cons _%expr113589%_ '())))
                     _%stx113481%_)
                    _%r113492%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K113498113559%_
                                                    (lambda (_%init113524%_
                                                             _%len113525%_
                                                             _%expr113526%_
                                                             _%tmp113527%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp113527%_
                                             (cons _%expr113526%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113527%_
                                                    (cons _%len113525%_ '())))
                                        _%stx113481%_)
                                       (let ((__tmp115255
                                              (map (lambda (_%hd113529%_)
                                                     (let* ((_%hd113530113537%_
                                                             _%hd113529%_)
                                                            (_%E113532113541%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd113530113537%_
                                '([id . k])))
                       '#!void))
                    (_%K113533113547%_
                     (lambda (_%k113544%_ _%id113545%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id113545%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp113527%_
                                                      (cons _%k113544%_ '())))
                                          '())))
                        _%stx113481%_))))
               (if (pair? _%hd113530113537%_)
                   (let ((_%hd113534113550%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd113530113537%_)))
                         (_%tl113535113552%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd113530113537%_))))
                     (let* ((_%id113555%_ _%hd113534113550%_)
                            (_%k113557%_ _%tl113535113552%_))
                       (_%K113533113547%_ _%k113557%_ _%id113555%_)))
                   (_%E113532113541%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init113524%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp115255)))))
                     _%stx113481%_)
                    _%r113492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match115108115109%_
                                                       (lambda (_%hd113499113562%_
                                                                _%tl113500113564%_
                                                                _%hd113501113569%_
                                                                _%tl113502113571%_)
                                                         (let ((_%tmp113567%_
                                                                _%hd113499113562%_)
                                                               (_%expr113574%_
                                                                _%hd113501113569%_))
                                                           (_%E113497113520%_))))
                                                      (_%__match115102115103%_
                                                       (lambda (_%hd113499113562%_
                                                                _%tl113500113564%_)
                                                         (let ((_%tmp113567%_
                                                                _%hd113499113562%_))
                                                           (_%E113497113520%_)))))
                                                 (if (pair? _%hd113493113516%_)
                                                     (let ((_%tl113512113619%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd113493113516%_)))
                                                           (_%hd113511113617%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd113493113516%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd113511113617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl113512113619%_)
                       (let ((_%tl113514113624%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl113512113619%_)))
                             (_%hd113513113622%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl113512113619%_))))
                         (if (null? _%tl113514113624%_)
                             (let ((_%expr113627%_ _%hd113513113622%_))
                               (_%K113510113614%_ _%expr113627%_))
                             (if (pair? _%tl113514113624%_)
                                 (let ((_%tl113504113578%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl113514113624%_)))
                                       (_%hd113503113576%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl113514113624%_))))
                                   (let ((_%tmp113567%_ _%hd113511113617%_)
                                         (_%expr113574%_ _%hd113513113622%_)
                                         (_%len113581%_ _%hd113503113576%_)
                                         (_%init113583%_ _%tl113504113578%_))
                                     (_%K113498113559%_
                                      _%init113583%_
                                      _%len113581%_
                                      _%expr113574%_
                                      _%tmp113567%_)))
                                 (_%__match115108115109%_
                                  _%hd113511113617%_
                                  _%tl113512113619%_
                                  _%hd113513113622%_
                                  _%tl113514113624%_))))
                       (_%__match115102115103%_
                        _%hd113511113617%_
                        _%tl113512113619%_))
                   (if (pair? _%tl113512113619%_)
                       (let ((_%tl113509113604%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl113512113619%_)))
                             (_%hd113508113602%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl113512113619%_))))
                         (if (null? _%tl113509113604%_)
                             (let ((_%id113600%_ _%hd113511113617%_)
                                   (_%expr113607%_ _%hd113508113602%_))
                               (_%K113505113592%_ _%expr113607%_ _%id113600%_))
                             (if (pair? _%tl113509113604%_)
                                 (let ((_%tl113504113578%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl113509113604%_)))
                                       (_%hd113503113576%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl113509113604%_))))
                                   (let ((_%tmp113567%_ _%hd113511113617%_)
                                         (_%expr113574%_ _%hd113508113602%_)
                                         (_%len113581%_ _%hd113503113576%_)
                                         (_%init113583%_ _%tl113504113578%_))
                                     (_%K113498113559%_
                                      _%init113583%_
                                      _%len113581%_
                                      _%expr113574%_
                                      _%tmp113567%_)))
                                 (_%__match115108115109%_
                                  _%hd113511113617%_
                                  _%tl113512113619%_
                                  _%hd113508113602%_
                                  _%tl113509113604%_))))
                       (_%__match115102115103%_
                        _%hd113511113617%_
                        _%tl113512113619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E113497113520%_)))))))
                                        (__tmp115253 (list _%body113489%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp115254
                                     __tmp115253
                                     _%post113488%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp115252)))
                     _%stx113481%_))))
          (__compile-let-form
           _%stx113481%_
           _%compile-simple113483%_
           _%compile-values113484%_))))
    (define __compile-call%
      (lambda (_%stx113441%_)
        (let* ((_%$e113443%_ _%stx113441%_)
               (_%$E113445113454%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113443%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113443%_))
              (let* ((_%$tgt113446113457%_
                      (let () (declare (not safe)) (__AST-e _%$e113443%_)))
                     (_%$hd113447113460%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113446113457%_)))
                     (_%$tl113448113463%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113446113457%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113448113463%_))
                    (let* ((_%$tgt113449113467%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113448113463%_)))
                           (_%$hd113450113470%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113449113467%_)))
                           (_%$tl113451113473%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113449113467%_)))
                           (_%rator113477%_ _%$hd113450113470%_)
                           (_%rands113479%_ _%$tl113451113473%_))
                      (__SRC__%
                       (cons (__compile _%rator113477%_)
                             (map __compile _%rands113479%_))
                       _%stx113441%_))
                    (_%$E113445113454%_)))
              (_%$E113445113454%_)))))
    (define __compile-ref%
      (lambda (_%stx113403%_)
        (let* ((_%$e113405%_ _%stx113403%_)
               (_%$E113407113416%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113405%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113405%_))
              (let* ((_%$tgt113408113419%_
                      (let () (declare (not safe)) (__AST-e _%$e113405%_)))
                     (_%$hd113409113422%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113408113419%_)))
                     (_%$tl113410113425%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113408113419%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113410113425%_))
                    (let* ((_%$tgt113411113429%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113410113425%_)))
                           (_%$hd113412113432%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113411113429%_)))
                           (_%$tl113413113435%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113411113429%_)))
                           (_%id113439%_ _%$hd113412113432%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113413113435%_))
                                  '())
                          (__SRC__% _%id113439%_ _%stx113403%_)
                          (_%$E113407113416%_)))
                    (_%$E113407113416%_)))
              (_%$E113407113416%_)))))
    (define __compile-setq%
      (lambda (_%stx113350%_)
        (let* ((_%$e113352%_ _%stx113350%_)
               (_%$E113354113366%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113352%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113352%_))
              (let* ((_%$tgt113355113369%_
                      (let () (declare (not safe)) (__AST-e _%$e113352%_)))
                     (_%$hd113356113372%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113355113369%_)))
                     (_%$tl113357113375%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113355113369%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113357113375%_))
                    (let* ((_%$tgt113358113379%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113357113375%_)))
                           (_%$hd113359113382%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113358113379%_)))
                           (_%$tl113360113385%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113358113379%_)))
                           (_%id113389%_ _%$hd113359113382%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113360113385%_))
                          (let* ((_%$tgt113361113391%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113360113385%_)))
                                 (_%$hd113362113394%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113361113391%_)))
                                 (_%$tl113363113397%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113361113391%_)))
                                 (_%expr113401%_ _%$hd113362113394%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113363113397%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id113389%_
                                              _%stx113350%_)
                                             (cons (__compile _%expr113401%_)
                                                   '())))
                                 _%stx113350%_)
                                (_%$E113354113366%_)))
                          (_%$E113354113366%_)))
                    (_%$E113354113366%_)))
              (_%$E113354113366%_)))))
    (define __compile-if%
      (lambda (_%stx113282%_)
        (let* ((_%$e113284%_ _%stx113282%_)
               (_%$E113286113301%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113284%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113284%_))
              (let* ((_%$tgt113287113304%_
                      (let () (declare (not safe)) (__AST-e _%$e113284%_)))
                     (_%$hd113288113307%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113287113304%_)))
                     (_%$tl113289113310%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113287113304%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113289113310%_))
                    (let* ((_%$tgt113290113314%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113289113310%_)))
                           (_%$hd113291113317%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113290113314%_)))
                           (_%$tl113292113320%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113290113314%_)))
                           (_%p113324%_ _%$hd113291113317%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113292113320%_))
                          (let* ((_%$tgt113293113326%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113292113320%_)))
                                 (_%$hd113294113329%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113293113326%_)))
                                 (_%$tl113295113332%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113293113326%_)))
                                 (_%t113336%_ _%$hd113294113329%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl113295113332%_))
                                (let* ((_%$tgt113296113338%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113295113332%_)))
                                       (_%$hd113297113341%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt113296113338%_)))
                                       (_%$tl113298113344%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt113296113338%_)))
                                       (_%f113348%_ _%$hd113297113341%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl113298113344%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p113324%_)
                                                   (cons (__compile
                                                          _%t113336%_)
                                                         (cons (__compile
                                                                _%f113348%_)
                                                               '()))))
                                       _%stx113282%_)
                                      (_%$E113286113301%_)))
                                (_%$E113286113301%_)))
                          (_%$E113286113301%_)))
                    (_%$E113286113301%_)))
              (_%$E113286113301%_)))))
    (define __compile-quote%
      (lambda (_%stx113244%_)
        (let* ((_%$e113246%_ _%stx113244%_)
               (_%$E113248113257%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113246%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113246%_))
              (let* ((_%$tgt113249113260%_
                      (let () (declare (not safe)) (__AST-e _%$e113246%_)))
                     (_%$hd113250113263%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113249113260%_)))
                     (_%$tl113251113266%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113249113260%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113251113266%_))
                    (let* ((_%$tgt113252113270%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113251113266%_)))
                           (_%$hd113253113273%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113252113270%_)))
                           (_%$tl113254113276%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113252113270%_)))
                           (_%e113280%_ _%$hd113253113273%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113254113276%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e113280%_))
                                       '()))
                           _%stx113244%_)
                          (_%$E113248113257%_)))
                    (_%$E113248113257%_)))
              (_%$E113248113257%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx113206%_)
        (let* ((_%$e113208%_ _%stx113206%_)
               (_%$E113210113219%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113208%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113208%_))
              (let* ((_%$tgt113211113222%_
                      (let () (declare (not safe)) (__AST-e _%$e113208%_)))
                     (_%$hd113212113225%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113211113222%_)))
                     (_%$tl113213113228%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113211113222%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113213113228%_))
                    (let* ((_%$tgt113214113232%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113213113228%_)))
                           (_%$hd113215113235%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113214113232%_)))
                           (_%$tl113216113238%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113214113232%_)))
                           (_%e113242%_ _%$hd113215113235%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113216113238%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e113242%_ '()))
                           _%stx113206%_)
                          (_%$E113210113219%_)))
                    (_%$E113210113219%_)))
              (_%$E113210113219%_)))))
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
