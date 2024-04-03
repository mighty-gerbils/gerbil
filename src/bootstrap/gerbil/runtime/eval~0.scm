(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712155161)
  (begin
    (define __syntax::t
      (let ((__tmp111211 (list)) (__tmp111210 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111211
         '(e id)
         __tmp111210
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args111015%_
        (apply make-instance __syntax::t _%$args111015%_)))
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
      (let ((__tmp111213 (list __syntax::t))
            (__tmp111212 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111213
         '()
         __tmp111212
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args111012%_
        (apply make-instance __core-form::t _%$args111012%_)))
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
      (let ((__tmp111215 (list __core-form::t))
            (__tmp111214 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111215
         '()
         __tmp111214
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args111009%_
        (apply make-instance __core-expression::t _%$args111009%_)))
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
      (let ((__tmp111217 (list __core-form::t))
            (__tmp111216 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111217
         '()
         __tmp111216
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args111006%_
        (apply make-instance __core-special-form::t _%$args111006%_)))
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
      (lambda (_%id111004%_)
        (let ((__tmp111218
               (let () (declare (not safe)) (__AST-e _%id111004%_))))
          (declare (not safe))
          (hash-get __core __tmp111218))))
    (define __core-bound-id?__%
      (lambda (_%id110987%_ _%is?110988%_)
        (let ((_%$e110990%_
               (let () (declare (not safe)) (__core-resolve _%id110987%_))))
          (if _%$e110990%_ (_%is?110988%_ _%$e110990%_) (let () '#f)))))
    (define __core-bound-id?__0
      (lambda (_%id110997%_)
        (let ((_%is?110999%_ true))
          (declare (not safe))
          (__core-bound-id?__% _%id110997%_ _%is?110999%_))))
    (define __core-bound-id?
      (lambda _g111220_
        (let ((_g111219_ (let () (declare (not safe)) (##length _g111220_))))
          (cond ((let () (declare (not safe)) (##fx= _g111219_ 1))
                 (apply (lambda (_%id110997%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _%id110997%_)))
                        _g111220_))
                ((let () (declare (not safe)) (##fx= _g111219_ 2))
                 (apply (lambda (_%id111001%_ _%is?111002%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _%id111001%_ _%is?111002%_)))
                        _g111220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111220_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id110970%_ _%e110971%_ _%make110972%_)
        (let ((__tmp111221
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e110971%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e110971%_
                   (_%make110972%_ _%e110971%_ _%id110970%_))))
          (declare (not safe))
          (hash-put! __core _%id110970%_ __tmp111221))))
    (define __core-bind-syntax!__0
      (lambda (_%id110977%_ _%e110978%_)
        (let ((_%make110980%_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _%id110977%_ _%e110978%_ _%make110980%_))))
    (define __core-bind-syntax!
      (lambda _g111223_
        (let ((_g111222_ (let () (declare (not safe)) (##length _g111223_))))
          (cond ((let () (declare (not safe)) (##fx= _g111222_ 2))
                 (apply (lambda (_%id110977%_ _%e110978%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _%id110977%_ _%e110978%_)))
                        _g111223_))
                ((let () (declare (not safe)) (##fx= _g111222_ 3))
                 (apply (lambda (_%id110982%_ _%e110983%_ _%make110984%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _%id110982%_
                             _%e110983%_
                             _%make110984%_)))
                        _g111223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111223_))))))
    (define __SRC__%
      (lambda (_%e110950%_ _%src-stx110951%_)
        (if (or (let () (declare (not safe)) (pair? _%e110950%_))
                (let () (declare (not safe)) (symbol? _%e110950%_)))
            (let ((__tmp111224
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx110951%_
                          'gerbil#AST::t))
                       (let ((__tmp111225
                              (let ()
                                (declare (not safe))
                                (__AST-source _%src-stx110951%_))))
                         (declare (not safe))
                         (__locat __tmp111225))
                       '#f)))
              (declare (not safe))
              (##make-source _%e110950%_ __tmp111224))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e110950%_ 'gerbil#AST::t))
                (let ((__tmp111228
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e110950%_ '1 '#f '#f)))
                      (__tmp111226
                       (let ((__tmp111227
                              (let ()
                                (declare (not safe))
                                (__AST-source _%e110950%_))))
                         (declare (not safe))
                         (__locat __tmp111227))))
                  (declare (not safe))
                  (##make-source __tmp111228 __tmp111226))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e110950%_))))))
    (define __SRC__0
      (lambda (_%e110962%_)
        (let ((_%src-stx110964%_ '#f))
          (declare (not safe))
          (__SRC__% _%e110962%_ _%src-stx110964%_))))
    (define __SRC
      (lambda _g111230_
        (let ((_g111229_ (let () (declare (not safe)) (##length _g111230_))))
          (cond ((let () (declare (not safe)) (##fx= _g111229_ 1))
                 (apply (lambda (_%e110962%_)
                          (let () (declare (not safe)) (__SRC__0 _%e110962%_)))
                        _g111230_))
                ((let () (declare (not safe)) (##fx= _g111229_ 2))
                 (apply (lambda (_%e110966%_ _%src-stx110967%_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%e110966%_ _%src-stx110967%_)))
                        _g111230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111230_))))))
    (define __locat
      (lambda (_%loc110947%_)
        (if (let () (declare (not safe)) (##locat? _%loc110947%_))
            _%loc110947%_
            '#f)))
    (define __check-values
      (lambda (_%obj110942%_ _%k110943%_)
        (let ((_%count110945%_
               (if (let () (declare (not safe)) (##values? _%obj110942%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj110942%_))
                   '1)))
          (if (fx= _%count110945%_ _%k110943%_)
              '#!void
              (let ((__tmp111232
                     (if (fx< _%count110945%_ _%k110943%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111231
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj110942%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj110942%_))
                         _%obj110942%_)))
                (declare (not safe))
                (error __tmp111232 __tmp111231 _%k110943%_))))))
    (define __compile
      (lambda (_%stx110911%_)
        (let* ((_%$e110913%_ _%stx110911%_)
               (_%$E110915110921%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110913%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110913%_))
              (let* ((_%$tgt110916110924%_
                      (let () (declare (not safe)) (__AST-e _%$e110913%_)))
                     (_%$hd110917110927%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110916110924%_)))
                     (_%$tl110918110930%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110916110924%_))))
                (let* ((_%form110934%_ _%$hd110917110927%_)
                       (_%$e110936%_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _%form110934%_))))
                  (if _%$e110936%_
                      ((lambda (_%bind110939%_)
                         ((##structure-ref _%bind110939%_ '1 __syntax::t '#f)
                          _%stx110911%_))
                       _%$e110936%_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _%stx110911%_
                         _%form110934%_)))))
              (let () (declare (not safe)) (_%$E110915110921%_))))))
    (define __compile-error__%
      (lambda (_%stx110898%_ _%detail110899%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx110898%_
           _%detail110899%_))))
    (define __compile-error__0
      (lambda (_%stx110904%_)
        (let ((_%detail110906%_ '#f))
          (declare (not safe))
          (__compile-error__% _%stx110904%_ _%detail110906%_))))
    (define __compile-error
      (lambda _g111234_
        (let ((_g111233_ (let () (declare (not safe)) (##length _g111234_))))
          (cond ((let () (declare (not safe)) (##fx= _g111233_ 1))
                 (apply (lambda (_%stx110904%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _%stx110904%_)))
                        _g111234_))
                ((let () (declare (not safe)) (##fx= _g111233_ 2))
                 (apply (lambda (_%stx110908%_ _%detail110909%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__%
                             _%stx110908%_
                             _%detail110909%_)))
                        _g111234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111234_))))))
    (define __compile-ignore%
      (lambda (_%stx110895%_)
        (let () (declare (not safe)) (__SRC__% ''#!void _%stx110895%_))))
    (define __compile-begin%
      (lambda (_%stx110870%_)
        (let* ((_%$e110872%_ _%stx110870%_)
               (_%$E110874110880%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110872%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110872%_))
              (let* ((_%$tgt110875110883%_
                      (let () (declare (not safe)) (__AST-e _%$e110872%_)))
                     (_%$hd110876110886%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110875110883%_)))
                     (_%$tl110877110889%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110875110883%_))))
                (let* ((_%body110893%_ _%$tl110877110889%_)
                       (__tmp111235
                        (cons 'begin (map __compile _%body110893%_))))
                  (declare (not safe))
                  (__SRC__% __tmp111235 _%stx110870%_)))
              (let () (declare (not safe)) (_%$E110874110880%_))))))
    (define __compile-begin-foreign%
      (lambda (_%stx110845%_)
        (let* ((_%$e110847%_ _%stx110845%_)
               (_%$E110849110855%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110847%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110847%_))
              (let* ((_%$tgt110850110858%_
                      (let () (declare (not safe)) (__AST-e _%$e110847%_)))
                     (_%$hd110851110861%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110850110858%_)))
                     (_%$tl110852110864%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110850110858%_))))
                (let* ((_%body110868%_ _%$tl110852110864%_)
                       (__tmp111236
                        (cons 'begin
                              (let ()
                                (declare (not safe))
                                (__AST->datum _%body110868%_)))))
                  (declare (not safe))
                  (__SRC__% __tmp111236 _%stx110845%_)))
              (let () (declare (not safe)) (_%$E110849110855%_))))))
    (define __compile-import%
      (lambda (_%stx110820%_)
        (let* ((_%$e110822%_ _%stx110820%_)
               (_%$E110824110830%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110822%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110822%_))
              (let* ((_%$tgt110825110833%_
                      (let () (declare (not safe)) (__AST-e _%$e110822%_)))
                     (_%$hd110826110836%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110825110833%_)))
                     (_%$tl110827110839%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110825110833%_))))
                (let* ((_%body110843%_ _%$tl110827110839%_)
                       (__tmp111237
                        (cons '__eval-import
                              (cons (cons 'quote (cons _%body110843%_ '()))
                                    '()))))
                  (declare (not safe))
                  (__SRC__% __tmp111237 _%stx110820%_)))
              (let () (declare (not safe)) (_%$E110824110830%_))))))
    (define __compile-begin-annotation%
      (lambda (_%stx110767%_)
        (let* ((_%$e110769%_ _%stx110767%_)
               (_%$E110771110783%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110769%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110769%_))
              (let* ((_%$tgt110772110786%_
                      (let () (declare (not safe)) (__AST-e _%$e110769%_)))
                     (_%$hd110773110789%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110772110786%_)))
                     (_%$tl110774110792%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110772110786%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110774110792%_))
                    (let* ((_%$tgt110775110796%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110774110792%_)))
                           (_%$hd110776110799%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110775110796%_)))
                           (_%$tl110777110802%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110775110796%_)))
                           (_%ann110806%_ _%$hd110776110799%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl110777110802%_))
                          (let* ((_%$tgt110778110808%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110777110802%_)))
                                 (_%$hd110779110811%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110778110808%_)))
                                 (_%$tl110780110814%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110778110808%_)))
                                 (_%expr110818%_ _%$hd110779110811%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110780110814%_))
                                        '())
                                (let ()
                                  (declare (not safe))
                                  (__compile _%expr110818%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110771110783%_))))
                          (let () (declare (not safe)) (_%$E110771110783%_))))
                    (let () (declare (not safe)) (_%$E110771110783%_))))
              (let () (declare (not safe)) (_%$E110771110783%_))))))
    (define __compile-define-values%
      (lambda (_%stx110658%_)
        (let* ((_%$e110660%_ _%stx110658%_)
               (_%$E110662110674%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110660%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110660%_))
              (let* ((_%$tgt110663110677%_
                      (let () (declare (not safe)) (__AST-e _%$e110660%_)))
                     (_%$hd110664110680%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110663110677%_)))
                     (_%$tl110665110683%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110663110677%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110665110683%_))
                    (let* ((_%$tgt110666110687%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110665110683%_)))
                           (_%$hd110667110690%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110666110687%_)))
                           (_%$tl110668110693%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110666110687%_)))
                           (_%hd110697%_ _%$hd110667110690%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl110668110693%_))
                          (let* ((_%$tgt110669110699%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110668110693%_)))
                                 (_%$hd110670110702%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110669110699%_)))
                                 (_%$tl110671110705%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110669110699%_)))
                                 (_%expr110709%_ _%$hd110670110702%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110671110705%_))
                                        '())
                                (let* ((_%$e110711%_ _%hd110697%_)
                                       (_%$E110713110754%_
                                        (lambda ()
                                          (let ((_%$E110714110739%_
                                                 (lambda ()
                                                   (let* ((_%$E110715110726%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e110711%_))))
                  (_%ids110729%_ _%hd110697%_)
                  (_%len110731%_ (length _%ids110729%_))
                  (_%tmp110733%_
                   (let ((__tmp111238
                          (let () (declare (not safe)) (##gensym))))
                     (declare (not safe))
                     (__SRC__0 __tmp111238)))
                  (__tmp111239
                   (cons 'begin
                         (cons (let ((__tmp111240
                                      (cons 'define
                                            (cons _%tmp110733%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (__compile
                                                           _%expr110709%_))
                                                        '())))))
                                 (declare (not safe))
                                 (__SRC__% __tmp111240 _%stx110658%_))
                               (cons (let ((__tmp111241
                                            (cons '__check-values
                                                  (cons _%tmp110733%_
                                                        (cons _%len110731%_
                                                              '())))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111241 _%stx110658%_))
                                     (let ((__tmp111242
                                            (let ((__tmp111244
                                                   (lambda (_%id110736%_
                                                            _%k110737%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id110736%_))
                                                         (let ((__tmp111245
                                                                (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (__SRC__0 _%id110736%_))
                                    (cons (cons '##vector-ref
                                                (cons _%tmp110733%_
                                                      (cons _%k110737%_ '())))
                                          '())))))
                   (declare (not safe))
                   (__SRC__% __tmp111245 _%stx110658%_))
                 '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp111243
                                                   (let ()
                                                     (declare (not safe))
                                                     (##iota _%len110731%_))))
                                              (declare (not safe))
                                              (__filter-map2
                                               __tmp111244
                                               _%ids110729%_
                                               __tmp111243))))
                                       (declare (not safe))
                                       (__foldr1 cons '() __tmp111242)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111239
                                                      _%stx110658%_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e110711%_))
                                                (let* ((_%$tgt110716110742%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e110711%_)))
                                                       (_%$hd110717110745%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt110716110742%_)))
                                                       (_%$tl110718110748%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt110716110742%_)))
                                                       (_%id110752%_
                                                        _%$hd110717110745%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl110718110748%_))
                      '())
              (let ((__tmp111246
                     (cons 'define
                           (cons (let ()
                                   (declare (not safe))
                                   (__SRC__0 _%id110752%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (__compile _%expr110709%_))
                                       '())))))
                (declare (not safe))
                (__SRC__% __tmp111246 _%stx110658%_))
              (let () (declare (not safe)) (_%$E110714110739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110714110739%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e110711%_))
                                      (let* ((_%$tgt110719110757%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e110711%_)))
                                             (_%$hd110720110760%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110719110757%_)))
                                             (_%$tl110721110763%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110719110757%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd110720110760%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl110721110763%_))
                                                        '())
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _%expr110709%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110713110754%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E110713110754%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110713110754%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110662110674%_))))
                          (let () (declare (not safe)) (_%$E110662110674%_))))
                    (let () (declare (not safe)) (_%$E110662110674%_))))
              (let () (declare (not safe)) (_%$E110662110674%_))))))
    (define __compile-head-id
      (lambda (_%e110656%_)
        (let ((__tmp111247
               (if (let () (declare (not safe)) (__AST-e _%e110656%_))
                   _%e110656%_
                   (let () (declare (not safe)) (##gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp111247))))
    (define __compile-lambda-head
      (lambda (_%hd110613%_)
        (let _%recur110615%_ ((_%rest110617%_ _%hd110613%_))
          (let* ((_%$e110619%_ _%rest110617%_)
                 (_%$E110621110639%_
                  (lambda ()
                    (let ((_%$E110622110636%_
                           (lambda ()
                             (let* ((_%$E110623110631%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e110619%_))))
                                    (_%tail110634%_ _%$e110619%_))
                               (declare (not safe))
                               (__compile-head-id _%tail110634%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110619%_))
                                  '())
                          '()
                          (let ()
                            (declare (not safe))
                            (_%$E110622110636%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110619%_))
                (let* ((_%$tgt110624110642%_
                        (let () (declare (not safe)) (__AST-e _%$e110619%_)))
                       (_%$hd110625110645%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110624110642%_)))
                       (_%$tl110626110648%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110624110642%_))))
                  (let* ((_%hd110652%_ _%$hd110625110645%_)
                         (_%rest110654%_ _%$tl110626110648%_))
                    (cons (let ()
                            (declare (not safe))
                            (__compile-head-id _%hd110652%_))
                          (let ()
                            (declare (not safe))
                            (_%recur110615%_ _%rest110654%_)))))
                (let () (declare (not safe)) (_%$E110621110639%_)))))))
    (define __compile-lambda%
      (lambda (_%stx110560%_)
        (let* ((_%$e110562%_ _%stx110560%_)
               (_%$E110564110576%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110562%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110562%_))
              (let* ((_%$tgt110565110579%_
                      (let () (declare (not safe)) (__AST-e _%$e110562%_)))
                     (_%$hd110566110582%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110565110579%_)))
                     (_%$tl110567110585%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110565110579%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110567110585%_))
                    (let* ((_%$tgt110568110589%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110567110585%_)))
                           (_%$hd110569110592%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110568110589%_)))
                           (_%$tl110570110595%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110568110589%_)))
                           (_%hd110599%_ _%$hd110569110592%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl110570110595%_))
                          (let* ((_%$tgt110571110601%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110570110595%_)))
                                 (_%$hd110572110604%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110571110601%_)))
                                 (_%$tl110573110607%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110571110601%_)))
                                 (_%body110611%_ _%$hd110572110604%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110573110607%_))
                                        '())
                                (let ((__tmp111248
                                       (cons 'lambda
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__compile-lambda-head
                                                      _%hd110599%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%body110611%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111248 _%stx110560%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110564110576%_))))
                          (let () (declare (not safe)) (_%$E110564110576%_))))
                    (let () (declare (not safe)) (_%$E110564110576%_))))
              (let () (declare (not safe)) (_%$E110564110576%_))))))
    (define __compile-case-lambda%
      (lambda (_%stx110352%_)
        (letrec ((_%variadic?110354%_
                  (lambda (_%hd110525%_)
                    (let* ((_%$e110527%_ _%hd110525%_)
                           (_%$E110529110545%_
                            (lambda ()
                              (let ((_%$E110530110542%_
                                     (lambda ()
                                       (let ((_%$E110531110539%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e110527%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e110527%_))
                                            '())
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110530110542%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110527%_))
                          (let* ((_%$tgt110532110548%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110527%_)))
                                 (_%$hd110533110551%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110532110548%_)))
                                 (_%$tl110534110554%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110532110548%_)))
                                 (_%rest110558%_ _%$tl110534110554%_))
                            (declare (not safe))
                            (_%variadic?110354%_ _%rest110558%_))
                          (let ()
                            (declare (not safe))
                            (_%$E110529110545%_))))))
                 (_%arity110355%_
                  (lambda (_%hd110490%_)
                    (let _%lp110492%_ ((_%rest110494%_ _%hd110490%_)
                                       (_%k110495%_ '0))
                      (let* ((_%$e110497%_ _%rest110494%_)
                             (_%$E110499110510%_
                              (lambda ()
                                (let ((_%$E110500110507%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e110497%_)))))
                                  _%k110495%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e110497%_))
                            (let* ((_%$tgt110501110513%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e110497%_)))
                                   (_%$hd110502110516%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110501110513%_)))
                                   (_%$tl110503110519%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110501110513%_))))
                              (let* ((_%rest110523%_ _%$tl110503110519%_)
                                     (__tmp111249
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%k110495%_ '1))))
                                (declare (not safe))
                                (_%lp110492%_ _%rest110523%_ __tmp111249)))
                            (let ()
                              (declare (not safe))
                              (_%$E110499110510%_)))))))
                 (_%generate110356%_
                  (lambda (_%rest110417%_ _%args110418%_ _%len110419%_)
                    (let* ((_%$e110421%_ _%rest110417%_)
                           (_%$E110423110434%_
                            (lambda ()
                              (let* ((_%$E110424110431%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _%$e110421%_))))
                                     (__tmp111250
                                      (cons 'error
                                            (cons '"No clause matching arguments"
                                                  (cons _%args110418%_ '())))))
                                (declare (not safe))
                                (__SRC__% __tmp111250 _%stx110352%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110421%_))
                          (let* ((_%$tgt110425110437%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110421%_)))
                                 (_%$hd110426110440%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110425110437%_)))
                                 (_%$tl110427110443%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110425110437%_))))
                            (let* ((_%clause110447%_ _%$hd110426110440%_)
                                   (_%rest110449%_ _%$tl110427110443%_)
                                   (_%$e110451%_ _%clause110447%_)
                                   (_%$E110453110462%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _%$e110451%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _%$e110451%_))
                                  (let* ((_%$tgt110454110465%_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _%$e110451%_)))
                                         (_%$hd110455110468%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$tgt110454110465%_)))
                                         (_%$tl110456110471%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$tgt110454110465%_)))
                                         (_%hd110475%_ _%$hd110455110468%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _%$tl110456110471%_))
                                        (let* ((_%$tgt110457110477%_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl110456110471%_)))
                                               (_%$hd110458110480%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$tgt110457110477%_)))
                                               (_%$tl110459110483%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$tgt110457110477%_))))
                                          (if (equal? (let ()
                                                        (declare (not safe))
                                                        (__AST-e _%$tl110459110483%_))
                                                      '())
                                              (let ((_%clen110487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%arity110355%_
                                                        _%hd110475%_)))
                                                    (_%cmp110488%_
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (_%variadic?110354%_
                                                            _%hd110475%_))
                                                         'fx>=
                                                         'fx=)))
                                                (let ((__tmp111251
                                                       (cons 'if
                                                             (cons (cons _%cmp110488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%len110419%_
                                       (cons _%clen110487%_ '())))
                           (cons (let ((__tmp111252
                                        (cons '##apply
                                              (cons (let ((__tmp111253
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause110447%_)))
              (declare (not safe))
              (__compile-lambda% __tmp111253))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%args110418%_
                                                          '())))))
                                   (declare (not safe))
                                   (__SRC__% __tmp111252 _%stx110352%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%generate110356%_
                                          _%rest110449%_
                                          _%args110418%_
                                          _%len110419%_))
                                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__SRC__%
                                                   __tmp111251
                                                   _%stx110352%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$E110453110462%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E110453110462%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$E110453110462%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E110423110434%_)))))))
          (let* ((_%$e110358%_ _%stx110352%_)
                 (_%$E110360110392%_
                  (lambda ()
                    (let ((_%$E110361110374%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110358%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110358%_))
                          (let* ((_%$tgt110362110377%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110358%_)))
                                 (_%$hd110363110380%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110362110377%_)))
                                 (_%$tl110364110383%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110362110377%_)))
                                 (_%clauses110387%_ _%$tl110364110383%_))
                            (let ((_%args110389%_
                                   (let ((__tmp111254
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111254 _%stx110352%_)))
                                  (_%len110390%_
                                   (let ((__tmp111255
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111255 _%stx110352%_))))
                              (let ((__tmp111256
                                     (cons 'lambda
                                           (cons _%args110389%_
                                                 (cons (let ((__tmp111257
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons _%len110390%_
                                              (cons (let ((__tmp111258
                                                           (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%args110389%_ '()))))
              (declare (not safe))
              (__SRC__% __tmp111258 _%stx110352%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%generate110356%_
                                           _%clauses110387%_
                                           _%args110389%_
                                           _%len110390%_))
                                        '())))))
                 (declare (not safe))
                 (__SRC__% __tmp111257 _%stx110352%_))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (__SRC__% __tmp111256 _%stx110352%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110361110374%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110358%_))
                (let* ((_%$tgt110365110395%_
                        (let () (declare (not safe)) (__AST-e _%$e110358%_)))
                       (_%$hd110366110398%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110365110395%_)))
                       (_%$tl110367110401%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110365110395%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110367110401%_))
                      (let* ((_%$tgt110368110405%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110367110401%_)))
                             (_%$hd110369110408%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110368110405%_)))
                             (_%$tl110370110411%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110368110405%_)))
                             (_%clause110415%_ _%$hd110369110408%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110370110411%_))
                                    '())
                            (let ((__tmp111259
                                   (cons '%#lambda _%clause110415%_)))
                              (declare (not safe))
                              (__compile-lambda% __tmp111259))
                            (let ()
                              (declare (not safe))
                              (_%$E110360110392%_))))
                      (let () (declare (not safe)) (_%$E110360110392%_))))
                (let () (declare (not safe)) (_%$E110360110392%_)))))))
    (define __compile-let-form
      (lambda (_%stx110121%_ _%compile-simple110122%_ _%compile-values110123%_)
        (letrec ((_%simple-bind?110125%_
                  (lambda (_%hd110310%_)
                    (let* ((_%hd110311110321%_ _%hd110310%_)
                           (_%else110314110329%_ (lambda () '#f)))
                      (let ((_%K110317110342%_ (lambda (_%id110340%_) '#t))
                            (_%K110316110334%_ (lambda () '#t)))
                        (let ((_%try-match110313110337%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110311110321%_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110316110334%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%else110314110329%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110311110321%_))
                              (let ((_%tl110319110347%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110311110321%_)))
                                    (_%hd110318110345%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110311110321%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110319110347%_))
                                    (let ((_%id110350%_ _%hd110318110345%_))
                                      (declare (not safe))
                                      (_%K110317110342%_ _%id110350%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%try-match110313110337%_))))
                              (let ()
                                (declare (not safe))
                                (_%try-match110313110337%_))))))))
                 (_%car-e110126%_
                  (lambda (_%hd110308%_)
                    (if (let () (declare (not safe)) (pair? _%hd110308%_))
                        (car _%hd110308%_)
                        _%hd110308%_))))
          (let* ((_%$e110128%_ _%stx110121%_)
                 (_%$E110130110273%_
                  (lambda ()
                    (let ((_%$E110131110153%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110128%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110128%_))
                          (let* ((_%$tgt110132110156%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110128%_)))
                                 (_%$hd110133110159%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110132110156%_)))
                                 (_%$tl110134110162%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110132110156%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110134110162%_))
                                (let* ((_%$tgt110135110166%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110134110162%_)))
                                       (_%$hd110136110169%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110135110166%_)))
                                       (_%$tl110137110172%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110135110166%_)))
                                       (_%hd110176%_ _%$hd110136110169%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl110137110172%_))
                                      (let* ((_%$tgt110138110178%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110137110172%_)))
                                             (_%$hd110139110181%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110138110178%_)))
                                             (_%$tl110140110184%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110138110178%_)))
                                             (_%body110188%_
                                              _%$hd110139110181%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl110140110184%_))
                                                    '())
                                            (let* ((_%hd-ids110228%_
                                                    (map (lambda (_%bind110190%_)
                                                           (let* ((_%$e110192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110190%_)
                          (_%$E110194110203%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110192%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110192%_))
                         (let* ((_%$tgt110195110206%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110192%_)))
                                (_%$hd110196110209%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110195110206%_)))
                                (_%$tl110197110212%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110195110206%_)))
                                (_%ids110216%_ _%$hd110196110209%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110197110212%_))
                               (let* ((_%$tgt110198110218%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110197110212%_)))
                                      (_%$hd110199110221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110198110218%_)))
                                      (_%$tl110200110224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110198110218%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110200110224%_))
                                             '())
                                     _%ids110216%_
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110194110203%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110194110203%_))))
                         (let () (declare (not safe)) (_%$E110194110203%_)))))
                 _%hd110176%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs110268%_
                                                    (map (lambda (_%bind110230%_)
                                                           (let* ((_%$e110232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110230%_)
                          (_%$E110234110243%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110232%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110232%_))
                         (let* ((_%$tgt110235110246%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110232%_)))
                                (_%$hd110236110249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110235110246%_)))
                                (_%$tl110237110252%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110235110246%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110237110252%_))
                               (let* ((_%$tgt110238110256%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110237110252%_)))
                                      (_%$hd110239110259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110238110256%_)))
                                      (_%$tl110240110262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110238110256%_)))
                                      (_%expr110266%_ _%$hd110239110259%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110240110262%_))
                                             '())
                                     (let ()
                                       (declare (not safe))
                                       (__compile _%expr110266%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110234110243%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110234110243%_))))
                         (let () (declare (not safe)) (_%$E110234110243%_)))))
                 _%hd110176%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body110270%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile
                                                       _%body110188%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?110125%_
                                                     _%hd-ids110228%_))
                                                  (_%compile-simple110122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e110126%_
                                                            _%hd-ids110228%_))
                                                   _%exprs110268%_
                                                   _%body110270%_)
                                                  (_%compile-values110123%_
                                                   _%hd-ids110228%_
                                                   _%exprs110268%_
                                                   _%body110270%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E110131110153%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110131110153%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110131110153%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110131110153%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110128%_))
                (let* ((_%$tgt110141110276%_
                        (let () (declare (not safe)) (__AST-e _%$e110128%_)))
                       (_%$hd110142110279%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110141110276%_)))
                       (_%$tl110143110282%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110141110276%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110143110282%_))
                      (let* ((_%$tgt110144110286%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110143110282%_)))
                             (_%$hd110145110289%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110144110286%_)))
                             (_%$tl110146110292%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110144110286%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110145110289%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110146110292%_))
                                (let* ((_%$tgt110147110296%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110146110292%_)))
                                       (_%$hd110148110299%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110147110296%_)))
                                       (_%$tl110149110302%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110147110296%_)))
                                       (_%body110306%_ _%$hd110148110299%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110149110302%_))
                                              '())
                                      (let ()
                                        (declare (not safe))
                                        (__compile _%body110306%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110130110273%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110130110273%_)))
                            (let ()
                              (declare (not safe))
                              (_%$E110130110273%_))))
                      (let () (declare (not safe)) (_%$E110130110273%_))))
                (let () (declare (not safe)) (_%$E110130110273%_)))))))
    (define __compile-let-values%
      (lambda (_%stx109933%_)
        (letrec ((_%compile-simple109935%_
                  (lambda (_%hd-ids110117%_ _%exprs110118%_ _%body110119%_)
                    (let ((__tmp111260
                           (cons 'let
                                 (cons (let ((__tmp111261
                                              (map __compile-head-id
                                                   _%hd-ids110117%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111261
                                                _%exprs110118%_))
                                       (cons _%body110119%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111260 _%stx109933%_))))
                 (_%compile-values109936%_
                  (lambda (_%hd-ids110032%_ _%exprs110033%_ _%body110034%_)
                    (let _%lp110036%_ ((_%rest110038%_ _%hd-ids110032%_)
                                       (_%exprs110039%_ _%exprs110033%_)
                                       (_%bind110040%_ '())
                                       (_%post110041%_ '()))
                      (let* ((_%rest110042110056%_ _%rest110038%_)
                             (_%else110045110064%_
                              (lambda ()
                                (let ((__tmp111262
                                       (cons 'let
                                             (cons (reverse _%bind110040%_)
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%compile-post109937%_
                                                            _%post110041%_
                                                            _%body110034%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111262 _%stx109933%_)))))
                        (let ((_%K110050110100%_
                               (lambda (_%rest110097%_ _%id110098%_)
                                 (let ((__tmp111264 (cdr _%exprs110039%_))
                                       (__tmp111263
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110098%_))
                                                    (cons (car _%exprs110039%_)
                                                          '()))
                                              _%bind110040%_)))
                                   (declare (not safe))
                                   (_%lp110036%_
                                    _%rest110097%_
                                    __tmp111264
                                    __tmp111263
                                    _%post110041%_))))
                              (_%K110047110082%_
                               (lambda (_%rest110068%_ _%hd110069%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110069%_))
                                     (let ((__tmp111266 (cdr _%exprs110039%_))
                                           (__tmp111265
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd110069%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs110039%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind110040%_)))
                                       (declare (not safe))
                                       (_%lp110036%_
                                        _%rest110068%_
                                        __tmp111266
                                        __tmp111265
                                        _%post110041%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110069%_))
                                         (let ()
                                           (let* ((_%len110073%_
                                                   (length _%hd110069%_))
                                                  (_%tmp110075%_
                                                   (let ((__tmp111267
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111267))))
                                             (let ((__tmp111274
                                                    (cdr _%exprs110039%_))
                                                   (__tmp111273
                                                    (cons (cons _%tmp110075%_
                                                                (cons (car _%exprs110039%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110040%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111268
                                                    (cons (let ((__tmp111269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111270
                                (let ((__tmp111272
                                       (lambda (_%id110078%_ _%k110079%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110078%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110078%_))
                                                   _%k110079%_)
                                             '#f)))
                                      (__tmp111271
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110073%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111272
                                   _%hd110069%_
                                   __tmp111271))))
                           (declare (not safe))
                           (cons _%len110073%_ __tmp111270))))
                    (declare (not safe))
                    (cons _%tmp110075%_ __tmp111269))
                  _%post110041%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110036%_
                                                _%rest110068%_
                                                __tmp111274
                                                __tmp111273
                                                __tmp111268))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx109933%_
                                            _%hd110069%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110042110056%_))
                              (let ((_%tl110052110105%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110042110056%_)))
                                    (_%hd110051110103%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110042110056%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110051110103%_))
                                    (let ((_%tl110054110110%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110051110103%_)))
                                          (_%hd110053110108%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110051110103%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110054110110%_))
                                          (let ((_%id110113%_
                                                 _%hd110053110108%_)
                                                (_%rest110115%_
                                                 _%tl110052110105%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110050110100%_
                                               _%rest110115%_
                                               _%id110113%_)))
                                          (let ((_%hd110090%_
                                                 _%hd110051110103%_)
                                                (_%rest110092%_
                                                 _%tl110052110105%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110047110082%_
                                               _%rest110092%_
                                               _%hd110090%_)))))
                                    (let ((_%hd110090%_ _%hd110051110103%_)
                                          (_%rest110092%_ _%tl110052110105%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110047110082%_
                                         _%rest110092%_
                                         _%hd110090%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110045110064%_))))))))
                 (_%compile-post109937%_
                  (lambda (_%post109939%_ _%body109940%_)
                    (let _%lp109942%_ ((_%rest109944%_ _%post109939%_)
                                       (_%check109945%_ '())
                                       (_%bind109946%_ '()))
                      (let* ((_%rest109947109959%_ _%rest109944%_)
                             (_%else109949109967%_
                              (lambda ()
                                (let ((__tmp111275
                                       (cons 'begin
                                             (let ((__tmp111276
                                                    (cons (let ((__tmp111277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons _%bind109946%_
                                     (cons _%body109940%_ '())))))
                    (declare (not safe))
                    (__SRC__% __tmp111277 _%stx109933%_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111276
                                                _%check109945%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111275 _%stx109933%_))))
                             (_%K109951110006%_
                              (lambda (_%rest109970%_
                                       _%init109971%_
                                       _%len109972%_
                                       _%tmp109973%_)
                                (let ((__tmp111280
                                       (cons (let ((__tmp111281
                                                    (cons '__check-values
                                                          (cons _%tmp109973%_
                                                                (cons _%len109972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111281
                                                _%stx109933%_))
                                             _%check109945%_))
                                      (__tmp111278
                                       (let ((__tmp111279
                                              (lambda (_%hd109975%_
                                                       _%r109976%_)
                                                (let* ((_%hd109977109984%_
                                                        _%hd109975%_)
                                                       (_%E109979109988%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd109977109984%_
                           '([id . k])))
                  '#!void))
               (_%K109980109994%_
                (lambda (_%k109991%_ _%id109992%_)
                  (cons (cons _%id109992%_
                              (cons (cons '##vector-ref
                                          (cons _%tmp109973%_
                                                (cons _%k109991%_ '())))
                                    '()))
                        _%r109976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd109977109984%_))
                                                      (let ((_%hd109981109997%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd109977109984%_)))
                    (_%tl109982109999%_
                     (let () (declare (not safe)) (##cdr _%hd109977109984%_))))
                (let* ((_%id110002%_ _%hd109981109997%_)
                       (_%k110004%_ _%tl109982109999%_))
                  (declare (not safe))
                  (_%K109980109994%_ _%k110004%_ _%id110002%_)))
              (let () (declare (not safe)) (_%E109979109988%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111279
                                          _%bind109946%_
                                          _%init109971%_))))
                                  (declare (not safe))
                                  (_%lp109942%_
                                   _%rest109970%_
                                   __tmp111280
                                   __tmp111278)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest109947109959%_))
                            (let ((_%hd109952110009%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109947109959%_)))
                                  (_%tl109953110011%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109947109959%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd109952110009%_))
                                  (let ((_%hd109954110014%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd109952110009%_)))
                                        (_%tl109955110016%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd109952110009%_))))
                                    (let ((_%tmp110019%_ _%hd109954110014%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl109955110016%_))
                                          (let ((_%hd109956110021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl109955110016%_)))
                                                (_%tl109957110023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl109955110016%_))))
                                            (let* ((_%len110026%_
                                                    _%hd109956110021%_)
                                                   (_%init110028%_
                                                    _%tl109957110023%_)
                                                   (_%rest110030%_
                                                    _%tl109953110011%_))
                                              (declare (not safe))
                                              (_%K109951110006%_
                                               _%rest110030%_
                                               _%init110028%_
                                               _%len110026%_
                                               _%tmp110019%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else109949109967%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else109949109967%_))))
                            (let ()
                              (declare (not safe))
                              (_%else109949109967%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109933%_
             _%compile-simple109935%_
             _%compile-values109936%_)))))
    (define __compile-letrec-values%
      (lambda (_%stx109730%_)
        (letrec ((_%compile-simple109732%_
                  (lambda (_%hd-ids109929%_ _%exprs109930%_ _%body109931%_)
                    (let ((__tmp111282
                           (cons 'letrec
                                 (cons (let ((__tmp111283
                                              (map __compile-head-id
                                                   _%hd-ids109929%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111283
                                                _%exprs109930%_))
                                       (cons _%body109931%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111282 _%stx109730%_))))
                 (_%compile-values109733%_
                  (lambda (_%hd-ids109840%_ _%exprs109841%_ _%body109842%_)
                    (let _%lp109844%_ ((_%rest109846%_ _%hd-ids109840%_)
                                       (_%exprs109847%_ _%exprs109841%_)
                                       (_%pre109848%_ '())
                                       (_%bind109849%_ '())
                                       (_%post109850%_ '()))
                      (let* ((_%rest109851109865%_ _%rest109846%_)
                             (_%else109854109873%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-inner109734%_
                                   _%pre109848%_
                                   _%bind109849%_
                                   _%post109850%_
                                   _%body109842%_)))))
                        (let ((_%K109859109912%_
                               (lambda (_%rest109909%_ _%id109910%_)
                                 (let ((__tmp111285 (cdr _%exprs109847%_))
                                       (__tmp111284
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id109910%_))
                                                    (cons (car _%exprs109847%_)
                                                          '()))
                                              _%bind109849%_)))
                                   (declare (not safe))
                                   (_%lp109844%_
                                    _%rest109909%_
                                    __tmp111285
                                    _%pre109848%_
                                    __tmp111284
                                    _%post109850%_))))
                              (_%K109856109894%_
                               (lambda (_%rest109877%_ _%hd109878%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109878%_))
                                     (let ((__tmp111287 (cdr _%exprs109847%_))
                                           (__tmp111286
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd109878%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs109847%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind109849%_)))
                                       (declare (not safe))
                                       (_%lp109844%_
                                        _%rest109877%_
                                        __tmp111287
                                        _%pre109848%_
                                        __tmp111286
                                        _%post109850%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd109878%_))
                                         (let ()
                                           (let* ((_%len109882%_
                                                   (length _%hd109878%_))
                                                  (_%tmp109884%_
                                                   (let ((__tmp111288
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111288))))
                                             (let ((__tmp111297
                                                    (cdr _%exprs109847%_))
                                                   (__tmp111295
                                                    (let ((__tmp111296
                                                           (lambda (_%id109887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r109888%_)
                     (if (let () (declare (not safe)) (__AST-e _%id109887%_))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (__SRC__0 _%id109887%_))
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _%r109888%_)
                         _%r109888%_))))
              (declare (not safe))
              (__foldl1 __tmp111296 _%pre109848%_ _%hd109878%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111294
                                                    (cons (cons _%tmp109884%_
                                                                (cons (car _%exprs109847%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind109849%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111289
                                                    (cons (let ((__tmp111290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111291
                                (let ((__tmp111293
                                       (lambda (_%id109890%_ _%k109891%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id109890%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id109890%_))
                                                   _%k109891%_)
                                             '#f)))
                                      (__tmp111292
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len109882%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111293
                                   _%hd109878%_
                                   __tmp111292))))
                           (declare (not safe))
                           (cons _%len109882%_ __tmp111291))))
                    (declare (not safe))
                    (cons _%tmp109884%_ __tmp111290))
                  _%post109850%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp109844%_
                                                _%rest109877%_
                                                __tmp111297
                                                __tmp111295
                                                __tmp111294
                                                __tmp111289))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx109730%_
                                            _%hd109878%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109851109865%_))
                              (let ((_%tl109861109917%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109851109865%_)))
                                    (_%hd109860109915%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109851109865%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109860109915%_))
                                    (let ((_%tl109863109922%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109860109915%_)))
                                          (_%hd109862109920%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109860109915%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109863109922%_))
                                          (let ((_%id109925%_
                                                 _%hd109862109920%_)
                                                (_%rest109927%_
                                                 _%tl109861109917%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109859109912%_
                                               _%rest109927%_
                                               _%id109925%_)))
                                          (let ((_%hd109902%_
                                                 _%hd109860109915%_)
                                                (_%rest109904%_
                                                 _%tl109861109917%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109856109894%_
                                               _%rest109904%_
                                               _%hd109902%_)))))
                                    (let ((_%hd109902%_ _%hd109860109915%_)
                                          (_%rest109904%_ _%tl109861109917%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K109856109894%_
                                         _%rest109904%_
                                         _%hd109902%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else109854109873%_))))))))
                 (_%compile-inner109734%_
                  (lambda (_%pre109835%_
                           _%bind109836%_
                           _%post109837%_
                           _%body109838%_)
                    (if (let () (declare (not safe)) (null? _%pre109835%_))
                        (let ()
                          (declare (not safe))
                          (_%compile-bind109735%_
                           _%bind109836%_
                           _%post109837%_
                           _%body109838%_))
                        (let ((__tmp111298
                               (cons 'let
                                     (cons (reverse _%pre109835%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%compile-bind109735%_
                                                    _%bind109836%_
                                                    _%post109837%_
                                                    _%body109838%_))
                                                 '())))))
                          (declare (not safe))
                          (__SRC__% __tmp111298 _%stx109730%_)))))
                 (_%compile-bind109735%_
                  (lambda (_%bind109831%_ _%post109832%_ _%body109833%_)
                    (let ((__tmp111299
                           (cons 'letrec
                                 (cons (reverse _%bind109831%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post109736%_
                                                _%post109832%_
                                                _%body109833%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111299 _%stx109730%_))))
                 (_%compile-post109736%_
                  (lambda (_%post109738%_ _%body109739%_)
                    (let _%lp109741%_ ((_%rest109743%_ _%post109738%_)
                                       (_%check109744%_ '())
                                       (_%bind109745%_ '()))
                      (let* ((_%rest109746109758%_ _%rest109743%_)
                             (_%else109748109766%_
                              (lambda ()
                                (let ((__tmp111300
                                       (cons 'begin
                                             (let ((__tmp111301
                                                    (let ((__tmp111302
                                                           (cons _%body109739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
              (declare (not safe))
              (__foldr1 cons __tmp111302 _%bind109745%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111301
                                                _%check109744%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111300 _%stx109730%_))))
                             (_%K109750109805%_
                              (lambda (_%rest109769%_
                                       _%init109770%_
                                       _%len109771%_
                                       _%tmp109772%_)
                                (let ((__tmp111305
                                       (cons (let ((__tmp111306
                                                    (cons '__check-values
                                                          (cons _%tmp109772%_
                                                                (cons _%len109771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111306
                                                _%stx109730%_))
                                             _%check109744%_))
                                      (__tmp111303
                                       (let ((__tmp111304
                                              (lambda (_%hd109774%_
                                                       _%r109775%_)
                                                (let* ((_%hd109776109783%_
                                                        _%hd109774%_)
                                                       (_%E109778109787%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd109776109783%_
                           '([id . k])))
                  '#!void))
               (_%K109779109793%_
                (lambda (_%k109790%_ _%id109791%_)
                  (cons (cons 'set!
                              (cons _%id109791%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp109772%_
                                                      (cons _%k109790%_ '())))
                                          '())))
                        _%r109775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd109776109783%_))
                                                      (let ((_%hd109780109796%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd109776109783%_)))
                    (_%tl109781109798%_
                     (let () (declare (not safe)) (##cdr _%hd109776109783%_))))
                (let* ((_%id109801%_ _%hd109780109796%_)
                       (_%k109803%_ _%tl109781109798%_))
                  (declare (not safe))
                  (_%K109779109793%_ _%k109803%_ _%id109801%_)))
              (let () (declare (not safe)) (_%E109778109787%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111304
                                          _%bind109745%_
                                          _%init109770%_))))
                                  (declare (not safe))
                                  (_%lp109741%_
                                   _%rest109769%_
                                   __tmp111305
                                   __tmp111303)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest109746109758%_))
                            (let ((_%hd109751109808%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109746109758%_)))
                                  (_%tl109752109810%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109746109758%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd109751109808%_))
                                  (let ((_%hd109753109813%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd109751109808%_)))
                                        (_%tl109754109815%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd109751109808%_))))
                                    (let ((_%tmp109818%_ _%hd109753109813%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl109754109815%_))
                                          (let ((_%hd109755109820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl109754109815%_)))
                                                (_%tl109756109822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl109754109815%_))))
                                            (let* ((_%len109825%_
                                                    _%hd109755109820%_)
                                                   (_%init109827%_
                                                    _%tl109756109822%_)
                                                   (_%rest109829%_
                                                    _%tl109752109810%_))
                                              (declare (not safe))
                                              (_%K109750109805%_
                                               _%rest109829%_
                                               _%init109827%_
                                               _%len109825%_
                                               _%tmp109818%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else109748109766%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else109748109766%_))))
                            (let ()
                              (declare (not safe))
                              (_%else109748109766%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109730%_
             _%compile-simple109732%_
             _%compile-values109733%_)))))
    (define __compile-letrec*-values%
      (lambda (_%stx109481%_)
        (letrec ((_%compile-simple109483%_
                  (lambda (_%hd-ids109726%_ _%exprs109727%_ _%body109728%_)
                    (let ((__tmp111307
                           (cons 'letrec*
                                 (cons (let ((__tmp111308
                                              (map __compile-head-id
                                                   _%hd-ids109726%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111308
                                                _%exprs109727%_))
                                       (cons _%body109728%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111307 _%stx109481%_))))
                 (_%compile-values109484%_
                  (lambda (_%hd-ids109633%_ _%exprs109634%_ _%body109635%_)
                    (let _%lp109637%_ ((_%rest109639%_ _%hd-ids109633%_)
                                       (_%exprs109640%_ _%exprs109634%_)
                                       (_%bind109641%_ '())
                                       (_%post109642%_ '()))
                      (let* ((_%rest109643109657%_ _%rest109639%_)
                             (_%else109646109665%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-bind109485%_
                                   _%bind109641%_
                                   _%post109642%_
                                   _%body109635%_)))))
                        (let ((_%K109651109709%_
                               (lambda (_%rest109704%_ _%hd109705%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109705%_))
                                     (let ((_%id109707%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd109705%_))))
                                       (let ((__tmp111311
                                              (cdr _%exprs109640%_))
                                             (__tmp111310
                                              (cons (cons _%id109707%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind109641%_))
                                             (__tmp111309
                                              (cons (cons _%id109707%_
                                                          (cons (car _%exprs109640%_)
                                                                '()))
                                                    _%post109642%_)))
                                         (declare (not safe))
                                         (_%lp109637%_
                                          _%rest109704%_
                                          __tmp111311
                                          __tmp111310
                                          __tmp111309)))
                                     (let ((__tmp111313 (cdr _%exprs109640%_))
                                           (__tmp111312
                                            (cons (cons '#f
                                                        (cons (car _%exprs109640%_)
                                                              '()))
                                                  _%post109642%_)))
                                       (declare (not safe))
                                       (_%lp109637%_
                                        _%rest109704%_
                                        __tmp111313
                                        _%bind109641%_
                                        __tmp111312)))))
                              (_%K109648109689%_
                               (lambda (_%rest109669%_ _%hd109670%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109670%_))
                                     (let ((_%id109673%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd109670%_))))
                                       (let ((__tmp111316
                                              (cdr _%exprs109640%_))
                                             (__tmp111315
                                              (cons (cons _%id109673%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind109641%_))
                                             (__tmp111314
                                              (cons (cons _%id109673%_
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs109640%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%post109642%_)))
                                         (declare (not safe))
                                         (_%lp109637%_
                                          _%rest109669%_
                                          __tmp111316
                                          __tmp111315
                                          __tmp111314)))
                                     (if (let ((__tmp111317
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%hd109670%_))))
                                           (declare (not safe))
                                           (not __tmp111317))
                                         (let ((__tmp111319
                                                (cdr _%exprs109640%_))
                                               (__tmp111318
                                                (cons (cons '#f
                                                            (cons (car _%exprs109640%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%post109642%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp109637%_
                                            _%rest109669%_
                                            __tmp111319
                                            _%bind109641%_
                                            __tmp111318))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _%hd109670%_))
                                             (let ()
                                               (let* ((_%len109677%_
                                                       (length _%hd109670%_))
                                                      (_%tmp109679%_
                                                       (let ((__tmp111320
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym))))
                 (declare (not safe))
                 (__SRC__0 __tmp111320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp111330
                                                        (cdr _%exprs109640%_))
                                                       (__tmp111328
                                                        (let ((__tmp111329
                                                               (lambda (_%id109682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%r109683%_)
                         (if (let ()
                               (declare (not safe))
                               (__AST-e _%id109682%_))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id109682%_))
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _%r109683%_)
                             _%r109683%_))))
                  (declare (not safe))
                  (__foldl1 __tmp111329 _%bind109641%_ _%hd109670%_)))
               (__tmp111321
                (cons (let ((__tmp111322
                             (let ((__tmp111327 (car _%exprs109640%_))
                                   (__tmp111323
                                    (let ((__tmp111324
                                           (let ((__tmp111326
                                                  (lambda (_%id109685%_
                                                           _%k109686%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%id109685%_))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _%id109685%_))
                      _%k109686%_)
                '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp111325
                                                  (let ()
                                                    (declare (not safe))
                                                    (##iota _%len109677%_))))
                                             (declare (not safe))
                                             (__filter-map2
                                              __tmp111326
                                              _%hd109670%_
                                              __tmp111325))))
                                      (declare (not safe))
                                      (cons _%len109677%_ __tmp111324))))
                               (declare (not safe))
                               (cons __tmp111327 __tmp111323))))
                        (declare (not safe))
                        (cons _%tmp109679%_ __tmp111322))
                      _%post109642%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp109637%_
                                                    _%rest109669%_
                                                    __tmp111330
                                                    __tmp111328
                                                    __tmp111321))))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _%stx109481%_
                                                _%hd109670%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109643109657%_))
                              (let ((_%tl109653109714%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109643109657%_)))
                                    (_%hd109652109712%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109643109657%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109652109712%_))
                                    (let ((_%tl109655109719%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109652109712%_)))
                                          (_%hd109654109717%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109652109712%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109655109719%_))
                                          (let ((_%hd109722%_
                                                 _%hd109654109717%_)
                                                (_%rest109724%_
                                                 _%tl109653109714%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109651109709%_
                                               _%rest109724%_
                                               _%hd109722%_)))
                                          (let ((_%hd109697%_
                                                 _%hd109652109712%_)
                                                (_%rest109699%_
                                                 _%tl109653109714%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109648109689%_
                                               _%rest109699%_
                                               _%hd109697%_)))))
                                    (let ((_%hd109697%_ _%hd109652109712%_)
                                          (_%rest109699%_ _%tl109653109714%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K109648109689%_
                                         _%rest109699%_
                                         _%hd109697%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else109646109665%_))))))))
                 (_%compile-bind109485%_
                  (lambda (_%bind109629%_ _%post109630%_ _%body109631%_)
                    (let ((__tmp111331
                           (cons 'let
                                 (cons (reverse _%bind109629%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post109486%_
                                                _%post109630%_
                                                _%body109631%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111331 _%stx109481%_))))
                 (_%compile-post109486%_
                  (lambda (_%post109488%_ _%body109489%_)
                    (let ((__tmp111332
                           (cons 'begin
                                 (let ((__tmp111333
                                        (let ((__tmp111335
                                               (lambda (_%hd109491%_
                                                        _%r109492%_)
                                                 (let* ((_%hd109493109516%_
                                                         _%hd109491%_)
                                                        (_%E109497109520%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd109493109516%_
                            '([#f expr])
                            '([id expr])
                            '([tmp expr len . init])))
                   '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%K109510109614%_
                                                          (lambda (_%expr109612%_)
                                                            (cons _%expr109612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r109492%_)))
                 (_%K109505109592%_
                  (lambda (_%expr109589%_ _%id109590%_)
                    (cons (let ((__tmp111336
                                 (cons 'set!
                                       (cons _%id109590%_
                                             (cons _%expr109589%_ '())))))
                            (declare (not safe))
                            (__SRC__% __tmp111336 _%stx109481%_))
                          _%r109492%_)))
                 (_%K109498109559%_
                  (lambda (_%init109524%_
                           _%len109525%_
                           _%expr109526%_
                           _%tmp109527%_)
                    (cons (let ((__tmp111337
                                 (cons 'let
                                       (cons (cons (cons _%tmp109527%_
                                                         (cons _%expr109526%_
                                                               '()))
                                                   '())
                                             (cons (let ((__tmp111338
                                                          (cons '__check-values
                                                                (cons _%tmp109527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%len109525%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111338
                                                      _%stx109481%_))
                                                   (let ((__tmp111339
                                                          (map (lambda (_%hd109529%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%hd109530109537%_ _%hd109529%_)
                                (_%E109532109541%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _%hd109530109537%_
                                            '([id . k])))
                                   '#!void))
                                (_%K109533109547%_
                                 (lambda (_%k109544%_ _%id109545%_)
                                   (let ((__tmp111340
                                          (cons 'set!
                                                (cons _%id109545%_
                                                      (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%tmp109527%_ (cons _%k109544%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111340 _%stx109481%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%hd109530109537%_))
                               (let ((_%hd109534109550%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%hd109530109537%_)))
                                     (_%tl109535109552%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%hd109530109537%_))))
                                 (let* ((_%id109555%_ _%hd109534109550%_)
                                        (_%k109557%_ _%tl109535109552%_))
                                   (declare (not safe))
                                   (_%K109533109547%_
                                    _%k109557%_
                                    _%id109555%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%E109532109541%_)))))
                       _%init109524%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      '()
                                                      __tmp111339)))))))
                            (declare (not safe))
                            (__SRC__% __tmp111337 _%stx109481%_))
                          _%r109492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__match111108111109%_
                                                             (lambda (_%hd109499109562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tl109500109564%_
                              _%hd109501109569%_
                              _%tl109502109571%_)
                       (let ((_%tmp109567%_ _%hd109499109562%_)
                             (_%expr109574%_ _%hd109501109569%_))
                         (let () (declare (not safe)) (_%E109497109520%_)))))
                    (_%__match111102111103%_
                     (lambda (_%hd109499109562%_ _%tl109500109564%_)
                       (let ((_%tmp109567%_ _%hd109499109562%_))
                         (declare (not safe))
                         (_%E109497109520%_)))))
               (if (let () (declare (not safe)) (##pair? _%hd109493109516%_))
                   (let ((_%tl109512109619%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd109493109516%_)))
                         (_%hd109511109617%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd109493109516%_))))
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%hd109511109617%_ '#f))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl109512109619%_))
                             (let ((_%tl109514109624%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl109512109619%_)))
                                   (_%hd109513109622%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl109512109619%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl109514109624%_))
                                   (let ((_%expr109627%_ _%hd109513109622%_))
                                     (declare (not safe))
                                     (_%K109510109614%_ _%expr109627%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl109514109624%_))
                                       (let ((_%tl109504109578%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl109514109624%_)))
                                             (_%hd109503109576%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl109514109624%_))))
                                         (let ((_%tmp109567%_
                                                _%hd109511109617%_)
                                               (_%expr109574%_
                                                _%hd109513109622%_)
                                               (_%len109581%_
                                                _%hd109503109576%_)
                                               (_%init109583%_
                                                _%tl109504109578%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K109498109559%_
                                              _%init109583%_
                                              _%len109581%_
                                              _%expr109574%_
                                              _%tmp109567%_))))
                                       (_%__match111108111109%_
                                        _%hd109511109617%_
                                        _%tl109512109619%_
                                        _%hd109513109622%_
                                        _%tl109514109624%_))))
                             (_%__match111102111103%_
                              _%hd109511109617%_
                              _%tl109512109619%_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl109512109619%_))
                             (let ((_%tl109509109604%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl109512109619%_)))
                                   (_%hd109508109602%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl109512109619%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl109509109604%_))
                                   (let ((_%id109600%_ _%hd109511109617%_)
                                         (_%expr109607%_ _%hd109508109602%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%K109505109592%_
                                        _%expr109607%_
                                        _%id109600%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl109509109604%_))
                                       (let ((_%tl109504109578%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl109509109604%_)))
                                             (_%hd109503109576%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl109509109604%_))))
                                         (let ((_%tmp109567%_
                                                _%hd109511109617%_)
                                               (_%expr109574%_
                                                _%hd109508109602%_)
                                               (_%len109581%_
                                                _%hd109503109576%_)
                                               (_%init109583%_
                                                _%tl109504109578%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K109498109559%_
                                              _%init109583%_
                                              _%len109581%_
                                              _%expr109574%_
                                              _%tmp109567%_))))
                                       (_%__match111108111109%_
                                        _%hd109511109617%_
                                        _%tl109512109619%_
                                        _%hd109508109602%_
                                        _%tl109509109604%_))))
                             (_%__match111102111103%_
                              _%hd109511109617%_
                              _%tl109512109619%_))))
                   (let () (declare (not safe)) (_%E109497109520%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (__tmp111334
                                               (list _%body109489%_)))
                                          (declare (not safe))
                                          (__foldl1
                                           __tmp111335
                                           __tmp111334
                                           _%post109488%_))))
                                   (declare (not safe))
                                   (__foldr1 cons '() __tmp111333)))))
                      (declare (not safe))
                      (__SRC__% __tmp111332 _%stx109481%_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109481%_
             _%compile-simple109483%_
             _%compile-values109484%_)))))
    (define __compile-call%
      (lambda (_%stx109441%_)
        (let* ((_%$e109443%_ _%stx109441%_)
               (_%$E109445109454%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109443%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109443%_))
              (let* ((_%$tgt109446109457%_
                      (let () (declare (not safe)) (__AST-e _%$e109443%_)))
                     (_%$hd109447109460%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109446109457%_)))
                     (_%$tl109448109463%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109446109457%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109448109463%_))
                    (let* ((_%$tgt109449109467%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109448109463%_)))
                           (_%$hd109450109470%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109449109467%_)))
                           (_%$tl109451109473%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109449109467%_))))
                      (let* ((_%rator109477%_ _%$hd109450109470%_)
                             (_%rands109479%_ _%$tl109451109473%_)
                             (__tmp111341
                              (cons (let ()
                                      (declare (not safe))
                                      (__compile _%rator109477%_))
                                    (map __compile _%rands109479%_))))
                        (declare (not safe))
                        (__SRC__% __tmp111341 _%stx109441%_)))
                    (let () (declare (not safe)) (_%$E109445109454%_))))
              (let () (declare (not safe)) (_%$E109445109454%_))))))
    (define __compile-ref%
      (lambda (_%stx109403%_)
        (let* ((_%$e109405%_ _%stx109403%_)
               (_%$E109407109416%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109405%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109405%_))
              (let* ((_%$tgt109408109419%_
                      (let () (declare (not safe)) (__AST-e _%$e109405%_)))
                     (_%$hd109409109422%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109408109419%_)))
                     (_%$tl109410109425%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109408109419%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109410109425%_))
                    (let* ((_%$tgt109411109429%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109410109425%_)))
                           (_%$hd109412109432%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109411109429%_)))
                           (_%$tl109413109435%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109411109429%_)))
                           (_%id109439%_ _%$hd109412109432%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109413109435%_))
                                  '())
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%id109439%_ _%stx109403%_))
                          (let () (declare (not safe)) (_%$E109407109416%_))))
                    (let () (declare (not safe)) (_%$E109407109416%_))))
              (let () (declare (not safe)) (_%$E109407109416%_))))))
    (define __compile-setq%
      (lambda (_%stx109350%_)
        (let* ((_%$e109352%_ _%stx109350%_)
               (_%$E109354109366%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109352%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109352%_))
              (let* ((_%$tgt109355109369%_
                      (let () (declare (not safe)) (__AST-e _%$e109352%_)))
                     (_%$hd109356109372%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109355109369%_)))
                     (_%$tl109357109375%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109355109369%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109357109375%_))
                    (let* ((_%$tgt109358109379%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109357109375%_)))
                           (_%$hd109359109382%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109358109379%_)))
                           (_%$tl109360109385%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109358109379%_)))
                           (_%id109389%_ _%$hd109359109382%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109360109385%_))
                          (let* ((_%$tgt109361109391%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109360109385%_)))
                                 (_%$hd109362109394%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109361109391%_)))
                                 (_%$tl109363109397%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109361109391%_)))
                                 (_%expr109401%_ _%$hd109362109394%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109363109397%_))
                                        '())
                                (let ((__tmp111342
                                       (cons 'set!
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      _%id109389%_
                                                      _%stx109350%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%expr109401%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111342 _%stx109350%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109354109366%_))))
                          (let () (declare (not safe)) (_%$E109354109366%_))))
                    (let () (declare (not safe)) (_%$E109354109366%_))))
              (let () (declare (not safe)) (_%$E109354109366%_))))))
    (define __compile-if%
      (lambda (_%stx109282%_)
        (let* ((_%$e109284%_ _%stx109282%_)
               (_%$E109286109301%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109284%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109284%_))
              (let* ((_%$tgt109287109304%_
                      (let () (declare (not safe)) (__AST-e _%$e109284%_)))
                     (_%$hd109288109307%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109287109304%_)))
                     (_%$tl109289109310%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109287109304%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109289109310%_))
                    (let* ((_%$tgt109290109314%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109289109310%_)))
                           (_%$hd109291109317%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109290109314%_)))
                           (_%$tl109292109320%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109290109314%_)))
                           (_%p109324%_ _%$hd109291109317%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109292109320%_))
                          (let* ((_%$tgt109293109326%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109292109320%_)))
                                 (_%$hd109294109329%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109293109326%_)))
                                 (_%$tl109295109332%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109293109326%_)))
                                 (_%t109336%_ _%$hd109294109329%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl109295109332%_))
                                (let* ((_%$tgt109296109338%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109295109332%_)))
                                       (_%$hd109297109341%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt109296109338%_)))
                                       (_%$tl109298109344%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt109296109338%_)))
                                       (_%f109348%_ _%$hd109297109341%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl109298109344%_))
                                              '())
                                      (let ((__tmp111343
                                             (cons 'if
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%p109324%_))
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__compile _%t109336%_))
                       (cons (let ()
                               (declare (not safe))
                               (__compile _%f109348%_))
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (__SRC__% __tmp111343 _%stx109282%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E109286109301%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109286109301%_))))
                          (let () (declare (not safe)) (_%$E109286109301%_))))
                    (let () (declare (not safe)) (_%$E109286109301%_))))
              (let () (declare (not safe)) (_%$E109286109301%_))))))
    (define __compile-quote%
      (lambda (_%stx109244%_)
        (let* ((_%$e109246%_ _%stx109244%_)
               (_%$E109248109257%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109246%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109246%_))
              (let* ((_%$tgt109249109260%_
                      (let () (declare (not safe)) (__AST-e _%$e109246%_)))
                     (_%$hd109250109263%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109249109260%_)))
                     (_%$tl109251109266%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109249109260%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109251109266%_))
                    (let* ((_%$tgt109252109270%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109251109266%_)))
                           (_%$hd109253109273%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109252109270%_)))
                           (_%$tl109254109276%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109252109270%_)))
                           (_%e109280%_ _%$hd109253109273%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109254109276%_))
                                  '())
                          (let ((__tmp111344
                                 (cons 'quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (__AST->datum _%e109280%_))
                                             '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111344 _%stx109244%_))
                          (let () (declare (not safe)) (_%$E109248109257%_))))
                    (let () (declare (not safe)) (_%$E109248109257%_))))
              (let () (declare (not safe)) (_%$E109248109257%_))))))
    (define __compile-quote-syntax%
      (lambda (_%stx109206%_)
        (let* ((_%$e109208%_ _%stx109206%_)
               (_%$E109210109219%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109208%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109208%_))
              (let* ((_%$tgt109211109222%_
                      (let () (declare (not safe)) (__AST-e _%$e109208%_)))
                     (_%$hd109212109225%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109211109222%_)))
                     (_%$tl109213109228%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109211109222%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109213109228%_))
                    (let* ((_%$tgt109214109232%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109213109228%_)))
                           (_%$hd109215109235%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109214109232%_)))
                           (_%$tl109216109238%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109214109232%_)))
                           (_%e109242%_ _%$hd109215109235%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109216109238%_))
                                  '())
                          (let ((__tmp111345
                                 (cons 'quote (cons _%e109242%_ '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111345 _%stx109206%_))
                          (let () (declare (not safe)) (_%$E109210109219%_))))
                    (let () (declare (not safe)) (_%$E109210109219%_))))
              (let () (declare (not safe)) (_%$E109210109219%_))))))
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
