(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1713454410)
  (begin
    (define __syntax::t
      (let ((__tmp113712 (list)) (__tmp113711 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp113712
         '(e id)
         __tmp113711
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args113516%_
        (apply make-instance __syntax::t _%$args113516%_)))
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
      (let ((__tmp113714 (list __syntax::t))
            (__tmp113713 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp113714
         '()
         __tmp113713
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args113513%_
        (apply make-instance __core-form::t _%$args113513%_)))
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
      (let ((__tmp113716 (list __core-form::t))
            (__tmp113715 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp113716
         '()
         __tmp113715
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args113510%_
        (apply make-instance __core-expression::t _%$args113510%_)))
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
      (let ((__tmp113718 (list __core-form::t))
            (__tmp113717 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp113718
         '()
         __tmp113717
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args113507%_
        (apply make-instance __core-special-form::t _%$args113507%_)))
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
      (lambda (_%id113505%_)
        (let ((__tmp113719
               (let () (declare (not safe)) (__AST-e _%id113505%_))))
          (declare (not safe))
          (__hash-get __core __tmp113719))))
    (define __core-bound-id?__%
      (lambda (_%id113488%_ _%is?113489%_)
        (let ((_%$e113491%_ (__core-resolve _%id113488%_)))
          (if _%$e113491%_ (_%is?113489%_ _%$e113491%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id113498%_)
        (let ((_%is?113500%_ true))
          (__core-bound-id?__% _%id113498%_ _%is?113500%_))))
    (define __core-bound-id?
      (lambda _g113721_
        (let ((_g113720_ (let () (declare (not safe)) (##length _g113721_))))
          (cond ((let () (declare (not safe)) (##fx= _g113720_ 1))
                 (apply __core-bound-id?__0 _g113721_))
                ((let () (declare (not safe)) (##fx= _g113720_ 2))
                 (apply __core-bound-id?__% _g113721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113721_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id113471%_ _%e113472%_ _%make113473%_)
        (let ((__tmp113722
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e113472%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e113472%_
                   (_%make113473%_ _%e113472%_ _%id113471%_))))
          (declare (not safe))
          (__hash-put! __core _%id113471%_ __tmp113722))))
    (define __core-bind-syntax!__0
      (lambda (_%id113478%_ _%e113479%_)
        (let ((_%make113481%_ make-__syntax))
          (__core-bind-syntax!__% _%id113478%_ _%e113479%_ _%make113481%_))))
    (define __core-bind-syntax!
      (lambda _g113724_
        (let ((_g113723_ (let () (declare (not safe)) (##length _g113724_))))
          (cond ((let () (declare (not safe)) (##fx= _g113723_ 2))
                 (apply __core-bind-syntax!__0 _g113724_))
                ((let () (declare (not safe)) (##fx= _g113723_ 3))
                 (apply __core-bind-syntax!__% _g113724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113724_))))))
    (define __SRC__%
      (lambda (_%e113451%_ _%src-stx113452%_)
        (if (or (pair? _%e113451%_) (symbol? _%e113451%_))
            (let ((__tmp113725
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx113452%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx113452%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e113451%_ __tmp113725))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e113451%_ 'gerbil#AST::t))
                (let ((__tmp113727
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e113451%_ '1 '#f '#f)))
                      (__tmp113726
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e113451%_)))))
                  (declare (not safe))
                  (##make-source __tmp113727 __tmp113726))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e113451%_))))))
    (define __SRC__0
      (lambda (_%e113463%_)
        (let ((_%src-stx113465%_ '#f))
          (__SRC__% _%e113463%_ _%src-stx113465%_))))
    (define __SRC
      (lambda _g113729_
        (let ((_g113728_ (let () (declare (not safe)) (##length _g113729_))))
          (cond ((let () (declare (not safe)) (##fx= _g113728_ 1))
                 (apply __SRC__0 _g113729_))
                ((let () (declare (not safe)) (##fx= _g113728_ 2))
                 (apply __SRC__% _g113729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113729_))))))
    (define __locat
      (lambda (_%loc113448%_)
        (if (let () (declare (not safe)) (##locat? _%loc113448%_))
            _%loc113448%_
            '#f)))
    (define __check-values
      (lambda (_%obj113443%_ _%k113444%_)
        (let ((_%count113446%_
               (if (let () (declare (not safe)) (##values? _%obj113443%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj113443%_))
                   '1)))
          (if (fx= _%count113446%_ _%k113444%_)
              '#!void
              (let ((__tmp113731
                     (if (fx< _%count113446%_ _%k113444%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp113730
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj113443%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj113443%_))
                         _%obj113443%_)))
                (declare (not safe))
                (error __tmp113731 __tmp113730 _%k113444%_))))))
    (define __compile
      (lambda (_%stx113412%_)
        (let* ((_%$e113414%_ _%stx113412%_)
               (_%$E113416113422%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113414%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113414%_))
              (let* ((_%$tgt113417113425%_
                      (let () (declare (not safe)) (__AST-e _%$e113414%_)))
                     (_%$hd113418113428%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113417113425%_)))
                     (_%$tl113419113431%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113417113425%_)))
                     (_%form113435%_ _%$hd113418113428%_)
                     (_%$e113437%_ (__core-resolve _%form113435%_)))
                (if _%$e113437%_
                    ((lambda (_%bind113440%_)
                       ((##structure-ref _%bind113440%_ '1 __syntax::t '#f)
                        _%stx113412%_))
                     _%$e113437%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx113412%_
                       _%form113435%_))))
              (_%$E113416113422%_)))))
    (define __compile-error__%
      (lambda (_%stx113399%_ _%detail113400%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx113399%_
           _%detail113400%_))))
    (define __compile-error__0
      (lambda (_%stx113405%_)
        (let ((_%detail113407%_ '#f))
          (__compile-error__% _%stx113405%_ _%detail113407%_))))
    (define __compile-error
      (lambda _g113733_
        (let ((_g113732_ (let () (declare (not safe)) (##length _g113733_))))
          (cond ((let () (declare (not safe)) (##fx= _g113732_ 1))
                 (apply __compile-error__0 _g113733_))
                ((let () (declare (not safe)) (##fx= _g113732_ 2))
                 (apply __compile-error__% _g113733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113733_))))))
    (define __compile-ignore%
      (lambda (_%stx113396%_) (__SRC__% ''#!void _%stx113396%_)))
    (define __compile-begin%
      (lambda (_%stx113371%_)
        (let* ((_%$e113373%_ _%stx113371%_)
               (_%$E113375113381%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113373%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113373%_))
              (let* ((_%$tgt113376113384%_
                      (let () (declare (not safe)) (__AST-e _%$e113373%_)))
                     (_%$hd113377113387%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113376113384%_)))
                     (_%$tl113378113390%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113376113384%_)))
                     (_%body113394%_ _%$tl113378113390%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body113394%_))
                 _%stx113371%_))
              (_%$E113375113381%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx113346%_)
        (let* ((_%$e113348%_ _%stx113346%_)
               (_%$E113350113356%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113348%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113348%_))
              (let* ((_%$tgt113351113359%_
                      (let () (declare (not safe)) (__AST-e _%$e113348%_)))
                     (_%$hd113352113362%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113351113359%_)))
                     (_%$tl113353113365%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113351113359%_)))
                     (_%body113369%_ _%$tl113353113365%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body113369%_)))
                 _%stx113346%_))
              (_%$E113350113356%_)))))
    (define __compile-import%
      (lambda (_%stx113321%_)
        (let* ((_%$e113323%_ _%stx113321%_)
               (_%$E113325113331%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113323%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113323%_))
              (let* ((_%$tgt113326113334%_
                      (let () (declare (not safe)) (__AST-e _%$e113323%_)))
                     (_%$hd113327113337%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113326113334%_)))
                     (_%$tl113328113340%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113326113334%_)))
                     (_%body113344%_ _%$tl113328113340%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body113344%_ '())) '()))
                 _%stx113321%_))
              (_%$E113325113331%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx113268%_)
        (let* ((_%$e113270%_ _%stx113268%_)
               (_%$E113272113284%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113270%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113270%_))
              (let* ((_%$tgt113273113287%_
                      (let () (declare (not safe)) (__AST-e _%$e113270%_)))
                     (_%$hd113274113290%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113273113287%_)))
                     (_%$tl113275113293%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113273113287%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113275113293%_))
                    (let* ((_%$tgt113276113297%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113275113293%_)))
                           (_%$hd113277113300%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113276113297%_)))
                           (_%$tl113278113303%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113276113297%_)))
                           (_%ann113307%_ _%$hd113277113300%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113278113303%_))
                          (let* ((_%$tgt113279113309%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113278113303%_)))
                                 (_%$hd113280113312%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113279113309%_)))
                                 (_%$tl113281113315%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113279113309%_)))
                                 (_%expr113319%_ _%$hd113280113312%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113281113315%_))
                                        '())
                                (__compile _%expr113319%_)
                                (_%$E113272113284%_)))
                          (_%$E113272113284%_)))
                    (_%$E113272113284%_)))
              (_%$E113272113284%_)))))
    (define __compile-define-values%
      (lambda (_%stx113159%_)
        (let* ((_%$e113161%_ _%stx113159%_)
               (_%$E113163113175%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113161%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113161%_))
              (let* ((_%$tgt113164113178%_
                      (let () (declare (not safe)) (__AST-e _%$e113161%_)))
                     (_%$hd113165113181%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113164113178%_)))
                     (_%$tl113166113184%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113164113178%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113166113184%_))
                    (let* ((_%$tgt113167113188%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113166113184%_)))
                           (_%$hd113168113191%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113167113188%_)))
                           (_%$tl113169113194%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113167113188%_)))
                           (_%hd113198%_ _%$hd113168113191%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113169113194%_))
                          (let* ((_%$tgt113170113200%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113169113194%_)))
                                 (_%$hd113171113203%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113170113200%_)))
                                 (_%$tl113172113206%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113170113200%_)))
                                 (_%expr113210%_ _%$hd113171113203%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113172113206%_))
                                        '())
                                (let* ((_%$e113212%_ _%hd113198%_)
                                       (_%$E113214113255%_
                                        (lambda ()
                                          (let ((_%$E113215113240%_
                                                 (lambda ()
                                                   (let* ((_%$E113216113227%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e113212%_))))
                  (_%ids113230%_ _%hd113198%_)
                  (_%len113232%_ (length _%ids113230%_))
                  (_%tmp113234%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp113234%_
                                       (cons (__compile _%expr113210%_) '())))
                           _%stx113159%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp113234%_
                                             (cons _%len113232%_ '())))
                                 _%stx113159%_)
                                (let ((__tmp113734
                                       (let ((__tmp113736
                                              (lambda (_%id113237%_
                                                       _%k113238%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id113237%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id113237%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp113234%_
                                           (cons _%k113238%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx113159%_)
                                                    '#f)))
                                             (__tmp113735
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len113232%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp113736
                                          _%ids113230%_
                                          __tmp113735))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp113734)))))
              _%stx113159%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e113212%_))
                                                (let* ((_%$tgt113217113243%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e113212%_)))
                                                       (_%$hd113218113246%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt113217113243%_)))
                                                       (_%$tl113219113249%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt113217113243%_)))
                                                       (_%id113253%_
                                                        _%$hd113218113246%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl113219113249%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id113253%_)
                           (cons (__compile _%expr113210%_) '())))
               _%stx113159%_)
              (_%$E113215113240%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E113215113240%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e113212%_))
                                      (let* ((_%$tgt113220113258%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e113212%_)))
                                             (_%$hd113221113261%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt113220113258%_)))
                                             (_%$tl113222113264%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt113220113258%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd113221113261%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl113222113264%_))
                                                        '())
                                                (__compile _%expr113210%_)
                                                (_%$E113214113255%_))
                                            (_%$E113214113255%_)))
                                      (_%$E113214113255%_)))
                                (_%$E113163113175%_)))
                          (_%$E113163113175%_)))
                    (_%$E113163113175%_)))
              (_%$E113163113175%_)))))
    (define __compile-head-id
      (lambda (_%e113157%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e113157%_))
             _%e113157%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd113114%_)
        (let _%recur113116%_ ((_%rest113118%_ _%hd113114%_))
          (let* ((_%$e113120%_ _%rest113118%_)
                 (_%$E113122113140%_
                  (lambda ()
                    (let ((_%$E113123113137%_
                           (lambda ()
                             (let* ((_%$E113124113132%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e113120%_))))
                                    (_%tail113135%_ _%$e113120%_))
                               (__compile-head-id _%tail113135%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e113120%_))
                                  '())
                          '()
                          (_%$E113123113137%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e113120%_))
                (let* ((_%$tgt113125113143%_
                        (let () (declare (not safe)) (__AST-e _%$e113120%_)))
                       (_%$hd113126113146%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt113125113143%_)))
                       (_%$tl113127113149%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt113125113143%_)))
                       (_%hd113153%_ _%$hd113126113146%_)
                       (_%rest113155%_ _%$tl113127113149%_))
                  (cons (__compile-head-id _%hd113153%_)
                        (_%recur113116%_ _%rest113155%_)))
                (_%$E113122113140%_))))))
    (define __compile-lambda%
      (lambda (_%stx113061%_)
        (let* ((_%$e113063%_ _%stx113061%_)
               (_%$E113065113077%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113063%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113063%_))
              (let* ((_%$tgt113066113080%_
                      (let () (declare (not safe)) (__AST-e _%$e113063%_)))
                     (_%$hd113067113083%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113066113080%_)))
                     (_%$tl113068113086%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113066113080%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113068113086%_))
                    (let* ((_%$tgt113069113090%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113068113086%_)))
                           (_%$hd113070113093%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113069113090%_)))
                           (_%$tl113071113096%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113069113090%_)))
                           (_%hd113100%_ _%$hd113070113093%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113071113096%_))
                          (let* ((_%$tgt113072113102%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113071113096%_)))
                                 (_%$hd113073113105%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113072113102%_)))
                                 (_%$tl113074113108%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113072113102%_)))
                                 (_%body113112%_ _%$hd113073113105%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113074113108%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd113100%_)
                                             (cons (__compile _%body113112%_)
                                                   '())))
                                 _%stx113061%_)
                                (_%$E113065113077%_)))
                          (_%$E113065113077%_)))
                    (_%$E113065113077%_)))
              (_%$E113065113077%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx112853%_)
        (letrec ((_%variadic?112855%_
                  (lambda (_%hd113026%_)
                    (let* ((_%$e113028%_ _%hd113026%_)
                           (_%$E113030113046%_
                            (lambda ()
                              (let ((_%$E113031113043%_
                                     (lambda ()
                                       (let ((_%$E113032113040%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e113028%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e113028%_))
                                            '())
                                    '#f
                                    (_%$E113031113043%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e113028%_))
                          (let* ((_%$tgt113033113049%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e113028%_)))
                                 (_%$hd113034113052%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113033113049%_)))
                                 (_%$tl113035113055%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113033113049%_)))
                                 (_%rest113059%_ _%$tl113035113055%_))
                            (_%variadic?112855%_ _%rest113059%_))
                          (_%$E113030113046%_)))))
                 (_%arity112856%_
                  (lambda (_%hd112991%_)
                    (let _%lp112993%_ ((_%rest112995%_ _%hd112991%_)
                                       (_%k112996%_ '0))
                      (let* ((_%$e112998%_ _%rest112995%_)
                             (_%$E113000113011%_
                              (lambda ()
                                (let ((_%$E113001113008%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e112998%_)))))
                                  _%k112996%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e112998%_))
                            (let* ((_%$tgt113002113014%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e112998%_)))
                                   (_%$hd113003113017%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt113002113014%_)))
                                   (_%$tl113004113020%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt113002113014%_)))
                                   (_%rest113024%_ _%$tl113004113020%_))
                              (_%lp112993%_
                               _%rest113024%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k112996%_ '1))))
                            (_%$E113000113011%_))))))
                 (_%generate112857%_
                  (lambda (_%rest112918%_ _%args112919%_ _%len112920%_)
                    (let* ((_%$e112922%_ _%rest112918%_)
                           (_%$E112924112935%_
                            (lambda ()
                              (let ((_%$E112925112932%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112922%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args112919%_ '())))
                                 _%stx112853%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112922%_))
                          (let* ((_%$tgt112926112938%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112922%_)))
                                 (_%$hd112927112941%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112926112938%_)))
                                 (_%$tl112928112944%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112926112938%_)))
                                 (_%clause112948%_ _%$hd112927112941%_)
                                 (_%rest112950%_ _%$tl112928112944%_)
                                 (_%$e112952%_ _%clause112948%_)
                                 (_%$E112954112963%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e112952%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e112952%_))
                                (let* ((_%$tgt112955112966%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e112952%_)))
                                       (_%$hd112956112969%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112955112966%_)))
                                       (_%$tl112957112972%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112955112966%_)))
                                       (_%hd112976%_ _%$hd112956112969%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112957112972%_))
                                      (let* ((_%$tgt112958112978%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112957112972%_)))
                                             (_%$hd112959112981%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112958112978%_)))
                                             (_%$tl112960112984%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112958112978%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112960112984%_))
                                                    '())
                                            (let ((_%clen112988%_
                                                   (_%arity112856%_
                                                    _%hd112976%_))
                                                  (_%cmp112989%_
                                                   (if (_%variadic?112855%_
                                                        _%hd112976%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp112989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len112920%_ (cons _%clen112988%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause112948%_))
                                      (cons _%args112919%_ '())))
                          _%stx112853%_)
                         (cons (_%generate112857%_
                                _%rest112950%_
                                _%args112919%_
                                _%len112920%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx112853%_))
                                            (_%$E112954112963%_)))
                                      (_%$E112954112963%_)))
                                (_%$E112954112963%_)))
                          (_%$E112924112935%_))))))
          (let* ((_%$e112859%_ _%stx112853%_)
                 (_%$E112861112893%_
                  (lambda ()
                    (let ((_%$E112862112875%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112859%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112859%_))
                          (let* ((_%$tgt112863112878%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112859%_)))
                                 (_%$hd112864112881%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112863112878%_)))
                                 (_%$tl112865112884%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112863112878%_)))
                                 (_%clauses112888%_ _%$tl112865112884%_))
                            (let ((_%args112890%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112853%_))
                                  (_%len112891%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112853%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args112890%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len112891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args112890%_ '()))
                                         _%stx112853%_)
                                        '()))
                            '())
                      (cons (_%generate112857%_
                             _%clauses112888%_
                             _%args112890%_
                             _%len112891%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx112853%_)
                                                 '())))
                               _%stx112853%_)))
                          (_%$E112862112875%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112859%_))
                (let* ((_%$tgt112866112896%_
                        (let () (declare (not safe)) (__AST-e _%$e112859%_)))
                       (_%$hd112867112899%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112866112896%_)))
                       (_%$tl112868112902%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112866112896%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112868112902%_))
                      (let* ((_%$tgt112869112906%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112868112902%_)))
                             (_%$hd112870112909%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112869112906%_)))
                             (_%$tl112871112912%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112869112906%_)))
                             (_%clause112916%_ _%$hd112870112909%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl112871112912%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause112916%_))
                            (_%$E112861112893%_)))
                      (_%$E112861112893%_)))
                (_%$E112861112893%_))))))
    (define __compile-let-form
      (lambda (_%stx112622%_ _%compile-simple112623%_ _%compile-values112624%_)
        (letrec ((_%simple-bind?112626%_
                  (lambda (_%hd112811%_)
                    (let* ((_%hd112812112822%_ _%hd112811%_)
                           (_%else112815112830%_ (lambda () '#f)))
                      (let ((_%K112818112843%_ (lambda (_%id112841%_) '#t))
                            (_%K112817112835%_ (lambda () '#t)))
                        (let ((_%try-match112814112838%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd112812112822%_ '#f))
                                     (_%K112817112835%_)
                                     (_%else112815112830%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd112812112822%_))
                              (let ((_%tl112820112848%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd112812112822%_)))
                                    (_%hd112819112846%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd112812112822%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl112820112848%_))
                                    (let ((_%id112851%_ _%hd112819112846%_))
                                      (_%K112818112843%_ _%id112851%_))
                                    (_%try-match112814112838%_)))
                              (_%try-match112814112838%_)))))))
                 (_%car-e112627%_
                  (lambda (_%hd112809%_)
                    (if (pair? _%hd112809%_)
                        (let () (declare (not safe)) (##car _%hd112809%_))
                        _%hd112809%_))))
          (let* ((_%$e112629%_ _%stx112622%_)
                 (_%$E112631112774%_
                  (lambda ()
                    (let ((_%$E112632112654%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112629%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112629%_))
                          (let* ((_%$tgt112633112657%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112629%_)))
                                 (_%$hd112634112660%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112633112657%_)))
                                 (_%$tl112635112663%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112633112657%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112635112663%_))
                                (let* ((_%$tgt112636112667%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112635112663%_)))
                                       (_%$hd112637112670%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112636112667%_)))
                                       (_%$tl112638112673%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112636112667%_)))
                                       (_%hd112677%_ _%$hd112637112670%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112638112673%_))
                                      (let* ((_%$tgt112639112679%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112638112673%_)))
                                             (_%$hd112640112682%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112639112679%_)))
                                             (_%$tl112641112685%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112639112679%_)))
                                             (_%body112689%_
                                              _%$hd112640112682%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112641112685%_))
                                                    '())
                                            (let* ((_%hd-ids112729%_
                                                    (map (lambda (_%bind112691%_)
                                                           (let* ((_%$e112693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112691%_)
                          (_%$E112695112704%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112693%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112693%_))
                         (let* ((_%$tgt112696112707%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112693%_)))
                                (_%$hd112697112710%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112696112707%_)))
                                (_%$tl112698112713%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112696112707%_)))
                                (_%ids112717%_ _%$hd112697112710%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112698112713%_))
                               (let* ((_%$tgt112699112719%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112698112713%_)))
                                      (_%$hd112700112722%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112699112719%_)))
                                      (_%$tl112701112725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112699112719%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112701112725%_))
                                             '())
                                     _%ids112717%_
                                     (_%$E112695112704%_)))
                               (_%$E112695112704%_)))
                         (_%$E112695112704%_))))
                 _%hd112677%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs112769%_
                                                    (map (lambda (_%bind112731%_)
                                                           (let* ((_%$e112733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112731%_)
                          (_%$E112735112744%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112733%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112733%_))
                         (let* ((_%$tgt112736112747%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112733%_)))
                                (_%$hd112737112750%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112736112747%_)))
                                (_%$tl112738112753%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112736112747%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112738112753%_))
                               (let* ((_%$tgt112739112757%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112738112753%_)))
                                      (_%$hd112740112760%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112739112757%_)))
                                      (_%$tl112741112763%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112739112757%_)))
                                      (_%expr112767%_ _%$hd112740112760%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112741112763%_))
                                             '())
                                     (__compile _%expr112767%_)
                                     (_%$E112735112744%_)))
                               (_%$E112735112744%_)))
                         (_%$E112735112744%_))))
                 _%hd112677%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body112771%_
                                                    (__compile
                                                     _%body112689%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?112626%_
                                                     _%hd-ids112729%_))
                                                  (_%compile-simple112623%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e112627%_
                                                            _%hd-ids112729%_))
                                                   _%exprs112769%_
                                                   _%body112771%_)
                                                  (_%compile-values112624%_
                                                   _%hd-ids112729%_
                                                   _%exprs112769%_
                                                   _%body112771%_)))
                                            (_%$E112632112654%_)))
                                      (_%$E112632112654%_)))
                                (_%$E112632112654%_)))
                          (_%$E112632112654%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112629%_))
                (let* ((_%$tgt112642112777%_
                        (let () (declare (not safe)) (__AST-e _%$e112629%_)))
                       (_%$hd112643112780%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112642112777%_)))
                       (_%$tl112644112783%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112642112777%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112644112783%_))
                      (let* ((_%$tgt112645112787%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112644112783%_)))
                             (_%$hd112646112790%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112645112787%_)))
                             (_%$tl112647112793%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112645112787%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd112646112790%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112647112793%_))
                                (let* ((_%$tgt112648112797%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112647112793%_)))
                                       (_%$hd112649112800%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112648112797%_)))
                                       (_%$tl112650112803%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112648112797%_)))
                                       (_%body112807%_ _%$hd112649112800%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112650112803%_))
                                              '())
                                      (__compile _%body112807%_)
                                      (_%$E112631112774%_)))
                                (_%$E112631112774%_))
                            (_%$E112631112774%_)))
                      (_%$E112631112774%_)))
                (_%$E112631112774%_))))))
    (define __compile-let-values%
      (lambda (_%stx112434%_)
        (letrec ((_%compile-simple112436%_
                  (lambda (_%hd-ids112618%_ _%exprs112619%_ _%body112620%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp113737
                                        (map __compile-head-id
                                             _%hd-ids112618%_)))
                                   (declare (not safe))
                                   (##map list __tmp113737 _%exprs112619%_))
                                 (cons _%body112620%_ '())))
                     _%stx112434%_)))
                 (_%compile-values112437%_
                  (lambda (_%hd-ids112533%_ _%exprs112534%_ _%body112535%_)
                    (let _%lp112537%_ ((_%rest112539%_ _%hd-ids112533%_)
                                       (_%exprs112540%_ _%exprs112534%_)
                                       (_%bind112541%_ '())
                                       (_%post112542%_ '()))
                      (let* ((_%rest112543112557%_ _%rest112539%_)
                             (_%else112546112565%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind112541%_)
                                             (cons (_%compile-post112438%_
                                                    _%post112542%_
                                                    _%body112535%_)
                                                   '())))
                                 _%stx112434%_))))
                        (let ((_%K112551112601%_
                               (lambda (_%rest112598%_ _%id112599%_)
                                 (_%lp112537%_
                                  _%rest112598%_
                                  (cdr _%exprs112540%_)
                                  (cons (cons (__compile-head-id _%id112599%_)
                                              (cons (car _%exprs112540%_) '()))
                                        _%bind112541%_)
                                  _%post112542%_)))
                              (_%K112548112583%_
                               (lambda (_%rest112569%_ _%hd112570%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112570%_))
                                     (_%lp112537%_
                                      _%rest112569%_
                                      (cdr _%exprs112540%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd112570%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs112540%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind112541%_)
                                      _%post112542%_)
                                     (if (list? _%hd112570%_)
                                         (let* ((_%len112574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd112570%_)))
                                                (_%tmp112576%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp112537%_
                                            _%rest112569%_
                                            (cdr _%exprs112540%_)
                                            (cons (cons _%tmp112576%_
                                                        (cons (car _%exprs112540%_)
                                                              '()))
                                                  _%bind112541%_)
                                            (cons (cons _%tmp112576%_
                                                        (cons _%len112574%_
                                                              (let ((__tmp113739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id112579%_ _%k112580%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id112579%_))
                                   (cons (__SRC__0 _%id112579%_) _%k112580%_)
                                   '#f)))
                            (__tmp113738
                             (let ()
                               (declare (not safe))
                               (##iota _%len112574%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113739 _%hd112570%_ __tmp113738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post112542%_)))
                                         (__compile-error__%
                                          _%stx112434%_
                                          _%hd112570%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest112543112557%_))
                              (let ((_%tl112553112606%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest112543112557%_)))
                                    (_%hd112552112604%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest112543112557%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd112552112604%_))
                                    (let ((_%tl112555112611%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd112552112604%_)))
                                          (_%hd112554112609%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd112552112604%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl112555112611%_))
                                          (let ((_%id112614%_
                                                 _%hd112554112609%_)
                                                (_%rest112616%_
                                                 _%tl112553112606%_))
                                            (_%K112551112601%_
                                             _%rest112616%_
                                             _%id112614%_))
                                          (let ((_%hd112591%_
                                                 _%hd112552112604%_)
                                                (_%rest112593%_
                                                 _%tl112553112606%_))
                                            (_%K112548112583%_
                                             _%rest112593%_
                                             _%hd112591%_))))
                                    (let ((_%hd112591%_ _%hd112552112604%_)
                                          (_%rest112593%_ _%tl112553112606%_))
                                      (_%K112548112583%_
                                       _%rest112593%_
                                       _%hd112591%_))))
                              (_%else112546112565%_)))))))
                 (_%compile-post112438%_
                  (lambda (_%post112440%_ _%body112441%_)
                    (let _%lp112443%_ ((_%rest112445%_ _%post112440%_)
                                       (_%check112446%_ '())
                                       (_%bind112447%_ '()))
                      (let* ((_%rest112448112460%_ _%rest112445%_)
                             (_%else112450112468%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113740
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind112447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body112441%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx112434%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113740
                                          _%check112446%_)))
                                 _%stx112434%_)))
                             (_%K112452112507%_
                              (lambda (_%rest112471%_
                                       _%init112472%_
                                       _%len112473%_
                                       _%tmp112474%_)
                                (_%lp112443%_
                                 _%rest112471%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp112474%_
                                                    (cons _%len112473%_ '())))
                                        _%stx112434%_)
                                       _%check112446%_)
                                 (let ((__tmp113741
                                        (lambda (_%hd112476%_ _%r112477%_)
                                          (let* ((_%hd112478112485%_
                                                  _%hd112476%_)
                                                 (_%E112480112489%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd112478112485%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K112481112495%_
                                                  (lambda (_%k112492%_
                                                           _%id112493%_)
                                                    (cons (cons _%id112493%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp112474%_
                                          (cons _%k112492%_ '())))
                              '()))
                  _%r112477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd112478112485%_))
                                                (let ((_%hd112482112498%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd112478112485%_)))
                                                      (_%tl112483112500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd112478112485%_))))
                                                  (let* ((_%id112503%_
                                                          _%hd112482112498%_)
                                                         (_%k112505%_
                                                          _%tl112483112500%_))
                                                    (_%K112481112495%_
                                                     _%k112505%_
                                                     _%id112503%_)))
                                                (_%E112480112489%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113741
                                    _%bind112447%_
                                    _%init112472%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest112448112460%_))
                            (let ((_%hd112453112510%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest112448112460%_)))
                                  (_%tl112454112512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest112448112460%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd112453112510%_))
                                  (let ((_%hd112455112515%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd112453112510%_)))
                                        (_%tl112456112517%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd112453112510%_))))
                                    (let ((_%tmp112520%_ _%hd112455112515%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl112456112517%_))
                                          (let ((_%hd112457112522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl112456112517%_)))
                                                (_%tl112458112524%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl112456112517%_))))
                                            (let* ((_%len112527%_
                                                    _%hd112457112522%_)
                                                   (_%init112529%_
                                                    _%tl112458112524%_)
                                                   (_%rest112531%_
                                                    _%tl112454112512%_))
                                              (_%K112452112507%_
                                               _%rest112531%_
                                               _%init112529%_
                                               _%len112527%_
                                               _%tmp112520%_)))
                                          (_%else112450112468%_))))
                                  (_%else112450112468%_)))
                            (_%else112450112468%_)))))))
          (__compile-let-form
           _%stx112434%_
           _%compile-simple112436%_
           _%compile-values112437%_))))
    (define __compile-letrec-values%
      (lambda (_%stx112231%_)
        (letrec ((_%compile-simple112233%_
                  (lambda (_%hd-ids112430%_ _%exprs112431%_ _%body112432%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp113742
                                        (map __compile-head-id
                                             _%hd-ids112430%_)))
                                   (declare (not safe))
                                   (##map list __tmp113742 _%exprs112431%_))
                                 (cons _%body112432%_ '())))
                     _%stx112231%_)))
                 (_%compile-values112234%_
                  (lambda (_%hd-ids112341%_ _%exprs112342%_ _%body112343%_)
                    (let _%lp112345%_ ((_%rest112347%_ _%hd-ids112341%_)
                                       (_%exprs112348%_ _%exprs112342%_)
                                       (_%pre112349%_ '())
                                       (_%bind112350%_ '())
                                       (_%post112351%_ '()))
                      (let* ((_%rest112352112366%_ _%rest112347%_)
                             (_%else112355112374%_
                              (lambda ()
                                (_%compile-inner112235%_
                                 _%pre112349%_
                                 _%bind112350%_
                                 _%post112351%_
                                 _%body112343%_))))
                        (let ((_%K112360112413%_
                               (lambda (_%rest112410%_ _%id112411%_)
                                 (_%lp112345%_
                                  _%rest112410%_
                                  (cdr _%exprs112348%_)
                                  _%pre112349%_
                                  (cons (cons (__compile-head-id _%id112411%_)
                                              (cons (car _%exprs112348%_) '()))
                                        _%bind112350%_)
                                  _%post112351%_)))
                              (_%K112357112395%_
                               (lambda (_%rest112378%_ _%hd112379%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112379%_))
                                     (_%lp112345%_
                                      _%rest112378%_
                                      (cdr _%exprs112348%_)
                                      _%pre112349%_
                                      (cons (cons (__compile-head-id
                                                   _%hd112379%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs112348%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind112350%_)
                                      _%post112351%_)
                                     (if (list? _%hd112379%_)
                                         (let* ((_%len112383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd112379%_)))
                                                (_%tmp112385%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp112345%_
                                            _%rest112378%_
                                            (cdr _%exprs112348%_)
                                            (let ((__tmp113743
                                                   (lambda (_%id112388%_
                                                            _%r112389%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id112388%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id112388%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r112389%_)
                 _%r112389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp113743
                                               _%pre112349%_
                                               _%hd112379%_))
                                            (cons (cons _%tmp112385%_
                                                        (cons (car _%exprs112348%_)
                                                              '()))
                                                  _%bind112350%_)
                                            (cons (cons _%tmp112385%_
                                                        (cons _%len112383%_
                                                              (let ((__tmp113745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id112391%_ _%k112392%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id112391%_))
                                   (cons (__SRC__0 _%id112391%_) _%k112392%_)
                                   '#f)))
                            (__tmp113744
                             (let ()
                               (declare (not safe))
                               (##iota _%len112383%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113745 _%hd112379%_ __tmp113744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post112351%_)))
                                         (__compile-error__%
                                          _%stx112231%_
                                          _%hd112379%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest112352112366%_))
                              (let ((_%tl112362112418%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest112352112366%_)))
                                    (_%hd112361112416%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest112352112366%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd112361112416%_))
                                    (let ((_%tl112364112423%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd112361112416%_)))
                                          (_%hd112363112421%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd112361112416%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl112364112423%_))
                                          (let ((_%id112426%_
                                                 _%hd112363112421%_)
                                                (_%rest112428%_
                                                 _%tl112362112418%_))
                                            (_%K112360112413%_
                                             _%rest112428%_
                                             _%id112426%_))
                                          (let ((_%hd112403%_
                                                 _%hd112361112416%_)
                                                (_%rest112405%_
                                                 _%tl112362112418%_))
                                            (_%K112357112395%_
                                             _%rest112405%_
                                             _%hd112403%_))))
                                    (let ((_%hd112403%_ _%hd112361112416%_)
                                          (_%rest112405%_ _%tl112362112418%_))
                                      (_%K112357112395%_
                                       _%rest112405%_
                                       _%hd112403%_))))
                              (_%else112355112374%_)))))))
                 (_%compile-inner112235%_
                  (lambda (_%pre112336%_
                           _%bind112337%_
                           _%post112338%_
                           _%body112339%_)
                    (if (null? _%pre112336%_)
                        (_%compile-bind112236%_
                         _%bind112337%_
                         _%post112338%_
                         _%body112339%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre112336%_)
                                     (cons (_%compile-bind112236%_
                                            _%bind112337%_
                                            _%post112338%_
                                            _%body112339%_)
                                           '())))
                         _%stx112231%_))))
                 (_%compile-bind112236%_
                  (lambda (_%bind112332%_ _%post112333%_ _%body112334%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind112332%_)
                                 (cons (_%compile-post112237%_
                                        _%post112333%_
                                        _%body112334%_)
                                       '())))
                     _%stx112231%_)))
                 (_%compile-post112237%_
                  (lambda (_%post112239%_ _%body112240%_)
                    (let _%lp112242%_ ((_%rest112244%_ _%post112239%_)
                                       (_%check112245%_ '())
                                       (_%bind112246%_ '()))
                      (let* ((_%rest112247112259%_ _%rest112244%_)
                             (_%else112249112267%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113746
                                              (let ((__tmp113747
                                                     (cons _%body112240%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp113747
                                                 _%bind112246%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113746
                                          _%check112245%_)))
                                 _%stx112231%_)))
                             (_%K112251112306%_
                              (lambda (_%rest112270%_
                                       _%init112271%_
                                       _%len112272%_
                                       _%tmp112273%_)
                                (_%lp112242%_
                                 _%rest112270%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp112273%_
                                                    (cons _%len112272%_ '())))
                                        _%stx112231%_)
                                       _%check112245%_)
                                 (let ((__tmp113748
                                        (lambda (_%hd112275%_ _%r112276%_)
                                          (let* ((_%hd112277112284%_
                                                  _%hd112275%_)
                                                 (_%E112279112288%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd112277112284%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K112280112294%_
                                                  (lambda (_%k112291%_
                                                           _%id112292%_)
                                                    (cons (cons 'set!
                                                                (cons _%id112292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp112273%_
                                                (cons _%k112291%_ '())))
                                    '())))
                  _%r112276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd112277112284%_))
                                                (let ((_%hd112281112297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd112277112284%_)))
                                                      (_%tl112282112299%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd112277112284%_))))
                                                  (let* ((_%id112302%_
                                                          _%hd112281112297%_)
                                                         (_%k112304%_
                                                          _%tl112282112299%_))
                                                    (_%K112280112294%_
                                                     _%k112304%_
                                                     _%id112302%_)))
                                                (_%E112279112288%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113748
                                    _%bind112246%_
                                    _%init112271%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest112247112259%_))
                            (let ((_%hd112252112309%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest112247112259%_)))
                                  (_%tl112253112311%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest112247112259%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd112252112309%_))
                                  (let ((_%hd112254112314%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd112252112309%_)))
                                        (_%tl112255112316%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd112252112309%_))))
                                    (let ((_%tmp112319%_ _%hd112254112314%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl112255112316%_))
                                          (let ((_%hd112256112321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl112255112316%_)))
                                                (_%tl112257112323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl112255112316%_))))
                                            (let* ((_%len112326%_
                                                    _%hd112256112321%_)
                                                   (_%init112328%_
                                                    _%tl112257112323%_)
                                                   (_%rest112330%_
                                                    _%tl112253112311%_))
                                              (_%K112251112306%_
                                               _%rest112330%_
                                               _%init112328%_
                                               _%len112326%_
                                               _%tmp112319%_)))
                                          (_%else112249112267%_))))
                                  (_%else112249112267%_)))
                            (_%else112249112267%_)))))))
          (__compile-let-form
           _%stx112231%_
           _%compile-simple112233%_
           _%compile-values112234%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx111982%_)
        (letrec ((_%compile-simple111984%_
                  (lambda (_%hd-ids112227%_ _%exprs112228%_ _%body112229%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp113749
                                        (map __compile-head-id
                                             _%hd-ids112227%_)))
                                   (declare (not safe))
                                   (##map list __tmp113749 _%exprs112228%_))
                                 (cons _%body112229%_ '())))
                     _%stx111982%_)))
                 (_%compile-values111985%_
                  (lambda (_%hd-ids112134%_ _%exprs112135%_ _%body112136%_)
                    (let _%lp112138%_ ((_%rest112140%_ _%hd-ids112134%_)
                                       (_%exprs112141%_ _%exprs112135%_)
                                       (_%bind112142%_ '())
                                       (_%post112143%_ '()))
                      (let* ((_%rest112144112158%_ _%rest112140%_)
                             (_%else112147112166%_
                              (lambda ()
                                (_%compile-bind111986%_
                                 _%bind112142%_
                                 _%post112143%_
                                 _%body112136%_))))
                        (let ((_%K112152112210%_
                               (lambda (_%rest112205%_ _%hd112206%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112206%_))
                                     (let ((_%id112208%_
                                            (__SRC__0 _%hd112206%_)))
                                       (_%lp112138%_
                                        _%rest112205%_
                                        (cdr _%exprs112141%_)
                                        (cons (cons _%id112208%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind112142%_)
                                        (cons (cons _%id112208%_
                                                    (cons (car _%exprs112141%_)
                                                          '()))
                                              _%post112143%_)))
                                     (_%lp112138%_
                                      _%rest112205%_
                                      (cdr _%exprs112141%_)
                                      _%bind112142%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs112141%_)
                                                        '()))
                                            _%post112143%_)))))
                              (_%K112149112190%_
                               (lambda (_%rest112170%_ _%hd112171%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112171%_))
                                     (let ((_%id112174%_
                                            (__SRC__0 _%hd112171%_)))
                                       (_%lp112138%_
                                        _%rest112170%_
                                        (cdr _%exprs112141%_)
                                        (cons (cons _%id112174%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind112142%_)
                                        (cons (cons _%id112174%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs112141%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post112143%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd112171%_))
                                         (if (list? _%hd112171%_)
                                             (let* ((_%len112178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd112171%_)))
                                                    (_%tmp112180%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp112138%_
                                                _%rest112170%_
                                                (cdr _%exprs112141%_)
                                                (let ((__tmp113750
                                                       (lambda (_%id112183%_
                                                                _%r112184%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id112183%_))
                     (cons (cons (__SRC__0 _%id112183%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r112184%_)
                     _%r112184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp113750
                                                   _%bind112142%_
                                                   _%hd112171%_))
                                                (cons (cons _%tmp112180%_
                                                            (cons (car _%exprs112141%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len112178%_
                                (let ((__tmp113752
                                       (lambda (_%id112186%_ _%k112187%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id112186%_))
                                             (cons (__SRC__0 _%id112186%_)
                                                   _%k112187%_)
                                             '#f)))
                                      (__tmp113751
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len112178%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp113752
                                   _%hd112171%_
                                   __tmp113751)))))
              _%post112143%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx111982%_
                                              _%hd112171%_))
                                         (_%lp112138%_
                                          _%rest112170%_
                                          (cdr _%exprs112141%_)
                                          _%bind112142%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs112141%_)
                                                            '()))
                                                _%post112143%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest112144112158%_))
                              (let ((_%tl112154112215%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest112144112158%_)))
                                    (_%hd112153112213%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest112144112158%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd112153112213%_))
                                    (let ((_%tl112156112220%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd112153112213%_)))
                                          (_%hd112155112218%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd112153112213%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl112156112220%_))
                                          (let ((_%hd112223%_
                                                 _%hd112155112218%_)
                                                (_%rest112225%_
                                                 _%tl112154112215%_))
                                            (_%K112152112210%_
                                             _%rest112225%_
                                             _%hd112223%_))
                                          (let ((_%hd112198%_
                                                 _%hd112153112213%_)
                                                (_%rest112200%_
                                                 _%tl112154112215%_))
                                            (_%K112149112190%_
                                             _%rest112200%_
                                             _%hd112198%_))))
                                    (let ((_%hd112198%_ _%hd112153112213%_)
                                          (_%rest112200%_ _%tl112154112215%_))
                                      (_%K112149112190%_
                                       _%rest112200%_
                                       _%hd112198%_))))
                              (_%else112147112166%_)))))))
                 (_%compile-bind111986%_
                  (lambda (_%bind112130%_ _%post112131%_ _%body112132%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind112130%_)
                                 (cons (_%compile-post111987%_
                                        _%post112131%_
                                        _%body112132%_)
                                       '())))
                     _%stx111982%_)))
                 (_%compile-post111987%_
                  (lambda (_%post111989%_ _%body111990%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp113753
                                  (let ((__tmp113755
                                         (lambda (_%hd111992%_ _%r111993%_)
                                           (let* ((_%hd111994112017%_
                                                   _%hd111992%_)
                                                  (_%E111998112021%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd111994112017%_
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
                                             (let ((_%K112011112115%_
                                                    (lambda (_%expr112113%_)
                                                      (cons _%expr112113%_
                                                            _%r111993%_)))
                                                   (_%K112006112093%_
                                                    (lambda (_%expr112090%_
                                                             _%id112091%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id112091%_ (cons _%expr112090%_ '())))
                     _%stx111982%_)
                    _%r111993%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K111999112060%_
                                                    (lambda (_%init112025%_
                                                             _%len112026%_
                                                             _%expr112027%_
                                                             _%tmp112028%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp112028%_
                                             (cons _%expr112027%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp112028%_
                                                    (cons _%len112026%_ '())))
                                        _%stx111982%_)
                                       (let ((__tmp113756
                                              (map (lambda (_%hd112030%_)
                                                     (let* ((_%hd112031112038%_
                                                             _%hd112030%_)
                                                            (_%E112033112042%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd112031112038%_
                                '([id . k])))
                       '#!void))
                    (_%K112034112048%_
                     (lambda (_%k112045%_ _%id112046%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id112046%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp112028%_
                                                      (cons _%k112045%_ '())))
                                          '())))
                        _%stx111982%_))))
               (if (let () (declare (not safe)) (##pair? _%hd112031112038%_))
                   (let ((_%hd112035112051%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd112031112038%_)))
                         (_%tl112036112053%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd112031112038%_))))
                     (let* ((_%id112056%_ _%hd112035112051%_)
                            (_%k112058%_ _%tl112036112053%_))
                       (_%K112034112048%_ _%k112058%_ _%id112056%_)))
                   (_%E112033112042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init112025%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp113756)))))
                     _%stx111982%_)
                    _%r111993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match113609113610%_
                                                       (lambda (_%hd112000112063%_
                                                                _%tl112001112065%_
                                                                _%hd112002112070%_
                                                                _%tl112003112072%_)
                                                         (let ((_%tmp112068%_
                                                                _%hd112000112063%_)
                                                               (_%expr112075%_
                                                                _%hd112002112070%_))
                                                           (_%E111998112021%_))))
                                                      (_%__match113603113604%_
                                                       (lambda (_%hd112000112063%_
                                                                _%tl112001112065%_)
                                                         (let ((_%tmp112068%_
                                                                _%hd112000112063%_))
                                                           (_%E111998112021%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd111994112017%_))
                                                     (let ((_%tl112013112120%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd111994112017%_)))
                                                           (_%hd112012112118%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd111994112017%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd112012112118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl112013112120%_))
                       (let ((_%tl112015112125%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl112013112120%_)))
                             (_%hd112014112123%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl112013112120%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl112015112125%_))
                             (let ((_%expr112128%_ _%hd112014112123%_))
                               (_%K112011112115%_ _%expr112128%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl112015112125%_))
                                 (let ((_%tl112005112079%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl112015112125%_)))
                                       (_%hd112004112077%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl112015112125%_))))
                                   (let ((_%tmp112068%_ _%hd112012112118%_)
                                         (_%expr112075%_ _%hd112014112123%_)
                                         (_%len112082%_ _%hd112004112077%_)
                                         (_%init112084%_ _%tl112005112079%_))
                                     (_%K111999112060%_
                                      _%init112084%_
                                      _%len112082%_
                                      _%expr112075%_
                                      _%tmp112068%_)))
                                 (_%__match113609113610%_
                                  _%hd112012112118%_
                                  _%tl112013112120%_
                                  _%hd112014112123%_
                                  _%tl112015112125%_))))
                       (_%__match113603113604%_
                        _%hd112012112118%_
                        _%tl112013112120%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl112013112120%_))
                       (let ((_%tl112010112105%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl112013112120%_)))
                             (_%hd112009112103%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl112013112120%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl112010112105%_))
                             (let ((_%id112101%_ _%hd112012112118%_)
                                   (_%expr112108%_ _%hd112009112103%_))
                               (_%K112006112093%_ _%expr112108%_ _%id112101%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl112010112105%_))
                                 (let ((_%tl112005112079%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl112010112105%_)))
                                       (_%hd112004112077%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl112010112105%_))))
                                   (let ((_%tmp112068%_ _%hd112012112118%_)
                                         (_%expr112075%_ _%hd112009112103%_)
                                         (_%len112082%_ _%hd112004112077%_)
                                         (_%init112084%_ _%tl112005112079%_))
                                     (_%K111999112060%_
                                      _%init112084%_
                                      _%len112082%_
                                      _%expr112075%_
                                      _%tmp112068%_)))
                                 (_%__match113609113610%_
                                  _%hd112012112118%_
                                  _%tl112013112120%_
                                  _%hd112009112103%_
                                  _%tl112010112105%_))))
                       (_%__match113603113604%_
                        _%hd112012112118%_
                        _%tl112013112120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E111998112021%_)))))))
                                        (__tmp113754 (list _%body111990%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp113755
                                     __tmp113754
                                     _%post111989%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp113753)))
                     _%stx111982%_))))
          (__compile-let-form
           _%stx111982%_
           _%compile-simple111984%_
           _%compile-values111985%_))))
    (define __compile-call%
      (lambda (_%stx111942%_)
        (let* ((_%$e111944%_ _%stx111942%_)
               (_%$E111946111955%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111944%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111944%_))
              (let* ((_%$tgt111947111958%_
                      (let () (declare (not safe)) (__AST-e _%$e111944%_)))
                     (_%$hd111948111961%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111947111958%_)))
                     (_%$tl111949111964%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111947111958%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111949111964%_))
                    (let* ((_%$tgt111950111968%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111949111964%_)))
                           (_%$hd111951111971%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111950111968%_)))
                           (_%$tl111952111974%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111950111968%_)))
                           (_%rator111978%_ _%$hd111951111971%_)
                           (_%rands111980%_ _%$tl111952111974%_))
                      (__SRC__%
                       (cons (__compile _%rator111978%_)
                             (map __compile _%rands111980%_))
                       _%stx111942%_))
                    (_%$E111946111955%_)))
              (_%$E111946111955%_)))))
    (define __compile-ref%
      (lambda (_%stx111904%_)
        (let* ((_%$e111906%_ _%stx111904%_)
               (_%$E111908111917%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111906%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111906%_))
              (let* ((_%$tgt111909111920%_
                      (let () (declare (not safe)) (__AST-e _%$e111906%_)))
                     (_%$hd111910111923%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111909111920%_)))
                     (_%$tl111911111926%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111909111920%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111911111926%_))
                    (let* ((_%$tgt111912111930%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111911111926%_)))
                           (_%$hd111913111933%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111912111930%_)))
                           (_%$tl111914111936%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111912111930%_)))
                           (_%id111940%_ _%$hd111913111933%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111914111936%_))
                                  '())
                          (__SRC__% _%id111940%_ _%stx111904%_)
                          (_%$E111908111917%_)))
                    (_%$E111908111917%_)))
              (_%$E111908111917%_)))))
    (define __compile-setq%
      (lambda (_%stx111851%_)
        (let* ((_%$e111853%_ _%stx111851%_)
               (_%$E111855111867%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111853%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111853%_))
              (let* ((_%$tgt111856111870%_
                      (let () (declare (not safe)) (__AST-e _%$e111853%_)))
                     (_%$hd111857111873%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111856111870%_)))
                     (_%$tl111858111876%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111856111870%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111858111876%_))
                    (let* ((_%$tgt111859111880%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111858111876%_)))
                           (_%$hd111860111883%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111859111880%_)))
                           (_%$tl111861111886%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111859111880%_)))
                           (_%id111890%_ _%$hd111860111883%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111861111886%_))
                          (let* ((_%$tgt111862111892%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111861111886%_)))
                                 (_%$hd111863111895%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111862111892%_)))
                                 (_%$tl111864111898%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111862111892%_)))
                                 (_%expr111902%_ _%$hd111863111895%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111864111898%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id111890%_
                                              _%stx111851%_)
                                             (cons (__compile _%expr111902%_)
                                                   '())))
                                 _%stx111851%_)
                                (_%$E111855111867%_)))
                          (_%$E111855111867%_)))
                    (_%$E111855111867%_)))
              (_%$E111855111867%_)))))
    (define __compile-if%
      (lambda (_%stx111783%_)
        (let* ((_%$e111785%_ _%stx111783%_)
               (_%$E111787111802%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111785%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111785%_))
              (let* ((_%$tgt111788111805%_
                      (let () (declare (not safe)) (__AST-e _%$e111785%_)))
                     (_%$hd111789111808%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111788111805%_)))
                     (_%$tl111790111811%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111788111805%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111790111811%_))
                    (let* ((_%$tgt111791111815%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111790111811%_)))
                           (_%$hd111792111818%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111791111815%_)))
                           (_%$tl111793111821%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111791111815%_)))
                           (_%p111825%_ _%$hd111792111818%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111793111821%_))
                          (let* ((_%$tgt111794111827%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111793111821%_)))
                                 (_%$hd111795111830%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111794111827%_)))
                                 (_%$tl111796111833%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111794111827%_)))
                                 (_%t111837%_ _%$hd111795111830%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111796111833%_))
                                (let* ((_%$tgt111797111839%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111796111833%_)))
                                       (_%$hd111798111842%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111797111839%_)))
                                       (_%$tl111799111845%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111797111839%_)))
                                       (_%f111849%_ _%$hd111798111842%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111799111845%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p111825%_)
                                                   (cons (__compile
                                                          _%t111837%_)
                                                         (cons (__compile
                                                                _%f111849%_)
                                                               '()))))
                                       _%stx111783%_)
                                      (_%$E111787111802%_)))
                                (_%$E111787111802%_)))
                          (_%$E111787111802%_)))
                    (_%$E111787111802%_)))
              (_%$E111787111802%_)))))
    (define __compile-quote%
      (lambda (_%stx111745%_)
        (let* ((_%$e111747%_ _%stx111745%_)
               (_%$E111749111758%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111747%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111747%_))
              (let* ((_%$tgt111750111761%_
                      (let () (declare (not safe)) (__AST-e _%$e111747%_)))
                     (_%$hd111751111764%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111750111761%_)))
                     (_%$tl111752111767%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111750111761%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111752111767%_))
                    (let* ((_%$tgt111753111771%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111752111767%_)))
                           (_%$hd111754111774%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111753111771%_)))
                           (_%$tl111755111777%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111753111771%_)))
                           (_%e111781%_ _%$hd111754111774%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111755111777%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e111781%_))
                                       '()))
                           _%stx111745%_)
                          (_%$E111749111758%_)))
                    (_%$E111749111758%_)))
              (_%$E111749111758%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx111707%_)
        (let* ((_%$e111709%_ _%stx111707%_)
               (_%$E111711111720%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111709%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111709%_))
              (let* ((_%$tgt111712111723%_
                      (let () (declare (not safe)) (__AST-e _%$e111709%_)))
                     (_%$hd111713111726%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111712111723%_)))
                     (_%$tl111714111729%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111712111723%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111714111729%_))
                    (let* ((_%$tgt111715111733%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111714111729%_)))
                           (_%$hd111716111736%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111715111733%_)))
                           (_%$tl111717111739%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111715111733%_)))
                           (_%e111743%_ _%$hd111716111736%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111717111739%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e111743%_ '()))
                           _%stx111707%_)
                          (_%$E111711111720%_)))
                    (_%$E111711111720%_)))
              (_%$E111711111720%_)))))
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
