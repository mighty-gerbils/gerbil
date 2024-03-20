(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710943027)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp130651 (list gxc#::void::t))
            (__tmp130649
             (let ((__tmp130650
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130650 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp130651
         '()
         __tmp130649
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args128545_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args128545_)))
    (define gxc#::collect-top-level-type-info-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-top-level-type-info::t
            '%#begin
            gxc#apply-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-top-level-type-info::t
            '%#begin-syntax
            gxc#apply-begin-syntax%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-top-level-type-info::t
            '%#module
            gxc#apply-module%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-top-level-type-info::t
            '%#define-values
            gxc#collect-top-level-type-define-values%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::collect-top-level-type-info::t)))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx128537_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self128540_
                (let ((__obj130632
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj130632))
               (__tmp130652
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128540_ _stx128537_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130652
           gxc#current-compile-method
           _self128540_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp130655 (list gxc#::false::t))
            (__tmp130653
             (let ((__tmp130654
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130654 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp130655
         '()
         __tmp130653
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args128534_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args128534_)))
    (define gxc#::basic-expression-top-level-type-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-top-level-type::t
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-top-level-type::t
            '%#call
            gxc#basic-expression-type-call%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::basic-expression-top-level-type::t)))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx128526_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self128529_
                (let ((__obj130634
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj130634))
               (__tmp130656
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128529_ _stx128526_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130656
           gxc#current-compile-method
           _self128529_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp130659 (list gxc#::void::t))
            (__tmp130657
             (let ((__tmp130658
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130658 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp130659
         '()
         __tmp130657
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args128523_
        (apply make-instance gxc#::collect-type-info::t _$args128523_)))
    (define gxc#::collect-type-info-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#begin
            gxc#apply-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#begin-syntax
            gxc#apply-begin-syntax%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#module
            gxc#apply-module%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#define-values
            gxc#collect-type-define-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#begin-annotation
            gxc#apply-begin-annotation%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#lambda
            gxc#apply-body-lambda%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#case-lambda
            gxc#apply-body-case-lambda%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#let-values
            gxc#collect-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#letrec-values
            gxc#collect-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#letrec*-values
            gxc#collect-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#call
            gxc#collect-type-call%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#if
            gxc#apply-operands))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#set!
            gxc#apply-body-setq%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::collect-type-info::t)))))
    (define gxc#apply-collect-type-info
      (lambda (_stx128515_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self128518_
                (let ((__obj130636
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj130636))
               (__tmp130660
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128518_ _stx128515_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130660
           gxc#current-compile-method
           _self128518_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp130663 (list gxc#::false::t))
            (__tmp130661
             (let ((__tmp130662
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130662 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp130663
         '()
         __tmp130661
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args128512_
        (apply make-instance gxc#::basic-expression-type::t _$args128512_)))
    (define gxc#::basic-expression-type-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#begin
            gxc#basic-expression-type-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#lambda
            gxc#basic-expression-type-lambda%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#let-values
            gxc#basic-expression-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#letrec-values
            gxc#basic-expression-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#letrec*-values
            gxc#basic-expression-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#call
            gxc#basic-expression-type-call%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#ref
            gxc#basic-expression-type-ref%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::basic-expression-type::t)))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx128504_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self128507_
                (let ((__obj130638
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj130638))
               (__tmp130664
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128507_ _stx128504_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130664
           gxc#current-compile-method
           _self128507_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp130667 (list gxc#::basic-xform::t))
            (__tmp130665
             (let ((__tmp130666
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130666 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp130667
         '()
         __tmp130665
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args128501_
        (apply make-instance gxc#::lift-top-lambdas::t _$args128501_)))
    (define gxc#::lift-top-lambdas-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::lift-top-lambdas::t
            '%#define-values
            gxc#lift-top-lambda-define-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::lift-top-lambdas::t
            '%#let-values
            gxc#lift-top-lambda-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::lift-top-lambdas::t
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::lift-top-lambdas::t
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::lift-top-lambdas::t)))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx128493_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self128496_
                (let ((__obj130640
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj130640))
               (__tmp130668
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128496_ _stx128493_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130668
           gxc#current-compile-method
           _self128496_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self128395_ _stx128396_)
        (let* ((___stx128558128559_ _stx128396_)
               (_g128399128419_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128558128559_)))))
          (let ((___kont128560128561_
                 (lambda (_L128463_ _L128464_)
                   (let ((_sym128482_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128464_))))
                     (if (let ((__tmp130669 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130669 _sym128482_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128482_))
                         (let ((_type128483128485_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L128463_))))
                           (if _type128483128485_
                               (let ((_type128488_ _type128483128485_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym128482_
                                  _type128488_))
                               '#f))))))
                (___kont128562128563_ (lambda () '#!void)))
            (let ((___match128591128592_
                   (lambda (_e128405128431_
                            _hd128404128434_
                            _tl128403128436_
                            _e128408128439_
                            _hd128407128442_
                            _tl128406128444_
                            _e128411128447_
                            _hd128410128450_
                            _tl128409128452_
                            _e128414128455_
                            _hd128413128458_
                            _tl128412128460_)
                     (let ((_L128463_ _hd128413128458_)
                           (_L128464_ _hd128410128450_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128464_))
                           (___kont128560128561_ _L128463_ _L128464_)
                           (___kont128562128563_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128558128559_))
                  (let ((_e128405128431_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128558128559_))))
                    (let ((_tl128403128436_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128405128431_)))
                          (_hd128404128434_
                           (let ()
                             (declare (not safe))
                             (##car _e128405128431_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128403128436_))
                          (let ((_e128408128439_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128403128436_))))
                            (let ((_tl128406128444_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128408128439_)))
                                  (_hd128407128442_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128408128439_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128407128442_))
                                  (let ((_e128411128447_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128407128442_))))
                                    (let ((_tl128409128452_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128411128447_)))
                                          (_hd128410128450_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128411128447_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128409128452_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128406128444_))
                                              (let ((_e128414128455_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128406128444_))))
                                                (let ((_tl128412128460_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128414128455_)))
                                                      (_hd128413128458_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128414128455_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128412128460_))
                                                      (___match128591128592_
                                                       _e128405128431_
                                                       _hd128404128434_
                                                       _tl128403128436_
                                                       _e128408128439_
                                                       _hd128407128442_
                                                       _tl128406128444_
                                                       _e128411128447_
                                                       _hd128410128450_
                                                       _tl128409128452_
                                                       _e128414128455_
                                                       _hd128413128458_
                                                       _tl128412128460_)
                                                      (___kont128562128563_))))
                                              (___kont128562128563_))
                                          (___kont128562128563_))))
                                  (___kont128562128563_))))
                          (___kont128562128563_))))
                  (___kont128562128563_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self128250_ _stx128251_)
        (let* ((___stx128594128595_ _stx128251_)
               (_g128254128285_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128594128595_)))))
          (let ((___kont128596128597_
                 (lambda (_L128367_ _L128368_)
                   (let ((_sym128384_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128368_))))
                     (if (let ((__tmp130670 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130670 _sym128384_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128384_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym128384_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym128384_))
                             (let ((_type128385128387_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L128367_))))
                               (if _type128385128387_
                                   (let ((_type128390_ _type128385128387_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym128384_
                                      _type128390_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self128250_ _L128367_)))))
                (___kont128598128599_
                 (lambda (_L128314_ _L128315_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self128250_ _L128314_)))))
            (let ((___match128627128628_
                   (lambda (_e128260128335_
                            _hd128259128338_
                            _tl128258128340_
                            _e128263128343_
                            _hd128262128346_
                            _tl128261128348_
                            _e128266128351_
                            _hd128265128354_
                            _tl128264128356_
                            _e128269128359_
                            _hd128268128362_
                            _tl128267128364_)
                     (let ((_L128367_ _hd128268128362_)
                           (_L128368_ _hd128265128354_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128368_))
                           (___kont128596128597_ _L128367_ _L128368_)
                           (___kont128598128599_
                            _hd128268128362_
                            _hd128262128346_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128594128595_))
                  (let ((_e128260128335_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128594128595_))))
                    (let ((_tl128258128340_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128260128335_)))
                          (_hd128259128338_
                           (let ()
                             (declare (not safe))
                             (##car _e128260128335_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128258128340_))
                          (let ((_e128263128343_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128258128340_))))
                            (let ((_tl128261128348_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128263128343_)))
                                  (_hd128262128346_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128263128343_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128262128346_))
                                  (let ((_e128266128351_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128262128346_))))
                                    (let ((_tl128264128356_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128266128351_)))
                                          (_hd128265128354_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128266128351_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128264128356_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128261128348_))
                                              (let ((_e128269128359_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128261128348_))))
                                                (let ((_tl128267128364_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128269128359_)))
                                                      (_hd128268128362_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128269128359_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128267128364_))
                                                      (___match128627128628_
                                                       _e128260128335_
                                                       _hd128259128338_
                                                       _tl128258128340_
                                                       _e128263128343_
                                                       _hd128262128346_
                                                       _tl128261128348_
                                                       _e128266128351_
                                                       _hd128265128354_
                                                       _tl128264128356_
                                                       _e128269128359_
                                                       _hd128268128362_
                                                       _tl128267128364_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128254128285_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128254128285_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128261128348_))
                                              (let ((_e128280128306_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128261128348_))))
                                                (let ((_tl128278128311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128280128306_)))
                                                      (_hd128279128309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128280128306_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128278128311_))
                                                      (___kont128598128599_
                                                       _hd128279128309_
                                                       _hd128262128346_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128254128285_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128254128285_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl128261128348_))
                                      (let ((_e128280128306_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl128261128348_))))
                                        (let ((_tl128278128311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e128280128306_)))
                                              (_hd128279128309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e128280128306_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl128278128311_))
                                              (___kont128598128599_
                                               _hd128279128309_
                                               _hd128262128346_)
                                              (let ()
                                                (declare (not safe))
                                                (_g128254128285_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g128254128285_))))))
                          (let () (declare (not safe)) (_g128254128285_)))))
                  (let () (declare (not safe)) (_g128254128285_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self128030_ _stx128031_)
        (letrec ((_collect-e128033_
                  (lambda (_hd128194_ _expr128195_)
                    (let* ((___stx128650128651_ _hd128194_)
                           (_g128198128208_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx128650128651_)))))
                      (let ((___kont128652128653_
                             (lambda (_L128228_)
                               (let ((_sym128239_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L128228_))))
                                 (if (let ((__tmp130671
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp130671 _sym128239_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym128239_))
                                     (let ((_type128240128242_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr128195_))))
                                       (if _type128240128242_
                                           (let ((_type128245_
                                                  _type128240128242_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym128239_
                                              _type128245_
                                              '#t))
                                           '#f))))))
                            (___kont128654128655_ (lambda () '#!void)))
                        (let ((___match128663128664_
                               (lambda (_e128203128220_
                                        _hd128202128223_
                                        _tl128201128225_)
                                 (let ((_L128228_ _hd128202128223_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L128228_))
                                       (___kont128652128653_ _L128228_)
                                       (___kont128654128655_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx128650128651_))
                              (let ((_e128203128220_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx128650128651_))))
                                (let ((_tl128201128225_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128203128220_)))
                                      (_hd128202128223_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128203128220_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl128201128225_))
                                      (___match128663128664_
                                       _e128203128220_
                                       _hd128202128223_
                                       _tl128201128225_)
                                      (___kont128654128655_))))
                              (___kont128654128655_))))))))
          (let* ((_g128035128070_
                  (lambda (_g128036128067_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g128036128067_))))
                 (_g128034128191_
                  (lambda (_g128036128073_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g128036128073_))
                        (let ((_e128042128075_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g128036128073_))))
                          (let ((_hd128041128078_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128042128075_)))
                                (_tl128040128080_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128042128075_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128040128080_))
                                (let ((_e128045128083_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128040128080_))))
                                  (let ((_hd128044128086_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128045128083_)))
                                        (_tl128043128088_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128045128083_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd128044128086_))
                                        (let ((_g130672_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd128044128086_
                                                  '0))))
                                          (begin
                                            (let ((_g130673_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g130672_)
                                                         (##vector-length
                                                          _g130672_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g130673_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g130673_)))
                                            (let ((_target128046128091_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130672_
                                                      0)))
                                                  (_tl128048128093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130672_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl128048128093_))
                                                  (letrec ((_loop128049128096_
                                                            (lambda (_hd128047128099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr128053128101_
                             _hd128054128103_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd128047128099_))
                          (let ((_e128050128106_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd128047128099_))))
                            (let ((_lp-hd128051128109_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128050128106_)))
                                  (_lp-tl128052128111_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128050128106_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd128051128109_))
                                  (let ((_e128059128114_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd128051128109_))))
                                    (let ((_hd128058128117_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128059128114_)))
                                          (_tl128057128119_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128059128114_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl128057128119_))
                                          (let ((_e128062128122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl128057128119_))))
                                            (let ((_hd128061128125_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128062128122_)))
                                                  (_tl128060128127_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128062128122_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl128060128127_))
                                                  (let ((__tmp130678
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd128061128125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr128053128101_)))
                (__tmp130677
                 (let ()
                   (declare (not safe))
                   (cons _hd128058128117_ _hd128054128103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop128049128096_
                                                     _lp-tl128052128111_
                                                     __tmp130678
                                                     __tmp130677))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g128035128070_
                                                     _g128036128073_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g128035128070_
                                             _g128036128073_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g128035128070_ _g128036128073_)))))
                          (let ((_expr128055128130_
                                 (reverse _expr128053128101_))
                                (_hd128056128132_ (reverse _hd128054128103_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128043128088_))
                                (let ((_e128065128135_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128043128088_))))
                                  (let ((_hd128064128138_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128065128135_)))
                                        (_tl128063128140_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128065128135_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128063128140_))
                                        ((lambda (_L128143_
                                                  _L128144_
                                                  _L128145_)
                                           (for-each
                                            _collect-e128033_
                                            (let ((__tmp130674
                                                   (lambda (_g128165128168_
                                                            _g128166128170_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128165128168_
                                                             _g128166128170_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130674
                                                      '()
                                                      _L128145_))
                                            (let ((__tmp130675
                                                   (lambda (_g128172128175_
                                                            _g128173128177_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128172128175_
                                                             _g128173128177_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130675
                                                      '()
                                                      _L128144_)))
                                           (for-each
                                            (lambda (_g128179128181_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self128030_
                                                 _g128179128181_)))
                                            (let ((__tmp130676
                                                   (lambda (_g128183128186_
                                                            _g128184128188_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128183128186_
                                                             _g128184128188_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130676
                                                      '()
                                                      _L128144_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self128030_
                                              _L128143_)))
                                         _hd128064128138_
                                         _expr128055128130_
                                         _hd128056128132_)
                                        (let ()
                                          (declare (not safe))
                                          (_g128035128070_ _g128036128073_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g128035128070_ _g128036128073_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop128049128096_
                                                       _target128046128091_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g128035128070_
                                                     _g128036128073_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g128035128070_ _g128036128073_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g128035128070_ _g128036128073_)))))
                        (let ()
                          (declare (not safe))
                          (_g128035128070_ _g128036128073_))))))
            (declare (not safe))
            (_g128034128191_ _stx128031_)))))
    (define gxc#collect-type-call%
      (lambda (_self127517_ _stx127518_)
        (let* ((___stx128666128667_ _stx127518_)
               (_g127522127637_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128666128667_)))))
          (let ((___kont128668128669_
                 (lambda (_L127980_ _L127981_ _L127982_ _L127983_ _L127984_)
                   (let ((__tmp130682
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127983_)))
                         (__tmp130681
                          (let () (declare (not safe)) (gx#stx-e _L127982_)))
                         (__tmp130680
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127981_)))
                         (__tmp130679
                          (let () (declare (not safe)) (gx#stx-e _L127980_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130682
                      __tmp130681
                      __tmp130680
                      __tmp130679))))
                (___kont128670128671_
                 (lambda (_L127808_ _L127809_ _L127810_ _L127811_)
                   (let ((__tmp130685
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127810_)))
                         (__tmp130684
                          (let () (declare (not safe)) (gx#stx-e _L127809_)))
                         (__tmp130683
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127808_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130685
                      __tmp130684
                      __tmp130683
                      '#f))))
                (___kont128672128673_
                 (lambda (_L127674_)
                   (for-each
                    (lambda (_g127687127689_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self127517_ _g127687127689_)))
                    (let ((__tmp130686
                           (lambda (_g127691127694_ _g127692127696_)
                             (let ()
                               (declare (not safe))
                               (cons _g127691127694_ _g127692127696_)))))
                      (declare (not safe))
                      (foldr1 __tmp130686 '() _L127674_))))))
            (let* ((___match128923128924_
                    (lambda (_e127623127642_
                             _hd127622127645_
                             _tl127621127647_
                             ___splice128674128675_
                             _target127624127650_
                             _tl127626127652_)
                      (letrec ((_loop127627127655_
                                (lambda (_hd127625127658_ _expr127631127660_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd127625127658_))
                                      (let ((_e127628127663_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd127625127658_))))
                                        (let ((_lp-tl127630127668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127628127663_)))
                                              (_lp-hd127629127666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127628127663_))))
                                          (let ((__tmp130687
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd127629127666_
                                                         _expr127631127660_))))
                                            (declare (not safe))
                                            (_loop127627127655_
                                             _lp-tl127630127668_
                                             __tmp130687))))
                                      (let ((_expr127632127671_
                                             (reverse _expr127631127660_)))
                                        (___kont128672128673_
                                         _expr127632127671_))))))
                        (let ()
                          (declare (not safe))
                          (_loop127627127655_ _target127624127650_ '())))))
                   (___match128803128804_
                    (lambda (_e127531127852_
                             _hd127530127855_
                             _tl127529127857_
                             _e127534127860_
                             _hd127533127863_
                             _tl127532127865_
                             _e127537127868_
                             _hd127536127871_
                             _tl127535127873_
                             _e127540127876_
                             _hd127539127879_
                             _tl127538127881_
                             _e127543127884_
                             _hd127542127887_
                             _tl127541127889_
                             _e127546127892_
                             _hd127545127895_
                             _tl127544127897_
                             _e127549127900_
                             _hd127548127903_
                             _tl127547127905_
                             _e127552127908_
                             _hd127551127911_
                             _tl127550127913_
                             _e127555127916_
                             _hd127554127919_
                             _tl127553127921_
                             _e127558127924_
                             _hd127557127927_
                             _tl127556127929_
                             _e127561127932_
                             _hd127560127935_
                             _tl127559127937_
                             _e127564127940_
                             _hd127563127943_
                             _tl127562127945_
                             _e127567127948_
                             _hd127566127951_
                             _tl127565127953_
                             _e127570127956_
                             _hd127569127959_
                             _tl127568127961_
                             _e127573127964_
                             _hd127572127967_
                             _tl127571127969_
                             _e127576127972_
                             _hd127575127975_
                             _tl127574127977_)
                      (let ((_L127980_ _hd127575127975_)
                            (_L127981_ _hd127566127951_)
                            (_L127982_ _hd127557127927_)
                            (_L127983_ _hd127548127903_)
                            (_L127984_ _hd127539127879_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L127984_
                               'bind-method!))
                            (___kont128668128669_
                             _L127980_
                             _L127981_
                             _L127982_
                             _L127983_
                             _L127984_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl127529127857_))
                                (let ((___splice128674128675_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl127529127857_
                                          '0))))
                                  (let ((_tl127626127652_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128674128675_
                                            '1)))
                                        (_target127624127650_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128674128675_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127626127652_))
                                        (___match128923128924_
                                         _e127531127852_
                                         _hd127530127855_
                                         _tl127529127857_
                                         ___splice128674128675_
                                         _target127624127650_
                                         _tl127626127652_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127522127637_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127522127637_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128666128667_))
                  (let ((_e127531127852_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128666128667_))))
                    (let ((_tl127529127857_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127531127852_)))
                          (_hd127530127855_
                           (let ()
                             (declare (not safe))
                             (##car _e127531127852_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127529127857_))
                          (let ((_e127534127860_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127529127857_))))
                            (let ((_tl127532127865_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127534127860_)))
                                  (_hd127533127863_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127534127860_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127533127863_))
                                  (let ((_e127537127868_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127533127863_))))
                                    (let ((_tl127535127873_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127537127868_)))
                                          (_hd127536127871_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127537127868_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd127536127871_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd127536127871_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127535127873_))
                                                  (let ((_e127540127876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127535127873_))))
                                                    (let ((_tl127538127881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127540127876_)))
                                                          (_hd127539127879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127540127876_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127538127881_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl127532127865_))
                      (let ((_e127543127884_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127532127865_))))
                        (let ((_tl127541127889_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127543127884_)))
                              (_hd127542127887_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127543127884_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd127542127887_))
                              (let ((_e127546127892_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd127542127887_))))
                                (let ((_tl127544127897_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127546127892_)))
                                      (_hd127545127895_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127546127892_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd127545127895_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd127545127895_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127544127897_))
                                              (let ((_e127549127900_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127544127897_))))
                                                (let ((_tl127547127905_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127549127900_)))
                                                      (_hd127548127903_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127549127900_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127547127905_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl127541127889_))
                                                          (let ((_e127552127908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl127541127889_))))
                    (let ((_tl127550127913_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127552127908_)))
                          (_hd127551127911_
                           (let ()
                             (declare (not safe))
                             (##car _e127552127908_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127551127911_))
                          (let ((_e127555127916_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127551127911_))))
                            (let ((_tl127553127921_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127555127916_)))
                                  (_hd127554127919_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127555127916_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd127554127919_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd127554127919_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127553127921_))
                                          (let ((_e127558127924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127553127921_))))
                                            (let ((_tl127556127929_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127558127924_)))
                                                  (_hd127557127927_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127558127924_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127556127929_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127550127913_))
                                                      (let ((_e127561127932_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127550127913_))))
                (let ((_tl127559127937_
                       (let () (declare (not safe)) (##cdr _e127561127932_)))
                      (_hd127560127935_
                       (let () (declare (not safe)) (##car _e127561127932_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd127560127935_))
                      (let ((_e127564127940_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd127560127935_))))
                        (let ((_tl127562127945_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127564127940_)))
                              (_hd127563127943_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127564127940_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd127563127943_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd127563127943_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127562127945_))
                                      (let ((_e127567127948_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127562127945_))))
                                        (let ((_tl127565127953_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127567127948_)))
                                              (_hd127566127951_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127567127948_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127565127953_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127559127937_))
                                                  (let ((_e127570127956_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127559127937_))))
                                                    (let ((_tl127568127961_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127570127956_)))
                                                          (_hd127569127959_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127570127956_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd127569127959_))
                                                          (let ((_e127573127964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd127569127959_))))
                    (let ((_tl127571127969_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127573127964_)))
                          (_hd127572127967_
                           (let ()
                             (declare (not safe))
                             (##car _e127573127964_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd127572127967_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd127572127967_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl127571127969_))
                                  (let ((_e127576127972_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl127571127969_))))
                                    (let ((_tl127574127977_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127576127972_)))
                                          (_hd127575127975_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127576127972_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127574127977_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127568127961_))
                                              (___match128803128804_
                                               _e127531127852_
                                               _hd127530127855_
                                               _tl127529127857_
                                               _e127534127860_
                                               _hd127533127863_
                                               _tl127532127865_
                                               _e127537127868_
                                               _hd127536127871_
                                               _tl127535127873_
                                               _e127540127876_
                                               _hd127539127879_
                                               _tl127538127881_
                                               _e127543127884_
                                               _hd127542127887_
                                               _tl127541127889_
                                               _e127546127892_
                                               _hd127545127895_
                                               _tl127544127897_
                                               _e127549127900_
                                               _hd127548127903_
                                               _tl127547127905_
                                               _e127552127908_
                                               _hd127551127911_
                                               _tl127550127913_
                                               _e127555127916_
                                               _hd127554127919_
                                               _tl127553127921_
                                               _e127558127924_
                                               _hd127557127927_
                                               _tl127556127929_
                                               _e127561127932_
                                               _hd127560127935_
                                               _tl127559127937_
                                               _e127564127940_
                                               _hd127563127943_
                                               _tl127562127945_
                                               _e127567127948_
                                               _hd127566127951_
                                               _tl127565127953_
                                               _e127570127956_
                                               _hd127569127959_
                                               _tl127568127961_
                                               _e127573127964_
                                               _hd127572127967_
                                               _tl127571127969_
                                               _e127576127972_
                                               _hd127575127975_
                                               _tl127574127977_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127529127857_))
                                                  (let ((___splice128674128675_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127529127857_
                                                            '0))))
                                                    (let ((_tl127626127652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128674128675_
                                                              '1)))
                                                          (_target127624127650_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128674128675_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127626127652_))
                                                          (___match128923128924_
                                                           _e127531127852_
                                                           _hd127530127855_
                                                           _tl127529127857_
                                                           ___splice128674128675_
                                                           _target127624127650_
                                                           _tl127626127652_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127522127637_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127522127637_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127529127857_))
                                              (let ((___splice128674128675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127529127857_
                                                        '0))))
                                                (let ((_tl127626127652_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128674128675_
                                                          '1)))
                                                      (_target127624127650_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128674128675_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127626127652_))
                                                      (___match128923128924_
                                                       _e127531127852_
                                                       _hd127530127855_
                                                       _tl127529127857_
                                                       ___splice128674128675_
                                                       _target127624127650_
                                                       _tl127626127652_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127522127637_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127522127637_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127529127857_))
                                      (let ((___splice128674128675_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127529127857_
                                                '0))))
                                        (let ((_tl127626127652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128674128675_
                                                  '1)))
                                              (_target127624127650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128674128675_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127626127652_))
                                              (___match128923128924_
                                               _e127531127852_
                                               _hd127530127855_
                                               _tl127529127857_
                                               ___splice128674128675_
                                               _target127624127650_
                                               _tl127626127652_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127522127637_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127522127637_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127529127857_))
                                  (let ((___splice128674128675_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127529127857_
                                            '0))))
                                    (let ((_tl127626127652_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128674128675_
                                              '1)))
                                          (_target127624127650_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128674128675_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127626127652_))
                                          (___match128923128924_
                                           _e127531127852_
                                           _hd127530127855_
                                           _tl127529127857_
                                           ___splice128674128675_
                                           _target127624127650_
                                           _tl127626127652_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127522127637_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127522127637_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127529127857_))
                              (let ((___splice128674128675_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127529127857_
                                        '0))))
                                (let ((_tl127626127652_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128674128675_
                                          '1)))
                                      (_target127624127650_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128674128675_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127626127652_))
                                      (___match128923128924_
                                       _e127531127852_
                                       _hd127530127855_
                                       _tl127529127857_
                                       ___splice128674128675_
                                       _target127624127650_
                                       _tl127626127652_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127522127637_)))))
                              (let ()
                                (declare (not safe))
                                (_g127522127637_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127529127857_))
                      (let ((___splice128674128675_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127529127857_ '0))))
                        (let ((_tl127626127652_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128674128675_ '1)))
                              (_target127624127650_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128674128675_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127626127652_))
                              (___match128923128924_
                               _e127531127852_
                               _hd127530127855_
                               _tl127529127857_
                               ___splice128674128675_
                               _target127624127650_
                               _tl127626127652_)
                              (let ()
                                (declare (not safe))
                                (_g127522127637_)))))
                      (let () (declare (not safe)) (_g127522127637_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127559127937_))
                                                      (if (let ((__tmp130688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp130688 'bind-method!))
                  (let ((_L127808_ _hd127566127951_)
                        (_L127809_ _hd127557127927_)
                        (_L127810_ _hd127548127903_)
                        (_L127811_ _hd127539127879_))
                    (___kont128670128671_
                     _L127808_
                     _L127809_
                     _L127810_
                     _L127811_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127529127857_))
                      (let ((___splice128674128675_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127529127857_ '0))))
                        (let ((_tl127626127652_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128674128675_ '1)))
                              (_target127624127650_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128674128675_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127626127652_))
                              (___match128923128924_
                               _e127531127852_
                               _hd127530127855_
                               _tl127529127857_
                               ___splice128674128675_
                               _target127624127650_
                               _tl127626127652_)
                              (let ()
                                (declare (not safe))
                                (_g127522127637_)))))
                      (let () (declare (not safe)) (_g127522127637_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127529127857_))
                  (let ((___splice128674128675_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127529127857_ '0))))
                    (let ((_tl127626127652_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128674128675_ '1)))
                          (_target127624127650_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128674128675_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127626127652_))
                          (___match128923128924_
                           _e127531127852_
                           _hd127530127855_
                           _tl127529127857_
                           ___splice128674128675_
                           _target127624127650_
                           _tl127626127652_)
                          (let () (declare (not safe)) (_g127522127637_)))))
                  (let () (declare (not safe)) (_g127522127637_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127529127857_))
                                                  (let ((___splice128674128675_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127529127857_
                                                            '0))))
                                                    (let ((_tl127626127652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128674128675_
                                                              '1)))
                                                          (_target127624127650_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128674128675_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127626127652_))
                                                          (___match128923128924_
                                                           _e127531127852_
                                                           _hd127530127855_
                                                           _tl127529127857_
                                                           ___splice128674128675_
                                                           _target127624127650_
                                                           _tl127626127652_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127522127637_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127522127637_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127529127857_))
                                          (let ((___splice128674128675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127529127857_
                                                    '0))))
                                            (let ((_tl127626127652_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128674128675_
                                                      '1)))
                                                  (_target127624127650_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128674128675_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127626127652_))
                                                  (___match128923128924_
                                                   _e127531127852_
                                                   _hd127530127855_
                                                   _tl127529127857_
                                                   ___splice128674128675_
                                                   _target127624127650_
                                                   _tl127626127652_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127522127637_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127522127637_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127529127857_))
                                      (let ((___splice128674128675_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127529127857_
                                                '0))))
                                        (let ((_tl127626127652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128674128675_
                                                  '1)))
                                              (_target127624127650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128674128675_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127626127652_))
                                              (___match128923128924_
                                               _e127531127852_
                                               _hd127530127855_
                                               _tl127529127857_
                                               ___splice128674128675_
                                               _target127624127650_
                                               _tl127626127652_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127522127637_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127522127637_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127529127857_))
                                  (let ((___splice128674128675_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127529127857_
                                            '0))))
                                    (let ((_tl127626127652_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128674128675_
                                              '1)))
                                          (_target127624127650_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128674128675_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127626127652_))
                                          (___match128923128924_
                                           _e127531127852_
                                           _hd127530127855_
                                           _tl127529127857_
                                           ___splice128674128675_
                                           _target127624127650_
                                           _tl127626127652_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127522127637_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127522127637_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127529127857_))
                          (let ((___splice128674128675_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127529127857_
                                    '0))))
                            (let ((_tl127626127652_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128674128675_ '1)))
                                  (_target127624127650_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128674128675_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127626127652_))
                                  (___match128923128924_
                                   _e127531127852_
                                   _hd127530127855_
                                   _tl127529127857_
                                   ___splice128674128675_
                                   _target127624127650_
                                   _tl127626127652_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127522127637_)))))
                          (let () (declare (not safe)) (_g127522127637_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127529127857_))
                  (let ((___splice128674128675_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127529127857_ '0))))
                    (let ((_tl127626127652_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128674128675_ '1)))
                          (_target127624127650_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128674128675_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127626127652_))
                          (___match128923128924_
                           _e127531127852_
                           _hd127530127855_
                           _tl127529127857_
                           ___splice128674128675_
                           _target127624127650_
                           _tl127626127652_)
                          (let () (declare (not safe)) (_g127522127637_)))))
                  (let () (declare (not safe)) (_g127522127637_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127529127857_))
                                                      (let ((___splice128674128675_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127529127857_ '0))))
                (let ((_tl127626127652_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128674128675_ '1)))
                      (_target127624127650_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128674128675_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127626127652_))
                      (___match128923128924_
                       _e127531127852_
                       _hd127530127855_
                       _tl127529127857_
                       ___splice128674128675_
                       _target127624127650_
                       _tl127626127652_)
                      (let () (declare (not safe)) (_g127522127637_)))))
              (let () (declare (not safe)) (_g127522127637_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127529127857_))
                                              (let ((___splice128674128675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127529127857_
                                                        '0))))
                                                (let ((_tl127626127652_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128674128675_
                                                          '1)))
                                                      (_target127624127650_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128674128675_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127626127652_))
                                                      (___match128923128924_
                                                       _e127531127852_
                                                       _hd127530127855_
                                                       _tl127529127857_
                                                       ___splice128674128675_
                                                       _target127624127650_
                                                       _tl127626127652_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127522127637_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127522127637_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127529127857_))
                                          (let ((___splice128674128675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127529127857_
                                                    '0))))
                                            (let ((_tl127626127652_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128674128675_
                                                      '1)))
                                                  (_target127624127650_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128674128675_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127626127652_))
                                                  (___match128923128924_
                                                   _e127531127852_
                                                   _hd127530127855_
                                                   _tl127529127857_
                                                   ___splice128674128675_
                                                   _target127624127650_
                                                   _tl127626127652_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127522127637_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127522127637_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127529127857_))
                                      (let ((___splice128674128675_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127529127857_
                                                '0))))
                                        (let ((_tl127626127652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128674128675_
                                                  '1)))
                                              (_target127624127650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128674128675_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127626127652_))
                                              (___match128923128924_
                                               _e127531127852_
                                               _hd127530127855_
                                               _tl127529127857_
                                               ___splice128674128675_
                                               _target127624127650_
                                               _tl127626127652_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127522127637_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127522127637_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127529127857_))
                              (let ((___splice128674128675_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127529127857_
                                        '0))))
                                (let ((_tl127626127652_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128674128675_
                                          '1)))
                                      (_target127624127650_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128674128675_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127626127652_))
                                      (___match128923128924_
                                       _e127531127852_
                                       _hd127530127855_
                                       _tl127529127857_
                                       ___splice128674128675_
                                       _target127624127650_
                                       _tl127626127652_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127522127637_)))))
                              (let ()
                                (declare (not safe))
                                (_g127522127637_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127529127857_))
                      (let ((___splice128674128675_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127529127857_ '0))))
                        (let ((_tl127626127652_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128674128675_ '1)))
                              (_target127624127650_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128674128675_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127626127652_))
                              (___match128923128924_
                               _e127531127852_
                               _hd127530127855_
                               _tl127529127857_
                               ___splice128674128675_
                               _target127624127650_
                               _tl127626127652_)
                              (let ()
                                (declare (not safe))
                                (_g127522127637_)))))
                      (let () (declare (not safe)) (_g127522127637_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127529127857_))
                  (let ((___splice128674128675_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127529127857_ '0))))
                    (let ((_tl127626127652_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128674128675_ '1)))
                          (_target127624127650_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128674128675_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127626127652_))
                          (___match128923128924_
                           _e127531127852_
                           _hd127530127855_
                           _tl127529127857_
                           ___splice128674128675_
                           _target127624127650_
                           _tl127626127652_)
                          (let () (declare (not safe)) (_g127522127637_)))))
                  (let () (declare (not safe)) (_g127522127637_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127529127857_))
                                                  (let ((___splice128674128675_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127529127857_
                                                            '0))))
                                                    (let ((_tl127626127652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128674128675_
                                                              '1)))
                                                          (_target127624127650_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128674128675_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127626127652_))
                                                          (___match128923128924_
                                                           _e127531127852_
                                                           _hd127530127855_
                                                           _tl127529127857_
                                                           ___splice128674128675_
                                                           _target127624127650_
                                                           _tl127626127652_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127522127637_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127522127637_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127529127857_))
                                              (let ((___splice128674128675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127529127857_
                                                        '0))))
                                                (let ((_tl127626127652_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128674128675_
                                                          '1)))
                                                      (_target127624127650_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128674128675_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127626127652_))
                                                      (___match128923128924_
                                                       _e127531127852_
                                                       _hd127530127855_
                                                       _tl127529127857_
                                                       ___splice128674128675_
                                                       _target127624127650_
                                                       _tl127626127652_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127522127637_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127522127637_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127529127857_))
                                          (let ((___splice128674128675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127529127857_
                                                    '0))))
                                            (let ((_tl127626127652_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128674128675_
                                                      '1)))
                                                  (_target127624127650_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128674128675_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127626127652_))
                                                  (___match128923128924_
                                                   _e127531127852_
                                                   _hd127530127855_
                                                   _tl127529127857_
                                                   ___splice128674128675_
                                                   _target127624127650_
                                                   _tl127626127652_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127522127637_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127522127637_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127529127857_))
                                  (let ((___splice128674128675_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127529127857_
                                            '0))))
                                    (let ((_tl127626127652_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128674128675_
                                              '1)))
                                          (_target127624127650_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128674128675_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127626127652_))
                                          (___match128923128924_
                                           _e127531127852_
                                           _hd127530127855_
                                           _tl127529127857_
                                           ___splice128674128675_
                                           _target127624127650_
                                           _tl127626127652_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127522127637_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127522127637_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127529127857_))
                          (let ((___splice128674128675_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127529127857_
                                    '0))))
                            (let ((_tl127626127652_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128674128675_ '1)))
                                  (_target127624127650_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128674128675_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127626127652_))
                                  (___match128923128924_
                                   _e127531127852_
                                   _hd127530127855_
                                   _tl127529127857_
                                   ___splice128674128675_
                                   _target127624127650_
                                   _tl127626127652_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127522127637_)))))
                          (let () (declare (not safe)) (_g127522127637_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127529127857_))
                      (let ((___splice128674128675_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127529127857_ '0))))
                        (let ((_tl127626127652_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128674128675_ '1)))
                              (_target127624127650_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128674128675_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127626127652_))
                              (___match128923128924_
                               _e127531127852_
                               _hd127530127855_
                               _tl127529127857_
                               ___splice128674128675_
                               _target127624127650_
                               _tl127626127652_)
                              (let ()
                                (declare (not safe))
                                (_g127522127637_)))))
                      (let () (declare (not safe)) (_g127522127637_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127529127857_))
                                                      (let ((___splice128674128675_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127529127857_ '0))))
                (let ((_tl127626127652_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128674128675_ '1)))
                      (_target127624127650_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128674128675_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127626127652_))
                      (___match128923128924_
                       _e127531127852_
                       _hd127530127855_
                       _tl127529127857_
                       ___splice128674128675_
                       _target127624127650_
                       _tl127626127652_)
                      (let () (declare (not safe)) (_g127522127637_)))))
              (let () (declare (not safe)) (_g127522127637_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127529127857_))
                                                  (let ((___splice128674128675_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127529127857_
                                                            '0))))
                                                    (let ((_tl127626127652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128674128675_
                                                              '1)))
                                                          (_target127624127650_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128674128675_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127626127652_))
                                                          (___match128923128924_
                                                           _e127531127852_
                                                           _hd127530127855_
                                                           _tl127529127857_
                                                           ___splice128674128675_
                                                           _target127624127650_
                                                           _tl127626127652_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127522127637_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127522127637_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127529127857_))
                                              (let ((___splice128674128675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127529127857_
                                                        '0))))
                                                (let ((_tl127626127652_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128674128675_
                                                          '1)))
                                                      (_target127624127650_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128674128675_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127626127652_))
                                                      (___match128923128924_
                                                       _e127531127852_
                                                       _hd127530127855_
                                                       _tl127529127857_
                                                       ___splice128674128675_
                                                       _target127624127650_
                                                       _tl127626127652_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127522127637_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127522127637_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127529127857_))
                                      (let ((___splice128674128675_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127529127857_
                                                '0))))
                                        (let ((_tl127626127652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128674128675_
                                                  '1)))
                                              (_target127624127650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128674128675_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127626127652_))
                                              (___match128923128924_
                                               _e127531127852_
                                               _hd127530127855_
                                               _tl127529127857_
                                               ___splice128674128675_
                                               _target127624127650_
                                               _tl127626127652_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127522127637_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127522127637_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127529127857_))
                              (let ((___splice128674128675_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127529127857_
                                        '0))))
                                (let ((_tl127626127652_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128674128675_
                                          '1)))
                                      (_target127624127650_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128674128675_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127626127652_))
                                      (___match128923128924_
                                       _e127531127852_
                                       _hd127530127855_
                                       _tl127529127857_
                                       ___splice128674128675_
                                       _target127624127650_
                                       _tl127626127652_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127522127637_)))))
                              (let ()
                                (declare (not safe))
                                (_g127522127637_))))))
                  (let () (declare (not safe)) (_g127522127637_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self127456_ _stx127457_)
        (let* ((___stx128926128927_ _stx127457_)
               (_g127460127473_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128926128927_)))))
          (let ((___kont128928128929_
                 (lambda (_L127501_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127456_ _L127501_))))
                (___kont128930128931_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128926128927_))
                (let ((_e127465127485_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128926128927_))))
                  (let ((_tl127463127490_
                         (let () (declare (not safe)) (##cdr _e127465127485_)))
                        (_hd127464127488_
                         (let ()
                           (declare (not safe))
                           (##car _e127465127485_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl127463127490_))
                        (let ((_e127468127493_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl127463127490_))))
                          (let ((_tl127466127498_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127468127493_)))
                                (_hd127467127496_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127468127493_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl127466127498_))
                                (___kont128928128929_ _hd127467127496_)
                                (___kont128930128931_))))
                        (___kont128930128931_))))
                (___kont128930128931_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self127335_ _stx127336_)
        (let* ((_g127338127355_
                (lambda (_g127339127352_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127339127352_))))
               (_g127337127453_
                (lambda (_g127339127358_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127339127358_))
                      (let ((_e127344127360_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127339127358_))))
                        (let ((_hd127343127363_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127344127360_)))
                              (_tl127342127365_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127344127360_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127342127365_))
                              (let ((_e127347127368_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127342127365_))))
                                (let ((_hd127346127371_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127347127368_)))
                                      (_tl127345127373_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127347127368_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127345127373_))
                                      (let ((_e127350127376_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127345127373_))))
                                        (let ((_hd127349127379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127350127376_)))
                                              (_tl127348127381_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127350127376_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127348127381_))
                                              ((lambda (_L127384_ _L127385_)
                                                 (let* ((___stx128948128949_
                                                         _L127385_)
                                                        (_g127401127412_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx128948128949_)))))
                                                   (let ((___kont128950128951_
                                                          (lambda (_L127432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L127433_)
                    (let ((_$e127445_
                           (let ((__tmp130689
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L127433_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp130689))))
                      (if _$e127445_
                          ((lambda (_type-e127448_)
                             (_type-e127448_ _stx127336_ _L127385_))
                           _$e127445_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self127335_ _L127384_))))))
                 (___kont128952128953_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self127335_ _L127384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match128959128960_
                                                            (lambda (_e127407127424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd127406127427_
                             _tl127405127429_)
                      (let ((_L127432_ _tl127405127429_)
                            (_L127433_ _hd127406127427_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L127433_))
                            (___kont128950128951_ _L127432_ _L127433_)
                            (___kont128952128953_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx128948128949_))
                   (let ((_e127407127424_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx128948128949_))))
                     (let ((_tl127405127429_
                            (let ()
                              (declare (not safe))
                              (##cdr _e127407127424_)))
                           (_hd127406127427_
                            (let ()
                              (declare (not safe))
                              (##car _e127407127424_))))
                       (___match128959128960_
                        _e127407127424_
                        _hd127406127427_
                        _tl127405127429_)))
                   (___kont128952128953_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd127349127379_
                                               _hd127346127371_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127338127355_
                                                 _g127339127358_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127338127355_ _g127339127358_)))))
                              (let ()
                                (declare (not safe))
                                (_g127338127355_ _g127339127358_)))))
                      (let ()
                        (declare (not safe))
                        (_g127338127355_ _g127339127358_))))))
          (declare (not safe))
          (_g127337127453_ _stx127336_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx127179_ _ann127180_)
        (let* ((_g127182127219_
                (lambda (_g127183127216_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127183127216_))))
               (_g127181127332_
                (lambda (_g127183127222_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127183127222_))
                      (let ((_e127193127224_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127183127222_))))
                        (let ((_hd127192127227_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127193127224_)))
                              (_tl127191127229_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127193127224_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127191127229_))
                              (let ((_e127196127232_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127191127229_))))
                                (let ((_hd127195127235_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127196127232_)))
                                      (_tl127194127237_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127196127232_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127194127237_))
                                      (let ((_e127199127240_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127194127237_))))
                                        (let ((_hd127198127243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127199127240_)))
                                              (_tl127197127245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127199127240_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127197127245_))
                                              (let ((_e127202127248_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127197127245_))))
                                                (let ((_hd127201127251_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127202127248_)))
                                                      (_tl127200127253_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127202127248_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127200127253_))
                                                      (let ((_e127205127256_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127200127253_))))
                (let ((_hd127204127259_
                       (let () (declare (not safe)) (##car _e127205127256_)))
                      (_tl127203127261_
                       (let () (declare (not safe)) (##cdr _e127205127256_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl127203127261_))
                      (let ((_e127208127264_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127203127261_))))
                        (let ((_hd127207127267_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127208127264_)))
                              (_tl127206127269_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127208127264_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127206127269_))
                              (let ((_e127211127272_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127206127269_))))
                                (let ((_hd127210127275_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127211127272_)))
                                      (_tl127209127277_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127211127272_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127209127277_))
                                      (let ((_e127214127280_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127209127277_))))
                                        (let ((_hd127213127283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127214127280_)))
                                              (_tl127212127285_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127214127280_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127212127285_))
                                              ((lambda (_L127288_
                                                        _L127289_
                                                        _L127290_
                                                        _L127291_
                                                        _L127292_
                                                        _L127293_
                                                        _L127294_)
                                                 (let ((_type-id127324_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127294_)))
                                                       (_super127325_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127293_)))
                                                       (_slots127326_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L127292_)))
                                                       (_ctor-method127327_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127291_)))
                                                       (_struct?127328_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127290_)))
                                                       (_final?127329_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127289_)))
                                                       (_metaclass127330_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L127288_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L127288_))
                                                            '#f)))
                                                   (let ((__obj130641
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure
                                                             gxc#!class::t
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj130641
                                                      _type-id127324_
                                                      _super127325_
                                                      _slots127326_
                                                      _ctor-method127327_
                                                      _struct?127328_
                                                      _final?127329_
                                                      '#f
                                                      _metaclass127330_)
                                                     __obj130641)))
                                               _hd127213127283_
                                               _hd127210127275_
                                               _hd127207127267_
                                               _hd127204127259_
                                               _hd127201127251_
                                               _hd127198127243_
                                               _hd127195127235_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127182127219_
                                                 _g127183127222_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127182127219_ _g127183127222_)))))
                              (let ()
                                (declare (not safe))
                                (_g127182127219_ _g127183127222_)))))
                      (let ()
                        (declare (not safe))
                        (_g127182127219_ _g127183127222_)))))
              (let ()
                (declare (not safe))
                (_g127182127219_ _g127183127222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g127182127219_
                                                 _g127183127222_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127182127219_ _g127183127222_)))))
                              (let ()
                                (declare (not safe))
                                (_g127182127219_ _g127183127222_)))))
                      (let ()
                        (declare (not safe))
                        (_g127182127219_ _g127183127222_))))))
          (declare (not safe))
          (_g127181127332_ _ann127180_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_stx127108_ _ann127109_)
        (let* ((_g127111127128_
                (lambda (_g127112127125_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127112127125_))))
               (_g127110127176_
                (lambda (_g127112127131_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127112127131_))
                      (let ((_e127117127133_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127112127131_))))
                        (let ((_hd127116127136_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127117127133_)))
                              (_tl127115127138_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127117127133_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127115127138_))
                              (let ((_e127120127141_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127115127138_))))
                                (let ((_hd127119127144_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127120127141_)))
                                      (_tl127118127146_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127120127141_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127118127146_))
                                      (let ((_e127123127149_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127118127146_))))
                                        (let ((_hd127122127152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127123127149_)))
                                              (_tl127121127154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127123127149_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127121127154_))
                                              ((lambda (_L127157_ _L127158_)
                                                 (let ((_type-id127173_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127158_)))
                                                       (_super127174_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127157_))))
                                                   (let ((__obj130642
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure
                                                             gxc#!class::t
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj130642
                                                      _type-id127173_
                                                      _super127174_
                                                      '()
                                                      '#f
                                                      '#f
                                                      '#f
                                                      '#t
                                                      '#f)
                                                     __obj130642)))
                                               _hd127122127152_
                                               _hd127119127144_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127111127128_
                                                 _g127112127131_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127111127128_ _g127112127131_)))))
                              (let ()
                                (declare (not safe))
                                (_g127111127128_ _g127112127131_)))))
                      (let ()
                        (declare (not safe))
                        (_g127111127128_ _g127112127131_))))))
          (declare (not safe))
          (_g127110127176_ _ann127109_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx127056_ _ann127057_)
        (let* ((_g127059127072_
                (lambda (_g127060127069_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127060127069_))))
               (_g127058127105_
                (lambda (_g127060127075_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127060127075_))
                      (let ((_e127064127077_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127060127075_))))
                        (let ((_hd127063127080_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127064127077_)))
                              (_tl127062127082_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127064127077_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127062127082_))
                              (let ((_e127067127085_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127062127082_))))
                                (let ((_hd127066127088_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127067127085_)))
                                      (_tl127065127090_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127067127085_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127065127090_))
                                      ((lambda (_L127093_)
                                         (let ((__tmp130690
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L127093_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp130690)))
                                       _hd127066127088_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127059127072_ _g127060127075_)))))
                              (let ()
                                (declare (not safe))
                                (_g127059127072_ _g127060127075_)))))
                      (let ()
                        (declare (not safe))
                        (_g127059127072_ _g127060127075_))))))
          (declare (not safe))
          (_g127058127105_ _ann127057_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx127004_ _ann127005_)
        (let* ((_g127007127020_
                (lambda (_g127008127017_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127008127017_))))
               (_g127006127053_
                (lambda (_g127008127023_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127008127023_))
                      (let ((_e127012127025_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127008127023_))))
                        (let ((_hd127011127028_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127012127025_)))
                              (_tl127010127030_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127012127025_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127010127030_))
                              (let ((_e127015127033_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127010127030_))))
                                (let ((_hd127014127036_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127015127033_)))
                                      (_tl127013127038_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127015127033_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127013127038_))
                                      ((lambda (_L127041_)
                                         (let ((__tmp130691
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L127041_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp130691)))
                                       _hd127014127036_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127007127020_ _g127008127023_)))))
                              (let ()
                                (declare (not safe))
                                (_g127007127020_ _g127008127023_)))))
                      (let ()
                        (declare (not safe))
                        (_g127007127020_ _g127008127023_))))))
          (declare (not safe))
          (_g127006127053_ _ann127005_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx126920_ _ann126921_)
        (let* ((_g126923126944_
                (lambda (_g126924126941_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126924126941_))))
               (_g126922127001_
                (lambda (_g126924126947_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126924126947_))
                      (let ((_e126930126949_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126924126947_))))
                        (let ((_hd126929126952_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126930126949_)))
                              (_tl126928126954_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126930126949_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126928126954_))
                              (let ((_e126933126957_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126928126954_))))
                                (let ((_hd126932126960_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126933126957_)))
                                      (_tl126931126962_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126933126957_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126931126962_))
                                      (let ((_e126936126965_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126931126962_))))
                                        (let ((_hd126935126968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126936126965_)))
                                              (_tl126934126970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126936126965_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126934126970_))
                                              (let ((_e126939126973_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126934126970_))))
                                                (let ((_hd126938126976_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126939126973_)))
                                                      (_tl126937126978_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126939126973_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126937126978_))
                                                      ((lambda (_L126981_
                                                                _L126982_
                                                                _L126983_)
                                                         (let ((__tmp130694
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126983_)))
                       (__tmp130693
                        (let () (declare (not safe)) (gx#stx-e _L126982_)))
                       (__tmp130692
                        (let () (declare (not safe)) (gx#stx-e _L126981_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp130694
                    __tmp130693
                    __tmp130692)))
               _hd126938126976_
               _hd126935126968_
               _hd126932126960_)
              (let ()
                (declare (not safe))
                (_g126923126944_ _g126924126947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126923126944_
                                                 _g126924126947_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126923126944_ _g126924126947_)))))
                              (let ()
                                (declare (not safe))
                                (_g126923126944_ _g126924126947_)))))
                      (let ()
                        (declare (not safe))
                        (_g126923126944_ _g126924126947_))))))
          (declare (not safe))
          (_g126922127001_ _ann126921_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx126836_ _ann126837_)
        (let* ((_g126839126860_
                (lambda (_g126840126857_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126840126857_))))
               (_g126838126917_
                (lambda (_g126840126863_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126840126863_))
                      (let ((_e126846126865_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126840126863_))))
                        (let ((_hd126845126868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126846126865_)))
                              (_tl126844126870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126846126865_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126844126870_))
                              (let ((_e126849126873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126844126870_))))
                                (let ((_hd126848126876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126849126873_)))
                                      (_tl126847126878_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126849126873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126847126878_))
                                      (let ((_e126852126881_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126847126878_))))
                                        (let ((_hd126851126884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126852126881_)))
                                              (_tl126850126886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126852126881_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126850126886_))
                                              (let ((_e126855126889_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126850126886_))))
                                                (let ((_hd126854126892_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126855126889_)))
                                                      (_tl126853126894_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126855126889_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126853126894_))
                                                      ((lambda (_L126897_
                                                                _L126898_
                                                                _L126899_)
                                                         (let ((__tmp130697
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126899_)))
                       (__tmp130696
                        (let () (declare (not safe)) (gx#stx-e _L126898_)))
                       (__tmp130695
                        (let () (declare (not safe)) (gx#stx-e _L126897_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp130697
                    __tmp130696
                    __tmp130695)))
               _hd126854126892_
               _hd126851126884_
               _hd126848126876_)
              (let ()
                (declare (not safe))
                (_g126839126860_ _g126840126863_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126839126860_
                                                 _g126840126863_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126839126860_ _g126840126863_)))))
                              (let ()
                                (declare (not safe))
                                (_g126839126860_ _g126840126863_)))))
                      (let ()
                        (declare (not safe))
                        (_g126839126860_ _g126840126863_))))))
          (declare (not safe))
          (_g126838126917_ _ann126837_))))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.class
       gxc#basic-expression-type-annotation-mop.class))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.constructor
       gxc#basic-expression-type-annotation-mop.constructor))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.predicate
       gxc#basic-expression-type-annotation-mop.predicate))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.accessor
       gxc#basic-expression-type-annotation-mop.accessor))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.mutator
       gxc#basic-expression-type-annotation-mop.mutator))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.system
       gxc#basic-expression-type-annotation-mop.system))
    (define gxc#basic-expression-type-lambda%
      (lambda (_self125955_ _stx125956_)
        (let* ((___stx128962128963_ _stx125956_)
               (_g125962126158_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128962128963_)))))
          (let ((___kont128964128965_
                 (lambda (_L126824_)
                   (let ((__obj130643
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130643
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126824_))
                      '#f)
                     __obj130643)))
                (___kont128966128967_
                 (lambda (_L126751_
                          _L126752_
                          _L126753_
                          _L126754_
                          _L126755_
                          _L126756_)
                   (let* ((_tab126806_
                           (let () (declare (not safe)) (gx#stx-e _L126753_)))
                          (_keys126808_
                           (if _tab126806_
                               (filter values (vector->list _tab126806_))
                               '#f)))
                     (let ((__tmp130698
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L126752_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys126808_
                        __tmp130698)))))
                (___kont128968128969_
                 (lambda (_L126484_
                          _L126485_
                          _L126486_
                          _L126487_
                          _L126488_
                          _L126489_
                          _L126490_
                          _L126491_
                          _L126492_
                          _L126493_)
                   (let ((__tmp130700
                          (map gx#stx-e
                               (let ((__tmp130701
                                      (lambda (_g126586126589_ _g126587126591_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g126586126589_
                                                _g126587126591_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp130701 '() _L126486_))))
                         (__tmp130699
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126490_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp130700
                      __tmp130699))))
                (___kont128972128973_
                 (lambda (_L126194_)
                   (let ((__obj130644
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130644
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126194_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L126194_)))
                     __obj130644)))
                (___kont128974128975_
                 (lambda (_L126171_)
                   (let ((__obj130645
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130645
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126171_))
                      '#f)
                     __obj130645))))
            (let* ((___match129281129282_
                    (lambda (_e126149126186_ _hd126148126189_ _tl126147126191_)
                      (let ((_L126194_ _tl126147126191_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L126194_))
                            (___kont128972128973_ _L126194_)
                            (___kont128974128975_ _tl126147126191_)))))
                   (___match129275129276_
                    (lambda (_e126043126208_
                             _hd126042126211_
                             _tl126041126213_
                             _e126046126216_
                             _hd126045126219_
                             _tl126044126221_
                             _e126049126224_
                             _hd126048126227_
                             _tl126047126229_
                             _e126052126232_
                             _hd126051126235_
                             _tl126050126237_
                             _e126055126240_
                             _hd126054126243_
                             _tl126053126245_
                             _e126058126248_
                             _hd126057126251_
                             _tl126056126253_
                             _e126061126256_
                             _hd126060126259_
                             _tl126059126261_
                             _e126064126264_
                             _hd126063126267_
                             _tl126062126269_
                             _e126067126272_
                             _hd126066126275_
                             _tl126065126277_
                             _e126070126280_
                             _hd126069126283_
                             _tl126068126285_
                             _e126073126288_
                             _hd126072126291_
                             _tl126071126293_
                             _e126076126296_
                             _hd126075126299_
                             _tl126074126301_
                             _e126079126304_
                             _hd126078126307_
                             _tl126077126309_
                             _e126082126312_
                             _hd126081126315_
                             _tl126080126317_
                             ___splice128970128971_
                             _target126083126320_
                             _tl126085126322_
                             _e126100126325_
                             _hd126099126328_
                             _tl126098126330_
                             _e126103126333_
                             _hd126102126336_
                             _tl126101126338_
                             _e126106126341_
                             _hd126105126344_
                             _tl126104126346_)
                      (letrec ((_loop126086126349_
                                (lambda (_hd126084126352_
                                         _-absent-value126090126354_
                                         _key126091126356_
                                         _-xkwvar126092126358_
                                         _-hash-ref126093126360_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126084126352_))
                                      (let ((_e126087126363_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126084126352_))))
                                        (let ((_lp-tl126089126368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126087126363_)))
                                              (_lp-hd126088126366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126087126363_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd126088126366_))
                                              (let ((_e126109126371_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd126088126366_))))
                                                (let ((_tl126107126376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126109126371_)))
                                                      (_hd126108126374_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126109126371_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd126108126374_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd126108126374_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl126107126376_))
                      (let ((_e126112126379_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126107126376_))))
                        (let ((_tl126110126384_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126112126379_)))
                              (_hd126111126382_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126112126379_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd126111126382_))
                              (let ((_e126115126387_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd126111126382_))))
                                (let ((_tl126113126392_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126115126387_)))
                                      (_hd126114126390_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126115126387_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd126114126390_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd126114126390_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126113126392_))
                                              (let ((_e126118126395_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126113126392_))))
                                                (let ((_tl126116126400_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126118126395_)))
                                                      (_hd126117126398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126118126395_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126116126400_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126110126384_))
                                                          (let ((_e126121126403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126110126384_))))
                    (let ((_tl126119126408_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126121126403_)))
                          (_hd126120126406_
                           (let ()
                             (declare (not safe))
                             (##car _e126121126403_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126120126406_))
                          (let ((_e126124126411_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126120126406_))))
                            (let ((_tl126122126416_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126124126411_)))
                                  (_hd126123126414_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126124126411_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126123126414_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126123126414_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126122126416_))
                                          (let ((_e126127126419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126122126416_))))
                                            (let ((_tl126125126424_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126127126419_)))
                                                  (_hd126126126422_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126127126419_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126125126424_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126119126408_))
                                                      (let ((_e126130126427_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126119126408_))))
                (let ((_tl126128126432_
                       (let () (declare (not safe)) (##cdr _e126130126427_)))
                      (_hd126129126430_
                       (let () (declare (not safe)) (##car _e126130126427_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126129126430_))
                      (let ((_e126133126435_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126129126430_))))
                        (let ((_tl126131126440_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126133126435_)))
                              (_hd126132126438_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126133126435_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126132126438_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd126132126438_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126131126440_))
                                      (let ((_e126136126443_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126131126440_))))
                                        (let ((_tl126134126448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126136126443_)))
                                              (_hd126135126446_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126136126443_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126134126448_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126128126432_))
                                                  (let ((_e126139126451_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126128126432_))))
                                                    (let ((_tl126137126456_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126139126451_)))
                                                          (_hd126138126454_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126139126451_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126138126454_))
                                                          (let ((_e126142126459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126138126454_))))
                    (let ((_tl126140126464_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126142126459_)))
                          (_hd126141126462_
                           (let ()
                             (declare (not safe))
                             (##car _e126142126459_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126141126462_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126141126462_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126140126464_))
                                  (let ((_e126145126467_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126140126464_))))
                                    (let ((_tl126143126472_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126145126467_)))
                                          (_hd126144126470_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126145126467_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126143126472_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126137126456_))
                                              (let ((__tmp130716
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126144126470_
                                                             _-absent-value126090126354_)))
                                                    (__tmp130715
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126135126446_
                                                             _key126091126356_)))
                                                    (__tmp130714
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126126126422_
                                                             _-xkwvar126092126358_)))
                                                    (__tmp130713
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126117126398_
                                                             _-hash-ref126093126360_))))
                                                (declare (not safe))
                                                (_loop126086126349_
                                                 _lp-tl126089126368_
                                                 __tmp130716
                                                 __tmp130715
                                                 __tmp130714
                                                 __tmp130713))
                                              (___match129281129282_
                                               _e126043126208_
                                               _hd126042126211_
                                               _tl126041126213_))
                                          (___match129281129282_
                                           _e126043126208_
                                           _hd126042126211_
                                           _tl126041126213_))))
                                  (___match129281129282_
                                   _e126043126208_
                                   _hd126042126211_
                                   _tl126041126213_))
                              (___match129281129282_
                               _e126043126208_
                               _hd126042126211_
                               _tl126041126213_))
                          (___match129281129282_
                           _e126043126208_
                           _hd126042126211_
                           _tl126041126213_))))
                  (___match129281129282_
                   _e126043126208_
                   _hd126042126211_
                   _tl126041126213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129281129282_
                                                   _e126043126208_
                                                   _hd126042126211_
                                                   _tl126041126213_))
                                              (___match129281129282_
                                               _e126043126208_
                                               _hd126042126211_
                                               _tl126041126213_))))
                                      (___match129281129282_
                                       _e126043126208_
                                       _hd126042126211_
                                       _tl126041126213_))
                                  (___match129281129282_
                                   _e126043126208_
                                   _hd126042126211_
                                   _tl126041126213_))
                              (___match129281129282_
                               _e126043126208_
                               _hd126042126211_
                               _tl126041126213_))))
                      (___match129281129282_
                       _e126043126208_
                       _hd126042126211_
                       _tl126041126213_))))
              (___match129281129282_
               _e126043126208_
               _hd126042126211_
               _tl126041126213_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129281129282_
                                                   _e126043126208_
                                                   _hd126042126211_
                                                   _tl126041126213_))))
                                          (___match129281129282_
                                           _e126043126208_
                                           _hd126042126211_
                                           _tl126041126213_))
                                      (___match129281129282_
                                       _e126043126208_
                                       _hd126042126211_
                                       _tl126041126213_))
                                  (___match129281129282_
                                   _e126043126208_
                                   _hd126042126211_
                                   _tl126041126213_))))
                          (___match129281129282_
                           _e126043126208_
                           _hd126042126211_
                           _tl126041126213_))))
                  (___match129281129282_
                   _e126043126208_
                   _hd126042126211_
                   _tl126041126213_))
              (___match129281129282_
               _e126043126208_
               _hd126042126211_
               _tl126041126213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129281129282_
                                               _e126043126208_
                                               _hd126042126211_
                                               _tl126041126213_))
                                          (___match129281129282_
                                           _e126043126208_
                                           _hd126042126211_
                                           _tl126041126213_))
                                      (___match129281129282_
                                       _e126043126208_
                                       _hd126042126211_
                                       _tl126041126213_))))
                              (___match129281129282_
                               _e126043126208_
                               _hd126042126211_
                               _tl126041126213_))))
                      (___match129281129282_
                       _e126043126208_
                       _hd126042126211_
                       _tl126041126213_))
                  (___match129281129282_
                   _e126043126208_
                   _hd126042126211_
                   _tl126041126213_))
              (___match129281129282_
               _e126043126208_
               _hd126042126211_
               _tl126041126213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129281129282_
                                               _e126043126208_
                                               _hd126042126211_
                                               _tl126041126213_))))
                                      (let ((_-hash-ref126097126481_
                                             (reverse _-hash-ref126093126360_))
                                            (_-xkwvar126096126479_
                                             (reverse _-xkwvar126092126358_))
                                            (_key126095126477_
                                             (reverse _key126091126356_))
                                            (_-absent-value126094126475_
                                             (reverse _-absent-value126090126354_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl126050126237_))
                                            (let ((_L126484_ _hd126105126344_)
                                                  (_L126485_
                                                   _-absent-value126094126475_)
                                                  (_L126486_ _key126095126477_)
                                                  (_L126487_
                                                   _-xkwvar126096126479_)
                                                  (_L126488_
                                                   _-hash-ref126097126481_)
                                                  (_L126489_ _hd126081126315_)
                                                  (_L126490_ _hd126072126291_)
                                                  (_L126491_ _hd126063126267_)
                                                  (_L126492_ _tl126047126229_)
                                                  (_L126493_ _hd126048126227_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126493_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126492_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L126491_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L126493_
                                                          _L126489_))
                                                       (let ((__tmp130711
                                                              (let ((__tmp130712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g126546126549_ _g126547126551_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126546126549_ _g126547126551_)))))
                        (declare (not safe))
                        (foldr1 __tmp130712 '() _L126486_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp130711))
               (let ((__tmp130710
                      (lambda (_g126553126555_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126553126555_
                           'hash-ref))))
                     (__tmp130708
                      (let ((__tmp130709
                             (lambda (_g126557126560_ _g126558126562_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126557126560_ _g126558126562_)))))
                        (declare (not safe))
                        (foldr1 __tmp130709 '() _L126488_))))
                 (declare (not safe))
                 (andmap1 __tmp130710 __tmp130708))
               (let ((__tmp130707
                      (lambda (_g126564126566_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126564126566_
                           'absent-value))))
                     (__tmp130705
                      (let ((__tmp130706
                             (lambda (_g126568126571_ _g126569126573_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126568126571_ _g126569126573_)))))
                        (declare (not safe))
                        (foldr1 __tmp130706 '() _L126485_))))
                 (declare (not safe))
                 (andmap1 __tmp130707 __tmp130705))
               (let ((__tmp130704
                      (lambda (_g126575126577_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g126575126577_ _L126493_))))
                     (__tmp130702
                      (let ((__tmp130703
                             (lambda (_g126579126582_ _g126580126584_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126579126582_ _g126580126584_)))))
                        (declare (not safe))
                        (foldr1 __tmp130703 '() _L126487_))))
                 (declare (not safe))
                 (andmap1 __tmp130704 __tmp130702)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128968128969_
                                                   _L126484_
                                                   _L126485_
                                                   _L126486_
                                                   _L126487_
                                                   _L126488_
                                                   _L126489_
                                                   _L126490_
                                                   _L126491_
                                                   _L126492_
                                                   _L126493_)
                                                  (___match129281129282_
                                                   _e126043126208_
                                                   _hd126042126211_
                                                   _tl126041126213_)))
                                            (___match129281129282_
                                             _e126043126208_
                                             _hd126042126211_
                                             _tl126041126213_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop126086126349_
                           _target126083126320_
                           '()
                           '()
                           '()
                           '())))))
                   (___match129147129148_
                    (lambda (_e126043126208_
                             _hd126042126211_
                             _tl126041126213_
                             _e126046126216_
                             _hd126045126219_
                             _tl126044126221_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126045126219_))
                          (let ((_e126049126224_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126045126219_))))
                            (let ((_tl126047126229_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126049126224_)))
                                  (_hd126048126227_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126049126224_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126044126221_))
                                  (let ((_e126052126232_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126044126221_))))
                                    (let ((_tl126050126237_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126052126232_)))
                                          (_hd126051126235_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126052126232_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd126051126235_))
                                          (let ((_e126055126240_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd126051126235_))))
                                            (let ((_tl126053126245_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126055126240_)))
                                                  (_hd126054126243_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126055126240_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd126054126243_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd126054126243_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126053126245_))
                                                          (let ((_e126058126248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126053126245_))))
                    (let ((_tl126056126253_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126058126248_)))
                          (_hd126057126251_
                           (let ()
                             (declare (not safe))
                             (##car _e126058126248_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126057126251_))
                          (let ((_e126061126256_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126057126251_))))
                            (let ((_tl126059126261_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126061126256_)))
                                  (_hd126060126259_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126061126256_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126060126259_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126060126259_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126059126261_))
                                          (let ((_e126064126264_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126059126261_))))
                                            (let ((_tl126062126269_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126064126264_)))
                                                  (_hd126063126267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126064126264_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126062126269_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126056126253_))
                                                      (let ((_e126067126272_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126056126253_))))
                (let ((_tl126065126277_
                       (let () (declare (not safe)) (##cdr _e126067126272_)))
                      (_hd126066126275_
                       (let () (declare (not safe)) (##car _e126067126272_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126066126275_))
                      (let ((_e126070126280_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126066126275_))))
                        (let ((_tl126068126285_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126070126280_)))
                              (_hd126069126283_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126070126280_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126069126283_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd126069126283_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126068126285_))
                                      (let ((_e126073126288_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126068126285_))))
                                        (let ((_tl126071126293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126073126288_)))
                                              (_hd126072126291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126073126288_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126071126293_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126065126277_))
                                                  (let ((_e126076126296_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126065126277_))))
                                                    (let ((_tl126074126301_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126076126296_)))
                                                          (_hd126075126299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126076126296_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126075126299_))
                                                          (let ((_e126079126304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126075126299_))))
                    (let ((_tl126077126309_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126079126304_)))
                          (_hd126078126307_
                           (let ()
                             (declare (not safe))
                             (##car _e126079126304_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126078126307_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126078126307_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126077126309_))
                                  (let ((_e126082126312_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126077126309_))))
                                    (let ((_tl126080126317_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126082126312_)))
                                          (_hd126081126315_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126082126312_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126080126317_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126074126301_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl126074126301_))
                                                        '1)
                                                  (let ((___splice128970128971_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126074126301_
                                                            '1))))
                                                    (let ((_tl126085126322_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128970128971_
                                                              '1)))
                                                          (_target126083126320_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128970128971_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126085126322_))
                                                          (let ((_e126100126325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126085126322_))))
                    (let ((_tl126098126330_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126100126325_)))
                          (_hd126099126328_
                           (let ()
                             (declare (not safe))
                             (##car _e126100126325_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126099126328_))
                          (let ((_e126103126333_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126099126328_))))
                            (let ((_tl126101126338_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126103126333_)))
                                  (_hd126102126336_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126103126333_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126102126336_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126102126336_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126101126338_))
                                          (let ((_e126106126341_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126101126338_))))
                                            (let ((_tl126104126346_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126106126341_)))
                                                  (_hd126105126344_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126106126341_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126104126346_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126098126330_))
                                                      (___match129275129276_
                                                       _e126043126208_
                                                       _hd126042126211_
                                                       _tl126041126213_
                                                       _e126046126216_
                                                       _hd126045126219_
                                                       _tl126044126221_
                                                       _e126049126224_
                                                       _hd126048126227_
                                                       _tl126047126229_
                                                       _e126052126232_
                                                       _hd126051126235_
                                                       _tl126050126237_
                                                       _e126055126240_
                                                       _hd126054126243_
                                                       _tl126053126245_
                                                       _e126058126248_
                                                       _hd126057126251_
                                                       _tl126056126253_
                                                       _e126061126256_
                                                       _hd126060126259_
                                                       _tl126059126261_
                                                       _e126064126264_
                                                       _hd126063126267_
                                                       _tl126062126269_
                                                       _e126067126272_
                                                       _hd126066126275_
                                                       _tl126065126277_
                                                       _e126070126280_
                                                       _hd126069126283_
                                                       _tl126068126285_
                                                       _e126073126288_
                                                       _hd126072126291_
                                                       _tl126071126293_
                                                       _e126076126296_
                                                       _hd126075126299_
                                                       _tl126074126301_
                                                       _e126079126304_
                                                       _hd126078126307_
                                                       _tl126077126309_
                                                       _e126082126312_
                                                       _hd126081126315_
                                                       _tl126080126317_
                                                       ___splice128970128971_
                                                       _target126083126320_
                                                       _tl126085126322_
                                                       _e126100126325_
                                                       _hd126099126328_
                                                       _tl126098126330_
                                                       _e126103126333_
                                                       _hd126102126336_
                                                       _tl126101126338_
                                                       _e126106126341_
                                                       _hd126105126344_
                                                       _tl126104126346_)
                                                      (___match129281129282_
                                                       _e126043126208_
                                                       _hd126042126211_
                                                       _tl126041126213_))
                                                  (___match129281129282_
                                                   _e126043126208_
                                                   _hd126042126211_
                                                   _tl126041126213_))))
                                          (___match129281129282_
                                           _e126043126208_
                                           _hd126042126211_
                                           _tl126041126213_))
                                      (___match129281129282_
                                       _e126043126208_
                                       _hd126042126211_
                                       _tl126041126213_))
                                  (___match129281129282_
                                   _e126043126208_
                                   _hd126042126211_
                                   _tl126041126213_))))
                          (___match129281129282_
                           _e126043126208_
                           _hd126042126211_
                           _tl126041126213_))))
                  (___match129281129282_
                   _e126043126208_
                   _hd126042126211_
                   _tl126041126213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129281129282_
                                                   _e126043126208_
                                                   _hd126042126211_
                                                   _tl126041126213_))
                                              (___match129281129282_
                                               _e126043126208_
                                               _hd126042126211_
                                               _tl126041126213_))
                                          (___match129281129282_
                                           _e126043126208_
                                           _hd126042126211_
                                           _tl126041126213_))))
                                  (___match129281129282_
                                   _e126043126208_
                                   _hd126042126211_
                                   _tl126041126213_))
                              (___match129281129282_
                               _e126043126208_
                               _hd126042126211_
                               _tl126041126213_))
                          (___match129281129282_
                           _e126043126208_
                           _hd126042126211_
                           _tl126041126213_))))
                  (___match129281129282_
                   _e126043126208_
                   _hd126042126211_
                   _tl126041126213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129281129282_
                                                   _e126043126208_
                                                   _hd126042126211_
                                                   _tl126041126213_))
                                              (___match129281129282_
                                               _e126043126208_
                                               _hd126042126211_
                                               _tl126041126213_))))
                                      (___match129281129282_
                                       _e126043126208_
                                       _hd126042126211_
                                       _tl126041126213_))
                                  (___match129281129282_
                                   _e126043126208_
                                   _hd126042126211_
                                   _tl126041126213_))
                              (___match129281129282_
                               _e126043126208_
                               _hd126042126211_
                               _tl126041126213_))))
                      (___match129281129282_
                       _e126043126208_
                       _hd126042126211_
                       _tl126041126213_))))
              (___match129281129282_
               _e126043126208_
               _hd126042126211_
               _tl126041126213_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129281129282_
                                                   _e126043126208_
                                                   _hd126042126211_
                                                   _tl126041126213_))))
                                          (___match129281129282_
                                           _e126043126208_
                                           _hd126042126211_
                                           _tl126041126213_))
                                      (___match129281129282_
                                       _e126043126208_
                                       _hd126042126211_
                                       _tl126041126213_))
                                  (___match129281129282_
                                   _e126043126208_
                                   _hd126042126211_
                                   _tl126041126213_))))
                          (___match129281129282_
                           _e126043126208_
                           _hd126042126211_
                           _tl126041126213_))))
                  (___match129281129282_
                   _e126043126208_
                   _hd126042126211_
                   _tl126041126213_))
              (___match129281129282_
               _e126043126208_
               _hd126042126211_
               _tl126041126213_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129281129282_
                                                   _e126043126208_
                                                   _hd126042126211_
                                                   _tl126041126213_))))
                                          (___match129281129282_
                                           _e126043126208_
                                           _hd126042126211_
                                           _tl126041126213_))))
                                  (___match129281129282_
                                   _e126043126208_
                                   _hd126042126211_
                                   _tl126041126213_))))
                          (___match129281129282_
                           _e126043126208_
                           _hd126042126211_
                           _tl126041126213_))))
                   (___match129135129136_
                    (lambda (_e125976126599_
                             _hd125975126602_
                             _tl125974126604_
                             _e125979126607_
                             _hd125978126610_
                             _tl125977126612_
                             _e125982126615_
                             _hd125981126618_
                             _tl125980126620_
                             _e125985126623_
                             _hd125984126626_
                             _tl125983126628_
                             _e125988126631_
                             _hd125987126634_
                             _tl125986126636_
                             _e125991126639_
                             _hd125990126642_
                             _tl125989126644_
                             _e125994126647_
                             _hd125993126650_
                             _tl125992126652_
                             _e125997126655_
                             _hd125996126658_
                             _tl125995126660_
                             _e126000126663_
                             _hd125999126666_
                             _tl125998126668_
                             _e126003126671_
                             _hd126002126674_
                             _tl126001126676_
                             _e126006126679_
                             _hd126005126682_
                             _tl126004126684_
                             _e126009126687_
                             _hd126008126690_
                             _tl126007126692_
                             _e126012126695_
                             _hd126011126698_
                             _tl126010126700_
                             _e126015126703_
                             _hd126014126706_
                             _tl126013126708_
                             _e126018126711_
                             _hd126017126714_
                             _tl126016126716_
                             _e126021126719_
                             _hd126020126722_
                             _tl126019126724_
                             _e126024126727_
                             _hd126023126730_
                             _tl126022126732_
                             _e126027126735_
                             _hd126026126738_
                             _tl126025126740_
                             _e126030126743_
                             _hd126029126746_
                             _tl126028126748_)
                      (let ((_L126751_ _hd126029126746_)
                            (_L126752_ _hd126020126722_)
                            (_L126753_ _hd126011126698_)
                            (_L126754_ _hd126002126674_)
                            (_L126755_ _hd125993126650_)
                            (_L126756_ _hd125978126610_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L126756_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L126755_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L126754_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L126756_ _L126751_)))
                            (___kont128966128967_
                             _L126751_
                             _L126752_
                             _L126753_
                             _L126754_
                             _L126755_
                             _L126756_)
                            (___match129147129148_
                             _e125976126599_
                             _hd125975126602_
                             _tl125974126604_
                             _e125979126607_
                             _hd125978126610_
                             _tl125977126612_)))))
                   (___match128989128990_
                    (lambda (_e125976126599_ _hd125975126602_ _tl125974126604_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125974126604_))
                          (let ((_e125979126607_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125974126604_))))
                            (let ((_tl125977126612_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125979126607_)))
                                  (_hd125978126610_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125979126607_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125977126612_))
                                  (let ((_e125982126615_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125977126612_))))
                                    (let ((_tl125980126620_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125982126615_)))
                                          (_hd125981126618_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125982126615_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125981126618_))
                                          (let ((_e125985126623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125981126618_))))
                                            (let ((_tl125983126628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125985126623_)))
                                                  (_hd125984126626_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125985126623_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125984126626_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125984126626_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125983126628_))
                                                          (let ((_e125988126631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125983126628_))))
                    (let ((_tl125986126636_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125988126631_)))
                          (_hd125987126634_
                           (let ()
                             (declare (not safe))
                             (##car _e125988126631_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125987126634_))
                          (let ((_e125991126639_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125987126634_))))
                            (let ((_tl125989126644_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125991126639_)))
                                  (_hd125990126642_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125991126639_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125990126642_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125990126642_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125989126644_))
                                          (let ((_e125994126647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125989126644_))))
                                            (let ((_tl125992126652_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125994126647_)))
                                                  (_hd125993126650_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125994126647_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125992126652_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125986126636_))
                                                      (let ((_e125997126655_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125986126636_))))
                (let ((_tl125995126660_
                       (let () (declare (not safe)) (##cdr _e125997126655_)))
                      (_hd125996126658_
                       (let () (declare (not safe)) (##car _e125997126655_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125996126658_))
                      (let ((_e126000126663_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125996126658_))))
                        (let ((_tl125998126668_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126000126663_)))
                              (_hd125999126666_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126000126663_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125999126666_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125999126666_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125998126668_))
                                      (let ((_e126003126671_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125998126668_))))
                                        (let ((_tl126001126676_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126003126671_)))
                                              (_hd126002126674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126003126671_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126001126676_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125995126660_))
                                                  (let ((_e126006126679_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125995126660_))))
                                                    (let ((_tl126004126684_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126006126679_)))
                                                          (_hd126005126682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126006126679_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126005126682_))
                                                          (let ((_e126009126687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126005126682_))))
                    (let ((_tl126007126692_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126009126687_)))
                          (_hd126008126690_
                           (let ()
                             (declare (not safe))
                             (##car _e126009126687_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126008126690_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd126008126690_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126007126692_))
                                  (let ((_e126012126695_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126007126692_))))
                                    (let ((_tl126010126700_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126012126695_)))
                                          (_hd126011126698_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126012126695_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126010126700_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126004126684_))
                                              (let ((_e126015126703_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126004126684_))))
                                                (let ((_tl126013126708_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126015126703_)))
                                                      (_hd126014126706_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126015126703_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd126014126706_))
                                                      (let ((_e126018126711_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd126014126706_))))
                (let ((_tl126016126716_
                       (let () (declare (not safe)) (##cdr _e126018126711_)))
                      (_hd126017126714_
                       (let () (declare (not safe)) (##car _e126018126711_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd126017126714_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd126017126714_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126016126716_))
                              (let ((_e126021126719_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126016126716_))))
                                (let ((_tl126019126724_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126021126719_)))
                                      (_hd126020126722_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126021126719_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126019126724_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126013126708_))
                                          (let ((_e126024126727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126013126708_))))
                                            (let ((_tl126022126732_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126024126727_)))
                                                  (_hd126023126730_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126024126727_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd126023126730_))
                                                  (let ((_e126027126735_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd126023126730_))))
                                                    (let ((_tl126025126740_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126027126735_)))
                                                          (_hd126026126738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126027126735_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd126026126738_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd126026126738_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126025126740_))
                          (let ((_e126030126743_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126025126740_))))
                            (let ((_tl126028126748_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126030126743_)))
                                  (_hd126029126746_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126030126743_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126028126748_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126022126732_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125980126620_))
                                          (___match129135129136_
                                           _e125976126599_
                                           _hd125975126602_
                                           _tl125974126604_
                                           _e125979126607_
                                           _hd125978126610_
                                           _tl125977126612_
                                           _e125982126615_
                                           _hd125981126618_
                                           _tl125980126620_
                                           _e125985126623_
                                           _hd125984126626_
                                           _tl125983126628_
                                           _e125988126631_
                                           _hd125987126634_
                                           _tl125986126636_
                                           _e125991126639_
                                           _hd125990126642_
                                           _tl125989126644_
                                           _e125994126647_
                                           _hd125993126650_
                                           _tl125992126652_
                                           _e125997126655_
                                           _hd125996126658_
                                           _tl125995126660_
                                           _e126000126663_
                                           _hd125999126666_
                                           _tl125998126668_
                                           _e126003126671_
                                           _hd126002126674_
                                           _tl126001126676_
                                           _e126006126679_
                                           _hd126005126682_
                                           _tl126004126684_
                                           _e126009126687_
                                           _hd126008126690_
                                           _tl126007126692_
                                           _e126012126695_
                                           _hd126011126698_
                                           _tl126010126700_
                                           _e126015126703_
                                           _hd126014126706_
                                           _tl126013126708_
                                           _e126018126711_
                                           _hd126017126714_
                                           _tl126016126716_
                                           _e126021126719_
                                           _hd126020126722_
                                           _tl126019126724_
                                           _e126024126727_
                                           _hd126023126730_
                                           _tl126022126732_
                                           _e126027126735_
                                           _hd126026126738_
                                           _tl126025126740_
                                           _e126030126743_
                                           _hd126029126746_
                                           _tl126028126748_)
                                          (___match129147129148_
                                           _e125976126599_
                                           _hd125975126602_
                                           _tl125974126604_
                                           _e125979126607_
                                           _hd125978126610_
                                           _tl125977126612_))
                                      (___match129147129148_
                                       _e125976126599_
                                       _hd125975126602_
                                       _tl125974126604_
                                       _e125979126607_
                                       _hd125978126610_
                                       _tl125977126612_))
                                  (___match129147129148_
                                   _e125976126599_
                                   _hd125975126602_
                                   _tl125974126604_
                                   _e125979126607_
                                   _hd125978126610_
                                   _tl125977126612_))))
                          (___match129147129148_
                           _e125976126599_
                           _hd125975126602_
                           _tl125974126604_
                           _e125979126607_
                           _hd125978126610_
                           _tl125977126612_))
                      (___match129147129148_
                       _e125976126599_
                       _hd125975126602_
                       _tl125974126604_
                       _e125979126607_
                       _hd125978126610_
                       _tl125977126612_))
                  (___match129147129148_
                   _e125976126599_
                   _hd125975126602_
                   _tl125974126604_
                   _e125979126607_
                   _hd125978126610_
                   _tl125977126612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129147129148_
                                                   _e125976126599_
                                                   _hd125975126602_
                                                   _tl125974126604_
                                                   _e125979126607_
                                                   _hd125978126610_
                                                   _tl125977126612_))))
                                          (___match129147129148_
                                           _e125976126599_
                                           _hd125975126602_
                                           _tl125974126604_
                                           _e125979126607_
                                           _hd125978126610_
                                           _tl125977126612_))
                                      (___match129147129148_
                                       _e125976126599_
                                       _hd125975126602_
                                       _tl125974126604_
                                       _e125979126607_
                                       _hd125978126610_
                                       _tl125977126612_))))
                              (___match129147129148_
                               _e125976126599_
                               _hd125975126602_
                               _tl125974126604_
                               _e125979126607_
                               _hd125978126610_
                               _tl125977126612_))
                          (___match129147129148_
                           _e125976126599_
                           _hd125975126602_
                           _tl125974126604_
                           _e125979126607_
                           _hd125978126610_
                           _tl125977126612_))
                      (___match129147129148_
                       _e125976126599_
                       _hd125975126602_
                       _tl125974126604_
                       _e125979126607_
                       _hd125978126610_
                       _tl125977126612_))))
              (___match129147129148_
               _e125976126599_
               _hd125975126602_
               _tl125974126604_
               _e125979126607_
               _hd125978126610_
               _tl125977126612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129147129148_
                                               _e125976126599_
                                               _hd125975126602_
                                               _tl125974126604_
                                               _e125979126607_
                                               _hd125978126610_
                                               _tl125977126612_))
                                          (___match129147129148_
                                           _e125976126599_
                                           _hd125975126602_
                                           _tl125974126604_
                                           _e125979126607_
                                           _hd125978126610_
                                           _tl125977126612_))))
                                  (___match129147129148_
                                   _e125976126599_
                                   _hd125975126602_
                                   _tl125974126604_
                                   _e125979126607_
                                   _hd125978126610_
                                   _tl125977126612_))
                              (___match129147129148_
                               _e125976126599_
                               _hd125975126602_
                               _tl125974126604_
                               _e125979126607_
                               _hd125978126610_
                               _tl125977126612_))
                          (___match129147129148_
                           _e125976126599_
                           _hd125975126602_
                           _tl125974126604_
                           _e125979126607_
                           _hd125978126610_
                           _tl125977126612_))))
                  (___match129147129148_
                   _e125976126599_
                   _hd125975126602_
                   _tl125974126604_
                   _e125979126607_
                   _hd125978126610_
                   _tl125977126612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129147129148_
                                                   _e125976126599_
                                                   _hd125975126602_
                                                   _tl125974126604_
                                                   _e125979126607_
                                                   _hd125978126610_
                                                   _tl125977126612_))
                                              (___match129147129148_
                                               _e125976126599_
                                               _hd125975126602_
                                               _tl125974126604_
                                               _e125979126607_
                                               _hd125978126610_
                                               _tl125977126612_))))
                                      (___match129147129148_
                                       _e125976126599_
                                       _hd125975126602_
                                       _tl125974126604_
                                       _e125979126607_
                                       _hd125978126610_
                                       _tl125977126612_))
                                  (___match129147129148_
                                   _e125976126599_
                                   _hd125975126602_
                                   _tl125974126604_
                                   _e125979126607_
                                   _hd125978126610_
                                   _tl125977126612_))
                              (___match129147129148_
                               _e125976126599_
                               _hd125975126602_
                               _tl125974126604_
                               _e125979126607_
                               _hd125978126610_
                               _tl125977126612_))))
                      (___match129147129148_
                       _e125976126599_
                       _hd125975126602_
                       _tl125974126604_
                       _e125979126607_
                       _hd125978126610_
                       _tl125977126612_))))
              (___match129147129148_
               _e125976126599_
               _hd125975126602_
               _tl125974126604_
               _e125979126607_
               _hd125978126610_
               _tl125977126612_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129147129148_
                                                   _e125976126599_
                                                   _hd125975126602_
                                                   _tl125974126604_
                                                   _e125979126607_
                                                   _hd125978126610_
                                                   _tl125977126612_))))
                                          (___match129147129148_
                                           _e125976126599_
                                           _hd125975126602_
                                           _tl125974126604_
                                           _e125979126607_
                                           _hd125978126610_
                                           _tl125977126612_))
                                      (___match129147129148_
                                       _e125976126599_
                                       _hd125975126602_
                                       _tl125974126604_
                                       _e125979126607_
                                       _hd125978126610_
                                       _tl125977126612_))
                                  (___match129147129148_
                                   _e125976126599_
                                   _hd125975126602_
                                   _tl125974126604_
                                   _e125979126607_
                                   _hd125978126610_
                                   _tl125977126612_))))
                          (___match129147129148_
                           _e125976126599_
                           _hd125975126602_
                           _tl125974126604_
                           _e125979126607_
                           _hd125978126610_
                           _tl125977126612_))))
                  (___match129147129148_
                   _e125976126599_
                   _hd125975126602_
                   _tl125974126604_
                   _e125979126607_
                   _hd125978126610_
                   _tl125977126612_))
              (___match129147129148_
               _e125976126599_
               _hd125975126602_
               _tl125974126604_
               _e125979126607_
               _hd125978126610_
               _tl125977126612_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129147129148_
                                                   _e125976126599_
                                                   _hd125975126602_
                                                   _tl125974126604_
                                                   _e125979126607_
                                                   _hd125978126610_
                                                   _tl125977126612_))))
                                          (___match129147129148_
                                           _e125976126599_
                                           _hd125975126602_
                                           _tl125974126604_
                                           _e125979126607_
                                           _hd125978126610_
                                           _tl125977126612_))))
                                  (___match129147129148_
                                   _e125976126599_
                                   _hd125975126602_
                                   _tl125974126604_
                                   _e125979126607_
                                   _hd125978126610_
                                   _tl125977126612_))))
                          (___match129281129282_
                           _e125976126599_
                           _hd125975126602_
                           _tl125974126604_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128962128963_))
                  (let ((_e125967126816_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128962128963_))))
                    (let ((_tl125965126821_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125967126816_)))
                          (_hd125966126819_
                           (let ()
                             (declare (not safe))
                             (##car _e125967126816_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L126824_ _tl125965126821_))
                            (___kont128964128965_ _L126824_))
                          (___match128989128990_
                           _e125967126816_
                           _hd125966126819_
                           _tl125965126821_))))
                  (let () (declare (not safe)) (_g125962126158_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self125909_ _stx125910_)
        (letrec ((_clause-e125912_
                  (lambda (_form125953_)
                    (let ((__obj130646
                           (let ()
                             (declare (not safe))
                             (##structure
                              gxc#!lambda::t
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f))))
                      (gxc#!lambda:::init!
                       __obj130646
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form125953_))
                       (if (let ((__tmp130717
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp130717))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form125953_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form125953_))
                               '#f)
                           '#f))
                      __obj130646))))
          (let* ((_g125914125924_
                  (lambda (_g125915125921_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125915125921_))))
                 (_g125913125950_
                  (lambda (_g125915125927_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125915125927_))
                        (let ((_e125919125929_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125915125927_))))
                          (let ((_hd125918125932_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125919125929_)))
                                (_tl125917125934_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125919125929_))))
                            ((lambda (_L125937_)
                               (let ((_clauses125948_
                                      (map _clause-e125912_ _L125937_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses125948_)))
                             _tl125917125934_)))
                        (let ()
                          (declare (not safe))
                          (_g125914125924_ _g125915125927_))))))
            (declare (not safe))
            (_g125913125950_ _stx125910_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self125840_ _stx125841_)
        (let* ((_g125843125860_
                (lambda (_g125844125857_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125844125857_))))
               (_g125842125906_
                (lambda (_g125844125863_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125844125863_))
                      (let ((_e125849125865_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125844125863_))))
                        (let ((_hd125848125868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125849125865_)))
                              (_tl125847125870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125849125865_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125847125870_))
                              (let ((_e125852125873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125847125870_))))
                                (let ((_hd125851125876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125852125873_)))
                                      (_tl125850125878_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125852125873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125850125878_))
                                      (let ((_e125855125881_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125850125878_))))
                                        (let ((_hd125854125884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125855125881_)))
                                              (_tl125853125886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125855125881_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125853125886_))
                                              ((lambda (_L125889_ _L125890_)
                                                 (let ((__tmp130718
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self125840_
                                                             _L125889_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp130718
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd125854125884_
                                               _hd125851125876_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125843125860_
                                                 _g125844125863_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125843125860_ _g125844125863_)))))
                              (let ()
                                (declare (not safe))
                                (_g125843125860_ _g125844125863_)))))
                      (let ()
                        (declare (not safe))
                        (_g125843125860_ _g125844125863_))))))
          (declare (not safe))
          (_g125842125906_ _stx125841_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self125744_ _stx125745_)
        (let* ((___stx129290129291_ _stx125745_)
               (_g125748125768_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129290129291_)))))
          (let ((___kont129292129293_
                 (lambda (_L125812_ _L125813_)
                   (let ((_type-e125830125832_
                          (let ((__tmp130719
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L125813_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp130719))))
                     (if _type-e125830125832_
                         (let ((_type-e125835_ _type-e125830125832_))
                           (_type-e125835_ _stx125745_ _L125812_))
                         '#f))))
                (___kont129294129295_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129290129291_))
                (let ((_e125754125780_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129290129291_))))
                  (let ((_tl125752125785_
                         (let () (declare (not safe)) (##cdr _e125754125780_)))
                        (_hd125753125783_
                         (let ()
                           (declare (not safe))
                           (##car _e125754125780_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125752125785_))
                        (let ((_e125757125788_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125752125785_))))
                          (let ((_tl125755125793_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125757125788_)))
                                (_hd125756125791_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125757125788_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125756125791_))
                                (let ((_e125760125796_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125756125791_))))
                                  (let ((_tl125758125801_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125760125796_)))
                                        (_hd125759125799_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125760125796_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125759125799_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125759125799_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125758125801_))
                                                (let ((_e125763125804_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125758125801_))))
                                                  (let ((_tl125761125809_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125763125804_)))
                                                        (_hd125762125807_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125763125804_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125761125809_))
                                                        (___kont129292129293_
                                                         _tl125755125793_
                                                         _hd125762125807_)
                                                        (___kont129294129295_))))
                                                (___kont129294129295_))
                                            (___kont129294129295_))
                                        (___kont129294129295_))))
                                (___kont129294129295_))))
                        (___kont129294129295_))))
                (___kont129294129295_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self125692_ _stx125693_)
        (let* ((_g125695125708_
                (lambda (_g125696125705_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125696125705_))))
               (_g125694125741_
                (lambda (_g125696125711_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125696125711_))
                      (let ((_e125700125713_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125696125711_))))
                        (let ((_hd125699125716_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125700125713_)))
                              (_tl125698125718_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125700125713_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125698125718_))
                              (let ((_e125703125721_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125698125718_))))
                                (let ((_hd125702125724_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125703125721_)))
                                      (_tl125701125726_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125703125721_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125701125726_))
                                      ((lambda (_L125729_)
                                         (let ((__tmp130720
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125729_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp130720)))
                                       _hd125702125724_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125695125708_ _g125696125711_)))))
                              (let ()
                                (declare (not safe))
                                (_g125695125708_ _g125696125711_)))))
                      (let ()
                        (declare (not safe))
                        (_g125695125708_ _g125696125711_))))))
          (declare (not safe))
          (_g125694125741_ _stx125693_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form124926_)
        (let* ((___stx129328129329_ _form124926_)
               (_g124931125088_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129328129329_)))))
          (let ((___kont129330129331_
                 (lambda (_L125612_ _L125613_ _L125614_) '#t))
                (___kont129336129337_
                 (lambda (_L125400_
                          _L125401_
                          _L125402_
                          _L125403_
                          _L125404_
                          _L125405_)
                   '#t))
                (___kont129342129343_
                 (lambda (_L125196_ _L125197_ _L125198_ _L125199_) '#t))
                (___kont129344129345_ (lambda () '#f)))
            (let* ((___match129469129470_
                    (lambda (_e125050125100_
                             _hd125049125103_
                             _tl125048125105_
                             _e125053125108_
                             _hd125052125111_
                             _tl125051125113_
                             _e125056125116_
                             _hd125055125119_
                             _tl125054125121_
                             _e125059125124_
                             _hd125058125127_
                             _tl125057125129_
                             _e125062125132_
                             _hd125061125135_
                             _tl125060125137_
                             _e125065125140_
                             _hd125064125143_
                             _tl125063125145_
                             _e125068125148_
                             _hd125067125151_
                             _tl125066125153_
                             _e125071125156_
                             _hd125070125159_
                             _tl125069125161_
                             _e125074125164_
                             _hd125073125167_
                             _tl125072125169_
                             _e125077125172_
                             _hd125076125175_
                             _tl125075125177_
                             _e125080125180_
                             _hd125079125183_
                             _tl125078125185_
                             _e125083125188_
                             _hd125082125191_
                             _tl125081125193_)
                      (let ((_L125196_ _hd125082125191_)
                            (_L125197_ _hd125073125167_)
                            (_L125198_ _hd125064125143_)
                            (_L125199_ _hd125049125103_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125199_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125198_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125199_ _L125196_))
                                 (let ((__tmp130721
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L125197_
                                           _L125199_))))
                                   (declare (not safe))
                                   (not __tmp130721)))
                            (___kont129342129343_
                             _L125196_
                             _L125197_
                             _L125198_
                             _L125199_)
                            (___kont129344129345_)))))
                   (___match129441129442_
                    (lambda (_e125050125100_
                             _hd125049125103_
                             _tl125048125105_
                             _e125053125108_
                             _hd125052125111_
                             _tl125051125113_
                             _e125056125116_
                             _hd125055125119_
                             _tl125054125121_
                             _e125059125124_
                             _hd125058125127_
                             _tl125057125129_
                             _e125062125132_
                             _hd125061125135_
                             _tl125060125137_
                             _e125065125140_
                             _hd125064125143_
                             _tl125063125145_
                             _e125068125148_
                             _hd125067125151_
                             _tl125066125153_
                             _e125071125156_
                             _hd125070125159_
                             _tl125069125161_
                             _e125074125164_
                             _hd125073125167_
                             _tl125072125169_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125066125153_))
                          (let ((_e125077125172_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125066125153_))))
                            (let ((_tl125075125177_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125077125172_)))
                                  (_hd125076125175_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125077125172_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125076125175_))
                                  (let ((_e125080125180_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125076125175_))))
                                    (let ((_tl125078125185_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125080125180_)))
                                          (_hd125079125183_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125080125180_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125079125183_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125079125183_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125078125185_))
                                                  (let ((_e125083125188_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125078125185_))))
                                                    (let ((_tl125081125193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125083125188_)))
                                                          (_hd125082125191_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125083125188_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125081125193_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl125075125177_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125051125113_))
                          (___match129469129470_
                           _e125050125100_
                           _hd125049125103_
                           _tl125048125105_
                           _e125053125108_
                           _hd125052125111_
                           _tl125051125113_
                           _e125056125116_
                           _hd125055125119_
                           _tl125054125121_
                           _e125059125124_
                           _hd125058125127_
                           _tl125057125129_
                           _e125062125132_
                           _hd125061125135_
                           _tl125060125137_
                           _e125065125140_
                           _hd125064125143_
                           _tl125063125145_
                           _e125068125148_
                           _hd125067125151_
                           _tl125066125153_
                           _e125071125156_
                           _hd125070125159_
                           _tl125069125161_
                           _e125074125164_
                           _hd125073125167_
                           _tl125072125169_
                           _e125077125172_
                           _hd125076125175_
                           _tl125075125177_
                           _e125080125180_
                           _hd125079125183_
                           _tl125078125185_
                           _e125083125188_
                           _hd125082125191_
                           _tl125081125193_)
                          (___kont129344129345_))
                      (___kont129344129345_))
                  (___kont129344129345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129344129345_))
                                              (___kont129344129345_))
                                          (___kont129344129345_))))
                                  (___kont129344129345_))))
                          (___kont129344129345_))))
                   (___match129371129372_
                    (lambda (_e124986125240_
                             _hd124985125243_
                             _tl124984125245_
                             ___splice129338129339_
                             _target124987125248_
                             _tl124989125250_)
                      (letrec ((_loop124990125253_
                                (lambda (_hd124988125256_ _arg124994125258_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124988125256_))
                                      (let ((_e124991125261_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124988125256_))))
                                        (let ((_lp-tl124993125266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124991125261_)))
                                              (_lp-hd124992125264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124991125261_))))
                                          (let ((__tmp130736
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124992125264_
                                                         _arg124994125258_))))
                                            (declare (not safe))
                                            (_loop124990125253_
                                             _lp-tl124993125266_
                                             __tmp130736))))
                                      (let ((_arg124995125269_
                                             (reverse _arg124994125258_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124984125245_))
                                            (let ((_e124998125272_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124984125245_))))
                                              (let ((_tl124996125277_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124998125272_)))
                                                    (_hd124997125275_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124998125272_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124997125275_))
                                                    (let ((_e125001125280_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124997125275_))))
                                                      (let ((_tl124999125285_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125001125280_)))
                    (_hd125000125283_
                     (let () (declare (not safe)) (##car _e125001125280_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd125000125283_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd125000125283_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124999125285_))
                            (let ((_e125004125288_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124999125285_))))
                              (let ((_tl125002125293_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e125004125288_)))
                                    (_hd125003125291_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e125004125288_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd125003125291_))
                                    (let ((_e125007125296_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd125003125291_))))
                                      (let ((_tl125005125301_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e125007125296_)))
                                            (_hd125006125299_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e125007125296_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd125006125299_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd125006125299_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl125005125301_))
                                                    (let ((_e125010125304_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl125005125301_))))
                                                      (let ((_tl125008125309_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125010125304_)))
                    (_hd125009125307_
                     (let () (declare (not safe)) (##car _e125010125304_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl125008125309_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125002125293_))
                        (let ((_e125013125312_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125002125293_))))
                          (let ((_tl125011125317_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125013125312_)))
                                (_hd125012125315_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125013125312_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125012125315_))
                                (let ((_e125016125320_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125012125315_))))
                                  (let ((_tl125014125325_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125016125320_)))
                                        (_hd125015125323_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125016125320_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125015125323_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125015125323_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125014125325_))
                                                (let ((_e125019125328_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125014125325_))))
                                                  (let ((_tl125017125333_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125019125328_)))
                                                        (_hd125018125331_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125019125328_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125017125333_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl125011125317_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl125011125317_))
                              '1)
                        (let ((___splice129340129341_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl125011125317_
                                  '1))))
                          (let ((_tl125022125338_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129340129341_ '1)))
                                (_target125020125336_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129340129341_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125022125338_))
                                (let ((_e125031125341_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125022125338_))))
                                  (let ((_tl125029125346_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125031125341_)))
                                        (_hd125030125344_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125031125341_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd125030125344_))
                                        (let ((_e125034125349_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd125030125344_))))
                                          (let ((_tl125032125354_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e125034125349_)))
                                                (_hd125033125352_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e125034125349_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd125033125352_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd125033125352_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl125032125354_))
                                                        (let ((_e125037125357_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl125032125354_))))
                  (let ((_tl125035125362_
                         (let () (declare (not safe)) (##cdr _e125037125357_)))
                        (_hd125036125360_
                         (let ()
                           (declare (not safe))
                           (##car _e125037125357_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl125035125362_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl125029125346_))
                            (letrec ((_loop125023125365_
                                      (lambda (_hd125021125368_
                                               _xarg125027125370_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd125021125368_))
                                            (let ((_e125024125373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd125021125368_))))
                                              (let ((_lp-tl125026125378_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e125024125373_)))
                                                    (_lp-hd125025125376_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e125024125373_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd125025125376_))
                                                    (let ((_e125040125381_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd125025125376_))))
                                                      (let ((_tl125038125386_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125040125381_)))
                    (_hd125039125384_
                     (let () (declare (not safe)) (##car _e125040125381_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd125039125384_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd125039125384_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl125038125386_))
                            (let ((_e125043125389_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl125038125386_))))
                              (let ((_tl125041125394_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e125043125389_)))
                                    (_hd125042125392_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e125043125389_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl125041125394_))
                                    (let ((__tmp130735
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd125042125392_
                                                   _xarg125027125370_))))
                                      (declare (not safe))
                                      (_loop125023125365_
                                       _lp-tl125026125378_
                                       __tmp130735))
                                    (___match129441129442_
                                     _e124986125240_
                                     _hd124985125243_
                                     _tl124984125245_
                                     _e124998125272_
                                     _hd124997125275_
                                     _tl124996125277_
                                     _e125001125280_
                                     _hd125000125283_
                                     _tl124999125285_
                                     _e125004125288_
                                     _hd125003125291_
                                     _tl125002125293_
                                     _e125007125296_
                                     _hd125006125299_
                                     _tl125005125301_
                                     _e125010125304_
                                     _hd125009125307_
                                     _tl125008125309_
                                     _e125013125312_
                                     _hd125012125315_
                                     _tl125011125317_
                                     _e125016125320_
                                     _hd125015125323_
                                     _tl125014125325_
                                     _e125019125328_
                                     _hd125018125331_
                                     _tl125017125333_))))
                            (___match129441129442_
                             _e124986125240_
                             _hd124985125243_
                             _tl124984125245_
                             _e124998125272_
                             _hd124997125275_
                             _tl124996125277_
                             _e125001125280_
                             _hd125000125283_
                             _tl124999125285_
                             _e125004125288_
                             _hd125003125291_
                             _tl125002125293_
                             _e125007125296_
                             _hd125006125299_
                             _tl125005125301_
                             _e125010125304_
                             _hd125009125307_
                             _tl125008125309_
                             _e125013125312_
                             _hd125012125315_
                             _tl125011125317_
                             _e125016125320_
                             _hd125015125323_
                             _tl125014125325_
                             _e125019125328_
                             _hd125018125331_
                             _tl125017125333_))
                        (___match129441129442_
                         _e124986125240_
                         _hd124985125243_
                         _tl124984125245_
                         _e124998125272_
                         _hd124997125275_
                         _tl124996125277_
                         _e125001125280_
                         _hd125000125283_
                         _tl124999125285_
                         _e125004125288_
                         _hd125003125291_
                         _tl125002125293_
                         _e125007125296_
                         _hd125006125299_
                         _tl125005125301_
                         _e125010125304_
                         _hd125009125307_
                         _tl125008125309_
                         _e125013125312_
                         _hd125012125315_
                         _tl125011125317_
                         _e125016125320_
                         _hd125015125323_
                         _tl125014125325_
                         _e125019125328_
                         _hd125018125331_
                         _tl125017125333_))
                    (___match129441129442_
                     _e124986125240_
                     _hd124985125243_
                     _tl124984125245_
                     _e124998125272_
                     _hd124997125275_
                     _tl124996125277_
                     _e125001125280_
                     _hd125000125283_
                     _tl124999125285_
                     _e125004125288_
                     _hd125003125291_
                     _tl125002125293_
                     _e125007125296_
                     _hd125006125299_
                     _tl125005125301_
                     _e125010125304_
                     _hd125009125307_
                     _tl125008125309_
                     _e125013125312_
                     _hd125012125315_
                     _tl125011125317_
                     _e125016125320_
                     _hd125015125323_
                     _tl125014125325_
                     _e125019125328_
                     _hd125018125331_
                     _tl125017125333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129441129442_
                                                     _e124986125240_
                                                     _hd124985125243_
                                                     _tl124984125245_
                                                     _e124998125272_
                                                     _hd124997125275_
                                                     _tl124996125277_
                                                     _e125001125280_
                                                     _hd125000125283_
                                                     _tl124999125285_
                                                     _e125004125288_
                                                     _hd125003125291_
                                                     _tl125002125293_
                                                     _e125007125296_
                                                     _hd125006125299_
                                                     _tl125005125301_
                                                     _e125010125304_
                                                     _hd125009125307_
                                                     _tl125008125309_
                                                     _e125013125312_
                                                     _hd125012125315_
                                                     _tl125011125317_
                                                     _e125016125320_
                                                     _hd125015125323_
                                                     _tl125014125325_
                                                     _e125019125328_
                                                     _hd125018125331_
                                                     _tl125017125333_))))
                                            (let ((_xarg125028125397_
                                                   (reverse _xarg125027125370_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124996125277_))
                                                  (let ((_L125400_
                                                         _hd125036125360_)
                                                        (_L125401_
                                                         _xarg125028125397_)
                                                        (_L125402_
                                                         _hd125018125331_)
                                                        (_L125403_
                                                         _hd125009125307_)
                                                        (_L125404_
                                                         _tl124989125250_)
                                                        (_L125405_
                                                         _arg124995125269_))
                                                    (if (and (let ((__tmp130733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130734
                                   (lambda (_g125448125451_ _g125449125453_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125448125451_
                                             _g125449125453_)))))
                              (declare (not safe))
                              (foldr1 __tmp130734 '() _L125405_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp130733))
                     (let () (declare (not safe)) (gx#identifier? _L125404_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L125403_ 'apply))
                     (fx= (length (let ((__tmp130731
                                         (lambda (_g125455125458_
                                                  _g125456125460_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125455125458_
                                                   _g125456125460_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130731 '() _L125405_)))
                          (length (let ((__tmp130732
                                         (lambda (_g125462125465_
                                                  _g125463125467_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125462125465_
                                                   _g125463125467_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130732 '() _L125401_))))
                     (let ((__tmp130729
                            (let ((__tmp130730
                                   (lambda (_g125469125472_ _g125470125474_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125469125472_
                                             _g125470125474_)))))
                              (declare (not safe))
                              (foldr1 __tmp130730 '() _L125405_)))
                           (__tmp130727
                            (let ((__tmp130728
                                   (lambda (_g125476125479_ _g125477125481_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125476125479_
                                             _g125477125481_)))))
                              (declare (not safe))
                              (foldr1 __tmp130728 '() _L125401_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp130729 __tmp130727))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L125404_ _L125400_))
                     (let ((__tmp130722
                            (let ((__tmp130726
                                   (lambda (_g125483125485_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g125483125485_
                                        _L125402_))))
                                  (__tmp130723
                                   (let ((__tmp130725
                                          (lambda (_g125487125490_
                                                   _g125488125492_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g125487125490_
                                                    _g125488125492_))))
                                         (__tmp130724
                                          (let ()
                                            (declare (not safe))
                                            (cons _L125404_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp130725
                                             __tmp130724
                                             _L125405_))))
                              (declare (not safe))
                              (find __tmp130726 __tmp130723))))
                       (declare (not safe))
                       (not __tmp130722)))
                (___kont129336129337_
                 _L125400_
                 _L125401_
                 _L125402_
                 _L125403_
                 _L125404_
                 _L125405_)
                (___match129441129442_
                 _e124986125240_
                 _hd124985125243_
                 _tl124984125245_
                 _e124998125272_
                 _hd124997125275_
                 _tl124996125277_
                 _e125001125280_
                 _hd125000125283_
                 _tl124999125285_
                 _e125004125288_
                 _hd125003125291_
                 _tl125002125293_
                 _e125007125296_
                 _hd125006125299_
                 _tl125005125301_
                 _e125010125304_
                 _hd125009125307_
                 _tl125008125309_
                 _e125013125312_
                 _hd125012125315_
                 _tl125011125317_
                 _e125016125320_
                 _hd125015125323_
                 _tl125014125325_
                 _e125019125328_
                 _hd125018125331_
                 _tl125017125333_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129441129442_
                                                   _e124986125240_
                                                   _hd124985125243_
                                                   _tl124984125245_
                                                   _e124998125272_
                                                   _hd124997125275_
                                                   _tl124996125277_
                                                   _e125001125280_
                                                   _hd125000125283_
                                                   _tl124999125285_
                                                   _e125004125288_
                                                   _hd125003125291_
                                                   _tl125002125293_
                                                   _e125007125296_
                                                   _hd125006125299_
                                                   _tl125005125301_
                                                   _e125010125304_
                                                   _hd125009125307_
                                                   _tl125008125309_
                                                   _e125013125312_
                                                   _hd125012125315_
                                                   _tl125011125317_
                                                   _e125016125320_
                                                   _hd125015125323_
                                                   _tl125014125325_
                                                   _e125019125328_
                                                   _hd125018125331_
                                                   _tl125017125333_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop125023125365_ _target125020125336_ '())))
                            (___match129441129442_
                             _e124986125240_
                             _hd124985125243_
                             _tl124984125245_
                             _e124998125272_
                             _hd124997125275_
                             _tl124996125277_
                             _e125001125280_
                             _hd125000125283_
                             _tl124999125285_
                             _e125004125288_
                             _hd125003125291_
                             _tl125002125293_
                             _e125007125296_
                             _hd125006125299_
                             _tl125005125301_
                             _e125010125304_
                             _hd125009125307_
                             _tl125008125309_
                             _e125013125312_
                             _hd125012125315_
                             _tl125011125317_
                             _e125016125320_
                             _hd125015125323_
                             _tl125014125325_
                             _e125019125328_
                             _hd125018125331_
                             _tl125017125333_))
                        (___match129441129442_
                         _e124986125240_
                         _hd124985125243_
                         _tl124984125245_
                         _e124998125272_
                         _hd124997125275_
                         _tl124996125277_
                         _e125001125280_
                         _hd125000125283_
                         _tl124999125285_
                         _e125004125288_
                         _hd125003125291_
                         _tl125002125293_
                         _e125007125296_
                         _hd125006125299_
                         _tl125005125301_
                         _e125010125304_
                         _hd125009125307_
                         _tl125008125309_
                         _e125013125312_
                         _hd125012125315_
                         _tl125011125317_
                         _e125016125320_
                         _hd125015125323_
                         _tl125014125325_
                         _e125019125328_
                         _hd125018125331_
                         _tl125017125333_))))
                (___match129441129442_
                 _e124986125240_
                 _hd124985125243_
                 _tl124984125245_
                 _e124998125272_
                 _hd124997125275_
                 _tl124996125277_
                 _e125001125280_
                 _hd125000125283_
                 _tl124999125285_
                 _e125004125288_
                 _hd125003125291_
                 _tl125002125293_
                 _e125007125296_
                 _hd125006125299_
                 _tl125005125301_
                 _e125010125304_
                 _hd125009125307_
                 _tl125008125309_
                 _e125013125312_
                 _hd125012125315_
                 _tl125011125317_
                 _e125016125320_
                 _hd125015125323_
                 _tl125014125325_
                 _e125019125328_
                 _hd125018125331_
                 _tl125017125333_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129441129442_
                                                     _e124986125240_
                                                     _hd124985125243_
                                                     _tl124984125245_
                                                     _e124998125272_
                                                     _hd124997125275_
                                                     _tl124996125277_
                                                     _e125001125280_
                                                     _hd125000125283_
                                                     _tl124999125285_
                                                     _e125004125288_
                                                     _hd125003125291_
                                                     _tl125002125293_
                                                     _e125007125296_
                                                     _hd125006125299_
                                                     _tl125005125301_
                                                     _e125010125304_
                                                     _hd125009125307_
                                                     _tl125008125309_
                                                     _e125013125312_
                                                     _hd125012125315_
                                                     _tl125011125317_
                                                     _e125016125320_
                                                     _hd125015125323_
                                                     _tl125014125325_
                                                     _e125019125328_
                                                     _hd125018125331_
                                                     _tl125017125333_))
                                                (___match129441129442_
                                                 _e124986125240_
                                                 _hd124985125243_
                                                 _tl124984125245_
                                                 _e124998125272_
                                                 _hd124997125275_
                                                 _tl124996125277_
                                                 _e125001125280_
                                                 _hd125000125283_
                                                 _tl124999125285_
                                                 _e125004125288_
                                                 _hd125003125291_
                                                 _tl125002125293_
                                                 _e125007125296_
                                                 _hd125006125299_
                                                 _tl125005125301_
                                                 _e125010125304_
                                                 _hd125009125307_
                                                 _tl125008125309_
                                                 _e125013125312_
                                                 _hd125012125315_
                                                 _tl125011125317_
                                                 _e125016125320_
                                                 _hd125015125323_
                                                 _tl125014125325_
                                                 _e125019125328_
                                                 _hd125018125331_
                                                 _tl125017125333_))))
                                        (___match129441129442_
                                         _e124986125240_
                                         _hd124985125243_
                                         _tl124984125245_
                                         _e124998125272_
                                         _hd124997125275_
                                         _tl124996125277_
                                         _e125001125280_
                                         _hd125000125283_
                                         _tl124999125285_
                                         _e125004125288_
                                         _hd125003125291_
                                         _tl125002125293_
                                         _e125007125296_
                                         _hd125006125299_
                                         _tl125005125301_
                                         _e125010125304_
                                         _hd125009125307_
                                         _tl125008125309_
                                         _e125013125312_
                                         _hd125012125315_
                                         _tl125011125317_
                                         _e125016125320_
                                         _hd125015125323_
                                         _tl125014125325_
                                         _e125019125328_
                                         _hd125018125331_
                                         _tl125017125333_))))
                                (___match129441129442_
                                 _e124986125240_
                                 _hd124985125243_
                                 _tl124984125245_
                                 _e124998125272_
                                 _hd124997125275_
                                 _tl124996125277_
                                 _e125001125280_
                                 _hd125000125283_
                                 _tl124999125285_
                                 _e125004125288_
                                 _hd125003125291_
                                 _tl125002125293_
                                 _e125007125296_
                                 _hd125006125299_
                                 _tl125005125301_
                                 _e125010125304_
                                 _hd125009125307_
                                 _tl125008125309_
                                 _e125013125312_
                                 _hd125012125315_
                                 _tl125011125317_
                                 _e125016125320_
                                 _hd125015125323_
                                 _tl125014125325_
                                 _e125019125328_
                                 _hd125018125331_
                                 _tl125017125333_))))
                        (___match129441129442_
                         _e124986125240_
                         _hd124985125243_
                         _tl124984125245_
                         _e124998125272_
                         _hd124997125275_
                         _tl124996125277_
                         _e125001125280_
                         _hd125000125283_
                         _tl124999125285_
                         _e125004125288_
                         _hd125003125291_
                         _tl125002125293_
                         _e125007125296_
                         _hd125006125299_
                         _tl125005125301_
                         _e125010125304_
                         _hd125009125307_
                         _tl125008125309_
                         _e125013125312_
                         _hd125012125315_
                         _tl125011125317_
                         _e125016125320_
                         _hd125015125323_
                         _tl125014125325_
                         _e125019125328_
                         _hd125018125331_
                         _tl125017125333_))
                    (___match129441129442_
                     _e124986125240_
                     _hd124985125243_
                     _tl124984125245_
                     _e124998125272_
                     _hd124997125275_
                     _tl124996125277_
                     _e125001125280_
                     _hd125000125283_
                     _tl124999125285_
                     _e125004125288_
                     _hd125003125291_
                     _tl125002125293_
                     _e125007125296_
                     _hd125006125299_
                     _tl125005125301_
                     _e125010125304_
                     _hd125009125307_
                     _tl125008125309_
                     _e125013125312_
                     _hd125012125315_
                     _tl125011125317_
                     _e125016125320_
                     _hd125015125323_
                     _tl125014125325_
                     _e125019125328_
                     _hd125018125331_
                     _tl125017125333_))
                (___kont129344129345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129344129345_))
                                            (___kont129344129345_))
                                        (___kont129344129345_))))
                                (___kont129344129345_))))
                        (___kont129344129345_))
                    (___kont129344129345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129344129345_))
                                                (___kont129344129345_))
                                            (___kont129344129345_))))
                                    (___kont129344129345_))))
                            (___kont129344129345_))
                        (___kont129344129345_))
                    (___kont129344129345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129344129345_))))
                                            (___kont129344129345_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124990125253_ _target124987125248_ '())))))
                   (___match129359129360_
                    (lambda (_e124938125500_
                             _hd124937125503_
                             _tl124936125505_
                             ___splice129332129333_
                             _target124939125508_
                             _tl124941125510_)
                      (letrec ((_loop124942125513_
                                (lambda (_hd124940125516_ _arg124946125518_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124940125516_))
                                      (let ((_e124943125521_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124940125516_))))
                                        (let ((_lp-tl124945125526_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124943125521_)))
                                              (_lp-hd124944125524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124943125521_))))
                                          (let ((__tmp130750
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124944125524_
                                                         _arg124946125518_))))
                                            (declare (not safe))
                                            (_loop124942125513_
                                             _lp-tl124945125526_
                                             __tmp130750))))
                                      (let ((_arg124947125529_
                                             (reverse _arg124946125518_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124936125505_))
                                            (let ((_e124950125532_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124936125505_))))
                                              (let ((_tl124948125537_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124950125532_)))
                                                    (_hd124949125535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124950125532_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124949125535_))
                                                    (let ((_e124953125540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124949125535_))))
                                                      (let ((_tl124951125545_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124953125540_)))
                    (_hd124952125543_
                     (let () (declare (not safe)) (##car _e124953125540_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124952125543_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124952125543_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124951125545_))
                            (let ((_e124956125548_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124951125545_))))
                              (let ((_tl124954125553_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124956125548_)))
                                    (_hd124955125551_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124956125548_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124955125551_))
                                    (let ((_e124959125556_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124955125551_))))
                                      (let ((_tl124957125561_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124959125556_)))
                                            (_hd124958125559_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124959125556_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124958125559_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124958125559_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124957125561_))
                                                    (let ((_e124962125564_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124957125561_))))
                                                      (let ((_tl124960125569_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124962125564_)))
                    (_hd124961125567_
                     (let () (declare (not safe)) (##car _e124962125564_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124960125569_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124954125553_))
                        (let ((___splice129334129335_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124954125553_
                                  '0))))
                          (let ((_tl124965125574_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129334129335_ '1)))
                                (_target124963125572_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129334129335_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124965125574_))
                                (letrec ((_loop124966125577_
                                          (lambda (_hd124964125580_
                                                   _xarg124970125582_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124964125580_))
                                                (let ((_e124967125585_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124964125580_))))
                                                  (let ((_lp-tl124969125590_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124967125585_)))
                                                        (_lp-hd124968125588_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124967125585_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124968125588_))
                                                        (let ((_e124974125593_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124968125588_))))
                  (let ((_tl124972125598_
                         (let () (declare (not safe)) (##cdr _e124974125593_)))
                        (_hd124973125596_
                         (let ()
                           (declare (not safe))
                           (##car _e124974125593_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124973125596_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124973125596_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124972125598_))
                                (let ((_e124977125601_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124972125598_))))
                                  (let ((_tl124975125606_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124977125601_)))
                                        (_hd124976125604_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124977125601_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124975125606_))
                                        (let ((__tmp130749
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124976125604_
                                                       _xarg124970125582_))))
                                          (declare (not safe))
                                          (_loop124966125577_
                                           _lp-tl124969125590_
                                           __tmp130749))
                                        (___match129371129372_
                                         _e124938125500_
                                         _hd124937125503_
                                         _tl124936125505_
                                         ___splice129332129333_
                                         _target124939125508_
                                         _tl124941125510_))))
                                (___match129371129372_
                                 _e124938125500_
                                 _hd124937125503_
                                 _tl124936125505_
                                 ___splice129332129333_
                                 _target124939125508_
                                 _tl124941125510_))
                            (___match129371129372_
                             _e124938125500_
                             _hd124937125503_
                             _tl124936125505_
                             ___splice129332129333_
                             _target124939125508_
                             _tl124941125510_))
                        (___match129371129372_
                         _e124938125500_
                         _hd124937125503_
                         _tl124936125505_
                         ___splice129332129333_
                         _target124939125508_
                         _tl124941125510_))))
                (___match129371129372_
                 _e124938125500_
                 _hd124937125503_
                 _tl124936125505_
                 ___splice129332129333_
                 _target124939125508_
                 _tl124941125510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124971125609_
                                                       (reverse _xarg124970125582_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124948125537_))
                                                      (let ((_L125612_
                                                             _xarg124971125609_)
                                                            (_L125613_
                                                             _hd124961125567_)
                                                            (_L125614_
                                                             _arg124947125529_))
                                                        (if (and (let ((__tmp130747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp130748
                                       (lambda (_g125642125645_
                                                _g125643125647_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125642125645_
                                                 _g125643125647_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130748 '() _L125614_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp130747))
                         (fx= (length (let ((__tmp130745
                                             (lambda (_g125649125652_
                                                      _g125650125654_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125649125652_
                                                       _g125650125654_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130745 '() _L125614_)))
                              (length (let ((__tmp130746
                                             (lambda (_g125656125659_
                                                      _g125657125661_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125656125659_
                                                       _g125657125661_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130746 '() _L125612_))))
                         (let ((__tmp130743
                                (let ((__tmp130744
                                       (lambda (_g125663125666_
                                                _g125664125668_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125663125666_
                                                 _g125664125668_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130744 '() _L125614_)))
                               (__tmp130741
                                (let ((__tmp130742
                                       (lambda (_g125670125673_
                                                _g125671125675_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125670125673_
                                                 _g125671125675_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130742 '() _L125612_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp130743
                                    __tmp130741))
                         (let ((__tmp130737
                                (let ((__tmp130740
                                       (lambda (_g125677125679_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g125677125679_
                                            _L125613_))))
                                      (__tmp130738
                                       (let ((__tmp130739
                                              (lambda (_g125681125684_
                                                       _g125682125686_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g125681125684_
                                                        _g125682125686_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp130739 '() _L125614_))))
                                  (declare (not safe))
                                  (find __tmp130740 __tmp130738))))
                           (declare (not safe))
                           (not __tmp130737)))
                    (___kont129330129331_ _L125612_ _L125613_ _L125614_)
                    (___match129371129372_
                     _e124938125500_
                     _hd124937125503_
                     _tl124936125505_
                     ___splice129332129333_
                     _target124939125508_
                     _tl124941125510_)))
              (___match129371129372_
               _e124938125500_
               _hd124937125503_
               _tl124936125505_
               ___splice129332129333_
               _target124939125508_
               _tl124941125510_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop124966125577_
                                     _target124963125572_
                                     '())))
                                (___match129371129372_
                                 _e124938125500_
                                 _hd124937125503_
                                 _tl124936125505_
                                 ___splice129332129333_
                                 _target124939125508_
                                 _tl124941125510_))))
                        (___match129371129372_
                         _e124938125500_
                         _hd124937125503_
                         _tl124936125505_
                         ___splice129332129333_
                         _target124939125508_
                         _tl124941125510_))
                    (___match129371129372_
                     _e124938125500_
                     _hd124937125503_
                     _tl124936125505_
                     ___splice129332129333_
                     _target124939125508_
                     _tl124941125510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129371129372_
                                                     _e124938125500_
                                                     _hd124937125503_
                                                     _tl124936125505_
                                                     ___splice129332129333_
                                                     _target124939125508_
                                                     _tl124941125510_))
                                                (___match129371129372_
                                                 _e124938125500_
                                                 _hd124937125503_
                                                 _tl124936125505_
                                                 ___splice129332129333_
                                                 _target124939125508_
                                                 _tl124941125510_))
                                            (___match129371129372_
                                             _e124938125500_
                                             _hd124937125503_
                                             _tl124936125505_
                                             ___splice129332129333_
                                             _target124939125508_
                                             _tl124941125510_))))
                                    (___match129371129372_
                                     _e124938125500_
                                     _hd124937125503_
                                     _tl124936125505_
                                     ___splice129332129333_
                                     _target124939125508_
                                     _tl124941125510_))))
                            (___match129371129372_
                             _e124938125500_
                             _hd124937125503_
                             _tl124936125505_
                             ___splice129332129333_
                             _target124939125508_
                             _tl124941125510_))
                        (___match129371129372_
                         _e124938125500_
                         _hd124937125503_
                         _tl124936125505_
                         ___splice129332129333_
                         _target124939125508_
                         _tl124941125510_))
                    (___match129371129372_
                     _e124938125500_
                     _hd124937125503_
                     _tl124936125505_
                     ___splice129332129333_
                     _target124939125508_
                     _tl124941125510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129371129372_
                                                     _e124938125500_
                                                     _hd124937125503_
                                                     _tl124936125505_
                                                     ___splice129332129333_
                                                     _target124939125508_
                                                     _tl124941125510_))))
                                            (___match129371129372_
                                             _e124938125500_
                                             _hd124937125503_
                                             _tl124936125505_
                                             ___splice129332129333_
                                             _target124939125508_
                                             _tl124941125510_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124942125513_ _target124939125508_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129328129329_))
                  (let ((_e124938125500_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129328129329_))))
                    (let ((_tl124936125505_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124938125500_)))
                          (_hd124937125503_
                           (let ()
                             (declare (not safe))
                             (##car _e124938125500_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124937125503_))
                          (let ((___splice129332129333_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124937125503_
                                    '0))))
                            (let ((_tl124941125510_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129332129333_ '1)))
                                  (_target124939125508_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129332129333_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124941125510_))
                                  (___match129359129360_
                                   _e124938125500_
                                   _hd124937125503_
                                   _tl124936125505_
                                   ___splice129332129333_
                                   _target124939125508_
                                   _tl124941125510_)
                                  (___match129371129372_
                                   _e124938125500_
                                   _hd124937125503_
                                   _tl124936125505_
                                   ___splice129332129333_
                                   _target124939125508_
                                   _tl124941125510_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124936125505_))
                              (let ((_e125053125108_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124936125505_))))
                                (let ((_tl125051125113_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125053125108_)))
                                      (_hd125052125111_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125053125108_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125052125111_))
                                      (let ((_e125056125116_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125052125111_))))
                                        (let ((_tl125054125121_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125056125116_)))
                                              (_hd125055125119_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125056125116_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd125055125119_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd125055125119_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125054125121_))
                                                      (let ((_e125059125124_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125054125121_))))
                (let ((_tl125057125129_
                       (let () (declare (not safe)) (##cdr _e125059125124_)))
                      (_hd125058125127_
                       (let () (declare (not safe)) (##car _e125059125124_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125058125127_))
                      (let ((_e125062125132_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125058125127_))))
                        (let ((_tl125060125137_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125062125132_)))
                              (_hd125061125135_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125062125132_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125061125135_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125061125135_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125060125137_))
                                      (let ((_e125065125140_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125060125137_))))
                                        (let ((_tl125063125145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125065125140_)))
                                              (_hd125064125143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125065125140_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125063125145_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125057125129_))
                                                  (let ((_e125068125148_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125057125129_))))
                                                    (let ((_tl125066125153_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125068125148_)))
                                                          (_hd125067125151_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125068125148_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125067125151_))
                                                          (let ((_e125071125156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125067125151_))))
                    (let ((_tl125069125161_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125071125156_)))
                          (_hd125070125159_
                           (let ()
                             (declare (not safe))
                             (##car _e125071125156_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125070125159_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125070125159_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125069125161_))
                                  (let ((_e125074125164_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125069125161_))))
                                    (let ((_tl125072125169_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125074125164_)))
                                          (_hd125073125167_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125074125164_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125072125169_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125066125153_))
                                              (let ((_e125077125172_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125066125153_))))
                                                (let ((_tl125075125177_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125077125172_)))
                                                      (_hd125076125175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125077125172_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd125076125175_))
                                                      (let ((_e125080125180_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd125076125175_))))
                (let ((_tl125078125185_
                       (let () (declare (not safe)) (##cdr _e125080125180_)))
                      (_hd125079125183_
                       (let () (declare (not safe)) (##car _e125080125180_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd125079125183_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd125079125183_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125078125185_))
                              (let ((_e125083125188_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125078125185_))))
                                (let ((_tl125081125193_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125083125188_)))
                                      (_hd125082125191_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125083125188_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125081125193_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125075125177_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125051125113_))
                                              (___match129469129470_
                                               _e124938125500_
                                               _hd124937125503_
                                               _tl124936125505_
                                               _e125053125108_
                                               _hd125052125111_
                                               _tl125051125113_
                                               _e125056125116_
                                               _hd125055125119_
                                               _tl125054125121_
                                               _e125059125124_
                                               _hd125058125127_
                                               _tl125057125129_
                                               _e125062125132_
                                               _hd125061125135_
                                               _tl125060125137_
                                               _e125065125140_
                                               _hd125064125143_
                                               _tl125063125145_
                                               _e125068125148_
                                               _hd125067125151_
                                               _tl125066125153_
                                               _e125071125156_
                                               _hd125070125159_
                                               _tl125069125161_
                                               _e125074125164_
                                               _hd125073125167_
                                               _tl125072125169_
                                               _e125077125172_
                                               _hd125076125175_
                                               _tl125075125177_
                                               _e125080125180_
                                               _hd125079125183_
                                               _tl125078125185_
                                               _e125083125188_
                                               _hd125082125191_
                                               _tl125081125193_)
                                              (___kont129344129345_))
                                          (___kont129344129345_))
                                      (___kont129344129345_))))
                              (___kont129344129345_))
                          (___kont129344129345_))
                      (___kont129344129345_))))
              (___kont129344129345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont129344129345_))
                                          (___kont129344129345_))))
                                  (___kont129344129345_))
                              (___kont129344129345_))
                          (___kont129344129345_))))
                  (___kont129344129345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129344129345_))
                                              (___kont129344129345_))))
                                      (___kont129344129345_))
                                  (___kont129344129345_))
                              (___kont129344129345_))))
                      (___kont129344129345_))))
              (___kont129344129345_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129344129345_))
                                              (___kont129344129345_))))
                                      (___kont129344129345_))))
                              (___kont129344129345_)))))
                  (___kont129344129345_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form124394_)
        (let* ((___stx129472129473_ _form124394_)
               (_g124398124522_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129472129473_)))))
          (let ((___kont129474129475_
                 (lambda (_L124892_ _L124893_ _L124894_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124893_))))
                (___kont129480129481_
                 (lambda (_L124740_ _L124741_ _L124742_ _L124743_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124740_))))
                (___kont129484129485_
                 (lambda (_L124607_ _L124608_ _L124609_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124607_)))))
            (let* ((___match129581129582_
                    (lambda (_e124490124527_
                             _hd124489124530_
                             _tl124488124532_
                             _e124493124535_
                             _hd124492124538_
                             _tl124491124540_
                             _e124496124543_
                             _hd124495124546_
                             _tl124494124548_
                             _e124499124551_
                             _hd124498124554_
                             _tl124497124556_
                             _e124502124559_
                             _hd124501124562_
                             _tl124500124564_
                             _e124505124567_
                             _hd124504124570_
                             _tl124503124572_
                             _e124508124575_
                             _hd124507124578_
                             _tl124506124580_
                             _e124511124583_
                             _hd124510124586_
                             _tl124509124588_
                             _e124514124591_
                             _hd124513124594_
                             _tl124512124596_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124506124580_))
                          (let ((_e124517124599_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124506124580_))))
                            (let ((_tl124515124604_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124517124599_)))
                                  (_hd124516124602_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124517124599_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124515124604_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124491124540_))
                                      (___kont129484129485_
                                       _hd124513124594_
                                       _hd124504124570_
                                       _hd124489124530_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124398124522_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124398124522_)))))
                          (let () (declare (not safe)) (_g124398124522_)))))
                   (___match129511129512_
                    (lambda (_e124451124644_
                             _hd124450124647_
                             _tl124449124649_
                             ___splice129482129483_
                             _target124452124652_
                             _tl124454124654_)
                      (letrec ((_loop124455124657_
                                (lambda (_hd124453124660_ _arg124459124662_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124453124660_))
                                      (let ((_e124456124665_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124453124660_))))
                                        (let ((_lp-tl124458124670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124456124665_)))
                                              (_lp-hd124457124668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124456124665_))))
                                          (let ((__tmp130751
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124457124668_
                                                         _arg124459124662_))))
                                            (declare (not safe))
                                            (_loop124455124657_
                                             _lp-tl124458124670_
                                             __tmp130751))))
                                      (let ((_arg124460124673_
                                             (reverse _arg124459124662_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124449124649_))
                                            (let ((_e124463124676_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124449124649_))))
                                              (let ((_tl124461124681_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124463124676_)))
                                                    (_hd124462124679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124463124676_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124462124679_))
                                                    (let ((_e124466124684_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124462124679_))))
                                                      (let ((_tl124464124689_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124466124684_)))
                    (_hd124465124687_
                     (let () (declare (not safe)) (##car _e124466124684_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124465124687_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124465124687_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124464124689_))
                            (let ((_e124469124692_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124464124689_))))
                              (let ((_tl124467124697_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124469124692_)))
                                    (_hd124468124695_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124469124692_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124468124695_))
                                    (let ((_e124472124700_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124468124695_))))
                                      (let ((_tl124470124705_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124472124700_)))
                                            (_hd124471124703_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124472124700_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124471124703_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124471124703_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124470124705_))
                                                    (let ((_e124475124708_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124470124705_))))
                                                      (let ((_tl124473124713_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124475124708_)))
                    (_hd124474124711_
                     (let () (declare (not safe)) (##car _e124475124708_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124473124713_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124467124697_))
                        (let ((_e124478124716_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124467124697_))))
                          (let ((_tl124476124721_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124478124716_)))
                                (_hd124477124719_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124478124716_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124477124719_))
                                (let ((_e124481124724_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124477124719_))))
                                  (let ((_tl124479124729_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124481124724_)))
                                        (_hd124480124727_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124481124724_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124480124727_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124480124727_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124479124729_))
                                                (let ((_e124484124732_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124479124729_))))
                                                  (let ((_tl124482124737_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124484124732_)))
                                                        (_hd124483124735_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124484124732_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124482124737_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl124461124681_))
                                                            (___kont129480129481_
                                                             _hd124483124735_
                                                             _hd124474124711_
                                                             _tl124454124654_
                                                             _arg124460124673_)
                                                            (___match129581129582_
                                                             _e124451124644_
                                                             _hd124450124647_
                                                             _tl124449124649_
                                                             _e124463124676_
                                                             _hd124462124679_
                                                             _tl124461124681_
                                                             _e124466124684_
                                                             _hd124465124687_
                                                             _tl124464124689_
                                                             _e124469124692_
                                                             _hd124468124695_
                                                             _tl124467124697_
                                                             _e124472124700_
                                                             _hd124471124703_
                                                             _tl124470124705_
                                                             _e124475124708_
                                                             _hd124474124711_
                                                             _tl124473124713_
                                                             _e124478124716_
                                                             _hd124477124719_
                                                             _tl124476124721_
                                                             _e124481124724_
                                                             _hd124480124727_
                                                             _tl124479124729_
                                                             _e124484124732_
                                                             _hd124483124735_
                                                             _tl124482124737_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g124398124522_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124398124522_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124398124522_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g124398124522_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124398124522_)))))
                        (let () (declare (not safe)) (_g124398124522_)))
                    (let () (declare (not safe)) (_g124398124522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124398124522_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124398124522_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124398124522_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g124398124522_)))))
                            (let () (declare (not safe)) (_g124398124522_)))
                        (let () (declare (not safe)) (_g124398124522_)))
                    (let () (declare (not safe)) (_g124398124522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124398124522_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g124398124522_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop124455124657_ _target124452124652_ '())))))
                   (___match129499129500_
                    (lambda (_e124405124780_
                             _hd124404124783_
                             _tl124403124785_
                             ___splice129476129477_
                             _target124406124788_
                             _tl124408124790_)
                      (letrec ((_loop124409124793_
                                (lambda (_hd124407124796_ _arg124413124798_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124407124796_))
                                      (let ((_e124410124801_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124407124796_))))
                                        (let ((_lp-tl124412124806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124410124801_)))
                                              (_lp-hd124411124804_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124410124801_))))
                                          (let ((__tmp130753
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124411124804_
                                                         _arg124413124798_))))
                                            (declare (not safe))
                                            (_loop124409124793_
                                             _lp-tl124412124806_
                                             __tmp130753))))
                                      (let ((_arg124414124809_
                                             (reverse _arg124413124798_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124403124785_))
                                            (let ((_e124417124812_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124403124785_))))
                                              (let ((_tl124415124817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124417124812_)))
                                                    (_hd124416124815_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124417124812_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124416124815_))
                                                    (let ((_e124420124820_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124416124815_))))
                                                      (let ((_tl124418124825_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124420124820_)))
                    (_hd124419124823_
                     (let () (declare (not safe)) (##car _e124420124820_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124419124823_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124419124823_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124418124825_))
                            (let ((_e124423124828_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124418124825_))))
                              (let ((_tl124421124833_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124423124828_)))
                                    (_hd124422124831_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124423124828_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124422124831_))
                                    (let ((_e124426124836_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124422124831_))))
                                      (let ((_tl124424124841_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124426124836_)))
                                            (_hd124425124839_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124426124836_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124425124839_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124425124839_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124424124841_))
                                                    (let ((_e124429124844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124424124841_))))
                                                      (let ((_tl124427124849_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124429124844_)))
                    (_hd124428124847_
                     (let () (declare (not safe)) (##car _e124429124844_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124427124849_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124421124833_))
                        (let ((___splice129478129479_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124421124833_
                                  '0))))
                          (let ((_tl124432124854_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129478129479_ '1)))
                                (_target124430124852_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129478129479_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124432124854_))
                                (letrec ((_loop124433124857_
                                          (lambda (_hd124431124860_
                                                   _xarg124437124862_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124431124860_))
                                                (let ((_e124434124865_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124431124860_))))
                                                  (let ((_lp-tl124436124870_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124434124865_)))
                                                        (_lp-hd124435124868_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124434124865_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124435124868_))
                                                        (let ((_e124441124873_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124435124868_))))
                  (let ((_tl124439124878_
                         (let () (declare (not safe)) (##cdr _e124441124873_)))
                        (_hd124440124876_
                         (let ()
                           (declare (not safe))
                           (##car _e124441124873_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124440124876_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124440124876_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124439124878_))
                                (let ((_e124444124881_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124439124878_))))
                                  (let ((_tl124442124886_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124444124881_)))
                                        (_hd124443124884_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124444124881_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124442124886_))
                                        (let ((__tmp130752
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124443124884_
                                                       _xarg124437124862_))))
                                          (declare (not safe))
                                          (_loop124433124857_
                                           _lp-tl124436124870_
                                           __tmp130752))
                                        (___match129511129512_
                                         _e124405124780_
                                         _hd124404124783_
                                         _tl124403124785_
                                         ___splice129476129477_
                                         _target124406124788_
                                         _tl124408124790_))))
                                (___match129511129512_
                                 _e124405124780_
                                 _hd124404124783_
                                 _tl124403124785_
                                 ___splice129476129477_
                                 _target124406124788_
                                 _tl124408124790_))
                            (___match129511129512_
                             _e124405124780_
                             _hd124404124783_
                             _tl124403124785_
                             ___splice129476129477_
                             _target124406124788_
                             _tl124408124790_))
                        (___match129511129512_
                         _e124405124780_
                         _hd124404124783_
                         _tl124403124785_
                         ___splice129476129477_
                         _target124406124788_
                         _tl124408124790_))))
                (___match129511129512_
                 _e124405124780_
                 _hd124404124783_
                 _tl124403124785_
                 ___splice129476129477_
                 _target124406124788_
                 _tl124408124790_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124438124889_
                                                       (reverse _xarg124437124862_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124415124817_))
                                                      (___kont129474129475_
                                                       _xarg124438124889_
                                                       _hd124428124847_
                                                       _arg124414124809_)
                                                      (___match129511129512_
                                                       _e124405124780_
                                                       _hd124404124783_
                                                       _tl124403124785_
                                                       ___splice129476129477_
                                                       _target124406124788_
                                                       _tl124408124790_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop124433124857_
                                     _target124430124852_
                                     '())))
                                (___match129511129512_
                                 _e124405124780_
                                 _hd124404124783_
                                 _tl124403124785_
                                 ___splice129476129477_
                                 _target124406124788_
                                 _tl124408124790_))))
                        (___match129511129512_
                         _e124405124780_
                         _hd124404124783_
                         _tl124403124785_
                         ___splice129476129477_
                         _target124406124788_
                         _tl124408124790_))
                    (___match129511129512_
                     _e124405124780_
                     _hd124404124783_
                     _tl124403124785_
                     ___splice129476129477_
                     _target124406124788_
                     _tl124408124790_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129511129512_
                                                     _e124405124780_
                                                     _hd124404124783_
                                                     _tl124403124785_
                                                     ___splice129476129477_
                                                     _target124406124788_
                                                     _tl124408124790_))
                                                (___match129511129512_
                                                 _e124405124780_
                                                 _hd124404124783_
                                                 _tl124403124785_
                                                 ___splice129476129477_
                                                 _target124406124788_
                                                 _tl124408124790_))
                                            (___match129511129512_
                                             _e124405124780_
                                             _hd124404124783_
                                             _tl124403124785_
                                             ___splice129476129477_
                                             _target124406124788_
                                             _tl124408124790_))))
                                    (___match129511129512_
                                     _e124405124780_
                                     _hd124404124783_
                                     _tl124403124785_
                                     ___splice129476129477_
                                     _target124406124788_
                                     _tl124408124790_))))
                            (___match129511129512_
                             _e124405124780_
                             _hd124404124783_
                             _tl124403124785_
                             ___splice129476129477_
                             _target124406124788_
                             _tl124408124790_))
                        (___match129511129512_
                         _e124405124780_
                         _hd124404124783_
                         _tl124403124785_
                         ___splice129476129477_
                         _target124406124788_
                         _tl124408124790_))
                    (___match129511129512_
                     _e124405124780_
                     _hd124404124783_
                     _tl124403124785_
                     ___splice129476129477_
                     _target124406124788_
                     _tl124408124790_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129511129512_
                                                     _e124405124780_
                                                     _hd124404124783_
                                                     _tl124403124785_
                                                     ___splice129476129477_
                                                     _target124406124788_
                                                     _tl124408124790_))))
                                            (___match129511129512_
                                             _e124405124780_
                                             _hd124404124783_
                                             _tl124403124785_
                                             ___splice129476129477_
                                             _target124406124788_
                                             _tl124408124790_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124409124793_ _target124406124788_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129472129473_))
                  (let ((_e124405124780_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129472129473_))))
                    (let ((_tl124403124785_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124405124780_)))
                          (_hd124404124783_
                           (let ()
                             (declare (not safe))
                             (##car _e124405124780_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124404124783_))
                          (let ((___splice129476129477_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124404124783_
                                    '0))))
                            (let ((_tl124408124790_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129476129477_ '1)))
                                  (_target124406124788_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129476129477_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124408124790_))
                                  (___match129499129500_
                                   _e124405124780_
                                   _hd124404124783_
                                   _tl124403124785_
                                   ___splice129476129477_
                                   _target124406124788_
                                   _tl124408124790_)
                                  (___match129511129512_
                                   _e124405124780_
                                   _hd124404124783_
                                   _tl124403124785_
                                   ___splice129476129477_
                                   _target124406124788_
                                   _tl124408124790_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124403124785_))
                              (let ((_e124493124535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124403124785_))))
                                (let ((_tl124491124540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124493124535_)))
                                      (_hd124492124538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124493124535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124492124538_))
                                      (let ((_e124496124543_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124492124538_))))
                                        (let ((_tl124494124548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124496124543_)))
                                              (_hd124495124546_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124496124543_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124495124546_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124495124546_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124494124548_))
                                                      (let ((_e124499124551_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124494124548_))))
                (let ((_tl124497124556_
                       (let () (declare (not safe)) (##cdr _e124499124551_)))
                      (_hd124498124554_
                       (let () (declare (not safe)) (##car _e124499124551_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124498124554_))
                      (let ((_e124502124559_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124498124554_))))
                        (let ((_tl124500124564_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124502124559_)))
                              (_hd124501124562_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124502124559_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124501124562_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124501124562_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124500124564_))
                                      (let ((_e124505124567_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124500124564_))))
                                        (let ((_tl124503124572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124505124567_)))
                                              (_hd124504124570_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124505124567_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124503124572_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124497124556_))
                                                  (let ((_e124508124575_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124497124556_))))
                                                    (let ((_tl124506124580_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124508124575_)))
                                                          (_hd124507124578_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124508124575_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124507124578_))
                                                          (let ((_e124511124583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124507124578_))))
                    (let ((_tl124509124588_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124511124583_)))
                          (_hd124510124586_
                           (let ()
                             (declare (not safe))
                             (##car _e124511124583_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124510124586_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124510124586_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124509124588_))
                                  (let ((_e124514124591_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124509124588_))))
                                    (let ((_tl124512124596_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124514124591_)))
                                          (_hd124513124594_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124514124591_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124512124596_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124506124580_))
                                              (let ((_e124517124599_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124506124580_))))
                                                (let ((_tl124515124604_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124517124599_)))
                                                      (_hd124516124602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124517124599_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124515124604_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124491124540_))
                                                          (___kont129484129485_
                                                           _hd124513124594_
                                                           _hd124504124570_
                                                           _hd124404124783_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124398124522_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124398124522_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124398124522_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g124398124522_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124398124522_)))
                              (let () (declare (not safe)) (_g124398124522_)))
                          (let () (declare (not safe)) (_g124398124522_)))))
                  (let () (declare (not safe)) (_g124398124522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124398124522_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124398124522_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124398124522_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124398124522_)))
                              (let ()
                                (declare (not safe))
                                (_g124398124522_)))))
                      (let () (declare (not safe)) (_g124398124522_)))))
              (let () (declare (not safe)) (_g124398124522_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124398124522_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124398124522_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124398124522_)))))
                              (let ()
                                (declare (not safe))
                                (_g124398124522_))))))
                  (let () (declare (not safe)) (_g124398124522_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form124198_)
        (let* ((_g124200124214_
                (lambda (_g124201124211_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124201124211_))))
               (_g124199124391_
                (lambda (_g124201124217_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124201124217_))
                      (let ((_e124206124219_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124201124217_))))
                        (let ((_hd124205124222_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124206124219_)))
                              (_tl124204124224_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124206124219_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124204124224_))
                              (let ((_e124209124227_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124204124224_))))
                                (let ((_hd124208124230_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124209124227_)))
                                      (_tl124207124232_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124209124227_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124207124232_))
                                      ((lambda (_L124235_ _L124236_)
                                         (let* ((___stx129594129595_ _L124236_)
                                                (_g124251124279_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx129594129595_)))))
                                           (let ((___kont129596129597_
                                                  (lambda (_L124370_)
                                                    (length (let ((__tmp130754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124380124383_ _g124381124385_)
                             (let ()
                               (declare (not safe))
                               (cons _g124380124383_ _g124381124385_)))))
                      (declare (not safe))
                      (foldr1 __tmp130754 '() _L124370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129600129601_
                                                  (lambda (_L124321_ _L124322_)
                                                    (let ((__tmp130755
                                                           (length (let ((__tmp130756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g124333124336_ _g124334124338_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g124333124336_
                                            _g124334124338_)))))
                             (declare (not safe))
                             (foldr1 __tmp130756 '() _L124322_)))))
              (declare (not safe))
              (cons __tmp130755 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129604129605_
                                                  (lambda (_L124284_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match129619129620_
                                                     (lambda (___splice129602129603_
                                                              _target124265124297_
                                                              _tl124267124299_)
                                                       (letrec ((_loop124268124302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124266124305_ _arg124272124307_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124266124305_))
                               (let ((_e124269124310_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124266124305_))))
                                 (let ((_lp-tl124271124315_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124269124310_)))
                                       (_lp-hd124270124313_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124269124310_))))
                                   (let ((__tmp130757
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124270124313_
                                                  _arg124272124307_))))
                                     (declare (not safe))
                                     (_loop124268124302_
                                      _lp-tl124271124315_
                                      __tmp130757))))
                               (let ((_arg124273124318_
                                      (reverse _arg124272124307_)))
                                 (___kont129600129601_
                                  _tl124267124299_
                                  _arg124273124318_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124268124302_ _target124265124297_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129613129614_
                                                     (lambda (___splice129598129599_
                                                              _target124254124346_
                                                              _tl124256124348_)
                                                       (letrec ((_loop124257124351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124255124354_ _arg124261124356_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124255124354_))
                               (let ((_e124258124359_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124255124354_))))
                                 (let ((_lp-tl124260124364_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124258124359_)))
                                       (_lp-hd124259124362_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124258124359_))))
                                   (let ((__tmp130758
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124259124362_
                                                  _arg124261124356_))))
                                     (declare (not safe))
                                     (_loop124257124351_
                                      _lp-tl124260124364_
                                      __tmp130758))))
                               (let ((_arg124262124367_
                                      (reverse _arg124261124356_)))
                                 (___kont129596129597_ _arg124262124367_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124257124351_ _target124254124346_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx129594129595_))
                                                   (let ((___splice129598129599_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx129594129595_
                                                             '0))))
                                                     (let ((_tl124256124348_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129598129599_
                                                               '1)))
                                                           (_target124254124346_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129598129599_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl124256124348_))
                                                           (___match129613129614_
                                                            ___splice129598129599_
                                                            _target124254124346_
                                                            _tl124256124348_)
                                                           (___match129619129620_
                                                            ___splice129598129599_
                                                            _target124254124346_
                                                            _tl124256124348_))))
                                                   (___kont129604129605_
                                                    ___stx129594129595_))))))
                                       _hd124208124230_
                                       _hd124205124222_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124200124214_ _g124201124217_)))))
                              (let ()
                                (declare (not safe))
                                (_g124200124214_ _g124201124217_)))))
                      (let ()
                        (declare (not safe))
                        (_g124200124214_ _g124201124217_))))))
          (declare (not safe))
          (_g124199124391_ _form124198_))))
    (define gxc#lambda-expr?
      (lambda (_expr124151_)
        (let* ((___stx129622129623_ _expr124151_)
               (_g124154124164_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129622129623_)))))
          (let ((___kont129624129625_ (lambda (_L124184_) '#t))
                (___kont129626129627_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129622129623_))
                (let ((_e124159124176_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129622129623_))))
                  (let ((_tl124157124181_
                         (let () (declare (not safe)) (##cdr _e124159124176_)))
                        (_hd124158124179_
                         (let ()
                           (declare (not safe))
                           (##car _e124159124176_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124158124179_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd124158124179_))
                            (___kont129624129625_ _tl124157124181_)
                            (___kont129626129627_))
                        (___kont129626129627_))))
                (___kont129626129627_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr124104_)
        (let* ((___stx129640129641_ _expr124104_)
               (_g124107124117_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129640129641_)))))
          (let ((___kont129642129643_ (lambda (_L124137_) '#t))
                (___kont129644129645_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129640129641_))
                (let ((_e124112124129_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129640129641_))))
                  (let ((_tl124110124134_
                         (let () (declare (not safe)) (##cdr _e124112124129_)))
                        (_hd124111124132_
                         (let ()
                           (declare (not safe))
                           (##car _e124112124129_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124111124132_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd124111124132_))
                            (___kont129642129643_ _tl124110124134_)
                            (___kont129644129645_))
                        (___kont129644129645_))))
                (___kont129644129645_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr123973_)
        (let* ((___stx129658129659_ _expr123973_)
               (_g123976124006_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129658129659_)))))
          (let ((___kont129660129661_
                 (lambda (_L124074_ _L124075_ _L124076_)
                   (if (let () (declare (not safe)) (gx#identifier? _L124076_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L124075_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L124074_))
                           '#f)
                       '#f)))
                (___kont129662129663_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129658129659_))
                (let ((_e123983124018_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129658129659_))))
                  (let ((_tl123981124023_
                         (let () (declare (not safe)) (##cdr _e123983124018_)))
                        (_hd123982124021_
                         (let ()
                           (declare (not safe))
                           (##car _e123983124018_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123982124021_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123982124021_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123981124023_))
                                (let ((_e123986124026_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123981124023_))))
                                  (let ((_tl123984124031_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123986124026_)))
                                        (_hd123985124029_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123986124026_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123985124029_))
                                        (let ((_e123989124034_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123985124029_))))
                                          (let ((_tl123987124039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123989124034_)))
                                                (_hd123988124037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123989124034_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123988124037_))
                                                (let ((_e123992124042_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123988124037_))))
                                                  (let ((_tl123990124047_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123992124042_)))
                                                        (_hd123991124045_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123992124042_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123991124045_))
                                                        (let ((_e123995124050_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123991124045_))))
                  (let ((_tl123993124055_
                         (let () (declare (not safe)) (##cdr _e123995124050_)))
                        (_hd123994124053_
                         (let ()
                           (declare (not safe))
                           (##car _e123995124050_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123993124055_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123990124047_))
                            (let ((_e123998124058_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123990124047_))))
                              (let ((_tl123996124063_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123998124058_)))
                                    (_hd123997124061_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123998124058_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123996124063_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123987124039_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123984124031_))
                                            (let ((_e124001124066_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123984124031_))))
                                              (let ((_tl123999124071_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124001124066_)))
                                                    (_hd124000124069_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124001124066_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123999124071_))
                                                    (___kont129660129661_
                                                     _hd124000124069_
                                                     _hd123997124061_
                                                     _hd123994124053_)
                                                    (___kont129662129663_))))
                                            (___kont129662129663_))
                                        (___kont129662129663_))
                                    (___kont129662129663_))))
                            (___kont129662129663_))
                        (___kont129662129663_))))
                (___kont129662129663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129662129663_))))
                                        (___kont129662129663_))))
                                (___kont129662129663_))
                            (___kont129662129663_))
                        (___kont129662129663_))))
                (___kont129662129663_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr123298_)
        (let* ((___stx129720129721_ _expr123298_)
               (_g123301123459_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129720129721_)))))
          (let ((___kont129722129723_
                 (lambda (_L123847_
                          _L123848_
                          _L123849_
                          _L123850_
                          _L123851_
                          _L123852_
                          _L123853_
                          _L123854_
                          _L123855_
                          _L123856_
                          _L123857_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L123854_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L123850_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L123849_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L123857_
                                      _L123848_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L123856_
                                          _L123853_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123851_
                                              _L123847_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123855_
                                              _L123852_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont129724129725_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129720129721_))
                (let ((_e123316123471_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129720129721_))))
                  (let ((_tl123314123476_
                         (let () (declare (not safe)) (##cdr _e123316123471_)))
                        (_hd123315123474_
                         (let ()
                           (declare (not safe))
                           (##car _e123316123471_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123315123474_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123315123474_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123314123476_))
                                (let ((_e123319123479_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123314123476_))))
                                  (let ((_tl123317123484_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123319123479_)))
                                        (_hd123318123482_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123319123479_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123318123482_))
                                        (let ((_e123322123487_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123318123482_))))
                                          (let ((_tl123320123492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123322123487_)))
                                                (_hd123321123490_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123322123487_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123321123490_))
                                                (let ((_e123325123495_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123321123490_))))
                                                  (let ((_tl123323123500_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123325123495_)))
                                                        (_hd123324123498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123325123495_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123324123498_))
                                                        (let ((_e123328123503_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123324123498_))))
                  (let ((_tl123326123508_
                         (let () (declare (not safe)) (##cdr _e123328123503_)))
                        (_hd123327123506_
                         (let ()
                           (declare (not safe))
                           (##car _e123328123503_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123326123508_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123323123500_))
                            (let ((_e123331123511_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123323123500_))))
                              (let ((_tl123329123516_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123331123511_)))
                                    (_hd123330123514_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123331123511_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123330123514_))
                                    (let ((_e123334123519_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123330123514_))))
                                      (let ((_tl123332123524_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123334123519_)))
                                            (_hd123333123522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123334123519_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123333123522_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd123333123522_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123332123524_))
                                                    (let ((_e123337123527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123332123524_))))
                                                      (let ((_tl123335123532_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123337123527_)))
                    (_hd123336123530_
                     (let () (declare (not safe)) (##car _e123337123527_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123336123530_))
                    (let ((_e123340123535_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123336123530_))))
                      (let ((_tl123338123540_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123340123535_)))
                            (_hd123339123538_
                             (let ()
                               (declare (not safe))
                               (##car _e123340123535_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123339123538_))
                            (let ((_e123343123543_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123339123538_))))
                              (let ((_tl123341123548_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123343123543_)))
                                    (_hd123342123546_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123343123543_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123342123546_))
                                    (let ((_e123346123551_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123342123546_))))
                                      (let ((_tl123344123556_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123346123551_)))
                                            (_hd123345123554_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123346123551_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123344123556_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123341123548_))
                                                (let ((_e123349123559_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123341123548_))))
                                                  (let ((_tl123347123564_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123349123559_)))
                                                        (_hd123348123562_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123349123559_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123347123564_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl123338123540_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123335123532_))
                        (let ((_e123352123567_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123335123532_))))
                          (let ((_tl123350123572_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123352123567_)))
                                (_hd123351123570_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123352123567_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123351123570_))
                                (let ((_e123355123575_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123351123570_))))
                                  (let ((_tl123353123580_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123355123575_)))
                                        (_hd123354123578_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123355123575_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123354123578_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd123354123578_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123353123580_))
                                                (let ((_e123358123583_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123353123580_))))
                                                  (let ((_tl123356123588_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123358123583_)))
                                                        (_hd123357123586_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123358123583_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123357123586_))
                                                        (let ((_e123361123591_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123357123586_))))
                  (let ((_tl123359123596_
                         (let () (declare (not safe)) (##cdr _e123361123591_)))
                        (_hd123360123594_
                         (let ()
                           (declare (not safe))
                           (##car _e123361123591_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123356123588_))
                        (let ((_e123364123599_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123356123588_))))
                          (let ((_tl123362123604_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123364123599_)))
                                (_hd123363123602_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123364123599_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123363123602_))
                                (let ((_e123367123607_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123363123602_))))
                                  (let ((_tl123365123612_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123367123607_)))
                                        (_hd123366123610_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123367123607_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123366123610_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd123366123610_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123365123612_))
                                                (let ((_e123370123615_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123365123612_))))
                                                  (let ((_tl123368123620_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123370123615_)))
                                                        (_hd123369123618_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123370123615_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123369123618_))
                                                        (let ((_e123373123623_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123369123618_))))
                  (let ((_tl123371123628_
                         (let () (declare (not safe)) (##cdr _e123373123623_)))
                        (_hd123372123626_
                         (let ()
                           (declare (not safe))
                           (##car _e123373123623_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123372123626_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123372123626_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123371123628_))
                                (let ((_e123376123631_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123371123628_))))
                                  (let ((_tl123374123636_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123376123631_)))
                                        (_hd123375123634_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123376123631_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123374123636_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123368123620_))
                                            (let ((_e123379123639_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123368123620_))))
                                              (let ((_tl123377123644_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123379123639_)))
                                                    (_hd123378123642_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123379123639_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123378123642_))
                                                    (let ((_e123382123647_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123378123642_))))
                                                      (let ((_tl123380123652_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123382123647_)))
                    (_hd123381123650_
                     (let () (declare (not safe)) (##car _e123382123647_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123381123650_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123381123650_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123380123652_))
                            (let ((_e123385123655_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123380123652_))))
                              (let ((_tl123383123660_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123385123655_)))
                                    (_hd123384123658_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123385123655_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123383123660_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123377123644_))
                                        (let ((_e123388123663_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123377123644_))))
                                          (let ((_tl123386123668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123388123663_)))
                                                (_hd123387123666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123388123663_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123387123666_))
                                                (let ((_e123391123671_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123387123666_))))
                                                  (let ((_tl123389123676_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123391123671_)))
                                                        (_hd123390123674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123391123671_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd123390123674_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd123390123674_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123389123676_))
                        (let ((_e123394123679_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123389123676_))))
                          (let ((_tl123392123684_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123394123679_)))
                                (_hd123393123682_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123394123679_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123392123684_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123362123604_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123350123572_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123329123516_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123320123492_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123317123484_))
                                                    (let ((_e123397123687_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123317123484_))))
                                                      (let ((_tl123395123692_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123397123687_)))
                    (_hd123396123690_
                     (let () (declare (not safe)) (##car _e123397123687_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123396123690_))
                    (let ((_e123400123695_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123396123690_))))
                      (let ((_tl123398123700_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123400123695_)))
                            (_hd123399123698_
                             (let ()
                               (declare (not safe))
                               (##car _e123400123695_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123399123698_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd123399123698_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123398123700_))
                                    (let ((_e123403123703_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123398123700_))))
                                      (let ((_tl123401123708_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123403123703_)))
                                            (_hd123402123706_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123403123703_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123401123708_))
                                            (let ((_e123406123711_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123401123708_))))
                                              (let ((_tl123404123716_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123406123711_)))
                                                    (_hd123405123714_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123406123711_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123405123714_))
                                                    (let ((_e123409123719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123405123714_))))
                                                      (let ((_tl123407123724_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123409123719_)))
                    (_hd123408123722_
                     (let () (declare (not safe)) (##car _e123409123719_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123408123722_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123408123722_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123407123724_))
                            (let ((_e123412123727_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123407123724_))))
                              (let ((_tl123410123732_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123412123727_)))
                                    (_hd123411123730_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123412123727_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123411123730_))
                                    (let ((_e123415123735_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123411123730_))))
                                      (let ((_tl123413123740_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123415123735_)))
                                            (_hd123414123738_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123415123735_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123414123738_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123414123738_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123413123740_))
                                                    (let ((_e123418123743_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123413123740_))))
                                                      (let ((_tl123416123748_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123418123743_)))
                    (_hd123417123746_
                     (let () (declare (not safe)) (##car _e123418123743_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123416123748_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123410123732_))
                        (let ((_e123421123751_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123410123732_))))
                          (let ((_tl123419123756_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123421123751_)))
                                (_hd123420123754_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123421123751_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123420123754_))
                                (let ((_e123424123759_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123420123754_))))
                                  (let ((_tl123422123764_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123424123759_)))
                                        (_hd123423123762_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123424123759_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123423123762_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123423123762_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123422123764_))
                                                (let ((_e123427123767_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123422123764_))))
                                                  (let ((_tl123425123772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123427123767_)))
                                                        (_hd123426123770_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123427123767_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123425123772_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl123419123756_))
                                                            (let ((_e123430123775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl123419123756_))))
                      (let ((_tl123428123780_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123430123775_)))
                            (_hd123429123778_
                             (let ()
                               (declare (not safe))
                               (##car _e123430123775_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123429123778_))
                            (let ((_e123433123783_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123429123778_))))
                              (let ((_tl123431123788_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123433123783_)))
                                    (_hd123432123786_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123433123783_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd123432123786_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd123432123786_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123431123788_))
                                            (let ((_e123436123791_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123431123788_))))
                                              (let ((_tl123434123796_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123436123791_)))
                                                    (_hd123435123794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123436123791_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123434123796_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123428123780_))
                                                        (let ((_e123439123799_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123428123780_))))
                  (let ((_tl123437123804_
                         (let () (declare (not safe)) (##cdr _e123439123799_)))
                        (_hd123438123802_
                         (let ()
                           (declare (not safe))
                           (##car _e123439123799_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd123438123802_))
                        (let ((_e123442123807_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd123438123802_))))
                          (let ((_tl123440123812_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123442123807_)))
                                (_hd123441123810_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123442123807_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd123441123810_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd123441123810_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123440123812_))
                                        (let ((_e123445123815_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123440123812_))))
                                          (let ((_tl123443123820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123445123815_)))
                                                (_hd123444123818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123445123815_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123443123820_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123437123804_))
                                                    (let ((_e123448123823_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123437123804_))))
                                                      (let ((_tl123446123828_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123448123823_)))
                    (_hd123447123826_
                     (let () (declare (not safe)) (##car _e123448123823_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123447123826_))
                    (let ((_e123451123831_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123447123826_))))
                      (let ((_tl123449123836_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123451123831_)))
                            (_hd123450123834_
                             (let ()
                               (declare (not safe))
                               (##car _e123451123831_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123450123834_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd123450123834_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123449123836_))
                                    (let ((_e123454123839_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123449123836_))))
                                      (let ((_tl123452123844_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123454123839_)))
                                            (_hd123453123842_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123454123839_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123452123844_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123446123828_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123404123716_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123395123692_))
                                                        (___kont129722129723_
                                                         _hd123453123842_
                                                         _hd123444123818_
                                                         _hd123426123770_
                                                         _hd123417123746_
                                                         _hd123402123706_
                                                         _hd123393123682_
                                                         _hd123384123658_
                                                         _hd123375123634_
                                                         _hd123360123594_
                                                         _hd123345123554_
                                                         _hd123327123506_)
                                                        (___kont129724129725_))
                                                    (___kont129724129725_))
                                                (___kont129724129725_))
                                            (___kont129724129725_))))
                                    (___kont129724129725_))
                                (___kont129724129725_))
                            (___kont129724129725_))))
                    (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129724129725_))
                                                (___kont129724129725_))))
                                        (___kont129724129725_))
                                    (___kont129724129725_))
                                (___kont129724129725_))))
                        (___kont129724129725_))))
                (___kont129724129725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129724129725_))))
                                            (___kont129724129725_))
                                        (___kont129724129725_))
                                    (___kont129724129725_))))
                            (___kont129724129725_))))
                    (___kont129724129725_))
                (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129724129725_))
                                            (___kont129724129725_))
                                        (___kont129724129725_))))
                                (___kont129724129725_))))
                        (___kont129724129725_))
                    (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129724129725_))
                                                (___kont129724129725_))
                                            (___kont129724129725_))))
                                    (___kont129724129725_))))
                            (___kont129724129725_))
                        (___kont129724129725_))
                    (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129724129725_))))
                                            (___kont129724129725_))))
                                    (___kont129724129725_))
                                (___kont129724129725_))
                            (___kont129724129725_))))
                    (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129724129725_))
                                                (___kont129724129725_))
                                            (___kont129724129725_))
                                        (___kont129724129725_))
                                    (___kont129724129725_))
                                (___kont129724129725_))))
                        (___kont129724129725_))
                    (___kont129724129725_))
                (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129724129725_))))
                                        (___kont129724129725_))
                                    (___kont129724129725_))))
                            (___kont129724129725_))
                        (___kont129724129725_))
                    (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129724129725_))))
                                            (___kont129724129725_))
                                        (___kont129724129725_))))
                                (___kont129724129725_))
                            (___kont129724129725_))
                        (___kont129724129725_))))
                (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129724129725_))
                                            (___kont129724129725_))
                                        (___kont129724129725_))))
                                (___kont129724129725_))))
                        (___kont129724129725_))))
                (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129724129725_))
                                            (___kont129724129725_))
                                        (___kont129724129725_))))
                                (___kont129724129725_))))
                        (___kont129724129725_))
                    (___kont129724129725_))
                (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129724129725_))
                                            (___kont129724129725_))))
                                    (___kont129724129725_))))
                            (___kont129724129725_))))
                    (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129724129725_))
                                                (___kont129724129725_))
                                            (___kont129724129725_))))
                                    (___kont129724129725_))))
                            (___kont129724129725_))
                        (___kont129724129725_))))
                (___kont129724129725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129724129725_))))
                                        (___kont129724129725_))))
                                (___kont129724129725_))
                            (___kont129724129725_))
                        (___kont129724129725_))))
                (___kont129724129725_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx123040_ _id123041_ _clauses123042_ _gensym?123043_)
        (let _lp123045_ ((_rest123047_ _clauses123042_)
                         (_ids123048_ '())
                         (_impls123049_ '())
                         (_clauses123050_ '()))
          (let* ((_rest123051123059_ _rest123047_)
                 (_else123053123067_
                  (lambda ()
                    (values (reverse _ids123048_)
                            (reverse _impls123049_)
                            (reverse _clauses123050_))))
                 (_K123055123272_
                  (lambda (_rest123070_ _clause123071_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause123071_))
                        (let ((__tmp130814
                               (let ()
                                 (declare (not safe))
                                 (cons _clause123071_ _clauses123050_))))
                          (declare (not safe))
                          (_lp123045_
                           _rest123070_
                           _ids123048_
                           _impls123049_
                           __tmp130814))
                        (let* ((_g123073123084_
                                (lambda (_g123074123081_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g123074123081_))))
                               (_g123072123269_
                                (lambda (_g123074123087_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g123074123087_))
                                      (let ((_e123079123089_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g123074123087_))))
                                        (let ((_hd123078123092_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123079123089_)))
                                              (_tl123077123094_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123079123089_))))
                                          ((lambda (_L123097_ _L123098_)
                                             (let* ((_id123115_
                                                     (let ((__tmp130761
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id123041_)))
                                                           (__tmp130760
                                                            (length _clauses123050_))
                                                           (__tmp130759
                                                            (if _gensym?123043_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp130761
                                                        '"__"
                                                        __tmp130760
                                                        __tmp130759)))
                                                    (_id123117_
                                                     (let ((__tmp130762
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx123040_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id123115_
                                                        __tmp130762)))
                                                    (_impl123119_
                                                     (let ((__tmp130763
                                                            (let ((__tmp130765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp130764
                           (let ()
                             (declare (not safe))
                             (cons _L123098_ _L123097_))))
                      (declare (not safe))
                      (cons __tmp130765 __tmp130764))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp130763 _stx123040_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause123266_
                                                     (let* ((___stx130104130105_
                                                             _L123098_)
                                                            (_g123123123151_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx130104130105_)))))
               (let ((___kont130106130107_
                      (lambda (_L123245_)
                        (let ((__tmp130766
                               (let ((__tmp130767
                                      (let ((__tmp130768
                                             (let ((__tmp130769
                                                    (let ((__tmp130775
                                                           (let ((__tmp130776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id123117_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130776)))
                  (__tmp130770
                   (let ((__tmp130771
                          (lambda (_g123255123258_ _g123256123260_)
                            (let ((__tmp130772
                                   (let ((__tmp130774
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp130773
                                          (let ()
                                            (declare (not safe))
                                            (cons _g123255123258_ '()))))
                                     (declare (not safe))
                                     (cons __tmp130774 __tmp130773))))
                              (declare (not safe))
                              (cons __tmp130772 _g123256123260_)))))
                     (declare (not safe))
                     (foldr1 __tmp130771 '() _L123245_))))
              (declare (not safe))
              (cons __tmp130775 __tmp130770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130769))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130768
                                         _stx123040_))))
                                 (declare (not safe))
                                 (cons __tmp130767 '()))))
                          (declare (not safe))
                          (cons _L123098_ __tmp130766))))
                     (___kont130110130111_
                      (lambda (_L123196_ _L123197_)
                        (let ((__tmp130777
                               (let ((__tmp130778
                                      (let ((__tmp130779
                                             (let ((__tmp130780
                                                    (let ((__tmp130794
                                                           (let ((__tmp130795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130795)))
                  (__tmp130781
                   (let ((__tmp130792
                          (let ((__tmp130793
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123117_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130793)))
                         (__tmp130782
                          (let ((__tmp130788
                                 (let ((__tmp130789
                                        (let ((__tmp130791
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp130790
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L123196_ '()))))
                                          (declare (not safe))
                                          (cons __tmp130791 __tmp130790))))
                                   (declare (not safe))
                                   (cons __tmp130789 '())))
                                (__tmp130783
                                 (let ((__tmp130784
                                        (lambda (_g123208123211_
                                                 _g123209123213_)
                                          (let ((__tmp130785
                                                 (let ((__tmp130787
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp130786
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g123208123211_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp130787
                                                         __tmp130786))))
                                            (declare (not safe))
                                            (cons __tmp130785
                                                  _g123209123213_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp130784 '() _L123197_))))
                            (declare (not safe))
                            (foldr1 cons __tmp130788 __tmp130783))))
                     (declare (not safe))
                     (cons __tmp130792 __tmp130782))))
              (declare (not safe))
              (cons __tmp130794 __tmp130781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130780))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130779
                                         _stx123040_))))
                                 (declare (not safe))
                                 (cons __tmp130778 '()))))
                          (declare (not safe))
                          (cons _L123098_ __tmp130777))))
                     (___kont130114130115_
                      (lambda (_L123156_)
                        (let ((__tmp130796
                               (let ((__tmp130797
                                      (let ((__tmp130798
                                             (let ((__tmp130799
                                                    (let ((__tmp130807
                                                           (let ((__tmp130808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130808)))
                  (__tmp130800
                   (let ((__tmp130805
                          (let ((__tmp130806
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123117_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130806)))
                         (__tmp130801
                          (let ((__tmp130802
                                 (let ((__tmp130804
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp130803
                                        (let ()
                                          (declare (not safe))
                                          (cons _L123156_ '()))))
                                   (declare (not safe))
                                   (cons __tmp130804 __tmp130803))))
                            (declare (not safe))
                            (cons __tmp130802 '()))))
                     (declare (not safe))
                     (cons __tmp130805 __tmp130801))))
              (declare (not safe))
              (cons __tmp130807 __tmp130800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130799))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130798
                                         _stx123040_))))
                                 (declare (not safe))
                                 (cons __tmp130797 '()))))
                          (declare (not safe))
                          (cons _L123098_ __tmp130796)))))
                 (let* ((___match130129130130_
                         (lambda (___splice130112130113_
                                  _target123137123172_
                                  _tl123139123174_)
                           (letrec ((_loop123140123177_
                                     (lambda (_hd123138123180_
                                              _arg123144123182_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123138123180_))
                                           (let ((_e123141123185_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123138123180_))))
                                             (let ((_lp-tl123143123190_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123141123185_)))
                                                   (_lp-hd123142123188_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123141123185_))))
                                               (let ((__tmp130809
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123142123188_
                                                              _arg123144123182_))))
                                                 (declare (not safe))
                                                 (_loop123140123177_
                                                  _lp-tl123143123190_
                                                  __tmp130809))))
                                           (let ((_arg123145123193_
                                                  (reverse _arg123144123182_)))
                                             (___kont130110130111_
                                              _tl123139123174_
                                              _arg123145123193_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123140123177_
                                _target123137123172_
                                '())))))
                        (___match130123130124_
                         (lambda (___splice130108130109_
                                  _target123126123221_
                                  _tl123128123223_)
                           (letrec ((_loop123129123226_
                                     (lambda (_hd123127123229_
                                              _arg123133123231_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123127123229_))
                                           (let ((_e123130123234_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123127123229_))))
                                             (let ((_lp-tl123132123239_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123130123234_)))
                                                   (_lp-hd123131123237_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123130123234_))))
                                               (let ((__tmp130810
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123131123237_
                                                              _arg123133123231_))))
                                                 (declare (not safe))
                                                 (_loop123129123226_
                                                  _lp-tl123132123239_
                                                  __tmp130810))))
                                           (let ((_arg123134123242_
                                                  (reverse _arg123133123231_)))
                                             (___kont130106130107_
                                              _arg123134123242_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123129123226_
                                _target123126123221_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx130104130105_))
                       (let ((___splice130108130109_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx130104130105_
                                 '0))))
                         (let ((_tl123128123223_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130108130109_ '1)))
                               (_target123126123221_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130108130109_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl123128123223_))
                               (___match130123130124_
                                ___splice130108130109_
                                _target123126123221_
                                _tl123128123223_)
                               (___match130129130130_
                                ___splice130108130109_
                                _target123126123221_
                                _tl123128123223_))))
                       (___kont130114130115_ ___stx130104130105_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp130813
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id123117_
                                                              _ids123048_)))
                                                     (__tmp130812
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl123119_
                                                              _impls123049_)))
                                                     (__tmp130811
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause123266_
                                                              _clauses123050_))))
                                                 (declare (not safe))
                                                 (_lp123045_
                                                  _rest123070_
                                                  __tmp130813
                                                  __tmp130812
                                                  __tmp130811))))
                                           _tl123077123094_
                                           _hd123078123092_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g123073123084_ _g123074123087_))))))
                          (declare (not safe))
                          (_g123072123269_ _clause123071_))))))
            (if (let () (declare (not safe)) (##pair? _rest123051123059_))
                (let ((_hd123056123275_
                       (let ()
                         (declare (not safe))
                         (##car _rest123051123059_)))
                      (_tl123057123277_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest123051123059_))))
                  (let* ((_clause123280_ _hd123056123275_)
                         (_rest123282_ _tl123057123277_))
                    (declare (not safe))
                    (_K123055123272_ _rest123282_ _clause123280_)))
                (let () (declare (not safe)) (_else123053123067_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx123287_ _id123288_ _clauses123289_)
        (let ((_gensym?123291_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx123287_
           _id123288_
           _clauses123289_
           _gensym?123291_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g130816_
        (let ((_g130815_ (let () (declare (not safe)) (##length _g130816_))))
          (cond ((let () (declare (not safe)) (##fx= _g130815_ 3))
                 (apply (lambda (_stx123287_ _id123288_ _clauses123289_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx123287_
                             _id123288_
                             _clauses123289_)))
                        _g130816_))
                ((let () (declare (not safe)) (##fx= _g130815_ 4))
                 (apply (lambda (_stx123293_
                                 _id123294_
                                 _clauses123295_
                                 _gensym?123296_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx123293_
                             _id123294_
                             _clauses123295_
                             _gensym?123296_)))
                        _g130816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g130816_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self122316_ _stx122317_)
        (letrec ((_case-lambda-clause-def122319_
                  (lambda (_id123036_ _impl123037_)
                    (let ((__tmp130817
                           (let ((__tmp130818
                                  (let ((__tmp130821
                                         (let ()
                                           (declare (not safe))
                                           (cons _id123036_ '())))
                                        (__tmp130819
                                         (let ((__tmp130820
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self122316_
                                                   _impl123037_))))
                                           (declare (not safe))
                                           (cons __tmp130820 '()))))
                                    (declare (not safe))
                                    (cons __tmp130821 __tmp130819))))
                             (declare (not safe))
                             (cons '%#define-values __tmp130818))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130817 _stx122317_))))
                 (_opt-lambda-dispatch-name122320_
                  (lambda (_id123032_)
                    (if (uninterned-symbol? _id123032_)
                        (let ((_str123034_ (symbol->string _id123032_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str123034_))
                              '"%"
                              _id123032_))
                        _id123032_)))
                 (_kw-lambda-dispatch-name122321_
                  (lambda (_id123027_ _name123028_)
                    (if (uninterned-symbol? _id123027_)
                        (let ((_str123030_ (symbol->string _id123027_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str123030_))
                              _name123028_
                              _id123027_))
                        _id123027_))))
          (let* ((___stx130152130153_ _stx122317_)
                 (_g122326122385_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130152130153_)))))
            (let ((___kont130154130155_
                   (lambda (_L122936_ _L122937_)
                     (let* ((___stx130132130133_ _L122936_)
                            (_g122954122968_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130132130133_)))))
                       (let ((___kont130134130135_
                              (lambda (_L123012_) _stx122317_))
                             (___kont130136130137_
                              (lambda (_L122981_)
                                (let ((_g130822_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx122317_
                                          _L122937_
                                          _L122981_))))
                                  (begin
                                    (let ((_g130823_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130822_)
                                                 (##vector-length _g130822_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130823_ 3)))
                                          (error "Context expects 3 values"
                                                 _g130823_)))
                                    (let ((_ids122991_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130822_ 0)))
                                          (_impls122992_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130822_ 1)))
                                          (_clauses122993_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130822_ 2))))
                                      (let* ((_g130824_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids122991_))
                                             (_defs122996_
                                              (map _case-lambda-clause-def122319_
                                                   _ids122991_
                                                   _impls122992_)))
                                        (let ((__tmp130826
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L122937_)))
                                              (__tmp130825
                                               (map gxc#identifier-symbol
                                                    _ids122991_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp130826
                                           '" => "
                                           __tmp130825))
                                        (let ((__tmp130827
                                               (let ((__tmp130828
                                                      (let ((__tmp130829
                                                             (let ((__tmp130830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130831
                                   (let ((__tmp130832
                                          (let ((__tmp130837
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L122937_ '())))
                                                (__tmp130833
                                                 (let ((__tmp130834
                                                        (let ((__tmp130836
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses122993_)))
                      (__tmp130835
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp130836 __tmp130835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130834 '()))))
                                            (declare (not safe))
                                            (cons __tmp130837 __tmp130833))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp130832))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130831
                               _stx122317_))))
                       (declare (not safe))
                       (cons __tmp130830 '()))))
                (declare (not safe))
                (foldr1 cons __tmp130829 _defs122996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp130828))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp130827
                                           _stx122317_)))))))))
                         (let ((___match130143130144_
                                (lambda (_e122959123004_
                                         _hd122958123007_
                                         _tl122957123009_)
                                  (let ((_L123012_ _tl122957123009_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L123012_))
                                        (___kont130134130135_ _L123012_)
                                        (___kont130136130137_
                                         _tl122957123009_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx130132130133_))
                               (let ((_e122959123004_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx130132130133_))))
                                 (let ((_tl122957123009_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122959123004_)))
                                       (_hd122958123007_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122959123004_))))
                                   (___match130143130144_
                                    _e122959123004_
                                    _hd122958123007_
                                    _tl122957123009_)))
                               (let ()
                                 (declare (not safe))
                                 (_g122954122968_))))))))
                  (___kont130156130157_
                   (lambda (_L122754_ _L122755_)
                     (let* ((_g122771122801_
                             (lambda (_g122772122798_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122772122798_))))
                            (_g122770122896_
                             (lambda (_g122772122804_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122772122804_))
                                   (let ((_e122778122806_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122772122804_))))
                                     (let ((_hd122777122809_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122778122806_)))
                                           (_tl122776122811_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122778122806_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122776122811_))
                                           (let ((_e122781122814_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122776122811_))))
                                             (let ((_hd122780122817_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122781122814_)))
                                                   (_tl122779122819_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122781122814_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122780122817_))
                                                   (let ((_e122784122822_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122780122817_))))
                                                     (let ((_hd122783122825_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122784122822_)))
                                                           (_tl122782122827_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122784122822_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122783122825_))
                                                           (let ((_e122787122830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122783122825_))))
                     (let ((_hd122786122833_
                            (let ()
                              (declare (not safe))
                              (##car _e122787122830_)))
                           (_tl122785122835_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122787122830_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122786122833_))
                           (let ((_e122790122838_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122786122833_))))
                             (let ((_hd122789122841_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122790122838_)))
                                   (_tl122788122843_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122790122838_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122788122843_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122785122835_))
                                       (let ((_e122793122846_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122785122835_))))
                                         (let ((_hd122792122849_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122793122846_)))
                                               (_tl122791122851_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122793122846_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122791122851_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl122782122827_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122779122819_))
                                                       (let ((_e122796122854_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122779122819_))))
                 (let ((_hd122795122857_
                        (let () (declare (not safe)) (##car _e122796122854_)))
                       (_tl122794122859_
                        (let () (declare (not safe)) (##cdr _e122796122854_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl122794122859_))
                       ((lambda (_L122862_ _L122863_ _L122864_)
                          (let* ((_lambda-id122888_
                                  (let ((__tmp130840
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L122755_)))
                                        (__tmp130838
                                         (let ((__tmp130839
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L122864_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name122320_
                                            __tmp130839))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp130840
                                     '"__"
                                     __tmp130838)))
                                 (_lambda-id122890_
                                  (let ((__tmp130841
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx122317_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id122888_
                                     __tmp130841)))
                                 (_g130842_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id122890_)))
                                 (_new-case-lambda-expr122893_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L122862_
                                     'id:
                                     _L122864_
                                     'new-id:
                                     _lambda-id122890_))))
                            (let ((__tmp130844
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L122755_)))
                                  (__tmp130843
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id122890_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp130844
                               '" => "
                               __tmp130843))
                            (let ((__tmp130845
                                   (let ((__tmp130846
                                          (let ((__tmp130854
                                                 (let ((__tmp130855
                                                        (let ((__tmp130856
                                                               (let ((__tmp130859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id122890_ '())))
                             (__tmp130857
                              (let ((__tmp130858
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self122316_
                                        _L122863_))))
                                (declare (not safe))
                                (cons __tmp130858 '()))))
                         (declare (not safe))
                         (cons __tmp130859 __tmp130857))))
                  (declare (not safe))
                  (cons '%#define-values __tmp130856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp130855
                                                    _stx122317_)))
                                                (__tmp130847
                                                 (let ((__tmp130848
                                                        (let ((__tmp130849
                                                               (let ((__tmp130850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp130851
                                     (let ((__tmp130853
                                            (let ()
                                              (declare (not safe))
                                              (cons _L122755_ '())))
                                           (__tmp130852
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr122893_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp130853 __tmp130852))))
                                (declare (not safe))
                                (cons '%#define-values __tmp130851))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp130850 _stx122317_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self122316_
                   __tmp130849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130848 '()))))
                                            (declare (not safe))
                                            (cons __tmp130854 __tmp130847))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp130846))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130845
                               _stx122317_))))
                        _hd122795122857_
                        _hd122792122849_
                        _hd122789122841_)
                       (let ()
                         (declare (not safe))
                         (_g122771122801_ _g122772122804_)))))
               (let () (declare (not safe)) (_g122771122801_ _g122772122804_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122771122801_
                                                      _g122772122804_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122771122801_
                                                  _g122772122804_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122771122801_ _g122772122804_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122771122801_ _g122772122804_)))))
                           (let ()
                             (declare (not safe))
                             (_g122771122801_ _g122772122804_)))))
                   (let ()
                     (declare (not safe))
                     (_g122771122801_ _g122772122804_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122771122801_
                                                      _g122772122804_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122771122801_
                                              _g122772122804_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122771122801_ _g122772122804_))))))
                       (declare (not safe))
                       (_g122770122896_ _L122754_))))
                  (___kont130158130159_
                   (lambda (_L122468_ _L122469_)
                     (let* ((_g122485122538_
                             (lambda (_g122486122535_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122486122535_))))
                            (_g122484122714_
                             (lambda (_g122486122541_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122486122541_))
                                   (let ((_e122494122543_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122486122541_))))
                                     (let ((_hd122493122546_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122494122543_)))
                                           (_tl122492122548_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122494122543_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122492122548_))
                                           (let ((_e122497122551_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122492122548_))))
                                             (let ((_hd122496122554_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122497122551_)))
                                                   (_tl122495122556_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122497122551_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122496122554_))
                                                   (let ((_e122500122559_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122496122554_))))
                                                     (let ((_hd122499122562_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122500122559_)))
                                                           (_tl122498122564_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122500122559_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122499122562_))
                                                           (let ((_e122503122567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122499122562_))))
                     (let ((_hd122502122570_
                            (let ()
                              (declare (not safe))
                              (##car _e122503122567_)))
                           (_tl122501122572_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122503122567_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122502122570_))
                           (let ((_e122506122575_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122502122570_))))
                             (let ((_hd122505122578_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122506122575_)))
                                   (_tl122504122580_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122506122575_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122504122580_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122501122572_))
                                       (let ((_e122509122583_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122501122572_))))
                                         (let ((_hd122508122586_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122509122583_)))
                                               (_tl122507122588_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122509122583_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd122508122586_))
                                               (let ((_e122512122591_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd122508122586_))))
                                                 (let ((_hd122511122594_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122512122591_)))
                                                       (_tl122510122596_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122512122591_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122510122596_))
                                                       (let ((_e122515122599_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122510122596_))))
                 (let ((_hd122514122602_
                        (let () (declare (not safe)) (##car _e122515122599_)))
                       (_tl122513122604_
                        (let () (declare (not safe)) (##cdr _e122515122599_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd122514122602_))
                       (let ((_e122518122607_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd122514122602_))))
                         (let ((_hd122517122610_
                                (let ()
                                  (declare (not safe))
                                  (##car _e122518122607_)))
                               (_tl122516122612_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e122518122607_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122517122610_))
                               (let ((_e122521122615_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122517122610_))))
                                 (let ((_hd122520122618_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122521122615_)))
                                       (_tl122519122620_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122521122615_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd122520122618_))
                                       (let ((_e122524122623_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd122520122618_))))
                                         (let ((_hd122523122626_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122524122623_)))
                                               (_tl122522122628_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122524122623_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122522122628_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl122519122620_))
                                                   (let ((_e122527122631_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl122519122620_))))
                                                     (let ((_hd122526122634_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122527122631_)))
                                                           (_tl122525122636_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122527122631_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122525122636_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl122516122612_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl122513122604_))
                           (let ((_e122530122639_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl122513122604_))))
                             (let ((_hd122529122642_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122530122639_)))
                                   (_tl122528122644_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122530122639_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122528122644_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl122507122588_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl122498122564_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl122495122556_))
                                               (let ((_e122533122647_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl122495122556_))))
                                                 (let ((_hd122532122650_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122533122647_)))
                                                       (_tl122531122652_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122533122647_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl122531122652_))
                                                       ((lambda (_L122655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L122656_
                         _L122657_
                         _L122658_
                         _L122659_)
                  (let* ((_get-kws-id122699_
                          (let ((__tmp130862
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122469_)))
                                (__tmp130860
                                 (let ((__tmp130861
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122659_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122321_
                                    __tmp130861
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130862 '"__" __tmp130860)))
                         (_get-kws-id122701_
                          (let ((__tmp130863
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122317_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id122699_
                             __tmp130863)))
                         (_main-id122703_
                          (let ((__tmp130866
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122469_)))
                                (__tmp130864
                                 (let ((__tmp130865
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122658_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122321_
                                    __tmp130865
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130866 '"__" __tmp130864)))
                         (_main-id122705_
                          (let ((__tmp130867
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122317_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id122703_
                             __tmp130867)))
                         (_g130868_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id122701_)))
                         (_g130869_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id122705_)))
                         (_new-kw-dispatch122709_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122655_
                             'id:
                             _L122659_
                             'new-id:
                             _get-kws-id122701_)))
                         (_new-get-kws122711_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122656_
                             'id:
                             _L122658_
                             'new-id:
                             _main-id122705_))))
                    (let ((__tmp130872
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L122469_)))
                          (__tmp130871
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id122701_)))
                          (__tmp130870
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id122705_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp130872
                       '" => "
                       __tmp130871
                       '" => "
                       __tmp130870))
                    (let ((__tmp130873
                           (let ((__tmp130874
                                  (let ((__tmp130887
                                         (let ((__tmp130888
                                                (let ((__tmp130889
                                                       (let ((__tmp130890
                                                              (let ((__tmp130892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id122705_ '())))
                            (__tmp130891
                             (let ()
                               (declare (not safe))
                               (cons _L122657_ '()))))
                        (declare (not safe))
                        (cons __tmp130892 __tmp130891))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130889
                                                   _stx122317_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self122316_
                                            __tmp130888)))
                                        (__tmp130875
                                         (let ((__tmp130882
                                                (let ((__tmp130883
                                                       (let ((__tmp130884
                                                              (let ((__tmp130886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id122701_ '())))
                            (__tmp130885
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws122711_ '()))))
                        (declare (not safe))
                        (cons __tmp130886 __tmp130885))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130883
                                                   _stx122317_)))
                                               (__tmp130876
                                                (let ((__tmp130877
                                                       (let ((__tmp130878
                                                              (let ((__tmp130879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp130881
                                    (let ()
                                      (declare (not safe))
                                      (cons _L122469_ '())))
                                   (__tmp130880
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch122709_ '()))))
                               (declare (not safe))
                               (cons __tmp130881 __tmp130880))))
                        (declare (not safe))
                        (cons '%#define-values __tmp130879))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp130878 _stx122317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp130877 '()))))
                                           (declare (not safe))
                                           (cons __tmp130882 __tmp130876))))
                                    (declare (not safe))
                                    (cons __tmp130887 __tmp130875))))
                             (declare (not safe))
                             (cons '%#begin __tmp130874))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130873 _stx122317_))))
                _hd122532122650_
                _hd122529122642_
                _hd122526122634_
                _hd122523122626_
                _hd122505122578_)
               (let ()
                 (declare (not safe))
                 (_g122485122538_ _g122486122541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122485122538_
                                                  _g122486122541_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g122485122538_
                                              _g122486122541_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g122485122538_ _g122486122541_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122485122538_ _g122486122541_)))))
                           (let ()
                             (declare (not safe))
                             (_g122485122538_ _g122486122541_)))
                       (let ()
                         (declare (not safe))
                         (_g122485122538_ _g122486122541_)))
                   (let ()
                     (declare (not safe))
                     (_g122485122538_ _g122486122541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122485122538_
                                                      _g122486122541_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122485122538_
                                                  _g122486122541_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122485122538_ _g122486122541_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g122485122538_ _g122486122541_)))))
                       (let ()
                         (declare (not safe))
                         (_g122485122538_ _g122486122541_)))))
               (let ()
                 (declare (not safe))
                 (_g122485122538_ _g122486122541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122485122538_
                                                  _g122486122541_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122485122538_ _g122486122541_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122485122538_ _g122486122541_)))))
                           (let ()
                             (declare (not safe))
                             (_g122485122538_ _g122486122541_)))))
                   (let ()
                     (declare (not safe))
                     (_g122485122538_ _g122486122541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122485122538_
                                                      _g122486122541_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122485122538_
                                              _g122486122541_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122485122538_ _g122486122541_))))))
                       (declare (not safe))
                       (_g122484122714_ _L122468_))))
                  (___kont130160130161_
                   (lambda (_L122414_ _L122415_)
                     (let ((__tmp130893
                            (let ((__tmp130894
                                   (let ((__tmp130895
                                          (let ((__tmp130896
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self122316_
                                                    _L122414_))))
                                            (declare (not safe))
                                            (cons __tmp130896 '()))))
                                     (declare (not safe))
                                     (cons _L122415_ __tmp130895))))
                              (declare (not safe))
                              (cons '%#define-values __tmp130894))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp130893 _stx122317_)))))
              (let* ((___match130245130246_
                      (lambda (_e122360122436_
                               _hd122359122439_
                               _tl122358122441_
                               _e122363122444_
                               _hd122362122447_
                               _tl122361122449_
                               _e122366122452_
                               _hd122365122455_
                               _tl122364122457_
                               _e122369122460_
                               _hd122368122463_
                               _tl122367122465_)
                        (let ((_L122468_ _hd122368122463_)
                              (_L122469_ _hd122365122455_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122469_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L122468_)))
                              (___kont130158130159_ _L122468_ _L122469_)
                              (___kont130160130161_
                               _hd122368122463_
                               _hd122362122447_)))))
                     (___match130217130218_
                      (lambda (_e122346122722_
                               _hd122345122725_
                               _tl122344122727_
                               _e122349122730_
                               _hd122348122733_
                               _tl122347122735_
                               _e122352122738_
                               _hd122351122741_
                               _tl122350122743_
                               _e122355122746_
                               _hd122354122749_
                               _tl122353122751_)
                        (let ((_L122754_ _hd122354122749_)
                              (_L122755_ _hd122351122741_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122755_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L122754_)))
                              (___kont130156130157_ _L122754_ _L122755_)
                              (___match130245130246_
                               _e122346122722_
                               _hd122345122725_
                               _tl122344122727_
                               _e122349122730_
                               _hd122348122733_
                               _tl122347122735_
                               _e122352122738_
                               _hd122351122741_
                               _tl122350122743_
                               _e122355122746_
                               _hd122354122749_
                               _tl122353122751_)))))
                     (___match130189130190_
                      (lambda (_e122332122904_
                               _hd122331122907_
                               _tl122330122909_
                               _e122335122912_
                               _hd122334122915_
                               _tl122333122917_
                               _e122338122920_
                               _hd122337122923_
                               _tl122336122925_
                               _e122341122928_
                               _hd122340122931_
                               _tl122339122933_)
                        (let ((_L122936_ _hd122340122931_)
                              (_L122937_ _hd122337122923_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122937_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L122936_)))
                              (___kont130154130155_ _L122936_ _L122937_)
                              (___match130217130218_
                               _e122332122904_
                               _hd122331122907_
                               _tl122330122909_
                               _e122335122912_
                               _hd122334122915_
                               _tl122333122917_
                               _e122338122920_
                               _hd122337122923_
                               _tl122336122925_
                               _e122341122928_
                               _hd122340122931_
                               _tl122339122933_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130152130153_))
                    (let ((_e122332122904_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130152130153_))))
                      (let ((_tl122330122909_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122332122904_)))
                            (_hd122331122907_
                             (let ()
                               (declare (not safe))
                               (##car _e122332122904_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122330122909_))
                            (let ((_e122335122912_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122330122909_))))
                              (let ((_tl122333122917_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122335122912_)))
                                    (_hd122334122915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122335122912_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122334122915_))
                                    (let ((_e122338122920_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122334122915_))))
                                      (let ((_tl122336122925_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122338122920_)))
                                            (_hd122337122923_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122338122920_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122336122925_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122333122917_))
                                                (let ((_e122341122928_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122333122917_))))
                                                  (let ((_tl122339122933_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122341122928_)))
                                                        (_hd122340122931_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122341122928_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122339122933_))
                                                        (___match130189130190_
                                                         _e122332122904_
                                                         _hd122331122907_
                                                         _tl122330122909_
                                                         _e122335122912_
                                                         _hd122334122915_
                                                         _tl122333122917_
                                                         _e122338122920_
                                                         _hd122337122923_
                                                         _tl122336122925_
                                                         _e122341122928_
                                                         _hd122340122931_
                                                         _tl122339122933_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122326122385_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122326122385_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122333122917_))
                                                (let ((_e122380122406_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122333122917_))))
                                                  (let ((_tl122378122411_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122380122406_)))
                                                        (_hd122379122409_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122380122406_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122378122411_))
                                                        (___kont130160130161_
                                                         _hd122379122409_
                                                         _hd122334122915_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122326122385_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122326122385_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122333122917_))
                                        (let ((_e122380122406_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122333122917_))))
                                          (let ((_tl122378122411_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122380122406_)))
                                                (_hd122379122409_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122380122406_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122378122411_))
                                                (___kont130160130161_
                                                 _hd122379122409_
                                                 _hd122334122915_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122326122385_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g122326122385_))))))
                            (let () (declare (not safe)) (_g122326122385_)))))
                    (let () (declare (not safe)) (_g122326122385_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self121247_ _stx121248_)
        (letrec* ((_bind-e__128548128549_
                   (lambda (_id122300_ _expr122301_ _compile?122302_)
                     (let ((__tmp130899
                            (let ()
                              (declare (not safe))
                              (cons _id122300_ '())))
                           (__tmp130897
                            (let ((__tmp130898
                                   (if _compile?122302_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self121247_
                                          _expr122301_))
                                       _expr122301_)))
                              (declare (not safe))
                              (cons __tmp130898 '()))))
                       (declare (not safe))
                       (cons __tmp130899 __tmp130897))))
                  (_bind-e__0__128550128551_
                   (lambda (_id122307_ _expr122308_)
                     (let ((_compile?122310_ '#t))
                       (declare (not safe))
                       (_bind-e__128548128549_
                        _id122307_
                        _expr122308_
                        _compile?122310_))))
                  (_bind-e121250_
                   (lambda _g130901_
                     (let ((_g130900_
                            (let ()
                              (declare (not safe))
                              (##length _g130901_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130900_ 2))
                              (apply (lambda (_id122307_ _expr122308_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128550128551_
                                          _id122307_
                                          _expr122308_)))
                                     _g130901_))
                             ((let () (declare (not safe)) (##fx= _g130900_ 3))
                              (apply (lambda (_id122312_
                                              _expr122313_
                                              _compile?122314_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128548128549_
                                          _id122312_
                                          _expr122313_
                                          _compile?122314_)))
                                     _g130901_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130901_))))))
                  (_compile-bindings121251_
                   (lambda (_bindings121884_)
                     (let _lp121886_ ((_rest121888_ _bindings121884_)
                                      (_lift1121889_ '())
                                      (_lift2121890_ '())
                                      (_bind121891_ '()))
                       (let* ((_rest121892121900_ _rest121888_)
                              (_else121894121908_
                               (lambda ()
                                 (values (reverse _lift1121889_)
                                         (reverse _lift2121890_)
                                         (reverse _bind121891_))))
                              (_K121896122287_
                               (lambda (_rest121911_ _hd121912_)
                                 (let* ((___stx130288130289_ _hd121912_)
                                        (_g121916121952_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130288130289_)))))
                                   (let ((___kont130290130291_
                                          (lambda (_L122194_ _L122195_)
                                            (let* ((___stx130268130269_
                                                    _L122194_)
                                                   (_g122210122224_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130268130269_)))))
                                              (let ((___kont130270130271_
                                                     (lambda (_L122272_)
                                                       (let ((__tmp130902
                                                              (let ((__tmp130903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128548128549_
                                _L122195_
                                _L122194_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130903 _bind121891_))))
                 (declare (not safe))
                 (_lp121886_
                  _rest121911_
                  _lift1121889_
                  _lift2121890_
                  __tmp130902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130272130273_
                                                     (lambda (_L122237_)
                                                       (let ((_g130904_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx121248_
                         _L122195_
                         _L122237_
                         '#t))))
                 (begin
                   (let ((_g130905_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130904_)
                                (##vector-length _g130904_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130905_ 3)))
                         (error "Context expects 3 values" _g130905_)))
                   (let ((_ids122247_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130904_ 0)))
                         (_impls122248_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130904_ 1)))
                         (_clauses122249_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130904_ 2))))
                     (let* ((_g130906_
                             (for-each gx#core-bind-runtime! _ids122247_))
                            (_xbind122252_
                             (map _bind-e121250_ _ids122247_ _impls122248_))
                            (_expr*122254_
                             (let ((__tmp130908
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses122249_)))
                                   (__tmp130907
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130908
                                __tmp130907)))
                            (_bind*122256_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128548128549_
                                _L122195_
                                _expr*122254_
                                '#f))))
                       (let ((__tmp130910
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L122195_)))
                             (__tmp130909
                              (map gxc#identifier-symbol _ids122247_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130910
                          '" => "
                          __tmp130909))
                       (let ((__tmp130912
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2121890_ _xbind122252_)))
                             (__tmp130911
                              (let ()
                                (declare (not safe))
                                (cons _bind*122256_ _bind121891_))))
                         (declare (not safe))
                         (_lp121886_
                          _rest121911_
                          _lift1121889_
                          __tmp130912
                          __tmp130911)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130279130280_
                                                       (lambda (_e122215122264_
                                                                _hd122214122267_
                                                                _tl122213122269_)
                                                         (let ((_L122272_
                                                                _tl122213122269_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L122272_))
                       (___kont130270130271_ _L122272_)
                       (___kont130272130273_ _tl122213122269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130268130269_))
                                                      (let ((_e122215122264_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130268130269_))))
                (let ((_tl122213122269_
                       (let () (declare (not safe)) (##cdr _e122215122264_)))
                      (_hd122214122267_
                       (let () (declare (not safe)) (##car _e122215122264_))))
                  (___match130279130280_
                   _e122215122264_
                   _hd122214122267_
                   _tl122213122269_)))
              (let () (declare (not safe)) (_g122210122224_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130292130293_
                                          (lambda (_L122022_ _L122023_)
                                            (let* ((_g122037122067_
                                                    (lambda (_g122038122064_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g122038122064_))))
                                                   (_g122036122162_
                                                    (lambda (_g122038122070_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g122038122070_))
                                                          (let ((_e122044122072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g122038122070_))))
                    (let ((_hd122043122075_
                           (let ()
                             (declare (not safe))
                             (##car _e122044122072_)))
                          (_tl122042122077_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122044122072_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122042122077_))
                          (let ((_e122047122080_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122042122077_))))
                            (let ((_hd122046122083_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122047122080_)))
                                  (_tl122045122085_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122047122080_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122046122083_))
                                  (let ((_e122050122088_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122046122083_))))
                                    (let ((_hd122049122091_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122050122088_)))
                                          (_tl122048122093_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122050122088_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd122049122091_))
                                          (let ((_e122053122096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd122049122091_))))
                                            (let ((_hd122052122099_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122053122096_)))
                                                  (_tl122051122101_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122053122096_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd122052122099_))
                                                  (let ((_e122056122104_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd122052122099_))))
                                                    (let ((_hd122055122107_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122056122104_)))
                                                          (_tl122054122109_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122056122104_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122054122109_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl122051122101_))
                      (let ((_e122059122112_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl122051122101_))))
                        (let ((_hd122058122115_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122059122112_)))
                              (_tl122057122117_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122059122112_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122057122117_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122048122093_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122045122085_))
                                      (let ((_e122062122120_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122045122085_))))
                                        (let ((_hd122061122123_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122062122120_)))
                                              (_tl122060122125_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122062122120_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122060122125_))
                                              ((lambda (_L122128_
                                                        _L122129_
                                                        _L122130_)
                                                 (let* ((_lambda-id122154_
                                                         (let ((__tmp130914
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L122023_)))
                       (__tmp130913 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130914 __tmp130913)))
                (_lambda-id122156_
                 (let ((__tmp130915
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx121248_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id122154_ __tmp130915)))
                (_g130916_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id122156_)))
                (_new-case-lambda-expr122159_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L122128_
                    'id:
                    _L122130_
                    'new-id:
                    _lambda-id122156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130918
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L122023_)))
                                                         (__tmp130917
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id122156_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130918
                                                      '" => "
                                                      __tmp130917))
                                                   (let ((__tmp130921
                                                          (let ((__tmp130922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128548128549_
                            _L122023_
                            _new-case-lambda-expr122159_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130922 _rest121911_)))
                 (__tmp130919
                  (let ((__tmp130920
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128550128551_
                            _lambda-id122156_
                            _L122129_))))
                    (declare (not safe))
                    (cons __tmp130920 _lift1121889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp121886_
                                                      __tmp130921
                                                      __tmp130919
                                                      _lift2121890_
                                                      _bind121891_))))
                                               _hd122061122123_
                                               _hd122058122115_
                                               _hd122055122107_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122037122067_
                                                 _g122038122070_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122037122067_ _g122038122070_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122037122067_ _g122038122070_)))
                              (let ()
                                (declare (not safe))
                                (_g122037122067_ _g122038122070_)))))
                      (let ()
                        (declare (not safe))
                        (_g122037122067_ _g122038122070_)))
                  (let ()
                    (declare (not safe))
                    (_g122037122067_ _g122038122070_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122037122067_
                                                     _g122038122070_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122037122067_
                                             _g122038122070_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122037122067_ _g122038122070_)))))
                          (let ()
                            (declare (not safe))
                            (_g122037122067_ _g122038122070_)))))
                  (let ()
                    (declare (not safe))
                    (_g122037122067_ _g122038122070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g122036122162_ _L122022_))))
                                         (___kont130294130295_
                                          (lambda (_L121973_ _L121974_)
                                            (let ((__tmp130923
                                                   (let ((__tmp130924
                                                          (let ((__tmp130925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130926
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self121247_ _L121973_))))
                           (declare (not safe))
                           (cons __tmp130926 '()))))
                    (declare (not safe))
                    (cons _L121974_ __tmp130925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130924
                                                           _bind121891_))))
                                              (declare (not safe))
                                              (_lp121886_
                                               _rest121911_
                                               _lift1121889_
                                               _lift2121890_
                                               __tmp130923)))))
                                     (let* ((___match130339130340_
                                             (lambda (_e121933121998_
                                                      _hd121932122001_
                                                      _tl121931122003_
                                                      _e121936122006_
                                                      _hd121935122009_
                                                      _tl121934122011_
                                                      _e121939122014_
                                                      _hd121938122017_
                                                      _tl121937122019_)
                                               (let ((_L122022_
                                                      _hd121938122017_)
                                                     (_L122023_
                                                      _hd121935122009_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L122023_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L122022_)))
                                                     (___kont130292130293_
                                                      _L122022_
                                                      _L122023_)
                                                     (___kont130294130295_
                                                      _hd121938122017_
                                                      _hd121932122001_)))))
                                            (___match130317130318_
                                             (lambda (_e121922122170_
                                                      _hd121921122173_
                                                      _tl121920122175_
                                                      _e121925122178_
                                                      _hd121924122181_
                                                      _tl121923122183_
                                                      _e121928122186_
                                                      _hd121927122189_
                                                      _tl121926122191_)
                                               (let ((_L122194_
                                                      _hd121927122189_)
                                                     (_L122195_
                                                      _hd121924122181_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L122195_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L122194_)))
                                                     (___kont130290130291_
                                                      _L122194_
                                                      _L122195_)
                                                     (___match130339130340_
                                                      _e121922122170_
                                                      _hd121921122173_
                                                      _tl121920122175_
                                                      _e121925122178_
                                                      _hd121924122181_
                                                      _tl121923122183_
                                                      _e121928122186_
                                                      _hd121927122189_
                                                      _tl121926122191_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130288130289_))
                                           (let ((_e121922122170_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130288130289_))))
                                             (let ((_tl121920122175_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121922122170_)))
                                                   (_hd121921122173_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121922122170_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121921122173_))
                                                   (let ((_e121925122178_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121921122173_))))
                                                     (let ((_tl121923122183_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121925122178_)))
                                                           (_hd121924122181_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121925122178_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121923122183_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121920122175_))
                       (let ((_e121928122186_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121920122175_))))
                         (let ((_tl121926122191_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121928122186_)))
                               (_hd121927122189_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121928122186_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121926122191_))
                               (___match130317130318_
                                _e121922122170_
                                _hd121921122173_
                                _tl121920122175_
                                _e121925122178_
                                _hd121924122181_
                                _tl121923122183_
                                _e121928122186_
                                _hd121927122189_
                                _tl121926122191_)
                               (let ()
                                 (declare (not safe))
                                 (_g121916121952_)))))
                       (let () (declare (not safe)) (_g121916121952_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121920122175_))
                       (let ((_e121947121965_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121920122175_))))
                         (let ((_tl121945121970_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121947121965_)))
                               (_hd121946121968_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121947121965_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121945121970_))
                               (___kont130294130295_
                                _hd121946121968_
                                _hd121921122173_)
                               (let ()
                                 (declare (not safe))
                                 (_g121916121952_)))))
                       (let () (declare (not safe)) (_g121916121952_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121920122175_))
                                                       (let ((_e121947121965_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121920122175_))))
                 (let ((_tl121945121970_
                        (let () (declare (not safe)) (##cdr _e121947121965_)))
                       (_hd121946121968_
                        (let () (declare (not safe)) (##car _e121947121965_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121945121970_))
                       (___kont130294130295_ _hd121946121968_ _hd121921122173_)
                       (let () (declare (not safe)) (_g121916121952_)))))
               (let () (declare (not safe)) (_g121916121952_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121916121952_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121892121900_))
                             (let ((_hd121897122290_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121892121900_)))
                                   (_tl121898122292_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121892121900_))))
                               (let* ((_hd122295_ _hd121897122290_)
                                      (_rest122297_ _tl121898122292_))
                                 (declare (not safe))
                                 (_K121896122287_ _rest122297_ _hd122295_)))
                             (let ()
                               (declare (not safe))
                               (_else121894121908_)))))))
                  (_lift-kw-lambda?121252_
                   (lambda (_bind121808_)
                     (let* ((___stx130356130357_ _bind121808_)
                            (_g121811121828_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130356130357_)))))
                       (let ((___kont130358130359_
                              (lambda (_L121864_ _L121865_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L121865_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L121864_))
                                    '#f)))
                             (___kont130360130361_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx130356130357_))
                             (let ((_e121817121840_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx130356130357_))))
                               (let ((_tl121815121845_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e121817121840_)))
                                     (_hd121816121843_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e121817121840_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd121816121843_))
                                     (let ((_e121820121848_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd121816121843_))))
                                       (let ((_tl121818121853_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e121820121848_)))
                                             (_hd121819121851_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e121820121848_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl121818121853_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl121815121845_))
                                                 (let ((_e121823121856_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl121815121845_))))
                                                   (let ((_tl121821121861_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e121823121856_)))
                                                         (_hd121822121859_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e121823121856_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl121821121861_))
                                                         (___kont130358130359_
                                                          _hd121822121859_
                                                          _hd121819121851_)
                                                         (___kont130360130361_))))
                                                 (___kont130360130361_))
                                             (___kont130360130361_))))
                                     (___kont130360130361_))))
                             (___kont130360130361_))))))
                  (_lift-kw-lambda-bindings121253_
                   (lambda (_bindings121420_)
                     (let _lp121422_ ((_rest121424_ _bindings121420_)
                                      (_lift1121425_ '())
                                      (_lift2121426_ '())
                                      (_bind121427_ '()))
                       (let* ((_rest121428121436_ _rest121424_)
                              (_else121430121444_
                               (lambda ()
                                 (values (reverse _lift1121425_)
                                         (reverse _lift2121426_)
                                         (reverse _bind121427_))))
                              (_K121432121796_
                               (lambda (_rest121447_ _hd121448_)
                                 (let* ((___stx130386130387_ _hd121448_)
                                        (_g121451121476_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130386130387_)))))
                                   (let ((___kont130388130389_
                                          (lambda (_L121546_ _L121547_)
                                            (let* ((_g121561121614_
                                                    (lambda (_g121562121611_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121562121611_))))
                                                   (_g121560121790_
                                                    (lambda (_g121562121617_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121562121617_))
                                                          (let ((_e121570121619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121562121617_))))
                    (let ((_hd121569121622_
                           (let ()
                             (declare (not safe))
                             (##car _e121570121619_)))
                          (_tl121568121624_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121570121619_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121568121624_))
                          (let ((_e121573121627_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121568121624_))))
                            (let ((_hd121572121630_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121573121627_)))
                                  (_tl121571121632_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121573121627_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121572121630_))
                                  (let ((_e121576121635_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121572121630_))))
                                    (let ((_hd121575121638_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121576121635_)))
                                          (_tl121574121640_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121576121635_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121575121638_))
                                          (let ((_e121579121643_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121575121638_))))
                                            (let ((_hd121578121646_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121579121643_)))
                                                  (_tl121577121648_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121579121643_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121578121646_))
                                                  (let ((_e121582121651_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121578121646_))))
                                                    (let ((_hd121581121654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121582121651_)))
                                                          (_tl121580121656_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121582121651_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121580121656_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121577121648_))
                      (let ((_e121585121659_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121577121648_))))
                        (let ((_hd121584121662_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121585121659_)))
                              (_tl121583121664_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121585121659_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd121584121662_))
                              (let ((_e121588121667_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd121584121662_))))
                                (let ((_hd121587121670_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121588121667_)))
                                      (_tl121586121672_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121588121667_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121586121672_))
                                      (let ((_e121591121675_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121586121672_))))
                                        (let ((_hd121590121678_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121591121675_)))
                                              (_tl121589121680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121591121675_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd121590121678_))
                                              (let ((_e121594121683_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd121590121678_))))
                                                (let ((_hd121593121686_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121594121683_)))
                                                      (_tl121592121688_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121594121683_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd121593121686_))
                                                      (let ((_e121597121691_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd121593121686_))))
                (let ((_hd121596121694_
                       (let () (declare (not safe)) (##car _e121597121691_)))
                      (_tl121595121696_
                       (let () (declare (not safe)) (##cdr _e121597121691_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121596121694_))
                      (let ((_e121600121699_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121596121694_))))
                        (let ((_hd121599121702_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121600121699_)))
                              (_tl121598121704_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121600121699_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121598121704_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121595121696_))
                                  (let ((_e121603121707_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121595121696_))))
                                    (let ((_hd121602121710_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121603121707_)))
                                          (_tl121601121712_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121603121707_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121601121712_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121592121688_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121589121680_))
                                                  (let ((_e121606121715_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121589121680_))))
                                                    (let ((_hd121605121718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121606121715_)))
                                                          (_tl121604121720_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121606121715_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121604121720_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl121583121664_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl121574121640_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121571121632_))
                              (let ((_e121609121723_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121571121632_))))
                                (let ((_hd121608121726_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121609121723_)))
                                      (_tl121607121728_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121609121723_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121607121728_))
                                      ((lambda (_L121731_
                                                _L121732_
                                                _L121733_
                                                _L121734_
                                                _L121735_)
                                         (let* ((_get-kws-id121775_
                                                 (let ((__tmp130928
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121547_)))
                                                       (__tmp130927
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130928
                                                    __tmp130927)))
                                                (_get-kws-id121777_
                                                 (let ((__tmp130929
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121248_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id121775_
                                                    __tmp130929)))
                                                (_main-id121779_
                                                 (let ((__tmp130931
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121547_)))
                                                       (__tmp130930
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130931
                                                    __tmp130930)))
                                                (_main-id121781_
                                                 (let ((__tmp130932
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121248_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id121779_
                                                    __tmp130932)))
                                                (_g130933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id121777_)))
                                                (_g130934_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id121781_)))
                                                (_new-kw-dispatch121785_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121731_
                                                    'id:
                                                    _L121735_
                                                    'new-id:
                                                    _get-kws-id121777_)))
                                                (_new-get-kws121787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121732_
                                                    'id:
                                                    _L121734_
                                                    'new-id:
                                                    _main-id121781_))))
                                           (let ((__tmp130937
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L121547_)))
                                                 (__tmp130936
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id121777_)))
                                                 (__tmp130935
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id121781_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130937
                                              '" => "
                                              __tmp130936
                                              '" => "
                                              __tmp130935))
                                           (let ((__tmp130942
                                                  (let ((__tmp130943
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128548128549_
                                                            _main-id121781_
                                                            _L121733_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130943
                                                          _lift1121425_)))
                                                 (__tmp130940
                                                  (let ((__tmp130941
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128548128549_
                                                            _get-kws-id121777_
                                                            _new-get-kws121787_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130941
                                                          _lift2121426_)))
                                                 (__tmp130938
                                                  (let ((__tmp130939
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128548128549_
                                                            _L121547_
                                                            _new-kw-dispatch121785_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130939
                                                          _bind121427_))))
                                             (declare (not safe))
                                             (_lp121422_
                                              _rest121447_
                                              __tmp130942
                                              __tmp130940
                                              __tmp130938))))
                                       _hd121608121726_
                                       _hd121605121718_
                                       _hd121602121710_
                                       _hd121599121702_
                                       _hd121581121654_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121561121614_ _g121562121617_)))))
                              (let ()
                                (declare (not safe))
                                (_g121561121614_ _g121562121617_)))
                          (let ()
                            (declare (not safe))
                            (_g121561121614_ _g121562121617_)))
                      (let ()
                        (declare (not safe))
                        (_g121561121614_ _g121562121617_)))
                  (let ()
                    (declare (not safe))
                    (_g121561121614_ _g121562121617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121561121614_
                                                     _g121562121617_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121561121614_
                                                 _g121562121617_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121561121614_
                                             _g121562121617_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121561121614_ _g121562121617_)))
                              (let ()
                                (declare (not safe))
                                (_g121561121614_ _g121562121617_)))))
                      (let ()
                        (declare (not safe))
                        (_g121561121614_ _g121562121617_)))))
              (let ()
                (declare (not safe))
                (_g121561121614_ _g121562121617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121561121614_
                                                 _g121562121617_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121561121614_ _g121562121617_)))))
                              (let ()
                                (declare (not safe))
                                (_g121561121614_ _g121562121617_)))))
                      (let ()
                        (declare (not safe))
                        (_g121561121614_ _g121562121617_)))
                  (let ()
                    (declare (not safe))
                    (_g121561121614_ _g121562121617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121561121614_
                                                     _g121562121617_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121561121614_
                                             _g121562121617_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121561121614_ _g121562121617_)))))
                          (let ()
                            (declare (not safe))
                            (_g121561121614_ _g121562121617_)))))
                  (let ()
                    (declare (not safe))
                    (_g121561121614_ _g121562121617_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121560121790_ _L121546_))))
                                         (___kont130390130391_
                                          (lambda (_L121497_ _L121498_)
                                            (let ((__tmp130944
                                                   (let ((__tmp130945
                                                          (let ((__tmp130946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L121497_ '()))))
                    (declare (not safe))
                    (cons _L121498_ __tmp130946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130945
                                                           _bind121427_))))
                                              (declare (not safe))
                                              (_lp121422_
                                               _rest121447_
                                               _lift1121425_
                                               _lift2121426_
                                               __tmp130944)))))
                                     (let ((___match130413130414_
                                            (lambda (_e121457121522_
                                                     _hd121456121525_
                                                     _tl121455121527_
                                                     _e121460121530_
                                                     _hd121459121533_
                                                     _tl121458121535_
                                                     _e121463121538_
                                                     _hd121462121541_
                                                     _tl121461121543_)
                                              (let ((_L121546_
                                                     _hd121462121541_)
                                                    (_L121547_
                                                     _hd121459121533_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L121547_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L121546_)))
                                                    (___kont130388130389_
                                                     _L121546_
                                                     _L121547_)
                                                    (___kont130390130391_
                                                     _hd121462121541_
                                                     _hd121456121525_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130386130387_))
                                           (let ((_e121457121522_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130386130387_))))
                                             (let ((_tl121455121527_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121457121522_)))
                                                   (_hd121456121525_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121457121522_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121456121525_))
                                                   (let ((_e121460121530_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121456121525_))))
                                                     (let ((_tl121458121535_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121460121530_)))
                                                           (_hd121459121533_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121460121530_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121458121535_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121455121527_))
                       (let ((_e121463121538_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121455121527_))))
                         (let ((_tl121461121543_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121463121538_)))
                               (_hd121462121541_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121463121538_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121461121543_))
                               (___match130413130414_
                                _e121457121522_
                                _hd121456121525_
                                _tl121455121527_
                                _e121460121530_
                                _hd121459121533_
                                _tl121458121535_
                                _e121463121538_
                                _hd121462121541_
                                _tl121461121543_)
                               (let ()
                                 (declare (not safe))
                                 (_g121451121476_)))))
                       (let () (declare (not safe)) (_g121451121476_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121455121527_))
                       (let ((_e121471121489_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121455121527_))))
                         (let ((_tl121469121494_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121471121489_)))
                               (_hd121470121492_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121471121489_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121469121494_))
                               (___kont130390130391_
                                _hd121470121492_
                                _hd121456121525_)
                               (let ()
                                 (declare (not safe))
                                 (_g121451121476_)))))
                       (let () (declare (not safe)) (_g121451121476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121455121527_))
                                                       (let ((_e121471121489_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121455121527_))))
                 (let ((_tl121469121494_
                        (let () (declare (not safe)) (##cdr _e121471121489_)))
                       (_hd121470121492_
                        (let () (declare (not safe)) (##car _e121471121489_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121469121494_))
                       (___kont130390130391_ _hd121470121492_ _hd121456121525_)
                       (let () (declare (not safe)) (_g121451121476_)))))
               (let () (declare (not safe)) (_g121451121476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121451121476_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121428121436_))
                             (let ((_hd121433121799_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121428121436_)))
                                   (_tl121434121801_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121428121436_))))
                               (let* ((_hd121804_ _hd121433121799_)
                                      (_rest121806_ _tl121434121801_))
                                 (declare (not safe))
                                 (_K121432121796_ _rest121806_ _hd121804_)))
                             (let ()
                               (declare (not safe))
                               (_else121430121444_))))))))
          (let* ((___stx130430130431_ _stx121248_)
                 (_g121256121282_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130430130431_)))))
            (let ((___kont130432130433_
                   (lambda (_L121342_ _L121343_)
                     (let ((__tmp130948
                            (lambda ()
                              (if (let ((__tmp130975
                                         (let ((__tmp130976
                                                (lambda (_g121371121374_
                                                         _g121372121376_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g121371121374_
                                                          _g121372121376_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp130976
                                                   '()
                                                   _L121343_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?121252_
                                            __tmp130975))
                                  (let ((_g130962_
                                         (let ((__tmp130964
                                                (let ((__tmp130965
                                                       (lambda (_g121378121381_
                                                                _g121379121383_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121378121381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121379121383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130965
                                                          '()
                                                          _L121343_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings121253_
                                            __tmp130964))))
                                    (begin
                                      (let ((_g130963_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130962_)
                                                   (##vector-length _g130962_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130963_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130963_)))
                                      (let ((_lift1121386_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130962_ 0)))
                                            (_lift2121387_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130962_ 1)))
                                            (_hd121388_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130962_ 2))))
                                        (let* ((_expr121390_
                                                (let ((__tmp130966
                                                       (let ((__tmp130967
                                                              (let ((__tmp130968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L121342_ '()))))
                        (declare (not safe))
                        (cons _hd121388_ __tmp130968))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130966
                                                   _stx121248_)))
                                               (_expr121392_
                                                (let ((__tmp130969
                                                       (let ((__tmp130970
                                                              (let ((__tmp130971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121390_ '()))))
                        (declare (not safe))
                        (cons _lift2121387_ __tmp130971))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130969
                                                   _stx121248_)))
                                               (_expr121394_
                                                (let ((__tmp130972
                                                       (let ((__tmp130973
                                                              (let ((__tmp130974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121392_ '()))))
                        (declare (not safe))
                        (cons _lift1121386_ __tmp130974))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130972
                                                   _stx121248_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self121247_
                                             _expr121394_))))))
                                  (let ((_g130949_
                                         (let ((__tmp130951
                                                (let ((__tmp130952
                                                       (lambda (_g121396121399_
                                                                _g121397121401_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121396121399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121397121401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130952
                                                          '()
                                                          _L121343_))))
                                           (declare (not safe))
                                           (_compile-bindings121251_
                                            __tmp130951))))
                                    (begin
                                      (let ((_g130950_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130949_)
                                                   (##vector-length _g130949_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130950_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130950_)))
                                      (let ((_lift1121404_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130949_ 0)))
                                            (_lift2121405_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130949_ 1)))
                                            (_hd121406_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130949_ 2))))
                                        (let* ((_body121408_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self121247_
                                                   _L121342_)))
                                               (_expr121410_
                                                (let ((__tmp130953
                                                       (let ((__tmp130954
                                                              (let ((__tmp130955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body121408_ '()))))
                        (declare (not safe))
                        (cons _hd121406_ __tmp130955))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130953
                                                   _stx121248_)))
                                               (_expr121412_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2121405_))
                                                    _expr121410_
                                                    (let ((__tmp130956
                                                           (let ((__tmp130957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130958
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121410_ '()))))
                            (declare (not safe))
                            (cons _lift2121405_ __tmp130958))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130957))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130956 _stx121248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr121414_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1121404_))
                                                    _expr121412_
                                                    (let ((__tmp130959
                                                           (let ((__tmp130960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130961
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121412_ '()))))
                            (declare (not safe))
                            (cons _lift1121404_ __tmp130961))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130960))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130959 _stx121248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr121414_)))))))
                           (__tmp130947
                            (let ((__obj130647
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130647)
                              __obj130647)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130948
                        gx#current-expander-context
                        __tmp130947))))
                  (___kont130436130437_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self121247_ _stx121248_)))))
              (let ((___match130457130458_
                     (lambda (_e121262121294_
                              _hd121261121297_
                              _tl121260121299_
                              _e121265121302_
                              _hd121264121305_
                              _tl121263121307_
                              ___splice130434130435_
                              _target121266121310_
                              _tl121268121312_)
                       (letrec ((_loop121269121315_
                                 (lambda (_hd121267121318_ _bind121273121320_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd121267121318_))
                                       (let ((_e121270121323_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd121267121318_))))
                                         (let ((_lp-tl121272121328_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121270121323_)))
                                               (_lp-hd121271121326_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121270121323_))))
                                           (let ((__tmp130979
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd121271121326_
                                                          _bind121273121320_))))
                                             (declare (not safe))
                                             (_loop121269121315_
                                              _lp-tl121272121328_
                                              __tmp130979))))
                                       (let ((_bind121274121331_
                                              (reverse _bind121273121320_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl121263121307_))
                                             (let ((_e121277121334_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl121263121307_))))
                                               (let ((_tl121275121339_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e121277121334_)))
                                                     (_hd121276121337_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e121277121334_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl121275121339_))
                                                     (let ((_L121342_
                                                            _hd121276121337_)
                                                           (_L121343_
                                                            _bind121274121331_))
                                                       (if (let ((__tmp130977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130978
                                 (lambda (_g121363121366_ _g121364121368_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g121363121366_ _g121364121368_)))))
                            (declare (not safe))
                            (foldr1 __tmp130978 '() _L121343_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130977))
                   (___kont130432130433_ _L121342_ _L121343_)
                   (___kont130436130437_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130436130437_))))
                                             (___kont130436130437_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop121269121315_ _target121266121310_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130430130431_))
                    (let ((_e121262121294_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130430130431_))))
                      (let ((_tl121260121299_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121262121294_)))
                            (_hd121261121297_
                             (let ()
                               (declare (not safe))
                               (##car _e121262121294_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121260121299_))
                            (let ((_e121265121302_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121260121299_))))
                              (let ((_tl121263121307_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121265121302_)))
                                    (_hd121264121305_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121265121302_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd121264121305_))
                                    (let ((___splice130434130435_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd121264121305_
                                              '0))))
                                      (let ((_tl121268121312_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130434130435_
                                                '1)))
                                            (_target121266121310_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130434130435_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121268121312_))
                                            (___match130457130458_
                                             _e121262121294_
                                             _hd121261121297_
                                             _tl121260121299_
                                             _e121265121302_
                                             _hd121264121305_
                                             _tl121263121307_
                                             ___splice130434130435_
                                             _target121266121310_
                                             _tl121268121312_)
                                            (___kont130436130437_))))
                                    (___kont130436130437_))))
                            (___kont130436130437_))))
                    (___kont130436130437_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self120390_ _stx120391_)
        (letrec* ((_bind-e__128553128554_
                   (lambda (_id121231_ _expr121232_ _compile?121233_)
                     (let ((__tmp130982
                            (let ()
                              (declare (not safe))
                              (cons _id121231_ '())))
                           (__tmp130980
                            (let ((__tmp130981
                                   (if _compile?121233_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120390_
                                          _expr121232_))
                                       _expr121232_)))
                              (declare (not safe))
                              (cons __tmp130981 '()))))
                       (declare (not safe))
                       (cons __tmp130982 __tmp130980))))
                  (_bind-e__0__128555128556_
                   (lambda (_id121238_ _expr121239_)
                     (let ((_compile?121241_ '#t))
                       (declare (not safe))
                       (_bind-e__128553128554_
                        _id121238_
                        _expr121239_
                        _compile?121241_))))
                  (_bind-e120393_
                   (lambda _g130984_
                     (let ((_g130983_
                            (let ()
                              (declare (not safe))
                              (##length _g130984_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130983_ 2))
                              (apply (lambda (_id121238_ _expr121239_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128555128556_
                                          _id121238_
                                          _expr121239_)))
                                     _g130984_))
                             ((let () (declare (not safe)) (##fx= _g130983_ 3))
                              (apply (lambda (_id121243_
                                              _expr121244_
                                              _compile?121245_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128553128554_
                                          _id121243_
                                          _expr121244_
                                          _compile?121245_)))
                                     _g130984_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130984_))))))
                  (_compile-bindings120394_
                   (lambda (_rest120529_)
                     (let _lp120531_ ((_rest120533_ _rest120529_)
                                      (_bind120534_ '()))
                       (let* ((_rest120535120543_ _rest120533_)
                              (_else120537120551_
                               (lambda () (reverse _bind120534_)))
                              (_K120539121218_
                               (lambda (_rest120554_ _hd120555_)
                                 (let* ((___stx130480130481_ _hd120555_)
                                        (_g120560120607_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130480130481_)))))
                                   (let ((___kont130482130483_
                                          (lambda (_L121125_ _L121126_)
                                            (let* ((___stx130460130461_
                                                    _L121125_)
                                                   (_g121141121155_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130460130461_)))))
                                              (let ((___kont130462130463_
                                                     (lambda (_L121203_)
                                                       (let ((__tmp130985
                                                              (let ((__tmp130986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128553128554_
                                _L121126_
                                _L121125_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130986 _bind120534_))))
                 (declare (not safe))
                 (_lp120531_ _rest120554_ __tmp130985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130464130465_
                                                     (lambda (_L121168_)
                                                       (let ((_g130987_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120391_
                         _L121126_
                         _L121168_
                         '#t))))
                 (begin
                   (let ((_g130988_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130987_)
                                (##vector-length _g130987_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130988_ 3)))
                         (error "Context expects 3 values" _g130988_)))
                   (let ((_ids121178_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130987_ 0)))
                         (_impls121179_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130987_ 1)))
                         (_clauses121180_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130987_ 2))))
                     (let* ((_g130989_
                             (for-each gx#core-bind-runtime! _ids121178_))
                            (_xbind121183_
                             (map _bind-e120393_ _ids121178_ _impls121179_))
                            (_expr*121185_
                             (let ((__tmp130991
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121180_)))
                                   (__tmp130990
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130991
                                __tmp130990)))
                            (_bind*121187_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128553128554_
                                _L121126_
                                _expr*121185_
                                '#f))))
                       (let ((__tmp130993
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121126_)))
                             (__tmp130992
                              (map gxc#identifier-symbol _ids121178_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130993
                          '" => "
                          __tmp130992))
                       (let ((__tmp130994
                              (let ((__tmp130995
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind120534_
                                               _xbind121183_))))
                                (declare (not safe))
                                (cons _bind*121187_ __tmp130995))))
                         (declare (not safe))
                         (_lp120531_ _rest120554_ __tmp130994)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130471130472_
                                                       (lambda (_e121146121195_
                                                                _hd121145121198_
                                                                _tl121144121200_)
                                                         (let ((_L121203_
                                                                _tl121144121200_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L121203_))
                       (___kont130462130463_ _L121203_)
                       (___kont130464130465_ _tl121144121200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130460130461_))
                                                      (let ((_e121146121195_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130460130461_))))
                (let ((_tl121144121200_
                       (let () (declare (not safe)) (##cdr _e121146121195_)))
                      (_hd121145121198_
                       (let () (declare (not safe)) (##car _e121146121195_))))
                  (___match130471130472_
                   _e121146121195_
                   _hd121145121198_
                   _tl121144121200_)))
              (let () (declare (not safe)) (_g121141121155_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130484130485_
                                          (lambda (_L120953_ _L120954_)
                                            (let* ((_g120968120998_
                                                    (lambda (_g120969120995_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120969120995_))))
                                                   (_g120967121093_
                                                    (lambda (_g120969121001_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120969121001_))
                                                          (let ((_e120975121003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120969121001_))))
                    (let ((_hd120974121006_
                           (let ()
                             (declare (not safe))
                             (##car _e120975121003_)))
                          (_tl120973121008_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120975121003_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120973121008_))
                          (let ((_e120978121011_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120973121008_))))
                            (let ((_hd120977121014_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120978121011_)))
                                  (_tl120976121016_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120978121011_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120977121014_))
                                  (let ((_e120981121019_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120977121014_))))
                                    (let ((_hd120980121022_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120981121019_)))
                                          (_tl120979121024_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120981121019_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120980121022_))
                                          (let ((_e120984121027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120980121022_))))
                                            (let ((_hd120983121030_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120984121027_)))
                                                  (_tl120982121032_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120984121027_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120983121030_))
                                                  (let ((_e120987121035_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120983121030_))))
                                                    (let ((_hd120986121038_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120987121035_)))
                                                          (_tl120985121040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120987121035_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120985121040_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120982121032_))
                      (let ((_e120990121043_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120982121032_))))
                        (let ((_hd120989121046_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120990121043_)))
                              (_tl120988121048_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120990121043_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120988121048_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120979121024_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120976121016_))
                                      (let ((_e120993121051_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120976121016_))))
                                        (let ((_hd120992121054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120993121051_)))
                                              (_tl120991121056_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120993121051_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120991121056_))
                                              ((lambda (_L121059_
                                                        _L121060_
                                                        _L121061_)
                                                 (let* ((_lambda-id121085_
                                                         (let ((__tmp130997
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120954_)))
                       (__tmp130996 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130997 __tmp130996)))
                (_lambda-id121087_
                 (let ((__tmp130998
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120391_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id121085_ __tmp130998)))
                (_g130999_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id121087_)))
                (_new-case-lambda-expr121090_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L121059_
                    'id:
                    _L121061_
                    'new-id:
                    _lambda-id121087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp131001
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120954_)))
                                                         (__tmp131000
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id121087_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp131001
                                                      '" => "
                                                      __tmp131000))
                                                   (let ((__tmp131004
                                                          (let ((__tmp131005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128553128554_
                            _L120954_
                            _new-case-lambda-expr121090_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp131005 _rest120554_)))
                 (__tmp131002
                  (let ((__tmp131003
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128555128556_
                            _lambda-id121087_
                            _L121060_))))
                    (declare (not safe))
                    (cons __tmp131003 _bind120534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120531_
                                                      __tmp131004
                                                      __tmp131002))))
                                               _hd120992121054_
                                               _hd120989121046_
                                               _hd120986121038_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120968120998_
                                                 _g120969121001_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120968120998_ _g120969121001_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120968120998_ _g120969121001_)))
                              (let ()
                                (declare (not safe))
                                (_g120968120998_ _g120969121001_)))))
                      (let ()
                        (declare (not safe))
                        (_g120968120998_ _g120969121001_)))
                  (let ()
                    (declare (not safe))
                    (_g120968120998_ _g120969121001_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120968120998_
                                                     _g120969121001_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120968120998_
                                             _g120969121001_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120968120998_ _g120969121001_)))))
                          (let ()
                            (declare (not safe))
                            (_g120968120998_ _g120969121001_)))))
                  (let ()
                    (declare (not safe))
                    (_g120968120998_ _g120969121001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120967121093_ _L120953_))))
                                         (___kont130486130487_
                                          (lambda (_L120677_ _L120678_)
                                            (let* ((_g120692120745_
                                                    (lambda (_g120693120742_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120693120742_))))
                                                   (_g120691120921_
                                                    (lambda (_g120693120748_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120693120748_))
                                                          (let ((_e120701120750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120693120748_))))
                    (let ((_hd120700120753_
                           (let ()
                             (declare (not safe))
                             (##car _e120701120750_)))
                          (_tl120699120755_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120701120750_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120699120755_))
                          (let ((_e120704120758_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120699120755_))))
                            (let ((_hd120703120761_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120704120758_)))
                                  (_tl120702120763_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120704120758_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120703120761_))
                                  (let ((_e120707120766_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120703120761_))))
                                    (let ((_hd120706120769_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120707120766_)))
                                          (_tl120705120771_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120707120766_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120706120769_))
                                          (let ((_e120710120774_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120706120769_))))
                                            (let ((_hd120709120777_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120710120774_)))
                                                  (_tl120708120779_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120710120774_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120709120777_))
                                                  (let ((_e120713120782_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120709120777_))))
                                                    (let ((_hd120712120785_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120713120782_)))
                                                          (_tl120711120787_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120713120782_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120711120787_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120708120779_))
                      (let ((_e120716120790_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120708120779_))))
                        (let ((_hd120715120793_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120716120790_)))
                              (_tl120714120795_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120716120790_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120715120793_))
                              (let ((_e120719120798_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120715120793_))))
                                (let ((_hd120718120801_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120719120798_)))
                                      (_tl120717120803_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120719120798_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120717120803_))
                                      (let ((_e120722120806_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120717120803_))))
                                        (let ((_hd120721120809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120722120806_)))
                                              (_tl120720120811_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120722120806_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120721120809_))
                                              (let ((_e120725120814_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120721120809_))))
                                                (let ((_hd120724120817_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120725120814_)))
                                                      (_tl120723120819_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120725120814_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120724120817_))
                                                      (let ((_e120728120822_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120724120817_))))
                (let ((_hd120727120825_
                       (let () (declare (not safe)) (##car _e120728120822_)))
                      (_tl120726120827_
                       (let () (declare (not safe)) (##cdr _e120728120822_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120727120825_))
                      (let ((_e120731120830_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120727120825_))))
                        (let ((_hd120730120833_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120731120830_)))
                              (_tl120729120835_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120731120830_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120729120835_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120726120827_))
                                  (let ((_e120734120838_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120726120827_))))
                                    (let ((_hd120733120841_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120734120838_)))
                                          (_tl120732120843_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120734120838_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120732120843_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120723120819_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120720120811_))
                                                  (let ((_e120737120846_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120720120811_))))
                                                    (let ((_hd120736120849_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120737120846_)))
                                                          (_tl120735120851_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120737120846_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120735120851_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120714120795_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120705120771_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120702120763_))
                              (let ((_e120740120854_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120702120763_))))
                                (let ((_hd120739120857_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120740120854_)))
                                      (_tl120738120859_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120740120854_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120738120859_))
                                      ((lambda (_L120862_
                                                _L120863_
                                                _L120864_
                                                _L120865_
                                                _L120866_)
                                         (let* ((_get-kws-id120906_
                                                 (let ((__tmp131007
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120678_)))
                                                       (__tmp131006
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp131007
                                                    __tmp131006)))
                                                (_get-kws-id120908_
                                                 (let ((__tmp131008
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120391_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120906_
                                                    __tmp131008)))
                                                (_main-id120910_
                                                 (let ((__tmp131010
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120678_)))
                                                       (__tmp131009
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp131010
                                                    __tmp131009)))
                                                (_main-id120912_
                                                 (let ((__tmp131011
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120391_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120910_
                                                    __tmp131011)))
                                                (_g131012_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120908_)))
                                                (_g131013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120912_)))
                                                (_new-kw-dispatch120916_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120862_
                                                    'id:
                                                    _L120866_
                                                    'new-id:
                                                    _get-kws-id120908_)))
                                                (_new-get-kws120918_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120863_
                                                    'id:
                                                    _L120865_
                                                    'new-id:
                                                    _main-id120912_))))
                                           (let ((__tmp131016
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120678_)))
                                                 (__tmp131015
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120908_)))
                                                 (__tmp131014
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120912_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp131016
                                              '" => "
                                              __tmp131015
                                              '" => "
                                              __tmp131014))
                                           (let ((__tmp131017
                                                  (let ((__tmp131022
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128553128554_
                                                            _main-id120912_
                                                            _L120864_
                                                            '#f)))
                                                        (__tmp131018
                                                         (let ((__tmp131021
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__128553128554_
                           _get-kws-id120908_
                           _new-get-kws120918_
                           '#f)))
                       (__tmp131019
                        (let ((__tmp131020
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__128553128554_
                                  _L120678_
                                  _new-kw-dispatch120916_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp131020 _rest120554_))))
                   (declare (not safe))
                   (cons __tmp131021 __tmp131019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp131022
                                                          __tmp131018))))
                                             (declare (not safe))
                                             (_lp120531_
                                              __tmp131017
                                              _bind120534_))))
                                       _hd120739120857_
                                       _hd120736120849_
                                       _hd120733120841_
                                       _hd120730120833_
                                       _hd120712120785_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120692120745_ _g120693120748_)))))
                              (let ()
                                (declare (not safe))
                                (_g120692120745_ _g120693120748_)))
                          (let ()
                            (declare (not safe))
                            (_g120692120745_ _g120693120748_)))
                      (let ()
                        (declare (not safe))
                        (_g120692120745_ _g120693120748_)))
                  (let ()
                    (declare (not safe))
                    (_g120692120745_ _g120693120748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120692120745_
                                                     _g120693120748_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120692120745_
                                                 _g120693120748_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120692120745_
                                             _g120693120748_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120692120745_ _g120693120748_)))
                              (let ()
                                (declare (not safe))
                                (_g120692120745_ _g120693120748_)))))
                      (let ()
                        (declare (not safe))
                        (_g120692120745_ _g120693120748_)))))
              (let ()
                (declare (not safe))
                (_g120692120745_ _g120693120748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120692120745_
                                                 _g120693120748_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120692120745_ _g120693120748_)))))
                              (let ()
                                (declare (not safe))
                                (_g120692120745_ _g120693120748_)))))
                      (let ()
                        (declare (not safe))
                        (_g120692120745_ _g120693120748_)))
                  (let ()
                    (declare (not safe))
                    (_g120692120745_ _g120693120748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120692120745_
                                                     _g120693120748_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120692120745_
                                             _g120693120748_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120692120745_ _g120693120748_)))))
                          (let ()
                            (declare (not safe))
                            (_g120692120745_ _g120693120748_)))))
                  (let ()
                    (declare (not safe))
                    (_g120692120745_ _g120693120748_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120691120921_ _L120677_))))
                                         (___kont130488130489_
                                          (lambda (_L120628_ _L120629_)
                                            (let ((__tmp131023
                                                   (let ((__tmp131024
                                                          (let ((__tmp131025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp131026
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120390_ _L120628_))))
                           (declare (not safe))
                           (cons __tmp131026 '()))))
                    (declare (not safe))
                    (cons _L120629_ __tmp131025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp131024
                                                           _bind120534_))))
                                              (declare (not safe))
                                              (_lp120531_
                                               _rest120554_
                                               __tmp131023)))))
                                     (let* ((___match130555130556_
                                             (lambda (_e120588120653_
                                                      _hd120587120656_
                                                      _tl120586120658_
                                                      _e120591120661_
                                                      _hd120590120664_
                                                      _tl120589120666_
                                                      _e120594120669_
                                                      _hd120593120672_
                                                      _tl120592120674_)
                                               (let ((_L120677_
                                                      _hd120593120672_)
                                                     (_L120678_
                                                      _hd120590120664_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120678_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L120677_)))
                                                     (___kont130486130487_
                                                      _L120677_
                                                      _L120678_)
                                                     (___kont130488130489_
                                                      _hd120593120672_
                                                      _hd120587120656_)))))
                                            (___match130533130534_
                                             (lambda (_e120577120929_
                                                      _hd120576120932_
                                                      _tl120575120934_
                                                      _e120580120937_
                                                      _hd120579120940_
                                                      _tl120578120942_
                                                      _e120583120945_
                                                      _hd120582120948_
                                                      _tl120581120950_)
                                               (let ((_L120953_
                                                      _hd120582120948_)
                                                     (_L120954_
                                                      _hd120579120940_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120954_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120953_)))
                                                     (___kont130484130485_
                                                      _L120953_
                                                      _L120954_)
                                                     (___match130555130556_
                                                      _e120577120929_
                                                      _hd120576120932_
                                                      _tl120575120934_
                                                      _e120580120937_
                                                      _hd120579120940_
                                                      _tl120578120942_
                                                      _e120583120945_
                                                      _hd120582120948_
                                                      _tl120581120950_)))))
                                            (___match130511130512_
                                             (lambda (_e120566121101_
                                                      _hd120565121104_
                                                      _tl120564121106_
                                                      _e120569121109_
                                                      _hd120568121112_
                                                      _tl120567121114_
                                                      _e120572121117_
                                                      _hd120571121120_
                                                      _tl120570121122_)
                                               (let ((_L121125_
                                                      _hd120571121120_)
                                                     (_L121126_
                                                      _hd120568121112_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121126_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121125_)))
                                                     (___kont130482130483_
                                                      _L121125_
                                                      _L121126_)
                                                     (___match130533130534_
                                                      _e120566121101_
                                                      _hd120565121104_
                                                      _tl120564121106_
                                                      _e120569121109_
                                                      _hd120568121112_
                                                      _tl120567121114_
                                                      _e120572121117_
                                                      _hd120571121120_
                                                      _tl120570121122_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130480130481_))
                                           (let ((_e120566121101_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130480130481_))))
                                             (let ((_tl120564121106_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120566121101_)))
                                                   (_hd120565121104_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120566121101_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120565121104_))
                                                   (let ((_e120569121109_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120565121104_))))
                                                     (let ((_tl120567121114_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120569121109_)))
                                                           (_hd120568121112_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120569121109_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120567121114_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120564121106_))
                       (let ((_e120572121117_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120564121106_))))
                         (let ((_tl120570121122_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120572121117_)))
                               (_hd120571121120_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120572121117_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120570121122_))
                               (___match130511130512_
                                _e120566121101_
                                _hd120565121104_
                                _tl120564121106_
                                _e120569121109_
                                _hd120568121112_
                                _tl120567121114_
                                _e120572121117_
                                _hd120571121120_
                                _tl120570121122_)
                               (let ()
                                 (declare (not safe))
                                 (_g120560120607_)))))
                       (let () (declare (not safe)) (_g120560120607_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120564121106_))
                       (let ((_e120602120620_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120564121106_))))
                         (let ((_tl120600120625_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120602120620_)))
                               (_hd120601120623_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120602120620_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120600120625_))
                               (___kont130488130489_
                                _hd120601120623_
                                _hd120565121104_)
                               (let ()
                                 (declare (not safe))
                                 (_g120560120607_)))))
                       (let () (declare (not safe)) (_g120560120607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120564121106_))
                                                       (let ((_e120602120620_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120564121106_))))
                 (let ((_tl120600120625_
                        (let () (declare (not safe)) (##cdr _e120602120620_)))
                       (_hd120601120623_
                        (let () (declare (not safe)) (##car _e120602120620_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120600120625_))
                       (___kont130488130489_ _hd120601120623_ _hd120565121104_)
                       (let () (declare (not safe)) (_g120560120607_)))))
               (let () (declare (not safe)) (_g120560120607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120560120607_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120535120543_))
                             (let ((_hd120540121221_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120535120543_)))
                                   (_tl120541121223_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120535120543_))))
                               (let* ((_hd121226_ _hd120540121221_)
                                      (_rest121228_ _tl120541121223_))
                                 (declare (not safe))
                                 (_K120539121218_ _rest121228_ _hd121226_)))
                             (let ()
                               (declare (not safe))
                               (_else120537120551_))))))))
          (let* ((___stx130572130573_ _stx120391_)
                 (_g120397120424_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130572130573_)))))
            (let ((___kont130574130575_
                   (lambda (_L120484_ _L120485_ _L120486_)
                     (let ((__tmp131028
                            (lambda ()
                              (let ((_hd120523_
                                     (let ((__tmp131029
                                            (let ((__tmp131030
                                                   (lambda (_g120515120518_
                                                            _g120516120520_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g120515120518_
                                                             _g120516120520_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp131030
                                                      '()
                                                      _L120485_))))
                                       (declare (not safe))
                                       (_compile-bindings120394_ __tmp131029)))
                                    (_body120524_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120390_
                                        _L120484_))))
                                (let ((__tmp131031
                                       (let ((__tmp131032
                                              (let ((__tmp131033
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body120524_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd120523_
                                                      __tmp131033))))
                                         (declare (not safe))
                                         (cons _L120486_ __tmp131032))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp131031
                                   _stx120391_)))))
                           (__tmp131027
                            (let ((__obj130648
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130648)
                              __obj130648)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp131028
                        gx#current-expander-context
                        __tmp131027))))
                  (___kont130578130579_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120390_ _stx120391_)))))
              (let ((___match130599130600_
                     (lambda (_e120404120436_
                              _hd120403120439_
                              _tl120402120441_
                              _e120407120444_
                              _hd120406120447_
                              _tl120405120449_
                              ___splice130576130577_
                              _target120408120452_
                              _tl120410120454_)
                       (letrec ((_loop120411120457_
                                 (lambda (_hd120409120460_ _bind120415120462_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120409120460_))
                                       (let ((_e120412120465_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120409120460_))))
                                         (let ((_lp-tl120414120470_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120412120465_)))
                                               (_lp-hd120413120468_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120412120465_))))
                                           (let ((__tmp131036
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120413120468_
                                                          _bind120415120462_))))
                                             (declare (not safe))
                                             (_loop120411120457_
                                              _lp-tl120414120470_
                                              __tmp131036))))
                                       (let ((_bind120416120473_
                                              (reverse _bind120415120462_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120405120449_))
                                             (let ((_e120419120476_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120405120449_))))
                                               (let ((_tl120417120481_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120419120476_)))
                                                     (_hd120418120479_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120419120476_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120417120481_))
                                                     (let ((_L120484_
                                                            _hd120418120479_)
                                                           (_L120485_
                                                            _bind120416120473_)
                                                           (_L120486_
                                                            _hd120403120439_))
                                                       (if (let ((__tmp131034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131035
                                 (lambda (_g120507120510_ _g120508120512_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120507120510_ _g120508120512_)))))
                            (declare (not safe))
                            (foldr1 __tmp131035 '() _L120485_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp131034))
                   (___kont130574130575_ _L120484_ _L120485_ _L120486_)
                   (___kont130578130579_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130578130579_))))
                                             (___kont130578130579_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120411120457_ _target120408120452_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130572130573_))
                    (let ((_e120404120436_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130572130573_))))
                      (let ((_tl120402120441_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120404120436_)))
                            (_hd120403120439_
                             (let ()
                               (declare (not safe))
                               (##car _e120404120436_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120402120441_))
                            (let ((_e120407120444_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120402120441_))))
                              (let ((_tl120405120449_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120407120444_)))
                                    (_hd120406120447_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120407120444_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120406120447_))
                                    (let ((___splice130576130577_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120406120447_
                                              '0))))
                                      (let ((_tl120410120454_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130576130577_
                                                '1)))
                                            (_target120408120452_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130576130577_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120410120454_))
                                            (___match130599130600_
                                             _e120404120436_
                                             _hd120403120439_
                                             _tl120402120441_
                                             _e120407120444_
                                             _hd120406120447_
                                             _tl120405120449_
                                             ___splice130576130577_
                                             _target120408120452_
                                             _tl120410120454_)
                                            (___kont130578130579_))))
                                    (___kont130578130579_))))
                            (___kont130578130579_))))
                    (___kont130578130579_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind120308_)
        (let* ((___stx130602130603_ _bind120308_)
               (_g120311120328_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx130602130603_)))))
          (let ((___kont130604130605_
                 (lambda (_L120364_ _L120365_)
                   (if (let () (declare (not safe)) (gx#identifier? _L120365_))
                       (let ((_$e120381_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L120364_))))
                         (if _$e120381_
                             _$e120381_
                             (let ((_$e120384_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L120364_))))
                               (if _$e120384_
                                   _$e120384_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120364_))))))
                       '#f)))
                (___kont130606130607_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx130602130603_))
                (let ((_e120317120340_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx130602130603_))))
                  (let ((_tl120315120345_
                         (let () (declare (not safe)) (##cdr _e120317120340_)))
                        (_hd120316120343_
                         (let ()
                           (declare (not safe))
                           (##car _e120317120340_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120316120343_))
                        (let ((_e120320120348_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120316120343_))))
                          (let ((_tl120318120353_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120320120348_)))
                                (_hd120319120351_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120320120348_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120318120353_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120315120345_))
                                    (let ((_e120323120356_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120315120345_))))
                                      (let ((_tl120321120361_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120323120356_)))
                                            (_hd120322120359_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120323120356_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120321120361_))
                                            (___kont130604130605_
                                             _hd120322120359_
                                             _hd120319120351_)
                                            (___kont130606130607_))))
                                    (___kont130606130607_))
                                (___kont130606130607_))))
                        (___kont130606130607_))))
                (___kont130606130607_))))))))
