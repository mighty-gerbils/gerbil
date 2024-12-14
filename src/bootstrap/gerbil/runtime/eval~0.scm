(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1734131746)
  (begin
    (define __syntax::t
      (let ((__tmp115109 (list)) (__tmp115108 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp115109
         '(e id)
         __tmp115108
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args114913%_
        (apply make-instance __syntax::t _%$args114913%_)))
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
      (let ((__tmp115111 (list __syntax::t))
            (__tmp115110 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp115111
         '()
         __tmp115110
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args114910%_
        (apply make-instance __core-form::t _%$args114910%_)))
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
      (let ((__tmp115113 (list __core-form::t))
            (__tmp115112 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp115113
         '()
         __tmp115112
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args114907%_
        (apply make-instance __core-expression::t _%$args114907%_)))
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
      (let ((__tmp115115 (list __core-form::t))
            (__tmp115114 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp115115
         '()
         __tmp115114
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args114904%_
        (apply make-instance __core-special-form::t _%$args114904%_)))
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
      (lambda (_%id114902%_)
        (let ((__tmp115116
               (let () (declare (not safe)) (__AST-e _%id114902%_))))
          (declare (not safe))
          (__hash-get __core __tmp115116))))
    (define __core-bound-id?__%
      (lambda (_%id114885%_ _%is?114886%_)
        (let ((_%$e114888%_ (__core-resolve _%id114885%_)))
          (if _%$e114888%_ (_%is?114886%_ _%$e114888%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id114895%_)
        (let ((_%is?114897%_ true))
          (__core-bound-id?__% _%id114895%_ _%is?114897%_))))
    (define __core-bound-id?
      (lambda _g115118_
        (let ((_g115117_ (let () (declare (not safe)) (##length _g115118_))))
          (cond ((let () (declare (not safe)) (##fx= _g115117_ 1))
                 (apply __core-bound-id?__0 _g115118_))
                ((let () (declare (not safe)) (##fx= _g115117_ 2))
                 (apply __core-bound-id?__% _g115118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g115118_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id114868%_ _%e114869%_ _%make114870%_)
        (let ((__tmp115119
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e114869%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e114869%_
                   (_%make114870%_ _%e114869%_ _%id114868%_))))
          (declare (not safe))
          (__hash-put! __core _%id114868%_ __tmp115119))))
    (define __core-bind-syntax!__0
      (lambda (_%id114875%_ _%e114876%_)
        (let ((_%make114878%_ make-__syntax))
          (__core-bind-syntax!__% _%id114875%_ _%e114876%_ _%make114878%_))))
    (define __core-bind-syntax!
      (lambda _g115121_
        (let ((_g115120_ (let () (declare (not safe)) (##length _g115121_))))
          (cond ((let () (declare (not safe)) (##fx= _g115120_ 2))
                 (apply __core-bind-syntax!__0 _g115121_))
                ((let () (declare (not safe)) (##fx= _g115120_ 3))
                 (apply __core-bind-syntax!__% _g115121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g115121_))))))
    (define __SRC__%
      (lambda (_%e114848%_ _%src-stx114849%_)
        (if (or (pair? _%e114848%_) (symbol? _%e114848%_))
            (let ((__tmp115122
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx114849%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx114849%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e114848%_ __tmp115122))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e114848%_ 'gerbil#AST::t))
                (let ((__tmp115124
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e114848%_ '1 '#f '#f)))
                      (__tmp115123
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e114848%_)))))
                  (declare (not safe))
                  (##make-source __tmp115124 __tmp115123))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e114848%_))))))
    (define __SRC__0
      (lambda (_%e114860%_)
        (let ((_%src-stx114862%_ '#f))
          (__SRC__% _%e114860%_ _%src-stx114862%_))))
    (define __SRC
      (lambda _g115126_
        (let ((_g115125_ (let () (declare (not safe)) (##length _g115126_))))
          (cond ((let () (declare (not safe)) (##fx= _g115125_ 1))
                 (apply __SRC__0 _g115126_))
                ((let () (declare (not safe)) (##fx= _g115125_ 2))
                 (apply __SRC__% _g115126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g115126_))))))
    (define __locat
      (lambda (_%loc114845%_)
        (if (let () (declare (not safe)) (##locat? _%loc114845%_))
            _%loc114845%_
            '#f)))
    (define __check-values
      (lambda (_%obj114840%_ _%k114841%_)
        (let ((_%count114843%_
               (if (let () (declare (not safe)) (##values? _%obj114840%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj114840%_))
                   '1)))
          (if (fx= _%count114843%_ _%k114841%_)
              '#!void
              (let ((__tmp115128
                     (if (fx< _%count114843%_ _%k114841%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp115127
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj114840%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj114840%_))
                         _%obj114840%_)))
                (declare (not safe))
                (error __tmp115128 __tmp115127 _%k114841%_))))))
    (define __compile
      (lambda (_%stx114809%_)
        (let* ((_%$e114811%_ _%stx114809%_)
               (_%$E114813114819%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114811%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114811%_))
              (let* ((_%$tgt114814114822%_
                      (let () (declare (not safe)) (__AST-e _%$e114811%_)))
                     (_%$hd114815114825%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114814114822%_)))
                     (_%$tl114816114828%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114814114822%_)))
                     (_%form114832%_ _%$hd114815114825%_)
                     (_%$e114834%_ (__core-resolve _%form114832%_)))
                (if _%$e114834%_
                    ((lambda (_%bind114837%_)
                       ((##structure-ref _%bind114837%_ '1 __syntax::t '#f)
                        _%stx114809%_))
                     _%$e114834%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx114809%_
                       _%form114832%_))))
              (_%$E114813114819%_)))))
    (define __compile-error__%
      (lambda (_%stx114796%_ _%detail114797%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx114796%_
           _%detail114797%_))))
    (define __compile-error__0
      (lambda (_%stx114802%_)
        (let ((_%detail114804%_ '#f))
          (__compile-error__% _%stx114802%_ _%detail114804%_))))
    (define __compile-error
      (lambda _g115130_
        (let ((_g115129_ (let () (declare (not safe)) (##length _g115130_))))
          (cond ((let () (declare (not safe)) (##fx= _g115129_ 1))
                 (apply __compile-error__0 _g115130_))
                ((let () (declare (not safe)) (##fx= _g115129_ 2))
                 (apply __compile-error__% _g115130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g115130_))))))
    (define __compile-ignore%
      (lambda (_%stx114793%_) (__SRC__% ''#!void _%stx114793%_)))
    (define __compile-begin%
      (lambda (_%stx114768%_)
        (let* ((_%$e114770%_ _%stx114768%_)
               (_%$E114772114778%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114770%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114770%_))
              (let* ((_%$tgt114773114781%_
                      (let () (declare (not safe)) (__AST-e _%$e114770%_)))
                     (_%$hd114774114784%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114773114781%_)))
                     (_%$tl114775114787%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114773114781%_)))
                     (_%body114791%_ _%$tl114775114787%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body114791%_))
                 _%stx114768%_))
              (_%$E114772114778%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx114743%_)
        (let* ((_%$e114745%_ _%stx114743%_)
               (_%$E114747114753%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114745%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114745%_))
              (let* ((_%$tgt114748114756%_
                      (let () (declare (not safe)) (__AST-e _%$e114745%_)))
                     (_%$hd114749114759%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114748114756%_)))
                     (_%$tl114750114762%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114748114756%_)))
                     (_%body114766%_ _%$tl114750114762%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body114766%_)))
                 _%stx114743%_))
              (_%$E114747114753%_)))))
    (define __compile-import%
      (lambda (_%stx114718%_)
        (let* ((_%$e114720%_ _%stx114718%_)
               (_%$E114722114728%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114720%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114720%_))
              (let* ((_%$tgt114723114731%_
                      (let () (declare (not safe)) (__AST-e _%$e114720%_)))
                     (_%$hd114724114734%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114723114731%_)))
                     (_%$tl114725114737%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114723114731%_)))
                     (_%body114741%_ _%$tl114725114737%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body114741%_ '())) '()))
                 _%stx114718%_))
              (_%$E114722114728%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx114665%_)
        (let* ((_%$e114667%_ _%stx114665%_)
               (_%$E114669114681%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114667%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114667%_))
              (let* ((_%$tgt114670114684%_
                      (let () (declare (not safe)) (__AST-e _%$e114667%_)))
                     (_%$hd114671114687%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114670114684%_)))
                     (_%$tl114672114690%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114670114684%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114672114690%_))
                    (let* ((_%$tgt114673114694%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114672114690%_)))
                           (_%$hd114674114697%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114673114694%_)))
                           (_%$tl114675114700%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114673114694%_)))
                           (_%ann114704%_ _%$hd114674114697%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114675114700%_))
                          (let* ((_%$tgt114676114706%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114675114700%_)))
                                 (_%$hd114677114709%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114676114706%_)))
                                 (_%$tl114678114712%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114676114706%_)))
                                 (_%expr114716%_ _%$hd114677114709%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114678114712%_))
                                        '())
                                (__compile _%expr114716%_)
                                (_%$E114669114681%_)))
                          (_%$E114669114681%_)))
                    (_%$E114669114681%_)))
              (_%$E114669114681%_)))))
    (define __compile-define-values%
      (lambda (_%stx114556%_)
        (let* ((_%$e114558%_ _%stx114556%_)
               (_%$E114560114572%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114558%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114558%_))
              (let* ((_%$tgt114561114575%_
                      (let () (declare (not safe)) (__AST-e _%$e114558%_)))
                     (_%$hd114562114578%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114561114575%_)))
                     (_%$tl114563114581%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114561114575%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114563114581%_))
                    (let* ((_%$tgt114564114585%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114563114581%_)))
                           (_%$hd114565114588%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114564114585%_)))
                           (_%$tl114566114591%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114564114585%_)))
                           (_%hd114595%_ _%$hd114565114588%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114566114591%_))
                          (let* ((_%$tgt114567114597%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114566114591%_)))
                                 (_%$hd114568114600%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114567114597%_)))
                                 (_%$tl114569114603%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114567114597%_)))
                                 (_%expr114607%_ _%$hd114568114600%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114569114603%_))
                                        '())
                                (let* ((_%$e114609%_ _%hd114595%_)
                                       (_%$E114611114652%_
                                        (lambda ()
                                          (let ((_%$E114612114637%_
                                                 (lambda ()
                                                   (let* ((_%$E114613114624%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e114609%_))))
                  (_%ids114627%_ _%hd114595%_)
                  (_%len114629%_ (length _%ids114627%_))
                  (_%tmp114631%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp114631%_
                                       (cons (__compile _%expr114607%_) '())))
                           _%stx114556%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp114631%_
                                             (cons _%len114629%_ '())))
                                 _%stx114556%_)
                                (let ((__tmp115131
                                       (let ((__tmp115133
                                              (lambda (_%id114634%_
                                                       _%k114635%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id114634%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id114634%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp114631%_
                                           (cons _%k114635%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx114556%_)
                                                    '#f)))
                                             (__tmp115132
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len114629%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp115133
                                          _%ids114627%_
                                          __tmp115132))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp115131)))))
              _%stx114556%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e114609%_))
                                                (let* ((_%$tgt114614114640%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e114609%_)))
                                                       (_%$hd114615114643%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt114614114640%_)))
                                                       (_%$tl114616114646%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt114614114640%_)))
                                                       (_%id114650%_
                                                        _%$hd114615114643%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl114616114646%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id114650%_)
                           (cons (__compile _%expr114607%_) '())))
               _%stx114556%_)
              (_%$E114612114637%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E114612114637%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e114609%_))
                                      (let* ((_%$tgt114617114655%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e114609%_)))
                                             (_%$hd114618114658%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114617114655%_)))
                                             (_%$tl114619114661%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114617114655%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd114618114658%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl114619114661%_))
                                                        '())
                                                (__compile _%expr114607%_)
                                                (_%$E114611114652%_))
                                            (_%$E114611114652%_)))
                                      (_%$E114611114652%_)))
                                (_%$E114560114572%_)))
                          (_%$E114560114572%_)))
                    (_%$E114560114572%_)))
              (_%$E114560114572%_)))))
    (define __compile-head-id
      (lambda (_%e114554%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e114554%_))
             _%e114554%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd114511%_)
        (let _%recur114513%_ ((_%rest114515%_ _%hd114511%_))
          (let* ((_%$e114517%_ _%rest114515%_)
                 (_%$E114519114537%_
                  (lambda ()
                    (let ((_%$E114520114534%_
                           (lambda ()
                             (let* ((_%$E114521114529%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e114517%_))))
                                    (_%tail114532%_ _%$e114517%_))
                               (__compile-head-id _%tail114532%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114517%_))
                                  '())
                          '()
                          (_%$E114520114534%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114517%_))
                (let* ((_%$tgt114522114540%_
                        (let () (declare (not safe)) (__AST-e _%$e114517%_)))
                       (_%$hd114523114543%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114522114540%_)))
                       (_%$tl114524114546%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114522114540%_)))
                       (_%hd114550%_ _%$hd114523114543%_)
                       (_%rest114552%_ _%$tl114524114546%_))
                  (cons (__compile-head-id _%hd114550%_)
                        (_%recur114513%_ _%rest114552%_)))
                (_%$E114519114537%_))))))
    (define __compile-lambda%
      (lambda (_%stx114458%_)
        (let* ((_%$e114460%_ _%stx114458%_)
               (_%$E114462114474%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114460%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114460%_))
              (let* ((_%$tgt114463114477%_
                      (let () (declare (not safe)) (__AST-e _%$e114460%_)))
                     (_%$hd114464114480%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114463114477%_)))
                     (_%$tl114465114483%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114463114477%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114465114483%_))
                    (let* ((_%$tgt114466114487%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114465114483%_)))
                           (_%$hd114467114490%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114466114487%_)))
                           (_%$tl114468114493%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114466114487%_)))
                           (_%hd114497%_ _%$hd114467114490%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114468114493%_))
                          (let* ((_%$tgt114469114499%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114468114493%_)))
                                 (_%$hd114470114502%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114469114499%_)))
                                 (_%$tl114471114505%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114469114499%_)))
                                 (_%body114509%_ _%$hd114470114502%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114471114505%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd114497%_)
                                             (cons (__compile _%body114509%_)
                                                   '())))
                                 _%stx114458%_)
                                (_%$E114462114474%_)))
                          (_%$E114462114474%_)))
                    (_%$E114462114474%_)))
              (_%$E114462114474%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx114250%_)
        (letrec ((_%variadic?114252%_
                  (lambda (_%hd114423%_)
                    (let* ((_%$e114425%_ _%hd114423%_)
                           (_%$E114427114443%_
                            (lambda ()
                              (let ((_%$E114428114440%_
                                     (lambda ()
                                       (let ((_%$E114429114437%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e114425%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e114425%_))
                                            '())
                                    '#f
                                    (_%$E114428114440%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114425%_))
                          (let* ((_%$tgt114430114446%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114425%_)))
                                 (_%$hd114431114449%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114430114446%_)))
                                 (_%$tl114432114452%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114430114446%_)))
                                 (_%rest114456%_ _%$tl114432114452%_))
                            (_%variadic?114252%_ _%rest114456%_))
                          (_%$E114427114443%_)))))
                 (_%arity114253%_
                  (lambda (_%hd114388%_)
                    (let _%lp114390%_ ((_%rest114392%_ _%hd114388%_)
                                       (_%k114393%_ '0))
                      (let* ((_%$e114395%_ _%rest114392%_)
                             (_%$E114397114408%_
                              (lambda ()
                                (let ((_%$E114398114405%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e114395%_)))))
                                  _%k114393%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e114395%_))
                            (let* ((_%$tgt114399114411%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e114395%_)))
                                   (_%$hd114400114414%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt114399114411%_)))
                                   (_%$tl114401114417%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt114399114411%_)))
                                   (_%rest114421%_ _%$tl114401114417%_))
                              (_%lp114390%_
                               _%rest114421%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k114393%_ '1))))
                            (_%$E114397114408%_))))))
                 (_%generate114254%_
                  (lambda (_%rest114315%_ _%args114316%_ _%len114317%_)
                    (let* ((_%$e114319%_ _%rest114315%_)
                           (_%$E114321114332%_
                            (lambda ()
                              (let ((_%$E114322114329%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e114319%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args114316%_ '())))
                                 _%stx114250%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114319%_))
                          (let* ((_%$tgt114323114335%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114319%_)))
                                 (_%$hd114324114338%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114323114335%_)))
                                 (_%$tl114325114341%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114323114335%_)))
                                 (_%clause114345%_ _%$hd114324114338%_)
                                 (_%rest114347%_ _%$tl114325114341%_)
                                 (_%$e114349%_ _%clause114345%_)
                                 (_%$E114351114360%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e114349%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e114349%_))
                                (let* ((_%$tgt114352114363%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e114349%_)))
                                       (_%$hd114353114366%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114352114363%_)))
                                       (_%$tl114354114369%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114352114363%_)))
                                       (_%hd114373%_ _%$hd114353114366%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl114354114369%_))
                                      (let* ((_%$tgt114355114375%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114354114369%_)))
                                             (_%$hd114356114378%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114355114375%_)))
                                             (_%$tl114357114381%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114355114375%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl114357114381%_))
                                                    '())
                                            (let ((_%clen114385%_
                                                   (_%arity114253%_
                                                    _%hd114373%_))
                                                  (_%cmp114386%_
                                                   (if (_%variadic?114252%_
                                                        _%hd114373%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp114386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len114317%_ (cons _%clen114385%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause114345%_))
                                      (cons _%args114316%_ '())))
                          _%stx114250%_)
                         (cons (_%generate114254%_
                                _%rest114347%_
                                _%args114316%_
                                _%len114317%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx114250%_))
                                            (_%$E114351114360%_)))
                                      (_%$E114351114360%_)))
                                (_%$E114351114360%_)))
                          (_%$E114321114332%_))))))
          (let* ((_%$e114256%_ _%stx114250%_)
                 (_%$E114258114290%_
                  (lambda ()
                    (let ((_%$E114259114272%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114256%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114256%_))
                          (let* ((_%$tgt114260114275%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114256%_)))
                                 (_%$hd114261114278%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114260114275%_)))
                                 (_%$tl114262114281%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114260114275%_)))
                                 (_%clauses114285%_ _%$tl114262114281%_))
                            (let ((_%args114287%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx114250%_))
                                  (_%len114288%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx114250%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args114287%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len114288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args114287%_ '()))
                                         _%stx114250%_)
                                        '()))
                            '())
                      (cons (_%generate114254%_
                             _%clauses114285%_
                             _%args114287%_
                             _%len114288%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx114250%_)
                                                 '())))
                               _%stx114250%_)))
                          (_%$E114259114272%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114256%_))
                (let* ((_%$tgt114263114293%_
                        (let () (declare (not safe)) (__AST-e _%$e114256%_)))
                       (_%$hd114264114296%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114263114293%_)))
                       (_%$tl114265114299%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114263114293%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl114265114299%_))
                      (let* ((_%$tgt114266114303%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl114265114299%_)))
                             (_%$hd114267114306%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt114266114303%_)))
                             (_%$tl114268114309%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt114266114303%_)))
                             (_%clause114313%_ _%$hd114267114306%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl114268114309%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause114313%_))
                            (_%$E114258114290%_)))
                      (_%$E114258114290%_)))
                (_%$E114258114290%_))))))
    (define __compile-let-form
      (lambda (_%stx114019%_ _%compile-simple114020%_ _%compile-values114021%_)
        (letrec ((_%simple-bind?114023%_
                  (lambda (_%hd114208%_)
                    (let* ((_%hd114209114219%_ _%hd114208%_)
                           (_%else114212114227%_ (lambda () '#f)))
                      (let ((_%K114215114240%_ (lambda (_%id114238%_) '#t))
                            (_%K114214114232%_ (lambda () '#t)))
                        (let ((_%try-match114211114235%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd114209114219%_ '#f))
                                     (_%K114214114232%_)
                                     (_%else114212114227%_)))))
                          (if (pair? _%hd114209114219%_)
                              (let ((_%tl114217114245%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd114209114219%_)))
                                    (_%hd114216114243%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd114209114219%_))))
                                (if (null? _%tl114217114245%_)
                                    (let ((_%id114248%_ _%hd114216114243%_))
                                      (_%K114215114240%_ _%id114248%_))
                                    (_%try-match114211114235%_)))
                              (_%try-match114211114235%_)))))))
                 (_%car-e114024%_
                  (lambda (_%hd114206%_)
                    (if (pair? _%hd114206%_)
                        (let () (declare (not safe)) (##car _%hd114206%_))
                        _%hd114206%_))))
          (let* ((_%$e114026%_ _%stx114019%_)
                 (_%$E114028114171%_
                  (lambda ()
                    (let ((_%$E114029114051%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114026%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114026%_))
                          (let* ((_%$tgt114030114054%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114026%_)))
                                 (_%$hd114031114057%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114030114054%_)))
                                 (_%$tl114032114060%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114030114054%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114032114060%_))
                                (let* ((_%$tgt114033114064%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114032114060%_)))
                                       (_%$hd114034114067%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114033114064%_)))
                                       (_%$tl114035114070%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114033114064%_)))
                                       (_%hd114074%_ _%$hd114034114067%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl114035114070%_))
                                      (let* ((_%$tgt114036114076%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114035114070%_)))
                                             (_%$hd114037114079%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114036114076%_)))
                                             (_%$tl114038114082%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114036114076%_)))
                                             (_%body114086%_
                                              _%$hd114037114079%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl114038114082%_))
                                                    '())
                                            (let* ((_%hd-ids114126%_
                                                    (map (lambda (_%bind114088%_)
                                                           (let* ((_%$e114090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind114088%_)
                          (_%$E114092114101%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114090%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e114090%_))
                         (let* ((_%$tgt114093114104%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e114090%_)))
                                (_%$hd114094114107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt114093114104%_)))
                                (_%$tl114095114110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt114093114104%_)))
                                (_%ids114114%_ _%$hd114094114107%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl114095114110%_))
                               (let* ((_%$tgt114096114116%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl114095114110%_)))
                                      (_%$hd114097114119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt114096114116%_)))
                                      (_%$tl114098114122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt114096114116%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl114098114122%_))
                                             '())
                                     _%ids114114%_
                                     (_%$E114092114101%_)))
                               (_%$E114092114101%_)))
                         (_%$E114092114101%_))))
                 _%hd114074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs114166%_
                                                    (map (lambda (_%bind114128%_)
                                                           (let* ((_%$e114130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind114128%_)
                          (_%$E114132114141%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114130%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e114130%_))
                         (let* ((_%$tgt114133114144%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e114130%_)))
                                (_%$hd114134114147%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt114133114144%_)))
                                (_%$tl114135114150%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt114133114144%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl114135114150%_))
                               (let* ((_%$tgt114136114154%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl114135114150%_)))
                                      (_%$hd114137114157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt114136114154%_)))
                                      (_%$tl114138114160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt114136114154%_)))
                                      (_%expr114164%_ _%$hd114137114157%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl114138114160%_))
                                             '())
                                     (__compile _%expr114164%_)
                                     (_%$E114132114141%_)))
                               (_%$E114132114141%_)))
                         (_%$E114132114141%_))))
                 _%hd114074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body114168%_
                                                    (__compile
                                                     _%body114086%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?114023%_
                                                     _%hd-ids114126%_))
                                                  (_%compile-simple114020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e114024%_
                                                            _%hd-ids114126%_))
                                                   _%exprs114166%_
                                                   _%body114168%_)
                                                  (_%compile-values114021%_
                                                   _%hd-ids114126%_
                                                   _%exprs114166%_
                                                   _%body114168%_)))
                                            (_%$E114029114051%_)))
                                      (_%$E114029114051%_)))
                                (_%$E114029114051%_)))
                          (_%$E114029114051%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114026%_))
                (let* ((_%$tgt114039114174%_
                        (let () (declare (not safe)) (__AST-e _%$e114026%_)))
                       (_%$hd114040114177%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114039114174%_)))
                       (_%$tl114041114180%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114039114174%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl114041114180%_))
                      (let* ((_%$tgt114042114184%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl114041114180%_)))
                             (_%$hd114043114187%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt114042114184%_)))
                             (_%$tl114044114190%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt114042114184%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd114043114187%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114044114190%_))
                                (let* ((_%$tgt114045114194%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114044114190%_)))
                                       (_%$hd114046114197%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114045114194%_)))
                                       (_%$tl114047114200%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114045114194%_)))
                                       (_%body114204%_ _%$hd114046114197%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114047114200%_))
                                              '())
                                      (__compile _%body114204%_)
                                      (_%$E114028114171%_)))
                                (_%$E114028114171%_))
                            (_%$E114028114171%_)))
                      (_%$E114028114171%_)))
                (_%$E114028114171%_))))))
    (define __compile-let-values%
      (lambda (_%stx113831%_)
        (letrec ((_%compile-simple113833%_
                  (lambda (_%hd-ids114015%_ _%exprs114016%_ _%body114017%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp115134
                                        (map __compile-head-id
                                             _%hd-ids114015%_)))
                                   (declare (not safe))
                                   (##map list __tmp115134 _%exprs114016%_))
                                 (cons _%body114017%_ '())))
                     _%stx113831%_)))
                 (_%compile-values113834%_
                  (lambda (_%hd-ids113930%_ _%exprs113931%_ _%body113932%_)
                    (let _%lp113934%_ ((_%rest113936%_ _%hd-ids113930%_)
                                       (_%exprs113937%_ _%exprs113931%_)
                                       (_%bind113938%_ '())
                                       (_%post113939%_ '()))
                      (let* ((_%rest113940113954%_ _%rest113936%_)
                             (_%else113943113962%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind113938%_)
                                             (cons (_%compile-post113835%_
                                                    _%post113939%_
                                                    _%body113932%_)
                                                   '())))
                                 _%stx113831%_))))
                        (let ((_%K113948113998%_
                               (lambda (_%rest113995%_ _%id113996%_)
                                 (_%lp113934%_
                                  _%rest113995%_
                                  (cdr _%exprs113937%_)
                                  (cons (cons (__compile-head-id _%id113996%_)
                                              (cons (car _%exprs113937%_) '()))
                                        _%bind113938%_)
                                  _%post113939%_)))
                              (_%K113945113980%_
                               (lambda (_%rest113966%_ _%hd113967%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113967%_))
                                     (_%lp113934%_
                                      _%rest113966%_
                                      (cdr _%exprs113937%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd113967%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs113937%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind113938%_)
                                      _%post113939%_)
                                     (if (list? _%hd113967%_)
                                         (let* ((_%len113971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd113967%_)))
                                                (_%tmp113973%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp113934%_
                                            _%rest113966%_
                                            (cdr _%exprs113937%_)
                                            (cons (cons _%tmp113973%_
                                                        (cons (car _%exprs113937%_)
                                                              '()))
                                                  _%bind113938%_)
                                            (cons (cons _%tmp113973%_
                                                        (cons _%len113971%_
                                                              (let ((__tmp115136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id113976%_ _%k113977%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id113976%_))
                                   (cons (__SRC__0 _%id113976%_) _%k113977%_)
                                   '#f)))
                            (__tmp115135
                             (let ()
                               (declare (not safe))
                               (##iota _%len113971%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp115136 _%hd113967%_ __tmp115135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post113939%_)))
                                         (__compile-error__%
                                          _%stx113831%_
                                          _%hd113967%_))))))
                          (if (pair? _%rest113940113954%_)
                              (let ((_%tl113950114003%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113940113954%_)))
                                    (_%hd113949114001%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113940113954%_))))
                                (if (pair? _%hd113949114001%_)
                                    (let ((_%tl113952114008%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113949114001%_)))
                                          (_%hd113951114006%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113949114001%_))))
                                      (if (null? _%tl113952114008%_)
                                          (let ((_%id114011%_
                                                 _%hd113951114006%_)
                                                (_%rest114013%_
                                                 _%tl113950114003%_))
                                            (_%K113948113998%_
                                             _%rest114013%_
                                             _%id114011%_))
                                          (let ((_%hd113988%_
                                                 _%hd113949114001%_)
                                                (_%rest113990%_
                                                 _%tl113950114003%_))
                                            (_%K113945113980%_
                                             _%rest113990%_
                                             _%hd113988%_))))
                                    (let ((_%hd113988%_ _%hd113949114001%_)
                                          (_%rest113990%_ _%tl113950114003%_))
                                      (_%K113945113980%_
                                       _%rest113990%_
                                       _%hd113988%_))))
                              (_%else113943113962%_)))))))
                 (_%compile-post113835%_
                  (lambda (_%post113837%_ _%body113838%_)
                    (let _%lp113840%_ ((_%rest113842%_ _%post113837%_)
                                       (_%check113843%_ '())
                                       (_%bind113844%_ '()))
                      (let* ((_%rest113845113857%_ _%rest113842%_)
                             (_%else113847113865%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp115137
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind113844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body113838%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx113831%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp115137
                                          _%check113843%_)))
                                 _%stx113831%_)))
                             (_%K113849113904%_
                              (lambda (_%rest113868%_
                                       _%init113869%_
                                       _%len113870%_
                                       _%tmp113871%_)
                                (_%lp113840%_
                                 _%rest113868%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113871%_
                                                    (cons _%len113870%_ '())))
                                        _%stx113831%_)
                                       _%check113843%_)
                                 (let ((__tmp115138
                                        (lambda (_%hd113873%_ _%r113874%_)
                                          (let* ((_%hd113875113882%_
                                                  _%hd113873%_)
                                                 (_%E113877113886%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd113875113882%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K113878113892%_
                                                  (lambda (_%k113889%_
                                                           _%id113890%_)
                                                    (cons (cons _%id113890%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp113871%_
                                          (cons _%k113889%_ '())))
                              '()))
                  _%r113874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd113875113882%_)
                                                (let ((_%hd113879113895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd113875113882%_)))
                                                      (_%tl113880113897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd113875113882%_))))
                                                  (let* ((_%id113900%_
                                                          _%hd113879113895%_)
                                                         (_%k113902%_
                                                          _%tl113880113897%_))
                                                    (_%K113878113892%_
                                                     _%k113902%_
                                                     _%id113900%_)))
                                                (_%E113877113886%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp115138
                                    _%bind113844%_
                                    _%init113869%_))))))
                        (if (pair? _%rest113845113857%_)
                            (let ((_%hd113850113907%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest113845113857%_)))
                                  (_%tl113851113909%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest113845113857%_))))
                              (if (pair? _%hd113850113907%_)
                                  (let ((_%hd113852113912%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd113850113907%_)))
                                        (_%tl113853113914%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd113850113907%_))))
                                    (let ((_%tmp113917%_ _%hd113852113912%_))
                                      (if (pair? _%tl113853113914%_)
                                          (let ((_%hd113854113919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl113853113914%_)))
                                                (_%tl113855113921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl113853113914%_))))
                                            (let* ((_%len113924%_
                                                    _%hd113854113919%_)
                                                   (_%init113926%_
                                                    _%tl113855113921%_)
                                                   (_%rest113928%_
                                                    _%tl113851113909%_))
                                              (_%K113849113904%_
                                               _%rest113928%_
                                               _%init113926%_
                                               _%len113924%_
                                               _%tmp113917%_)))
                                          (_%else113847113865%_))))
                                  (_%else113847113865%_)))
                            (_%else113847113865%_)))))))
          (__compile-let-form
           _%stx113831%_
           _%compile-simple113833%_
           _%compile-values113834%_))))
    (define __compile-letrec-values%
      (lambda (_%stx113628%_)
        (letrec ((_%compile-simple113630%_
                  (lambda (_%hd-ids113827%_ _%exprs113828%_ _%body113829%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp115139
                                        (map __compile-head-id
                                             _%hd-ids113827%_)))
                                   (declare (not safe))
                                   (##map list __tmp115139 _%exprs113828%_))
                                 (cons _%body113829%_ '())))
                     _%stx113628%_)))
                 (_%compile-values113631%_
                  (lambda (_%hd-ids113738%_ _%exprs113739%_ _%body113740%_)
                    (let _%lp113742%_ ((_%rest113744%_ _%hd-ids113738%_)
                                       (_%exprs113745%_ _%exprs113739%_)
                                       (_%pre113746%_ '())
                                       (_%bind113747%_ '())
                                       (_%post113748%_ '()))
                      (let* ((_%rest113749113763%_ _%rest113744%_)
                             (_%else113752113771%_
                              (lambda ()
                                (_%compile-inner113632%_
                                 _%pre113746%_
                                 _%bind113747%_
                                 _%post113748%_
                                 _%body113740%_))))
                        (let ((_%K113757113810%_
                               (lambda (_%rest113807%_ _%id113808%_)
                                 (_%lp113742%_
                                  _%rest113807%_
                                  (cdr _%exprs113745%_)
                                  _%pre113746%_
                                  (cons (cons (__compile-head-id _%id113808%_)
                                              (cons (car _%exprs113745%_) '()))
                                        _%bind113747%_)
                                  _%post113748%_)))
                              (_%K113754113792%_
                               (lambda (_%rest113775%_ _%hd113776%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113776%_))
                                     (_%lp113742%_
                                      _%rest113775%_
                                      (cdr _%exprs113745%_)
                                      _%pre113746%_
                                      (cons (cons (__compile-head-id
                                                   _%hd113776%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs113745%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind113747%_)
                                      _%post113748%_)
                                     (if (list? _%hd113776%_)
                                         (let* ((_%len113780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd113776%_)))
                                                (_%tmp113782%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp113742%_
                                            _%rest113775%_
                                            (cdr _%exprs113745%_)
                                            (let ((__tmp115140
                                                   (lambda (_%id113785%_
                                                            _%r113786%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id113785%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id113785%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r113786%_)
                 _%r113786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp115140
                                               _%pre113746%_
                                               _%hd113776%_))
                                            (cons (cons _%tmp113782%_
                                                        (cons (car _%exprs113745%_)
                                                              '()))
                                                  _%bind113747%_)
                                            (cons (cons _%tmp113782%_
                                                        (cons _%len113780%_
                                                              (let ((__tmp115142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id113788%_ _%k113789%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id113788%_))
                                   (cons (__SRC__0 _%id113788%_) _%k113789%_)
                                   '#f)))
                            (__tmp115141
                             (let ()
                               (declare (not safe))
                               (##iota _%len113780%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp115142 _%hd113776%_ __tmp115141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post113748%_)))
                                         (__compile-error__%
                                          _%stx113628%_
                                          _%hd113776%_))))))
                          (if (pair? _%rest113749113763%_)
                              (let ((_%tl113759113815%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113749113763%_)))
                                    (_%hd113758113813%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113749113763%_))))
                                (if (pair? _%hd113758113813%_)
                                    (let ((_%tl113761113820%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113758113813%_)))
                                          (_%hd113760113818%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113758113813%_))))
                                      (if (null? _%tl113761113820%_)
                                          (let ((_%id113823%_
                                                 _%hd113760113818%_)
                                                (_%rest113825%_
                                                 _%tl113759113815%_))
                                            (_%K113757113810%_
                                             _%rest113825%_
                                             _%id113823%_))
                                          (let ((_%hd113800%_
                                                 _%hd113758113813%_)
                                                (_%rest113802%_
                                                 _%tl113759113815%_))
                                            (_%K113754113792%_
                                             _%rest113802%_
                                             _%hd113800%_))))
                                    (let ((_%hd113800%_ _%hd113758113813%_)
                                          (_%rest113802%_ _%tl113759113815%_))
                                      (_%K113754113792%_
                                       _%rest113802%_
                                       _%hd113800%_))))
                              (_%else113752113771%_)))))))
                 (_%compile-inner113632%_
                  (lambda (_%pre113733%_
                           _%bind113734%_
                           _%post113735%_
                           _%body113736%_)
                    (if (null? _%pre113733%_)
                        (_%compile-bind113633%_
                         _%bind113734%_
                         _%post113735%_
                         _%body113736%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre113733%_)
                                     (cons (_%compile-bind113633%_
                                            _%bind113734%_
                                            _%post113735%_
                                            _%body113736%_)
                                           '())))
                         _%stx113628%_))))
                 (_%compile-bind113633%_
                  (lambda (_%bind113729%_ _%post113730%_ _%body113731%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind113729%_)
                                 (cons (_%compile-post113634%_
                                        _%post113730%_
                                        _%body113731%_)
                                       '())))
                     _%stx113628%_)))
                 (_%compile-post113634%_
                  (lambda (_%post113636%_ _%body113637%_)
                    (let _%lp113639%_ ((_%rest113641%_ _%post113636%_)
                                       (_%check113642%_ '())
                                       (_%bind113643%_ '()))
                      (let* ((_%rest113644113656%_ _%rest113641%_)
                             (_%else113646113664%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp115143
                                              (let ((__tmp115144
                                                     (cons _%body113637%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp115144
                                                 _%bind113643%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp115143
                                          _%check113642%_)))
                                 _%stx113628%_)))
                             (_%K113648113703%_
                              (lambda (_%rest113667%_
                                       _%init113668%_
                                       _%len113669%_
                                       _%tmp113670%_)
                                (_%lp113639%_
                                 _%rest113667%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113670%_
                                                    (cons _%len113669%_ '())))
                                        _%stx113628%_)
                                       _%check113642%_)
                                 (let ((__tmp115145
                                        (lambda (_%hd113672%_ _%r113673%_)
                                          (let* ((_%hd113674113681%_
                                                  _%hd113672%_)
                                                 (_%E113676113685%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd113674113681%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K113677113691%_
                                                  (lambda (_%k113688%_
                                                           _%id113689%_)
                                                    (cons (cons 'set!
                                                                (cons _%id113689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp113670%_
                                                (cons _%k113688%_ '())))
                                    '())))
                  _%r113673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd113674113681%_)
                                                (let ((_%hd113678113694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd113674113681%_)))
                                                      (_%tl113679113696%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd113674113681%_))))
                                                  (let* ((_%id113699%_
                                                          _%hd113678113694%_)
                                                         (_%k113701%_
                                                          _%tl113679113696%_))
                                                    (_%K113677113691%_
                                                     _%k113701%_
                                                     _%id113699%_)))
                                                (_%E113676113685%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp115145
                                    _%bind113643%_
                                    _%init113668%_))))))
                        (if (pair? _%rest113644113656%_)
                            (let ((_%hd113649113706%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest113644113656%_)))
                                  (_%tl113650113708%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest113644113656%_))))
                              (if (pair? _%hd113649113706%_)
                                  (let ((_%hd113651113711%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd113649113706%_)))
                                        (_%tl113652113713%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd113649113706%_))))
                                    (let ((_%tmp113716%_ _%hd113651113711%_))
                                      (if (pair? _%tl113652113713%_)
                                          (let ((_%hd113653113718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl113652113713%_)))
                                                (_%tl113654113720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl113652113713%_))))
                                            (let* ((_%len113723%_
                                                    _%hd113653113718%_)
                                                   (_%init113725%_
                                                    _%tl113654113720%_)
                                                   (_%rest113727%_
                                                    _%tl113650113708%_))
                                              (_%K113648113703%_
                                               _%rest113727%_
                                               _%init113725%_
                                               _%len113723%_
                                               _%tmp113716%_)))
                                          (_%else113646113664%_))))
                                  (_%else113646113664%_)))
                            (_%else113646113664%_)))))))
          (__compile-let-form
           _%stx113628%_
           _%compile-simple113630%_
           _%compile-values113631%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx113379%_)
        (letrec ((_%compile-simple113381%_
                  (lambda (_%hd-ids113624%_ _%exprs113625%_ _%body113626%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp115146
                                        (map __compile-head-id
                                             _%hd-ids113624%_)))
                                   (declare (not safe))
                                   (##map list __tmp115146 _%exprs113625%_))
                                 (cons _%body113626%_ '())))
                     _%stx113379%_)))
                 (_%compile-values113382%_
                  (lambda (_%hd-ids113531%_ _%exprs113532%_ _%body113533%_)
                    (let _%lp113535%_ ((_%rest113537%_ _%hd-ids113531%_)
                                       (_%exprs113538%_ _%exprs113532%_)
                                       (_%bind113539%_ '())
                                       (_%post113540%_ '()))
                      (let* ((_%rest113541113555%_ _%rest113537%_)
                             (_%else113544113563%_
                              (lambda ()
                                (_%compile-bind113383%_
                                 _%bind113539%_
                                 _%post113540%_
                                 _%body113533%_))))
                        (let ((_%K113549113607%_
                               (lambda (_%rest113602%_ _%hd113603%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113603%_))
                                     (let ((_%id113605%_
                                            (__SRC__0 _%hd113603%_)))
                                       (_%lp113535%_
                                        _%rest113602%_
                                        (cdr _%exprs113538%_)
                                        (cons (cons _%id113605%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind113539%_)
                                        (cons (cons _%id113605%_
                                                    (cons (car _%exprs113538%_)
                                                          '()))
                                              _%post113540%_)))
                                     (_%lp113535%_
                                      _%rest113602%_
                                      (cdr _%exprs113538%_)
                                      _%bind113539%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs113538%_)
                                                        '()))
                                            _%post113540%_)))))
                              (_%K113546113587%_
                               (lambda (_%rest113567%_ _%hd113568%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113568%_))
                                     (let ((_%id113571%_
                                            (__SRC__0 _%hd113568%_)))
                                       (_%lp113535%_
                                        _%rest113567%_
                                        (cdr _%exprs113538%_)
                                        (cons (cons _%id113571%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind113539%_)
                                        (cons (cons _%id113571%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs113538%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post113540%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd113568%_))
                                         (if (list? _%hd113568%_)
                                             (let* ((_%len113575%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd113568%_)))
                                                    (_%tmp113577%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp113535%_
                                                _%rest113567%_
                                                (cdr _%exprs113538%_)
                                                (let ((__tmp115147
                                                       (lambda (_%id113580%_
                                                                _%r113581%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id113580%_))
                     (cons (cons (__SRC__0 _%id113580%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r113581%_)
                     _%r113581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp115147
                                                   _%bind113539%_
                                                   _%hd113568%_))
                                                (cons (cons _%tmp113577%_
                                                            (cons (car _%exprs113538%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len113575%_
                                (let ((__tmp115149
                                       (lambda (_%id113583%_ _%k113584%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id113583%_))
                                             (cons (__SRC__0 _%id113583%_)
                                                   _%k113584%_)
                                             '#f)))
                                      (__tmp115148
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len113575%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp115149
                                   _%hd113568%_
                                   __tmp115148)))))
              _%post113540%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx113379%_
                                              _%hd113568%_))
                                         (_%lp113535%_
                                          _%rest113567%_
                                          (cdr _%exprs113538%_)
                                          _%bind113539%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs113538%_)
                                                            '()))
                                                _%post113540%_)))))))
                          (if (pair? _%rest113541113555%_)
                              (let ((_%tl113551113612%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113541113555%_)))
                                    (_%hd113550113610%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113541113555%_))))
                                (if (pair? _%hd113550113610%_)
                                    (let ((_%tl113553113617%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113550113610%_)))
                                          (_%hd113552113615%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113550113610%_))))
                                      (if (null? _%tl113553113617%_)
                                          (let ((_%hd113620%_
                                                 _%hd113552113615%_)
                                                (_%rest113622%_
                                                 _%tl113551113612%_))
                                            (_%K113549113607%_
                                             _%rest113622%_
                                             _%hd113620%_))
                                          (let ((_%hd113595%_
                                                 _%hd113550113610%_)
                                                (_%rest113597%_
                                                 _%tl113551113612%_))
                                            (_%K113546113587%_
                                             _%rest113597%_
                                             _%hd113595%_))))
                                    (let ((_%hd113595%_ _%hd113550113610%_)
                                          (_%rest113597%_ _%tl113551113612%_))
                                      (_%K113546113587%_
                                       _%rest113597%_
                                       _%hd113595%_))))
                              (_%else113544113563%_)))))))
                 (_%compile-bind113383%_
                  (lambda (_%bind113527%_ _%post113528%_ _%body113529%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind113527%_)
                                 (cons (_%compile-post113384%_
                                        _%post113528%_
                                        _%body113529%_)
                                       '())))
                     _%stx113379%_)))
                 (_%compile-post113384%_
                  (lambda (_%post113386%_ _%body113387%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp115150
                                  (let ((__tmp115152
                                         (lambda (_%hd113389%_ _%r113390%_)
                                           (let* ((_%hd113391113414%_
                                                   _%hd113389%_)
                                                  (_%E113395113418%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd113391113414%_
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
                                             (let ((_%K113408113512%_
                                                    (lambda (_%expr113510%_)
                                                      (cons _%expr113510%_
                                                            _%r113390%_)))
                                                   (_%K113403113490%_
                                                    (lambda (_%expr113487%_
                                                             _%id113488%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id113488%_ (cons _%expr113487%_ '())))
                     _%stx113379%_)
                    _%r113390%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K113396113457%_
                                                    (lambda (_%init113422%_
                                                             _%len113423%_
                                                             _%expr113424%_
                                                             _%tmp113425%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp113425%_
                                             (cons _%expr113424%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113425%_
                                                    (cons _%len113423%_ '())))
                                        _%stx113379%_)
                                       (let ((__tmp115153
                                              (map (lambda (_%hd113427%_)
                                                     (let* ((_%hd113428113435%_
                                                             _%hd113427%_)
                                                            (_%E113430113439%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd113428113435%_
                                '([id . k])))
                       '#!void))
                    (_%K113431113445%_
                     (lambda (_%k113442%_ _%id113443%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id113443%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp113425%_
                                                      (cons _%k113442%_ '())))
                                          '())))
                        _%stx113379%_))))
               (if (pair? _%hd113428113435%_)
                   (let ((_%hd113432113448%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd113428113435%_)))
                         (_%tl113433113450%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd113428113435%_))))
                     (let* ((_%id113453%_ _%hd113432113448%_)
                            (_%k113455%_ _%tl113433113450%_))
                       (_%K113431113445%_ _%k113455%_ _%id113453%_)))
                   (_%E113430113439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init113422%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp115153)))))
                     _%stx113379%_)
                    _%r113390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match115006115007%_
                                                       (lambda (_%hd113397113460%_
                                                                _%tl113398113462%_
                                                                _%hd113399113467%_
                                                                _%tl113400113469%_)
                                                         (let ((_%tmp113465%_
                                                                _%hd113397113460%_)
                                                               (_%expr113472%_
                                                                _%hd113399113467%_))
                                                           (_%E113395113418%_))))
                                                      (_%__match115000115001%_
                                                       (lambda (_%hd113397113460%_
                                                                _%tl113398113462%_)
                                                         (let ((_%tmp113465%_
                                                                _%hd113397113460%_))
                                                           (_%E113395113418%_)))))
                                                 (if (pair? _%hd113391113414%_)
                                                     (let ((_%tl113410113517%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd113391113414%_)))
                                                           (_%hd113409113515%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd113391113414%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd113409113515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl113410113517%_)
                       (let ((_%tl113412113522%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl113410113517%_)))
                             (_%hd113411113520%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl113410113517%_))))
                         (if (null? _%tl113412113522%_)
                             (let ((_%expr113525%_ _%hd113411113520%_))
                               (_%K113408113512%_ _%expr113525%_))
                             (if (pair? _%tl113412113522%_)
                                 (let ((_%tl113402113476%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl113412113522%_)))
                                       (_%hd113401113474%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl113412113522%_))))
                                   (let ((_%tmp113465%_ _%hd113409113515%_)
                                         (_%expr113472%_ _%hd113411113520%_)
                                         (_%len113479%_ _%hd113401113474%_)
                                         (_%init113481%_ _%tl113402113476%_))
                                     (_%K113396113457%_
                                      _%init113481%_
                                      _%len113479%_
                                      _%expr113472%_
                                      _%tmp113465%_)))
                                 (_%__match115006115007%_
                                  _%hd113409113515%_
                                  _%tl113410113517%_
                                  _%hd113411113520%_
                                  _%tl113412113522%_))))
                       (_%__match115000115001%_
                        _%hd113409113515%_
                        _%tl113410113517%_))
                   (if (pair? _%tl113410113517%_)
                       (let ((_%tl113407113502%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl113410113517%_)))
                             (_%hd113406113500%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl113410113517%_))))
                         (if (null? _%tl113407113502%_)
                             (let ((_%id113498%_ _%hd113409113515%_)
                                   (_%expr113505%_ _%hd113406113500%_))
                               (_%K113403113490%_ _%expr113505%_ _%id113498%_))
                             (if (pair? _%tl113407113502%_)
                                 (let ((_%tl113402113476%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl113407113502%_)))
                                       (_%hd113401113474%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl113407113502%_))))
                                   (let ((_%tmp113465%_ _%hd113409113515%_)
                                         (_%expr113472%_ _%hd113406113500%_)
                                         (_%len113479%_ _%hd113401113474%_)
                                         (_%init113481%_ _%tl113402113476%_))
                                     (_%K113396113457%_
                                      _%init113481%_
                                      _%len113479%_
                                      _%expr113472%_
                                      _%tmp113465%_)))
                                 (_%__match115006115007%_
                                  _%hd113409113515%_
                                  _%tl113410113517%_
                                  _%hd113406113500%_
                                  _%tl113407113502%_))))
                       (_%__match115000115001%_
                        _%hd113409113515%_
                        _%tl113410113517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E113395113418%_)))))))
                                        (__tmp115151 (list _%body113387%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp115152
                                     __tmp115151
                                     _%post113386%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp115150)))
                     _%stx113379%_))))
          (__compile-let-form
           _%stx113379%_
           _%compile-simple113381%_
           _%compile-values113382%_))))
    (define __compile-call%
      (lambda (_%stx113339%_)
        (let* ((_%$e113341%_ _%stx113339%_)
               (_%$E113343113352%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113341%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113341%_))
              (let* ((_%$tgt113344113355%_
                      (let () (declare (not safe)) (__AST-e _%$e113341%_)))
                     (_%$hd113345113358%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113344113355%_)))
                     (_%$tl113346113361%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113344113355%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113346113361%_))
                    (let* ((_%$tgt113347113365%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113346113361%_)))
                           (_%$hd113348113368%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113347113365%_)))
                           (_%$tl113349113371%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113347113365%_)))
                           (_%rator113375%_ _%$hd113348113368%_)
                           (_%rands113377%_ _%$tl113349113371%_))
                      (__SRC__%
                       (cons (__compile _%rator113375%_)
                             (map __compile _%rands113377%_))
                       _%stx113339%_))
                    (_%$E113343113352%_)))
              (_%$E113343113352%_)))))
    (define __compile-ref%
      (lambda (_%stx113301%_)
        (let* ((_%$e113303%_ _%stx113301%_)
               (_%$E113305113314%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113303%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113303%_))
              (let* ((_%$tgt113306113317%_
                      (let () (declare (not safe)) (__AST-e _%$e113303%_)))
                     (_%$hd113307113320%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113306113317%_)))
                     (_%$tl113308113323%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113306113317%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113308113323%_))
                    (let* ((_%$tgt113309113327%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113308113323%_)))
                           (_%$hd113310113330%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113309113327%_)))
                           (_%$tl113311113333%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113309113327%_)))
                           (_%id113337%_ _%$hd113310113330%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113311113333%_))
                                  '())
                          (__SRC__% _%id113337%_ _%stx113301%_)
                          (_%$E113305113314%_)))
                    (_%$E113305113314%_)))
              (_%$E113305113314%_)))))
    (define __compile-setq%
      (lambda (_%stx113248%_)
        (let* ((_%$e113250%_ _%stx113248%_)
               (_%$E113252113264%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113250%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113250%_))
              (let* ((_%$tgt113253113267%_
                      (let () (declare (not safe)) (__AST-e _%$e113250%_)))
                     (_%$hd113254113270%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113253113267%_)))
                     (_%$tl113255113273%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113253113267%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113255113273%_))
                    (let* ((_%$tgt113256113277%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113255113273%_)))
                           (_%$hd113257113280%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113256113277%_)))
                           (_%$tl113258113283%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113256113277%_)))
                           (_%id113287%_ _%$hd113257113280%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113258113283%_))
                          (let* ((_%$tgt113259113289%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113258113283%_)))
                                 (_%$hd113260113292%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113259113289%_)))
                                 (_%$tl113261113295%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113259113289%_)))
                                 (_%expr113299%_ _%$hd113260113292%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113261113295%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id113287%_
                                              _%stx113248%_)
                                             (cons (__compile _%expr113299%_)
                                                   '())))
                                 _%stx113248%_)
                                (_%$E113252113264%_)))
                          (_%$E113252113264%_)))
                    (_%$E113252113264%_)))
              (_%$E113252113264%_)))))
    (define __compile-if%
      (lambda (_%stx113180%_)
        (let* ((_%$e113182%_ _%stx113180%_)
               (_%$E113184113199%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113182%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113182%_))
              (let* ((_%$tgt113185113202%_
                      (let () (declare (not safe)) (__AST-e _%$e113182%_)))
                     (_%$hd113186113205%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113185113202%_)))
                     (_%$tl113187113208%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113185113202%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113187113208%_))
                    (let* ((_%$tgt113188113212%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113187113208%_)))
                           (_%$hd113189113215%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113188113212%_)))
                           (_%$tl113190113218%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113188113212%_)))
                           (_%p113222%_ _%$hd113189113215%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113190113218%_))
                          (let* ((_%$tgt113191113224%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113190113218%_)))
                                 (_%$hd113192113227%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113191113224%_)))
                                 (_%$tl113193113230%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113191113224%_)))
                                 (_%t113234%_ _%$hd113192113227%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl113193113230%_))
                                (let* ((_%$tgt113194113236%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113193113230%_)))
                                       (_%$hd113195113239%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt113194113236%_)))
                                       (_%$tl113196113242%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt113194113236%_)))
                                       (_%f113246%_ _%$hd113195113239%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl113196113242%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p113222%_)
                                                   (cons (__compile
                                                          _%t113234%_)
                                                         (cons (__compile
                                                                _%f113246%_)
                                                               '()))))
                                       _%stx113180%_)
                                      (_%$E113184113199%_)))
                                (_%$E113184113199%_)))
                          (_%$E113184113199%_)))
                    (_%$E113184113199%_)))
              (_%$E113184113199%_)))))
    (define __compile-quote%
      (lambda (_%stx113142%_)
        (let* ((_%$e113144%_ _%stx113142%_)
               (_%$E113146113155%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113144%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113144%_))
              (let* ((_%$tgt113147113158%_
                      (let () (declare (not safe)) (__AST-e _%$e113144%_)))
                     (_%$hd113148113161%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113147113158%_)))
                     (_%$tl113149113164%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113147113158%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113149113164%_))
                    (let* ((_%$tgt113150113168%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113149113164%_)))
                           (_%$hd113151113171%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113150113168%_)))
                           (_%$tl113152113174%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113150113168%_)))
                           (_%e113178%_ _%$hd113151113171%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113152113174%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e113178%_))
                                       '()))
                           _%stx113142%_)
                          (_%$E113146113155%_)))
                    (_%$E113146113155%_)))
              (_%$E113146113155%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx113104%_)
        (let* ((_%$e113106%_ _%stx113104%_)
               (_%$E113108113117%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113106%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113106%_))
              (let* ((_%$tgt113109113120%_
                      (let () (declare (not safe)) (__AST-e _%$e113106%_)))
                     (_%$hd113110113123%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113109113120%_)))
                     (_%$tl113111113126%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113109113120%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113111113126%_))
                    (let* ((_%$tgt113112113130%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113111113126%_)))
                           (_%$hd113113113133%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113112113130%_)))
                           (_%$tl113114113136%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113112113130%_)))
                           (_%e113140%_ _%$hd113113113133%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113114113136%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e113140%_ '()))
                           _%stx113104%_)
                          (_%$E113108113117%_)))
                    (_%$E113108113117%_)))
              (_%$E113108113117%_)))))
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
