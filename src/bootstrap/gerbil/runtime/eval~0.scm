(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1769382894)
  (begin
    (define __syntax::t
      (let ((__tmp127227 (list)) (__tmp127226 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp127227
         '(e id)
         __tmp127226
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args127031%_
        (apply make-instance __syntax::t _%$args127031%_)))
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
      (let ((__tmp127229 (list __syntax::t))
            (__tmp127228 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp127229
         '()
         __tmp127228
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args127028%_
        (apply make-instance __core-form::t _%$args127028%_)))
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
      (let ((__tmp127231 (list __core-form::t))
            (__tmp127230 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp127231
         '()
         __tmp127230
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args127025%_
        (apply make-instance __core-expression::t _%$args127025%_)))
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
      (let ((__tmp127233 (list __core-form::t))
            (__tmp127232 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp127233
         '()
         __tmp127232
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args127022%_
        (apply make-instance __core-special-form::t _%$args127022%_)))
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
      (lambda (_%id127020%_)
        (let ((__tmp127234
               (let () (declare (not safe)) (__AST-e _%id127020%_))))
          (declare (not safe))
          (__hash-get __core __tmp127234))))
    (define __core-bound-id?__%
      (lambda (_%id127003%_ _%is?127004%_)
        (let ((_%$e127006%_ (__core-resolve _%id127003%_)))
          (if _%$e127006%_ (_%is?127004%_ _%$e127006%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id127013%_)
        (let ((_%is?127015%_ true))
          (__core-bound-id?__% _%id127013%_ _%is?127015%_))))
    (define __core-bound-id?
      (lambda _g127235_
        (let ((_g127236_ (let () (declare (not safe)) (##length _g127235_))))
          (cond ((let () (declare (not safe)) (##fx= _g127236_ 1))
                 (apply __core-bound-id?__0 _g127235_))
                ((let () (declare (not safe)) (##fx= _g127236_ 2))
                 (apply __core-bound-id?__% _g127235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g127235_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id126986%_ _%e126987%_ _%make126988%_)
        (let ((__tmp127237
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e126987%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e126987%_
                   (_%make126988%_ _%e126987%_ _%id126986%_))))
          (declare (not safe))
          (__hash-put! __core _%id126986%_ __tmp127237))))
    (define __core-bind-syntax!__0
      (lambda (_%id126993%_ _%e126994%_)
        (let ((_%make126996%_ make-__syntax))
          (__core-bind-syntax!__% _%id126993%_ _%e126994%_ _%make126996%_))))
    (define __core-bind-syntax!
      (lambda _g127238_
        (let ((_g127239_ (let () (declare (not safe)) (##length _g127238_))))
          (cond ((let () (declare (not safe)) (##fx= _g127239_ 2))
                 (apply __core-bind-syntax!__0 _g127238_))
                ((let () (declare (not safe)) (##fx= _g127239_ 3))
                 (apply __core-bind-syntax!__% _g127238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g127238_))))))
    (define __SRC__%
      (lambda (_%e126966%_ _%src-stx126967%_)
        (if (or (pair? _%e126966%_) (symbol? _%e126966%_))
            (let ((__tmp127240
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx126967%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx126967%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e126966%_ __tmp127240))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e126966%_ 'gerbil#AST::t))
                (let ((__tmp127242
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e126966%_ '1 '#f '#f)))
                      (__tmp127241
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e126966%_)))))
                  (declare (not safe))
                  (##make-source __tmp127242 __tmp127241))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e126966%_))))))
    (define __SRC__0
      (lambda (_%e126978%_)
        (let ((_%src-stx126980%_ '#f))
          (__SRC__% _%e126978%_ _%src-stx126980%_))))
    (define __SRC
      (lambda _g127243_
        (let ((_g127244_ (let () (declare (not safe)) (##length _g127243_))))
          (cond ((let () (declare (not safe)) (##fx= _g127244_ 1))
                 (apply __SRC__0 _g127243_))
                ((let () (declare (not safe)) (##fx= _g127244_ 2))
                 (apply __SRC__% _g127243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g127243_))))))
    (define __locat
      (lambda (_%loc126963%_)
        (if (let () (declare (not safe)) (##locat? _%loc126963%_))
            _%loc126963%_
            '#f)))
    (define __check-values
      (lambda (_%obj126958%_ _%k126959%_)
        (let ((_%count126961%_
               (if (let () (declare (not safe)) (##values? _%obj126958%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj126958%_))
                   '1)))
          (if (fx= _%count126961%_ _%k126959%_)
              '#!void
              (let ((__tmp127246
                     (if (fx< _%count126961%_ _%k126959%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp127245
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj126958%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj126958%_))
                         _%obj126958%_)))
                (declare (not safe))
                (error __tmp127246 __tmp127245 _%k126959%_))))))
    (define __compile
      (lambda (_%stx126927%_)
        (let* ((_%$e126929%_ _%stx126927%_)
               (_%$E126931126937%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126929%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126929%_))
              (let* ((_%$tgt126932126940%_
                      (let () (declare (not safe)) (__AST-e _%$e126929%_)))
                     (_%$hd126933126943%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126932126940%_)))
                     (_%$tl126934126946%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126932126940%_)))
                     (_%form126950%_ _%$hd126933126943%_)
                     (_%$e126952%_ (__core-resolve _%form126950%_)))
                (if _%$e126952%_
                    ((lambda (_%bind126955%_)
                       ((##structure-ref _%bind126955%_ '1 __syntax::t '#f)
                        _%stx126927%_))
                     _%$e126952%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx126927%_
                       _%form126950%_))))
              (_%$E126931126937%_)))))
    (define __compile-error__%
      (lambda (_%stx126914%_ _%detail126915%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx126914%_
           _%detail126915%_))))
    (define __compile-error__0
      (lambda (_%stx126920%_)
        (let ((_%detail126922%_ '#f))
          (__compile-error__% _%stx126920%_ _%detail126922%_))))
    (define __compile-error
      (lambda _g127247_
        (let ((_g127248_ (let () (declare (not safe)) (##length _g127247_))))
          (cond ((let () (declare (not safe)) (##fx= _g127248_ 1))
                 (apply __compile-error__0 _g127247_))
                ((let () (declare (not safe)) (##fx= _g127248_ 2))
                 (apply __compile-error__% _g127247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g127247_))))))
    (define __compile-ignore%
      (lambda (_%stx126911%_) (__SRC__% ''#!void _%stx126911%_)))
    (define __compile-begin%
      (lambda (_%stx126886%_)
        (let* ((_%$e126888%_ _%stx126886%_)
               (_%$E126890126896%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126888%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126888%_))
              (let* ((_%$tgt126891126899%_
                      (let () (declare (not safe)) (__AST-e _%$e126888%_)))
                     (_%$hd126892126902%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126891126899%_)))
                     (_%$tl126893126905%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126891126899%_)))
                     (_%body126909%_ _%$tl126893126905%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body126909%_))
                 _%stx126886%_))
              (_%$E126890126896%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx126861%_)
        (let* ((_%$e126863%_ _%stx126861%_)
               (_%$E126865126871%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126863%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126863%_))
              (let* ((_%$tgt126866126874%_
                      (let () (declare (not safe)) (__AST-e _%$e126863%_)))
                     (_%$hd126867126877%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126866126874%_)))
                     (_%$tl126868126880%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126866126874%_)))
                     (_%body126884%_ _%$tl126868126880%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body126884%_)))
                 _%stx126861%_))
              (_%$E126865126871%_)))))
    (define __compile-import%
      (lambda (_%stx126836%_)
        (let* ((_%$e126838%_ _%stx126836%_)
               (_%$E126840126846%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126838%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126838%_))
              (let* ((_%$tgt126841126849%_
                      (let () (declare (not safe)) (__AST-e _%$e126838%_)))
                     (_%$hd126842126852%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126841126849%_)))
                     (_%$tl126843126855%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126841126849%_)))
                     (_%body126859%_ _%$tl126843126855%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body126859%_ '())) '()))
                 _%stx126836%_))
              (_%$E126840126846%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx126783%_)
        (let* ((_%$e126785%_ _%stx126783%_)
               (_%$E126787126799%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126785%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126785%_))
              (let* ((_%$tgt126788126802%_
                      (let () (declare (not safe)) (__AST-e _%$e126785%_)))
                     (_%$hd126789126805%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126788126802%_)))
                     (_%$tl126790126808%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126788126802%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126790126808%_))
                    (let* ((_%$tgt126791126812%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126790126808%_)))
                           (_%$hd126792126815%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126791126812%_)))
                           (_%$tl126793126818%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126791126812%_)))
                           (_%ann126822%_ _%$hd126792126815%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126793126818%_))
                          (let* ((_%$tgt126794126824%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126793126818%_)))
                                 (_%$hd126795126827%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126794126824%_)))
                                 (_%$tl126796126830%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126794126824%_)))
                                 (_%expr126834%_ _%$hd126795126827%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126796126830%_))
                                        '())
                                (__compile _%expr126834%_)
                                (_%$E126787126799%_)))
                          (_%$E126787126799%_)))
                    (_%$E126787126799%_)))
              (_%$E126787126799%_)))))
    (define __compile-define-values%
      (lambda (_%stx126674%_)
        (let* ((_%$e126676%_ _%stx126674%_)
               (_%$E126678126690%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126676%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126676%_))
              (let* ((_%$tgt126679126693%_
                      (let () (declare (not safe)) (__AST-e _%$e126676%_)))
                     (_%$hd126680126696%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126679126693%_)))
                     (_%$tl126681126699%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126679126693%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126681126699%_))
                    (let* ((_%$tgt126682126703%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126681126699%_)))
                           (_%$hd126683126706%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126682126703%_)))
                           (_%$tl126684126709%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126682126703%_)))
                           (_%hd126713%_ _%$hd126683126706%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126684126709%_))
                          (let* ((_%$tgt126685126715%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126684126709%_)))
                                 (_%$hd126686126718%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126685126715%_)))
                                 (_%$tl126687126721%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126685126715%_)))
                                 (_%expr126725%_ _%$hd126686126718%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126687126721%_))
                                        '())
                                (let* ((_%$e126727%_ _%hd126713%_)
                                       (_%$E126729126770%_
                                        (lambda ()
                                          (let ((_%$E126730126755%_
                                                 (lambda ()
                                                   (let* ((_%$E126731126742%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e126727%_))))
                  (_%ids126745%_ _%hd126713%_)
                  (_%len126747%_ (length _%ids126745%_))
                  (_%tmp126749%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp126749%_
                                       (cons (__compile _%expr126725%_) '())))
                           _%stx126674%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp126749%_
                                             (cons _%len126747%_ '())))
                                 _%stx126674%_)
                                (let ((__tmp127249
                                       (let ((__tmp127251
                                              (lambda (_%id126752%_
                                                       _%k126753%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id126752%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id126752%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp126749%_
                                           (cons _%k126753%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx126674%_)
                                                    '#f)))
                                             (__tmp127250
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len126747%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp127251
                                          _%ids126745%_
                                          __tmp127250))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp127249)))))
              _%stx126674%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e126727%_))
                                                (let* ((_%$tgt126732126758%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e126727%_)))
                                                       (_%$hd126733126761%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt126732126758%_)))
                                                       (_%$tl126734126764%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt126732126758%_)))
                                                       (_%id126768%_
                                                        _%$hd126733126761%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl126734126764%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id126768%_)
                           (cons (__compile _%expr126725%_) '())))
               _%stx126674%_)
              (_%$E126730126755%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E126730126755%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e126727%_))
                                      (let* ((_%$tgt126735126773%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e126727%_)))
                                             (_%$hd126736126776%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126735126773%_)))
                                             (_%$tl126737126779%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126735126773%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd126736126776%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl126737126779%_))
                                                        '())
                                                (__compile _%expr126725%_)
                                                (_%$E126729126770%_))
                                            (_%$E126729126770%_)))
                                      (_%$E126729126770%_)))
                                (_%$E126678126690%_)))
                          (_%$E126678126690%_)))
                    (_%$E126678126690%_)))
              (_%$E126678126690%_)))))
    (define __compile-head-id
      (lambda (_%e126672%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e126672%_))
             _%e126672%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd126629%_)
        (let _%recur126631%_ ((_%rest126633%_ _%hd126629%_))
          (let* ((_%$e126635%_ _%rest126633%_)
                 (_%$E126637126655%_
                  (lambda ()
                    (let ((_%$E126638126652%_
                           (lambda ()
                             (let* ((_%$E126639126647%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e126635%_))))
                                    (_%tail126650%_ _%$e126635%_))
                               (__compile-head-id _%tail126650%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126635%_))
                                  '())
                          '()
                          (_%$E126638126652%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e126635%_))
                (let* ((_%$tgt126640126658%_
                        (let () (declare (not safe)) (__AST-e _%$e126635%_)))
                       (_%$hd126641126661%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt126640126658%_)))
                       (_%$tl126642126664%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt126640126658%_)))
                       (_%hd126668%_ _%$hd126641126661%_)
                       (_%rest126670%_ _%$tl126642126664%_))
                  (cons (__compile-head-id _%hd126668%_)
                        (_%recur126631%_ _%rest126670%_)))
                (_%$E126637126655%_))))))
    (define __compile-lambda%
      (lambda (_%stx126576%_)
        (let* ((_%$e126578%_ _%stx126576%_)
               (_%$E126580126592%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126578%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126578%_))
              (let* ((_%$tgt126581126595%_
                      (let () (declare (not safe)) (__AST-e _%$e126578%_)))
                     (_%$hd126582126598%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126581126595%_)))
                     (_%$tl126583126601%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126581126595%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126583126601%_))
                    (let* ((_%$tgt126584126605%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126583126601%_)))
                           (_%$hd126585126608%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126584126605%_)))
                           (_%$tl126586126611%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126584126605%_)))
                           (_%hd126615%_ _%$hd126585126608%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126586126611%_))
                          (let* ((_%$tgt126587126617%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126586126611%_)))
                                 (_%$hd126588126620%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126587126617%_)))
                                 (_%$tl126589126623%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126587126617%_)))
                                 (_%body126627%_ _%$hd126588126620%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126589126623%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd126615%_)
                                             (cons (__compile _%body126627%_)
                                                   '())))
                                 _%stx126576%_)
                                (_%$E126580126592%_)))
                          (_%$E126580126592%_)))
                    (_%$E126580126592%_)))
              (_%$E126580126592%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx126368%_)
        (letrec ((_%variadic?126370%_
                  (lambda (_%hd126541%_)
                    (let* ((_%$e126543%_ _%hd126541%_)
                           (_%$E126545126561%_
                            (lambda ()
                              (let ((_%$E126546126558%_
                                     (lambda ()
                                       (let ((_%$E126547126555%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e126543%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e126543%_))
                                            '())
                                    '#f
                                    (_%$E126546126558%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126543%_))
                          (let* ((_%$tgt126548126564%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126543%_)))
                                 (_%$hd126549126567%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126548126564%_)))
                                 (_%$tl126550126570%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126548126564%_)))
                                 (_%rest126574%_ _%$tl126550126570%_))
                            (_%variadic?126370%_ _%rest126574%_))
                          (_%$E126545126561%_)))))
                 (_%arity126371%_
                  (lambda (_%hd126506%_)
                    (let _%lp126508%_ ((_%rest126510%_ _%hd126506%_)
                                       (_%k126511%_ '0))
                      (let* ((_%$e126513%_ _%rest126510%_)
                             (_%$E126515126526%_
                              (lambda ()
                                (let ((_%$E126516126523%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e126513%_)))))
                                  _%k126511%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e126513%_))
                            (let* ((_%$tgt126517126529%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e126513%_)))
                                   (_%$hd126518126532%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt126517126529%_)))
                                   (_%$tl126519126535%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt126517126529%_)))
                                   (_%rest126539%_ _%$tl126519126535%_))
                              (_%lp126508%_
                               _%rest126539%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k126511%_ '1))))
                            (_%$E126515126526%_))))))
                 (_%generate126372%_
                  (lambda (_%rest126433%_ _%args126434%_ _%len126435%_)
                    (let* ((_%$e126437%_ _%rest126433%_)
                           (_%$E126439126450%_
                            (lambda ()
                              (let ((_%$E126440126447%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e126437%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args126434%_ '())))
                                 _%stx126368%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126437%_))
                          (let* ((_%$tgt126441126453%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126437%_)))
                                 (_%$hd126442126456%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126441126453%_)))
                                 (_%$tl126443126459%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126441126453%_)))
                                 (_%clause126463%_ _%$hd126442126456%_)
                                 (_%rest126465%_ _%$tl126443126459%_)
                                 (_%$e126467%_ _%clause126463%_)
                                 (_%$E126469126478%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e126467%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e126467%_))
                                (let* ((_%$tgt126470126481%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e126467%_)))
                                       (_%$hd126471126484%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt126470126481%_)))
                                       (_%$tl126472126487%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt126470126481%_)))
                                       (_%hd126491%_ _%$hd126471126484%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl126472126487%_))
                                      (let* ((_%$tgt126473126493%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl126472126487%_)))
                                             (_%$hd126474126496%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126473126493%_)))
                                             (_%$tl126475126499%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126473126493%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl126475126499%_))
                                                    '())
                                            (let ((_%clen126503%_
                                                   (_%arity126371%_
                                                    _%hd126491%_))
                                                  (_%cmp126504%_
                                                   (if (_%variadic?126370%_
                                                        _%hd126491%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp126504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len126435%_ (cons _%clen126503%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause126463%_))
                                      (cons _%args126434%_ '())))
                          _%stx126368%_)
                         (cons (_%generate126372%_
                                _%rest126465%_
                                _%args126434%_
                                _%len126435%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx126368%_))
                                            (_%$E126469126478%_)))
                                      (_%$E126469126478%_)))
                                (_%$E126469126478%_)))
                          (_%$E126439126450%_))))))
          (let* ((_%$e126374%_ _%stx126368%_)
                 (_%$E126376126408%_
                  (lambda ()
                    (let ((_%$E126377126390%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e126374%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126374%_))
                          (let* ((_%$tgt126378126393%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126374%_)))
                                 (_%$hd126379126396%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126378126393%_)))
                                 (_%$tl126380126399%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126378126393%_)))
                                 (_%clauses126403%_ _%$tl126380126399%_))
                            (let ((_%args126405%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx126368%_))
                                  (_%len126406%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx126368%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args126405%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len126406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args126405%_ '()))
                                         _%stx126368%_)
                                        '()))
                            '())
                      (cons (_%generate126372%_
                             _%clauses126403%_
                             _%args126405%_
                             _%len126406%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx126368%_)
                                                 '())))
                               _%stx126368%_)))
                          (_%$E126377126390%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e126374%_))
                (let* ((_%$tgt126381126411%_
                        (let () (declare (not safe)) (__AST-e _%$e126374%_)))
                       (_%$hd126382126414%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt126381126411%_)))
                       (_%$tl126383126417%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt126381126411%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl126383126417%_))
                      (let* ((_%$tgt126384126421%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl126383126417%_)))
                             (_%$hd126385126424%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt126384126421%_)))
                             (_%$tl126386126427%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt126384126421%_)))
                             (_%clause126431%_ _%$hd126385126424%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl126386126427%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause126431%_))
                            (_%$E126376126408%_)))
                      (_%$E126376126408%_)))
                (_%$E126376126408%_))))))
    (define __compile-let-form
      (lambda (_%stx126137%_ _%compile-simple126138%_ _%compile-values126139%_)
        (letrec ((_%simple-bind?126141%_
                  (lambda (_%hd126326%_)
                    (let* ((_%hd126327126337%_ _%hd126326%_)
                           (_%else126330126345%_ (lambda () '#f)))
                      (let ((_%K126333126358%_ (lambda (_%id126356%_) '#t))
                            (_%K126332126350%_ (lambda () '#t)))
                        (let ((_%try-match126329126353%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd126327126337%_ '#f))
                                     (_%K126332126350%_)
                                     (_%else126330126345%_)))))
                          (if (pair? _%hd126327126337%_)
                              (let ((_%tl126335126363%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd126327126337%_)))
                                    (_%hd126334126361%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd126327126337%_))))
                                (if (null? _%tl126335126363%_)
                                    (let ((_%id126366%_ _%hd126334126361%_))
                                      (_%K126333126358%_ _%id126366%_))
                                    (_%try-match126329126353%_)))
                              (_%try-match126329126353%_)))))))
                 (_%car-e126142%_
                  (lambda (_%hd126324%_)
                    (if (pair? _%hd126324%_)
                        (let () (declare (not safe)) (##car _%hd126324%_))
                        _%hd126324%_))))
          (let* ((_%$e126144%_ _%stx126137%_)
                 (_%$E126146126289%_
                  (lambda ()
                    (let ((_%$E126147126169%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e126144%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126144%_))
                          (let* ((_%$tgt126148126172%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126144%_)))
                                 (_%$hd126149126175%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126148126172%_)))
                                 (_%$tl126150126178%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126148126172%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl126150126178%_))
                                (let* ((_%$tgt126151126182%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126150126178%_)))
                                       (_%$hd126152126185%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt126151126182%_)))
                                       (_%$tl126153126188%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt126151126182%_)))
                                       (_%hd126192%_ _%$hd126152126185%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl126153126188%_))
                                      (let* ((_%$tgt126154126194%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl126153126188%_)))
                                             (_%$hd126155126197%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126154126194%_)))
                                             (_%$tl126156126200%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126154126194%_)))
                                             (_%body126204%_
                                              _%$hd126155126197%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl126156126200%_))
                                                    '())
                                            (let* ((_%hd-ids126244%_
                                                    (map (lambda (_%bind126206%_)
                                                           (let* ((_%$e126208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind126206%_)
                          (_%$E126210126219%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e126208%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e126208%_))
                         (let* ((_%$tgt126211126222%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e126208%_)))
                                (_%$hd126212126225%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt126211126222%_)))
                                (_%$tl126213126228%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt126211126222%_)))
                                (_%ids126232%_ _%$hd126212126225%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl126213126228%_))
                               (let* ((_%$tgt126214126234%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl126213126228%_)))
                                      (_%$hd126215126237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt126214126234%_)))
                                      (_%$tl126216126240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt126214126234%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl126216126240%_))
                                             '())
                                     _%ids126232%_
                                     (_%$E126210126219%_)))
                               (_%$E126210126219%_)))
                         (_%$E126210126219%_))))
                 _%hd126192%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs126284%_
                                                    (map (lambda (_%bind126246%_)
                                                           (let* ((_%$e126248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind126246%_)
                          (_%$E126250126259%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e126248%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e126248%_))
                         (let* ((_%$tgt126251126262%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e126248%_)))
                                (_%$hd126252126265%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt126251126262%_)))
                                (_%$tl126253126268%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt126251126262%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl126253126268%_))
                               (let* ((_%$tgt126254126272%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl126253126268%_)))
                                      (_%$hd126255126275%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt126254126272%_)))
                                      (_%$tl126256126278%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt126254126272%_)))
                                      (_%expr126282%_ _%$hd126255126275%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl126256126278%_))
                                             '())
                                     (__compile _%expr126282%_)
                                     (_%$E126250126259%_)))
                               (_%$E126250126259%_)))
                         (_%$E126250126259%_))))
                 _%hd126192%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body126286%_
                                                    (__compile
                                                     _%body126204%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?126141%_
                                                     _%hd-ids126244%_))
                                                  (_%compile-simple126138%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e126142%_
                                                            _%hd-ids126244%_))
                                                   _%exprs126284%_
                                                   _%body126286%_)
                                                  (_%compile-values126139%_
                                                   _%hd-ids126244%_
                                                   _%exprs126284%_
                                                   _%body126286%_)))
                                            (_%$E126147126169%_)))
                                      (_%$E126147126169%_)))
                                (_%$E126147126169%_)))
                          (_%$E126147126169%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e126144%_))
                (let* ((_%$tgt126157126292%_
                        (let () (declare (not safe)) (__AST-e _%$e126144%_)))
                       (_%$hd126158126295%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt126157126292%_)))
                       (_%$tl126159126298%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt126157126292%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl126159126298%_))
                      (let* ((_%$tgt126160126302%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl126159126298%_)))
                             (_%$hd126161126305%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt126160126302%_)))
                             (_%$tl126162126308%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt126160126302%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd126161126305%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl126162126308%_))
                                (let* ((_%$tgt126163126312%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126162126308%_)))
                                       (_%$hd126164126315%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt126163126312%_)))
                                       (_%$tl126165126318%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt126163126312%_)))
                                       (_%body126322%_ _%$hd126164126315%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl126165126318%_))
                                              '())
                                      (__compile _%body126322%_)
                                      (_%$E126146126289%_)))
                                (_%$E126146126289%_))
                            (_%$E126146126289%_)))
                      (_%$E126146126289%_)))
                (_%$E126146126289%_))))))
    (define __compile-let-values%
      (lambda (_%stx125949%_)
        (letrec ((_%compile-simple125951%_
                  (lambda (_%hd-ids126133%_ _%exprs126134%_ _%body126135%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp127252
                                        (map __compile-head-id
                                             _%hd-ids126133%_)))
                                   (declare (not safe))
                                   (##map list __tmp127252 _%exprs126134%_))
                                 (cons _%body126135%_ '())))
                     _%stx125949%_)))
                 (_%compile-values125952%_
                  (lambda (_%hd-ids126048%_ _%exprs126049%_ _%body126050%_)
                    (let _%lp126052%_ ((_%rest126054%_ _%hd-ids126048%_)
                                       (_%exprs126055%_ _%exprs126049%_)
                                       (_%bind126056%_ '())
                                       (_%post126057%_ '()))
                      (let* ((_%rest126058126072%_ _%rest126054%_)
                             (_%else126061126080%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind126056%_)
                                             (cons (_%compile-post125953%_
                                                    _%post126057%_
                                                    _%body126050%_)
                                                   '())))
                                 _%stx125949%_))))
                        (let ((_%K126066126116%_
                               (lambda (_%rest126113%_ _%id126114%_)
                                 (_%lp126052%_
                                  _%rest126113%_
                                  (cdr _%exprs126055%_)
                                  (cons (cons (__compile-head-id _%id126114%_)
                                              (cons (car _%exprs126055%_) '()))
                                        _%bind126056%_)
                                  _%post126057%_)))
                              (_%K126063126098%_
                               (lambda (_%rest126084%_ _%hd126085%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd126085%_))
                                     (_%lp126052%_
                                      _%rest126084%_
                                      (cdr _%exprs126055%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd126085%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs126055%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind126056%_)
                                      _%post126057%_)
                                     (if (list? _%hd126085%_)
                                         (let* ((_%len126089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd126085%_)))
                                                (_%tmp126091%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp126052%_
                                            _%rest126084%_
                                            (cdr _%exprs126055%_)
                                            (cons (cons _%tmp126091%_
                                                        (cons (car _%exprs126055%_)
                                                              '()))
                                                  _%bind126056%_)
                                            (cons (cons _%tmp126091%_
                                                        (cons _%len126089%_
                                                              (let ((__tmp127254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id126094%_ _%k126095%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id126094%_))
                                   (cons (__SRC__0 _%id126094%_) _%k126095%_)
                                   '#f)))
                            (__tmp127253
                             (let ()
                               (declare (not safe))
                               (##iota _%len126089%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp127254 _%hd126085%_ __tmp127253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post126057%_)))
                                         (__compile-error__%
                                          _%stx125949%_
                                          _%hd126085%_))))))
                          (if (pair? _%rest126058126072%_)
                              (let ((_%tl126068126121%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest126058126072%_)))
                                    (_%hd126067126119%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest126058126072%_))))
                                (if (pair? _%hd126067126119%_)
                                    (let ((_%tl126070126126%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd126067126119%_)))
                                          (_%hd126069126124%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd126067126119%_))))
                                      (if (null? _%tl126070126126%_)
                                          (let ((_%id126129%_
                                                 _%hd126069126124%_)
                                                (_%rest126131%_
                                                 _%tl126068126121%_))
                                            (_%K126066126116%_
                                             _%rest126131%_
                                             _%id126129%_))
                                          (let ((_%hd126106%_
                                                 _%hd126067126119%_)
                                                (_%rest126108%_
                                                 _%tl126068126121%_))
                                            (_%K126063126098%_
                                             _%rest126108%_
                                             _%hd126106%_))))
                                    (let ((_%hd126106%_ _%hd126067126119%_)
                                          (_%rest126108%_ _%tl126068126121%_))
                                      (_%K126063126098%_
                                       _%rest126108%_
                                       _%hd126106%_))))
                              (_%else126061126080%_)))))))
                 (_%compile-post125953%_
                  (lambda (_%post125955%_ _%body125956%_)
                    (let _%lp125958%_ ((_%rest125960%_ _%post125955%_)
                                       (_%check125961%_ '())
                                       (_%bind125962%_ '()))
                      (let* ((_%rest125963125975%_ _%rest125960%_)
                             (_%else125965125983%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp127255
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind125962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body125956%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx125949%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp127255
                                          _%check125961%_)))
                                 _%stx125949%_)))
                             (_%K125967126022%_
                              (lambda (_%rest125986%_
                                       _%init125987%_
                                       _%len125988%_
                                       _%tmp125989%_)
                                (_%lp125958%_
                                 _%rest125986%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125989%_
                                                    (cons _%len125988%_ '())))
                                        _%stx125949%_)
                                       _%check125961%_)
                                 (let ((__tmp127256
                                        (lambda (_%hd125991%_ _%r125992%_)
                                          (let* ((_%hd125993126000%_
                                                  _%hd125991%_)
                                                 (_%E125995126004%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd125993126000%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K125996126010%_
                                                  (lambda (_%k126007%_
                                                           _%id126008%_)
                                                    (cons (cons _%id126008%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp125989%_
                                          (cons _%k126007%_ '())))
                              '()))
                  _%r125992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd125993126000%_)
                                                (let ((_%hd125997126013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd125993126000%_)))
                                                      (_%tl125998126015%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd125993126000%_))))
                                                  (let* ((_%id126018%_
                                                          _%hd125997126013%_)
                                                         (_%k126020%_
                                                          _%tl125998126015%_))
                                                    (_%K125996126010%_
                                                     _%k126020%_
                                                     _%id126018%_)))
                                                (_%E125995126004%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp127256
                                    _%bind125962%_
                                    _%init125987%_))))))
                        (if (pair? _%rest125963125975%_)
                            (let ((_%hd125968126025%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest125963125975%_)))
                                  (_%tl125969126027%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest125963125975%_))))
                              (if (pair? _%hd125968126025%_)
                                  (let ((_%hd125970126030%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd125968126025%_)))
                                        (_%tl125971126032%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd125968126025%_))))
                                    (let ((_%tmp126035%_ _%hd125970126030%_))
                                      (if (pair? _%tl125971126032%_)
                                          (let ((_%hd125972126037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl125971126032%_)))
                                                (_%tl125973126039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl125971126032%_))))
                                            (let* ((_%len126042%_
                                                    _%hd125972126037%_)
                                                   (_%init126044%_
                                                    _%tl125973126039%_)
                                                   (_%rest126046%_
                                                    _%tl125969126027%_))
                                              (_%K125967126022%_
                                               _%rest126046%_
                                               _%init126044%_
                                               _%len126042%_
                                               _%tmp126035%_)))
                                          (_%else125965125983%_))))
                                  (_%else125965125983%_)))
                            (_%else125965125983%_)))))))
          (__compile-let-form
           _%stx125949%_
           _%compile-simple125951%_
           _%compile-values125952%_))))
    (define __compile-letrec-values%
      (lambda (_%stx125746%_)
        (letrec ((_%compile-simple125748%_
                  (lambda (_%hd-ids125945%_ _%exprs125946%_ _%body125947%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp127257
                                        (map __compile-head-id
                                             _%hd-ids125945%_)))
                                   (declare (not safe))
                                   (##map list __tmp127257 _%exprs125946%_))
                                 (cons _%body125947%_ '())))
                     _%stx125746%_)))
                 (_%compile-values125749%_
                  (lambda (_%hd-ids125856%_ _%exprs125857%_ _%body125858%_)
                    (let _%lp125860%_ ((_%rest125862%_ _%hd-ids125856%_)
                                       (_%exprs125863%_ _%exprs125857%_)
                                       (_%pre125864%_ '())
                                       (_%bind125865%_ '())
                                       (_%post125866%_ '()))
                      (let* ((_%rest125867125881%_ _%rest125862%_)
                             (_%else125870125889%_
                              (lambda ()
                                (_%compile-inner125750%_
                                 _%pre125864%_
                                 _%bind125865%_
                                 _%post125866%_
                                 _%body125858%_))))
                        (let ((_%K125875125928%_
                               (lambda (_%rest125925%_ _%id125926%_)
                                 (_%lp125860%_
                                  _%rest125925%_
                                  (cdr _%exprs125863%_)
                                  _%pre125864%_
                                  (cons (cons (__compile-head-id _%id125926%_)
                                              (cons (car _%exprs125863%_) '()))
                                        _%bind125865%_)
                                  _%post125866%_)))
                              (_%K125872125910%_
                               (lambda (_%rest125893%_ _%hd125894%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125894%_))
                                     (_%lp125860%_
                                      _%rest125893%_
                                      (cdr _%exprs125863%_)
                                      _%pre125864%_
                                      (cons (cons (__compile-head-id
                                                   _%hd125894%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs125863%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind125865%_)
                                      _%post125866%_)
                                     (if (list? _%hd125894%_)
                                         (let* ((_%len125898%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd125894%_)))
                                                (_%tmp125900%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp125860%_
                                            _%rest125893%_
                                            (cdr _%exprs125863%_)
                                            (let ((__tmp127258
                                                   (lambda (_%id125903%_
                                                            _%r125904%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id125903%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125903%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r125904%_)
                 _%r125904%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp127258
                                               _%pre125864%_
                                               _%hd125894%_))
                                            (cons (cons _%tmp125900%_
                                                        (cons (car _%exprs125863%_)
                                                              '()))
                                                  _%bind125865%_)
                                            (cons (cons _%tmp125900%_
                                                        (cons _%len125898%_
                                                              (let ((__tmp127260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id125906%_ _%k125907%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id125906%_))
                                   (cons (__SRC__0 _%id125906%_) _%k125907%_)
                                   '#f)))
                            (__tmp127259
                             (let ()
                               (declare (not safe))
                               (##iota _%len125898%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp127260 _%hd125894%_ __tmp127259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post125866%_)))
                                         (__compile-error__%
                                          _%stx125746%_
                                          _%hd125894%_))))))
                          (if (pair? _%rest125867125881%_)
                              (let ((_%tl125877125933%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125867125881%_)))
                                    (_%hd125876125931%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125867125881%_))))
                                (if (pair? _%hd125876125931%_)
                                    (let ((_%tl125879125938%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125876125931%_)))
                                          (_%hd125878125936%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125876125931%_))))
                                      (if (null? _%tl125879125938%_)
                                          (let ((_%id125941%_
                                                 _%hd125878125936%_)
                                                (_%rest125943%_
                                                 _%tl125877125933%_))
                                            (_%K125875125928%_
                                             _%rest125943%_
                                             _%id125941%_))
                                          (let ((_%hd125918%_
                                                 _%hd125876125931%_)
                                                (_%rest125920%_
                                                 _%tl125877125933%_))
                                            (_%K125872125910%_
                                             _%rest125920%_
                                             _%hd125918%_))))
                                    (let ((_%hd125918%_ _%hd125876125931%_)
                                          (_%rest125920%_ _%tl125877125933%_))
                                      (_%K125872125910%_
                                       _%rest125920%_
                                       _%hd125918%_))))
                              (_%else125870125889%_)))))))
                 (_%compile-inner125750%_
                  (lambda (_%pre125851%_
                           _%bind125852%_
                           _%post125853%_
                           _%body125854%_)
                    (if (null? _%pre125851%_)
                        (_%compile-bind125751%_
                         _%bind125852%_
                         _%post125853%_
                         _%body125854%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre125851%_)
                                     (cons (_%compile-bind125751%_
                                            _%bind125852%_
                                            _%post125853%_
                                            _%body125854%_)
                                           '())))
                         _%stx125746%_))))
                 (_%compile-bind125751%_
                  (lambda (_%bind125847%_ _%post125848%_ _%body125849%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind125847%_)
                                 (cons (_%compile-post125752%_
                                        _%post125848%_
                                        _%body125849%_)
                                       '())))
                     _%stx125746%_)))
                 (_%compile-post125752%_
                  (lambda (_%post125754%_ _%body125755%_)
                    (let _%lp125757%_ ((_%rest125759%_ _%post125754%_)
                                       (_%check125760%_ '())
                                       (_%bind125761%_ '()))
                      (let* ((_%rest125762125774%_ _%rest125759%_)
                             (_%else125764125782%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp127261
                                              (let ((__tmp127262
                                                     (cons _%body125755%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp127262
                                                 _%bind125761%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp127261
                                          _%check125760%_)))
                                 _%stx125746%_)))
                             (_%K125766125821%_
                              (lambda (_%rest125785%_
                                       _%init125786%_
                                       _%len125787%_
                                       _%tmp125788%_)
                                (_%lp125757%_
                                 _%rest125785%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125788%_
                                                    (cons _%len125787%_ '())))
                                        _%stx125746%_)
                                       _%check125760%_)
                                 (let ((__tmp127263
                                        (lambda (_%hd125790%_ _%r125791%_)
                                          (let* ((_%hd125792125799%_
                                                  _%hd125790%_)
                                                 (_%E125794125803%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd125792125799%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K125795125809%_
                                                  (lambda (_%k125806%_
                                                           _%id125807%_)
                                                    (cons (cons 'set!
                                                                (cons _%id125807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp125788%_
                                                (cons _%k125806%_ '())))
                                    '())))
                  _%r125791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd125792125799%_)
                                                (let ((_%hd125796125812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd125792125799%_)))
                                                      (_%tl125797125814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd125792125799%_))))
                                                  (let* ((_%id125817%_
                                                          _%hd125796125812%_)
                                                         (_%k125819%_
                                                          _%tl125797125814%_))
                                                    (_%K125795125809%_
                                                     _%k125819%_
                                                     _%id125817%_)))
                                                (_%E125794125803%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp127263
                                    _%bind125761%_
                                    _%init125786%_))))))
                        (if (pair? _%rest125762125774%_)
                            (let ((_%hd125767125824%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest125762125774%_)))
                                  (_%tl125768125826%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest125762125774%_))))
                              (if (pair? _%hd125767125824%_)
                                  (let ((_%hd125769125829%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd125767125824%_)))
                                        (_%tl125770125831%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd125767125824%_))))
                                    (let ((_%tmp125834%_ _%hd125769125829%_))
                                      (if (pair? _%tl125770125831%_)
                                          (let ((_%hd125771125836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl125770125831%_)))
                                                (_%tl125772125838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl125770125831%_))))
                                            (let* ((_%len125841%_
                                                    _%hd125771125836%_)
                                                   (_%init125843%_
                                                    _%tl125772125838%_)
                                                   (_%rest125845%_
                                                    _%tl125768125826%_))
                                              (_%K125766125821%_
                                               _%rest125845%_
                                               _%init125843%_
                                               _%len125841%_
                                               _%tmp125834%_)))
                                          (_%else125764125782%_))))
                                  (_%else125764125782%_)))
                            (_%else125764125782%_)))))))
          (__compile-let-form
           _%stx125746%_
           _%compile-simple125748%_
           _%compile-values125749%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx125497%_)
        (letrec ((_%compile-simple125499%_
                  (lambda (_%hd-ids125742%_ _%exprs125743%_ _%body125744%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp127264
                                        (map __compile-head-id
                                             _%hd-ids125742%_)))
                                   (declare (not safe))
                                   (##map list __tmp127264 _%exprs125743%_))
                                 (cons _%body125744%_ '())))
                     _%stx125497%_)))
                 (_%compile-values125500%_
                  (lambda (_%hd-ids125649%_ _%exprs125650%_ _%body125651%_)
                    (let _%lp125653%_ ((_%rest125655%_ _%hd-ids125649%_)
                                       (_%exprs125656%_ _%exprs125650%_)
                                       (_%bind125657%_ '())
                                       (_%post125658%_ '()))
                      (let* ((_%rest125659125673%_ _%rest125655%_)
                             (_%else125662125681%_
                              (lambda ()
                                (_%compile-bind125501%_
                                 _%bind125657%_
                                 _%post125658%_
                                 _%body125651%_))))
                        (let ((_%K125667125725%_
                               (lambda (_%rest125720%_ _%hd125721%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125721%_))
                                     (let ((_%id125723%_
                                            (__SRC__0 _%hd125721%_)))
                                       (_%lp125653%_
                                        _%rest125720%_
                                        (cdr _%exprs125656%_)
                                        (cons (cons _%id125723%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind125657%_)
                                        (cons (cons _%id125723%_
                                                    (cons (car _%exprs125656%_)
                                                          '()))
                                              _%post125658%_)))
                                     (_%lp125653%_
                                      _%rest125720%_
                                      (cdr _%exprs125656%_)
                                      _%bind125657%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs125656%_)
                                                        '()))
                                            _%post125658%_)))))
                              (_%K125664125705%_
                               (lambda (_%rest125685%_ _%hd125686%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125686%_))
                                     (let ((_%id125689%_
                                            (__SRC__0 _%hd125686%_)))
                                       (_%lp125653%_
                                        _%rest125685%_
                                        (cdr _%exprs125656%_)
                                        (cons (cons _%id125689%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind125657%_)
                                        (cons (cons _%id125689%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs125656%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post125658%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd125686%_))
                                         (if (list? _%hd125686%_)
                                             (let* ((_%len125693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd125686%_)))
                                                    (_%tmp125695%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp125653%_
                                                _%rest125685%_
                                                (cdr _%exprs125656%_)
                                                (let ((__tmp127265
                                                       (lambda (_%id125698%_
                                                                _%r125699%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id125698%_))
                     (cons (cons (__SRC__0 _%id125698%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r125699%_)
                     _%r125699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp127265
                                                   _%bind125657%_
                                                   _%hd125686%_))
                                                (cons (cons _%tmp125695%_
                                                            (cons (car _%exprs125656%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len125693%_
                                (let ((__tmp127267
                                       (lambda (_%id125701%_ _%k125702%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id125701%_))
                                             (cons (__SRC__0 _%id125701%_)
                                                   _%k125702%_)
                                             '#f)))
                                      (__tmp127266
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len125693%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp127267
                                   _%hd125686%_
                                   __tmp127266)))))
              _%post125658%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx125497%_
                                              _%hd125686%_))
                                         (_%lp125653%_
                                          _%rest125685%_
                                          (cdr _%exprs125656%_)
                                          _%bind125657%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs125656%_)
                                                            '()))
                                                _%post125658%_)))))))
                          (if (pair? _%rest125659125673%_)
                              (let ((_%tl125669125730%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125659125673%_)))
                                    (_%hd125668125728%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125659125673%_))))
                                (if (pair? _%hd125668125728%_)
                                    (let ((_%tl125671125735%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125668125728%_)))
                                          (_%hd125670125733%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125668125728%_))))
                                      (if (null? _%tl125671125735%_)
                                          (let ((_%hd125738%_
                                                 _%hd125670125733%_)
                                                (_%rest125740%_
                                                 _%tl125669125730%_))
                                            (_%K125667125725%_
                                             _%rest125740%_
                                             _%hd125738%_))
                                          (let ((_%hd125713%_
                                                 _%hd125668125728%_)
                                                (_%rest125715%_
                                                 _%tl125669125730%_))
                                            (_%K125664125705%_
                                             _%rest125715%_
                                             _%hd125713%_))))
                                    (let ((_%hd125713%_ _%hd125668125728%_)
                                          (_%rest125715%_ _%tl125669125730%_))
                                      (_%K125664125705%_
                                       _%rest125715%_
                                       _%hd125713%_))))
                              (_%else125662125681%_)))))))
                 (_%compile-bind125501%_
                  (lambda (_%bind125645%_ _%post125646%_ _%body125647%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind125645%_)
                                 (cons (_%compile-post125502%_
                                        _%post125646%_
                                        _%body125647%_)
                                       '())))
                     _%stx125497%_)))
                 (_%compile-post125502%_
                  (lambda (_%post125504%_ _%body125505%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp127268
                                  (let ((__tmp127270
                                         (lambda (_%hd125507%_ _%r125508%_)
                                           (let* ((_%hd125509125532%_
                                                   _%hd125507%_)
                                                  (_%E125513125536%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd125509125532%_
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
                                             (let ((_%K125526125630%_
                                                    (lambda (_%expr125628%_)
                                                      (cons _%expr125628%_
                                                            _%r125508%_)))
                                                   (_%K125521125608%_
                                                    (lambda (_%expr125605%_
                                                             _%id125606%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id125606%_ (cons _%expr125605%_ '())))
                     _%stx125497%_)
                    _%r125508%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K125514125575%_
                                                    (lambda (_%init125540%_
                                                             _%len125541%_
                                                             _%expr125542%_
                                                             _%tmp125543%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp125543%_
                                             (cons _%expr125542%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125543%_
                                                    (cons _%len125541%_ '())))
                                        _%stx125497%_)
                                       (let ((__tmp127271
                                              (map (lambda (_%hd125545%_)
                                                     (let* ((_%hd125546125553%_
                                                             _%hd125545%_)
                                                            (_%E125548125557%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd125546125553%_
                                '([id . k])))
                       '#!void))
                    (_%K125549125563%_
                     (lambda (_%k125560%_ _%id125561%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id125561%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp125543%_
                                                      (cons _%k125560%_ '())))
                                          '())))
                        _%stx125497%_))))
               (if (pair? _%hd125546125553%_)
                   (let ((_%hd125550125566%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd125546125553%_)))
                         (_%tl125551125568%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd125546125553%_))))
                     (let* ((_%id125571%_ _%hd125550125566%_)
                            (_%k125573%_ _%tl125551125568%_))
                       (_%K125549125563%_ _%k125573%_ _%id125571%_)))
                   (_%E125548125557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init125540%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp127271)))))
                     _%stx125497%_)
                    _%r125508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match127124127125%_
                                                       (lambda (_%hd125515125578%_
                                                                _%tl125516125580%_
                                                                _%hd125517125585%_
                                                                _%tl125518125587%_)
                                                         (let ((_%tmp125583%_
                                                                _%hd125515125578%_)
                                                               (_%expr125590%_
                                                                _%hd125517125585%_))
                                                           (_%E125513125536%_))))
                                                      (_%__match127118127119%_
                                                       (lambda (_%hd125515125578%_
                                                                _%tl125516125580%_)
                                                         (let ((_%tmp125583%_
                                                                _%hd125515125578%_))
                                                           (_%E125513125536%_)))))
                                                 (if (pair? _%hd125509125532%_)
                                                     (let ((_%tl125528125635%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd125509125532%_)))
                                                           (_%hd125527125633%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd125509125532%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd125527125633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl125528125635%_)
                       (let ((_%tl125530125640%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl125528125635%_)))
                             (_%hd125529125638%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl125528125635%_))))
                         (if (null? _%tl125530125640%_)
                             (let ((_%expr125643%_ _%hd125529125638%_))
                               (_%K125526125630%_ _%expr125643%_))
                             (if (pair? _%tl125530125640%_)
                                 (let ((_%tl125520125594%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl125530125640%_)))
                                       (_%hd125519125592%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl125530125640%_))))
                                   (let ((_%tmp125583%_ _%hd125527125633%_)
                                         (_%expr125590%_ _%hd125529125638%_)
                                         (_%len125597%_ _%hd125519125592%_)
                                         (_%init125599%_ _%tl125520125594%_))
                                     (_%K125514125575%_
                                      _%init125599%_
                                      _%len125597%_
                                      _%expr125590%_
                                      _%tmp125583%_)))
                                 (_%__match127124127125%_
                                  _%hd125527125633%_
                                  _%tl125528125635%_
                                  _%hd125529125638%_
                                  _%tl125530125640%_))))
                       (_%__match127118127119%_
                        _%hd125527125633%_
                        _%tl125528125635%_))
                   (if (pair? _%tl125528125635%_)
                       (let ((_%tl125525125620%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl125528125635%_)))
                             (_%hd125524125618%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl125528125635%_))))
                         (if (null? _%tl125525125620%_)
                             (let ((_%id125616%_ _%hd125527125633%_)
                                   (_%expr125623%_ _%hd125524125618%_))
                               (_%K125521125608%_ _%expr125623%_ _%id125616%_))
                             (if (pair? _%tl125525125620%_)
                                 (let ((_%tl125520125594%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl125525125620%_)))
                                       (_%hd125519125592%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl125525125620%_))))
                                   (let ((_%tmp125583%_ _%hd125527125633%_)
                                         (_%expr125590%_ _%hd125524125618%_)
                                         (_%len125597%_ _%hd125519125592%_)
                                         (_%init125599%_ _%tl125520125594%_))
                                     (_%K125514125575%_
                                      _%init125599%_
                                      _%len125597%_
                                      _%expr125590%_
                                      _%tmp125583%_)))
                                 (_%__match127124127125%_
                                  _%hd125527125633%_
                                  _%tl125528125635%_
                                  _%hd125524125618%_
                                  _%tl125525125620%_))))
                       (_%__match127118127119%_
                        _%hd125527125633%_
                        _%tl125528125635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E125513125536%_)))))))
                                        (__tmp127269 (list _%body125505%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp127270
                                     __tmp127269
                                     _%post125504%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp127268)))
                     _%stx125497%_))))
          (__compile-let-form
           _%stx125497%_
           _%compile-simple125499%_
           _%compile-values125500%_))))
    (define __compile-call%
      (lambda (_%stx125457%_)
        (let* ((_%$e125459%_ _%stx125457%_)
               (_%$E125461125470%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125459%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125459%_))
              (let* ((_%$tgt125462125473%_
                      (let () (declare (not safe)) (__AST-e _%$e125459%_)))
                     (_%$hd125463125476%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125462125473%_)))
                     (_%$tl125464125479%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125462125473%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125464125479%_))
                    (let* ((_%$tgt125465125483%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125464125479%_)))
                           (_%$hd125466125486%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125465125483%_)))
                           (_%$tl125467125489%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125465125483%_)))
                           (_%rator125493%_ _%$hd125466125486%_)
                           (_%rands125495%_ _%$tl125467125489%_))
                      (__SRC__%
                       (cons (__compile _%rator125493%_)
                             (map __compile _%rands125495%_))
                       _%stx125457%_))
                    (_%$E125461125470%_)))
              (_%$E125461125470%_)))))
    (define __compile-ref%
      (lambda (_%stx125419%_)
        (let* ((_%$e125421%_ _%stx125419%_)
               (_%$E125423125432%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125421%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125421%_))
              (let* ((_%$tgt125424125435%_
                      (let () (declare (not safe)) (__AST-e _%$e125421%_)))
                     (_%$hd125425125438%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125424125435%_)))
                     (_%$tl125426125441%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125424125435%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125426125441%_))
                    (let* ((_%$tgt125427125445%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125426125441%_)))
                           (_%$hd125428125448%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125427125445%_)))
                           (_%$tl125429125451%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125427125445%_)))
                           (_%id125455%_ _%$hd125428125448%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125429125451%_))
                                  '())
                          (__SRC__% _%id125455%_ _%stx125419%_)
                          (_%$E125423125432%_)))
                    (_%$E125423125432%_)))
              (_%$E125423125432%_)))))
    (define __compile-setq%
      (lambda (_%stx125366%_)
        (let* ((_%$e125368%_ _%stx125366%_)
               (_%$E125370125382%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125368%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125368%_))
              (let* ((_%$tgt125371125385%_
                      (let () (declare (not safe)) (__AST-e _%$e125368%_)))
                     (_%$hd125372125388%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125371125385%_)))
                     (_%$tl125373125391%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125371125385%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125373125391%_))
                    (let* ((_%$tgt125374125395%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125373125391%_)))
                           (_%$hd125375125398%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125374125395%_)))
                           (_%$tl125376125401%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125374125395%_)))
                           (_%id125405%_ _%$hd125375125398%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl125376125401%_))
                          (let* ((_%$tgt125377125407%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125376125401%_)))
                                 (_%$hd125378125410%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt125377125407%_)))
                                 (_%$tl125379125413%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt125377125407%_)))
                                 (_%expr125417%_ _%$hd125378125410%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl125379125413%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id125405%_
                                              _%stx125366%_)
                                             (cons (__compile _%expr125417%_)
                                                   '())))
                                 _%stx125366%_)
                                (_%$E125370125382%_)))
                          (_%$E125370125382%_)))
                    (_%$E125370125382%_)))
              (_%$E125370125382%_)))))
    (define __compile-if%
      (lambda (_%stx125298%_)
        (let* ((_%$e125300%_ _%stx125298%_)
               (_%$E125302125317%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125300%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125300%_))
              (let* ((_%$tgt125303125320%_
                      (let () (declare (not safe)) (__AST-e _%$e125300%_)))
                     (_%$hd125304125323%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125303125320%_)))
                     (_%$tl125305125326%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125303125320%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125305125326%_))
                    (let* ((_%$tgt125306125330%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125305125326%_)))
                           (_%$hd125307125333%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125306125330%_)))
                           (_%$tl125308125336%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125306125330%_)))
                           (_%p125340%_ _%$hd125307125333%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl125308125336%_))
                          (let* ((_%$tgt125309125342%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125308125336%_)))
                                 (_%$hd125310125345%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt125309125342%_)))
                                 (_%$tl125311125348%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt125309125342%_)))
                                 (_%t125352%_ _%$hd125310125345%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl125311125348%_))
                                (let* ((_%$tgt125312125354%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl125311125348%_)))
                                       (_%$hd125313125357%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt125312125354%_)))
                                       (_%$tl125314125360%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt125312125354%_)))
                                       (_%f125364%_ _%$hd125313125357%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl125314125360%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p125340%_)
                                                   (cons (__compile
                                                          _%t125352%_)
                                                         (cons (__compile
                                                                _%f125364%_)
                                                               '()))))
                                       _%stx125298%_)
                                      (_%$E125302125317%_)))
                                (_%$E125302125317%_)))
                          (_%$E125302125317%_)))
                    (_%$E125302125317%_)))
              (_%$E125302125317%_)))))
    (define __compile-quote%
      (lambda (_%stx125260%_)
        (let* ((_%$e125262%_ _%stx125260%_)
               (_%$E125264125273%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125262%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125262%_))
              (let* ((_%$tgt125265125276%_
                      (let () (declare (not safe)) (__AST-e _%$e125262%_)))
                     (_%$hd125266125279%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125265125276%_)))
                     (_%$tl125267125282%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125265125276%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125267125282%_))
                    (let* ((_%$tgt125268125286%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125267125282%_)))
                           (_%$hd125269125289%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125268125286%_)))
                           (_%$tl125270125292%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125268125286%_)))
                           (_%e125296%_ _%$hd125269125289%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125270125292%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e125296%_))
                                       '()))
                           _%stx125260%_)
                          (_%$E125264125273%_)))
                    (_%$E125264125273%_)))
              (_%$E125264125273%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx125222%_)
        (let* ((_%$e125224%_ _%stx125222%_)
               (_%$E125226125235%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125224%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125224%_))
              (let* ((_%$tgt125227125238%_
                      (let () (declare (not safe)) (__AST-e _%$e125224%_)))
                     (_%$hd125228125241%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125227125238%_)))
                     (_%$tl125229125244%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125227125238%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125229125244%_))
                    (let* ((_%$tgt125230125248%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125229125244%_)))
                           (_%$hd125231125251%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125230125248%_)))
                           (_%$tl125232125254%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125230125248%_)))
                           (_%e125258%_ _%$hd125231125251%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125232125254%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e125258%_ '()))
                           _%stx125222%_)
                          (_%$E125226125235%_)))
                    (_%$E125226125235%_)))
              (_%$E125226125235%_)))))
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
