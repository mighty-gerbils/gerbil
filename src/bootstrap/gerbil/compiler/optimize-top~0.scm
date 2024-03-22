(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1711108656)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp130641 (list gxc#::void::t))
            (__tmp130639
             (let ((__tmp130640
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130640 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp130641
         '()
         __tmp130639
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args128535_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args128535_)))
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
      (lambda (_stx128527_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self128530_
                (let ((__obj130622
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj130622))
               (__tmp130642
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128530_ _stx128527_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130642
           gxc#current-compile-method
           _self128530_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp130645 (list gxc#::false::t))
            (__tmp130643
             (let ((__tmp130644
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130644 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp130645
         '()
         __tmp130643
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args128524_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args128524_)))
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
      (lambda (_stx128516_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self128519_
                (let ((__obj130624
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj130624))
               (__tmp130646
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128519_ _stx128516_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130646
           gxc#current-compile-method
           _self128519_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp130649 (list gxc#::void::t))
            (__tmp130647
             (let ((__tmp130648
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130648 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp130649
         '()
         __tmp130647
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args128513_
        (apply make-instance gxc#::collect-type-info::t _$args128513_)))
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
      (lambda (_stx128505_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self128508_
                (let ((__obj130626
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj130626))
               (__tmp130650
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128508_ _stx128505_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130650
           gxc#current-compile-method
           _self128508_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp130653 (list gxc#::false::t))
            (__tmp130651
             (let ((__tmp130652
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130652 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp130653
         '()
         __tmp130651
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args128502_
        (apply make-instance gxc#::basic-expression-type::t _$args128502_)))
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
      (lambda (_stx128494_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self128497_
                (let ((__obj130628
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj130628))
               (__tmp130654
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128497_ _stx128494_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130654
           gxc#current-compile-method
           _self128497_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp130657 (list gxc#::basic-xform::t))
            (__tmp130655
             (let ((__tmp130656
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130656 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp130657
         '()
         __tmp130655
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args128491_
        (apply make-instance gxc#::lift-top-lambdas::t _$args128491_)))
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
      (lambda (_stx128483_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self128486_
                (let ((__obj130630
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj130630))
               (__tmp130658
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128486_ _stx128483_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130658
           gxc#current-compile-method
           _self128486_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self128385_ _stx128386_)
        (let* ((___stx128548128549_ _stx128386_)
               (_g128389128409_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128548128549_)))))
          (let ((___kont128550128551_
                 (lambda (_L128453_ _L128454_)
                   (let ((_sym128472_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128454_))))
                     (if (let ((__tmp130659 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130659 _sym128472_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128472_))
                         (let ((_type128473128475_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L128453_))))
                           (if _type128473128475_
                               (let ((_type128478_ _type128473128475_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym128472_
                                  _type128478_))
                               '#f))))))
                (___kont128552128553_ (lambda () '#!void)))
            (let ((___match128581128582_
                   (lambda (_e128395128421_
                            _hd128394128424_
                            _tl128393128426_
                            _e128398128429_
                            _hd128397128432_
                            _tl128396128434_
                            _e128401128437_
                            _hd128400128440_
                            _tl128399128442_
                            _e128404128445_
                            _hd128403128448_
                            _tl128402128450_)
                     (let ((_L128453_ _hd128403128448_)
                           (_L128454_ _hd128400128440_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128454_))
                           (___kont128550128551_ _L128453_ _L128454_)
                           (___kont128552128553_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128548128549_))
                  (let ((_e128395128421_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128548128549_))))
                    (let ((_tl128393128426_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128395128421_)))
                          (_hd128394128424_
                           (let ()
                             (declare (not safe))
                             (##car _e128395128421_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128393128426_))
                          (let ((_e128398128429_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128393128426_))))
                            (let ((_tl128396128434_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128398128429_)))
                                  (_hd128397128432_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128398128429_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128397128432_))
                                  (let ((_e128401128437_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128397128432_))))
                                    (let ((_tl128399128442_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128401128437_)))
                                          (_hd128400128440_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128401128437_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128399128442_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128396128434_))
                                              (let ((_e128404128445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128396128434_))))
                                                (let ((_tl128402128450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128404128445_)))
                                                      (_hd128403128448_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128404128445_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128402128450_))
                                                      (___match128581128582_
                                                       _e128395128421_
                                                       _hd128394128424_
                                                       _tl128393128426_
                                                       _e128398128429_
                                                       _hd128397128432_
                                                       _tl128396128434_
                                                       _e128401128437_
                                                       _hd128400128440_
                                                       _tl128399128442_
                                                       _e128404128445_
                                                       _hd128403128448_
                                                       _tl128402128450_)
                                                      (___kont128552128553_))))
                                              (___kont128552128553_))
                                          (___kont128552128553_))))
                                  (___kont128552128553_))))
                          (___kont128552128553_))))
                  (___kont128552128553_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self128240_ _stx128241_)
        (let* ((___stx128584128585_ _stx128241_)
               (_g128244128275_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128584128585_)))))
          (let ((___kont128586128587_
                 (lambda (_L128357_ _L128358_)
                   (let ((_sym128374_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128358_))))
                     (if (let ((__tmp130660 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130660 _sym128374_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128374_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym128374_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym128374_))
                             (let ((_type128375128377_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L128357_))))
                               (if _type128375128377_
                                   (let ((_type128380_ _type128375128377_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym128374_
                                      _type128380_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self128240_ _L128357_)))))
                (___kont128588128589_
                 (lambda (_L128304_ _L128305_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self128240_ _L128304_)))))
            (let ((___match128617128618_
                   (lambda (_e128250128325_
                            _hd128249128328_
                            _tl128248128330_
                            _e128253128333_
                            _hd128252128336_
                            _tl128251128338_
                            _e128256128341_
                            _hd128255128344_
                            _tl128254128346_
                            _e128259128349_
                            _hd128258128352_
                            _tl128257128354_)
                     (let ((_L128357_ _hd128258128352_)
                           (_L128358_ _hd128255128344_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128358_))
                           (___kont128586128587_ _L128357_ _L128358_)
                           (___kont128588128589_
                            _hd128258128352_
                            _hd128252128336_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128584128585_))
                  (let ((_e128250128325_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128584128585_))))
                    (let ((_tl128248128330_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128250128325_)))
                          (_hd128249128328_
                           (let ()
                             (declare (not safe))
                             (##car _e128250128325_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128248128330_))
                          (let ((_e128253128333_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128248128330_))))
                            (let ((_tl128251128338_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128253128333_)))
                                  (_hd128252128336_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128253128333_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128252128336_))
                                  (let ((_e128256128341_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128252128336_))))
                                    (let ((_tl128254128346_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128256128341_)))
                                          (_hd128255128344_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128256128341_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128254128346_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128251128338_))
                                              (let ((_e128259128349_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128251128338_))))
                                                (let ((_tl128257128354_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128259128349_)))
                                                      (_hd128258128352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128259128349_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128257128354_))
                                                      (___match128617128618_
                                                       _e128250128325_
                                                       _hd128249128328_
                                                       _tl128248128330_
                                                       _e128253128333_
                                                       _hd128252128336_
                                                       _tl128251128338_
                                                       _e128256128341_
                                                       _hd128255128344_
                                                       _tl128254128346_
                                                       _e128259128349_
                                                       _hd128258128352_
                                                       _tl128257128354_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128244128275_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128244128275_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128251128338_))
                                              (let ((_e128270128296_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128251128338_))))
                                                (let ((_tl128268128301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128270128296_)))
                                                      (_hd128269128299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128270128296_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128268128301_))
                                                      (___kont128588128589_
                                                       _hd128269128299_
                                                       _hd128252128336_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128244128275_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128244128275_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl128251128338_))
                                      (let ((_e128270128296_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl128251128338_))))
                                        (let ((_tl128268128301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e128270128296_)))
                                              (_hd128269128299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e128270128296_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl128268128301_))
                                              (___kont128588128589_
                                               _hd128269128299_
                                               _hd128252128336_)
                                              (let ()
                                                (declare (not safe))
                                                (_g128244128275_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g128244128275_))))))
                          (let () (declare (not safe)) (_g128244128275_)))))
                  (let () (declare (not safe)) (_g128244128275_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self128020_ _stx128021_)
        (letrec ((_collect-e128023_
                  (lambda (_hd128184_ _expr128185_)
                    (let* ((___stx128640128641_ _hd128184_)
                           (_g128188128198_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx128640128641_)))))
                      (let ((___kont128642128643_
                             (lambda (_L128218_)
                               (let ((_sym128229_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L128218_))))
                                 (if (let ((__tmp130661
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp130661 _sym128229_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym128229_))
                                     (let ((_type128230128232_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr128185_))))
                                       (if _type128230128232_
                                           (let ((_type128235_
                                                  _type128230128232_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym128229_
                                              _type128235_
                                              '#t))
                                           '#f))))))
                            (___kont128644128645_ (lambda () '#!void)))
                        (let ((___match128653128654_
                               (lambda (_e128193128210_
                                        _hd128192128213_
                                        _tl128191128215_)
                                 (let ((_L128218_ _hd128192128213_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L128218_))
                                       (___kont128642128643_ _L128218_)
                                       (___kont128644128645_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx128640128641_))
                              (let ((_e128193128210_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx128640128641_))))
                                (let ((_tl128191128215_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128193128210_)))
                                      (_hd128192128213_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128193128210_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl128191128215_))
                                      (___match128653128654_
                                       _e128193128210_
                                       _hd128192128213_
                                       _tl128191128215_)
                                      (___kont128644128645_))))
                              (___kont128644128645_))))))))
          (let* ((_g128025128060_
                  (lambda (_g128026128057_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g128026128057_))))
                 (_g128024128181_
                  (lambda (_g128026128063_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g128026128063_))
                        (let ((_e128032128065_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g128026128063_))))
                          (let ((_hd128031128068_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128032128065_)))
                                (_tl128030128070_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128032128065_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128030128070_))
                                (let ((_e128035128073_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128030128070_))))
                                  (let ((_hd128034128076_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128035128073_)))
                                        (_tl128033128078_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128035128073_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd128034128076_))
                                        (let ((_g130662_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd128034128076_
                                                  '0))))
                                          (begin
                                            (let ((_g130663_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g130662_)
                                                         (##vector-length
                                                          _g130662_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g130663_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g130663_)))
                                            (let ((_target128036128081_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130662_
                                                      0)))
                                                  (_tl128038128083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130662_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl128038128083_))
                                                  (letrec ((_loop128039128086_
                                                            (lambda (_hd128037128089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr128043128091_
                             _hd128044128093_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd128037128089_))
                          (let ((_e128040128096_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd128037128089_))))
                            (let ((_lp-hd128041128099_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128040128096_)))
                                  (_lp-tl128042128101_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128040128096_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd128041128099_))
                                  (let ((_e128049128104_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd128041128099_))))
                                    (let ((_hd128048128107_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128049128104_)))
                                          (_tl128047128109_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128049128104_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl128047128109_))
                                          (let ((_e128052128112_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl128047128109_))))
                                            (let ((_hd128051128115_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128052128112_)))
                                                  (_tl128050128117_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128052128112_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl128050128117_))
                                                  (let ((__tmp130668
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd128051128115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr128043128091_)))
                (__tmp130667
                 (let ()
                   (declare (not safe))
                   (cons _hd128048128107_ _hd128044128093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop128039128086_
                                                     _lp-tl128042128101_
                                                     __tmp130668
                                                     __tmp130667))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g128025128060_
                                                     _g128026128063_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g128025128060_
                                             _g128026128063_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g128025128060_ _g128026128063_)))))
                          (let ((_expr128045128120_
                                 (reverse _expr128043128091_))
                                (_hd128046128122_ (reverse _hd128044128093_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128033128078_))
                                (let ((_e128055128125_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128033128078_))))
                                  (let ((_hd128054128128_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128055128125_)))
                                        (_tl128053128130_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128055128125_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128053128130_))
                                        ((lambda (_L128133_
                                                  _L128134_
                                                  _L128135_)
                                           (for-each
                                            _collect-e128023_
                                            (let ((__tmp130664
                                                   (lambda (_g128155128158_
                                                            _g128156128160_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128155128158_
                                                             _g128156128160_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130664
                                                      '()
                                                      _L128135_))
                                            (let ((__tmp130665
                                                   (lambda (_g128162128165_
                                                            _g128163128167_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128162128165_
                                                             _g128163128167_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130665
                                                      '()
                                                      _L128134_)))
                                           (for-each
                                            (lambda (_g128169128171_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self128020_
                                                 _g128169128171_)))
                                            (let ((__tmp130666
                                                   (lambda (_g128173128176_
                                                            _g128174128178_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128173128176_
                                                             _g128174128178_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130666
                                                      '()
                                                      _L128134_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self128020_
                                              _L128133_)))
                                         _hd128054128128_
                                         _expr128045128120_
                                         _hd128046128122_)
                                        (let ()
                                          (declare (not safe))
                                          (_g128025128060_ _g128026128063_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g128025128060_ _g128026128063_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop128039128086_
                                                       _target128036128081_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g128025128060_
                                                     _g128026128063_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g128025128060_ _g128026128063_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g128025128060_ _g128026128063_)))))
                        (let ()
                          (declare (not safe))
                          (_g128025128060_ _g128026128063_))))))
            (declare (not safe))
            (_g128024128181_ _stx128021_)))))
    (define gxc#collect-type-call%
      (lambda (_self127507_ _stx127508_)
        (let* ((___stx128656128657_ _stx127508_)
               (_g127512127627_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128656128657_)))))
          (let ((___kont128658128659_
                 (lambda (_L127970_ _L127971_ _L127972_ _L127973_ _L127974_)
                   (let ((__tmp130672
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127973_)))
                         (__tmp130671
                          (let () (declare (not safe)) (gx#stx-e _L127972_)))
                         (__tmp130670
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127971_)))
                         (__tmp130669
                          (let () (declare (not safe)) (gx#stx-e _L127970_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130672
                      __tmp130671
                      __tmp130670
                      __tmp130669))))
                (___kont128660128661_
                 (lambda (_L127798_ _L127799_ _L127800_ _L127801_)
                   (let ((__tmp130675
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127800_)))
                         (__tmp130674
                          (let () (declare (not safe)) (gx#stx-e _L127799_)))
                         (__tmp130673
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127798_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130675
                      __tmp130674
                      __tmp130673
                      '#f))))
                (___kont128662128663_
                 (lambda (_L127664_)
                   (for-each
                    (lambda (_g127677127679_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self127507_ _g127677127679_)))
                    (let ((__tmp130676
                           (lambda (_g127681127684_ _g127682127686_)
                             (let ()
                               (declare (not safe))
                               (cons _g127681127684_ _g127682127686_)))))
                      (declare (not safe))
                      (foldr1 __tmp130676 '() _L127664_))))))
            (let* ((___match128913128914_
                    (lambda (_e127613127632_
                             _hd127612127635_
                             _tl127611127637_
                             ___splice128664128665_
                             _target127614127640_
                             _tl127616127642_)
                      (letrec ((_loop127617127645_
                                (lambda (_hd127615127648_ _expr127621127650_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd127615127648_))
                                      (let ((_e127618127653_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd127615127648_))))
                                        (let ((_lp-tl127620127658_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127618127653_)))
                                              (_lp-hd127619127656_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127618127653_))))
                                          (let ((__tmp130677
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd127619127656_
                                                         _expr127621127650_))))
                                            (declare (not safe))
                                            (_loop127617127645_
                                             _lp-tl127620127658_
                                             __tmp130677))))
                                      (let ((_expr127622127661_
                                             (reverse _expr127621127650_)))
                                        (___kont128662128663_
                                         _expr127622127661_))))))
                        (let ()
                          (declare (not safe))
                          (_loop127617127645_ _target127614127640_ '())))))
                   (___match128793128794_
                    (lambda (_e127521127842_
                             _hd127520127845_
                             _tl127519127847_
                             _e127524127850_
                             _hd127523127853_
                             _tl127522127855_
                             _e127527127858_
                             _hd127526127861_
                             _tl127525127863_
                             _e127530127866_
                             _hd127529127869_
                             _tl127528127871_
                             _e127533127874_
                             _hd127532127877_
                             _tl127531127879_
                             _e127536127882_
                             _hd127535127885_
                             _tl127534127887_
                             _e127539127890_
                             _hd127538127893_
                             _tl127537127895_
                             _e127542127898_
                             _hd127541127901_
                             _tl127540127903_
                             _e127545127906_
                             _hd127544127909_
                             _tl127543127911_
                             _e127548127914_
                             _hd127547127917_
                             _tl127546127919_
                             _e127551127922_
                             _hd127550127925_
                             _tl127549127927_
                             _e127554127930_
                             _hd127553127933_
                             _tl127552127935_
                             _e127557127938_
                             _hd127556127941_
                             _tl127555127943_
                             _e127560127946_
                             _hd127559127949_
                             _tl127558127951_
                             _e127563127954_
                             _hd127562127957_
                             _tl127561127959_
                             _e127566127962_
                             _hd127565127965_
                             _tl127564127967_)
                      (let ((_L127970_ _hd127565127965_)
                            (_L127971_ _hd127556127941_)
                            (_L127972_ _hd127547127917_)
                            (_L127973_ _hd127538127893_)
                            (_L127974_ _hd127529127869_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L127974_
                               'bind-method!))
                            (___kont128658128659_
                             _L127970_
                             _L127971_
                             _L127972_
                             _L127973_
                             _L127974_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl127519127847_))
                                (let ((___splice128664128665_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl127519127847_
                                          '0))))
                                  (let ((_tl127616127642_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128664128665_
                                            '1)))
                                        (_target127614127640_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128664128665_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127616127642_))
                                        (___match128913128914_
                                         _e127521127842_
                                         _hd127520127845_
                                         _tl127519127847_
                                         ___splice128664128665_
                                         _target127614127640_
                                         _tl127616127642_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127512127627_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127512127627_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128656128657_))
                  (let ((_e127521127842_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128656128657_))))
                    (let ((_tl127519127847_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127521127842_)))
                          (_hd127520127845_
                           (let ()
                             (declare (not safe))
                             (##car _e127521127842_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127519127847_))
                          (let ((_e127524127850_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127519127847_))))
                            (let ((_tl127522127855_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127524127850_)))
                                  (_hd127523127853_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127524127850_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127523127853_))
                                  (let ((_e127527127858_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127523127853_))))
                                    (let ((_tl127525127863_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127527127858_)))
                                          (_hd127526127861_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127527127858_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd127526127861_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd127526127861_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127525127863_))
                                                  (let ((_e127530127866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127525127863_))))
                                                    (let ((_tl127528127871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127530127866_)))
                                                          (_hd127529127869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127530127866_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127528127871_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl127522127855_))
                      (let ((_e127533127874_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127522127855_))))
                        (let ((_tl127531127879_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127533127874_)))
                              (_hd127532127877_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127533127874_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd127532127877_))
                              (let ((_e127536127882_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd127532127877_))))
                                (let ((_tl127534127887_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127536127882_)))
                                      (_hd127535127885_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127536127882_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd127535127885_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd127535127885_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127534127887_))
                                              (let ((_e127539127890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127534127887_))))
                                                (let ((_tl127537127895_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127539127890_)))
                                                      (_hd127538127893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127539127890_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127537127895_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl127531127879_))
                                                          (let ((_e127542127898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl127531127879_))))
                    (let ((_tl127540127903_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127542127898_)))
                          (_hd127541127901_
                           (let ()
                             (declare (not safe))
                             (##car _e127542127898_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127541127901_))
                          (let ((_e127545127906_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127541127901_))))
                            (let ((_tl127543127911_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127545127906_)))
                                  (_hd127544127909_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127545127906_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd127544127909_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd127544127909_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127543127911_))
                                          (let ((_e127548127914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127543127911_))))
                                            (let ((_tl127546127919_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127548127914_)))
                                                  (_hd127547127917_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127548127914_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127546127919_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127540127903_))
                                                      (let ((_e127551127922_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127540127903_))))
                (let ((_tl127549127927_
                       (let () (declare (not safe)) (##cdr _e127551127922_)))
                      (_hd127550127925_
                       (let () (declare (not safe)) (##car _e127551127922_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd127550127925_))
                      (let ((_e127554127930_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd127550127925_))))
                        (let ((_tl127552127935_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127554127930_)))
                              (_hd127553127933_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127554127930_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd127553127933_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd127553127933_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127552127935_))
                                      (let ((_e127557127938_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127552127935_))))
                                        (let ((_tl127555127943_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127557127938_)))
                                              (_hd127556127941_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127557127938_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127555127943_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127549127927_))
                                                  (let ((_e127560127946_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127549127927_))))
                                                    (let ((_tl127558127951_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127560127946_)))
                                                          (_hd127559127949_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127560127946_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd127559127949_))
                                                          (let ((_e127563127954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd127559127949_))))
                    (let ((_tl127561127959_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127563127954_)))
                          (_hd127562127957_
                           (let ()
                             (declare (not safe))
                             (##car _e127563127954_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd127562127957_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd127562127957_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl127561127959_))
                                  (let ((_e127566127962_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl127561127959_))))
                                    (let ((_tl127564127967_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127566127962_)))
                                          (_hd127565127965_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127566127962_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127564127967_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127558127951_))
                                              (___match128793128794_
                                               _e127521127842_
                                               _hd127520127845_
                                               _tl127519127847_
                                               _e127524127850_
                                               _hd127523127853_
                                               _tl127522127855_
                                               _e127527127858_
                                               _hd127526127861_
                                               _tl127525127863_
                                               _e127530127866_
                                               _hd127529127869_
                                               _tl127528127871_
                                               _e127533127874_
                                               _hd127532127877_
                                               _tl127531127879_
                                               _e127536127882_
                                               _hd127535127885_
                                               _tl127534127887_
                                               _e127539127890_
                                               _hd127538127893_
                                               _tl127537127895_
                                               _e127542127898_
                                               _hd127541127901_
                                               _tl127540127903_
                                               _e127545127906_
                                               _hd127544127909_
                                               _tl127543127911_
                                               _e127548127914_
                                               _hd127547127917_
                                               _tl127546127919_
                                               _e127551127922_
                                               _hd127550127925_
                                               _tl127549127927_
                                               _e127554127930_
                                               _hd127553127933_
                                               _tl127552127935_
                                               _e127557127938_
                                               _hd127556127941_
                                               _tl127555127943_
                                               _e127560127946_
                                               _hd127559127949_
                                               _tl127558127951_
                                               _e127563127954_
                                               _hd127562127957_
                                               _tl127561127959_
                                               _e127566127962_
                                               _hd127565127965_
                                               _tl127564127967_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127519127847_))
                                                  (let ((___splice128664128665_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127519127847_
                                                            '0))))
                                                    (let ((_tl127616127642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128664128665_
                                                              '1)))
                                                          (_target127614127640_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128664128665_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127616127642_))
                                                          (___match128913128914_
                                                           _e127521127842_
                                                           _hd127520127845_
                                                           _tl127519127847_
                                                           ___splice128664128665_
                                                           _target127614127640_
                                                           _tl127616127642_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127512127627_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127512127627_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127519127847_))
                                              (let ((___splice128664128665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127519127847_
                                                        '0))))
                                                (let ((_tl127616127642_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128664128665_
                                                          '1)))
                                                      (_target127614127640_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128664128665_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127616127642_))
                                                      (___match128913128914_
                                                       _e127521127842_
                                                       _hd127520127845_
                                                       _tl127519127847_
                                                       ___splice128664128665_
                                                       _target127614127640_
                                                       _tl127616127642_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127512127627_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127512127627_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127519127847_))
                                      (let ((___splice128664128665_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127519127847_
                                                '0))))
                                        (let ((_tl127616127642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128664128665_
                                                  '1)))
                                              (_target127614127640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128664128665_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127616127642_))
                                              (___match128913128914_
                                               _e127521127842_
                                               _hd127520127845_
                                               _tl127519127847_
                                               ___splice128664128665_
                                               _target127614127640_
                                               _tl127616127642_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127512127627_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127512127627_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127519127847_))
                                  (let ((___splice128664128665_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127519127847_
                                            '0))))
                                    (let ((_tl127616127642_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128664128665_
                                              '1)))
                                          (_target127614127640_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128664128665_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127616127642_))
                                          (___match128913128914_
                                           _e127521127842_
                                           _hd127520127845_
                                           _tl127519127847_
                                           ___splice128664128665_
                                           _target127614127640_
                                           _tl127616127642_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127512127627_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127512127627_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127519127847_))
                              (let ((___splice128664128665_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127519127847_
                                        '0))))
                                (let ((_tl127616127642_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128664128665_
                                          '1)))
                                      (_target127614127640_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128664128665_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127616127642_))
                                      (___match128913128914_
                                       _e127521127842_
                                       _hd127520127845_
                                       _tl127519127847_
                                       ___splice128664128665_
                                       _target127614127640_
                                       _tl127616127642_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127512127627_)))))
                              (let ()
                                (declare (not safe))
                                (_g127512127627_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127519127847_))
                      (let ((___splice128664128665_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127519127847_ '0))))
                        (let ((_tl127616127642_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128664128665_ '1)))
                              (_target127614127640_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128664128665_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127616127642_))
                              (___match128913128914_
                               _e127521127842_
                               _hd127520127845_
                               _tl127519127847_
                               ___splice128664128665_
                               _target127614127640_
                               _tl127616127642_)
                              (let ()
                                (declare (not safe))
                                (_g127512127627_)))))
                      (let () (declare (not safe)) (_g127512127627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127549127927_))
                                                      (if (let ((__tmp130678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp130678 'bind-method!))
                  (let ((_L127798_ _hd127556127941_)
                        (_L127799_ _hd127547127917_)
                        (_L127800_ _hd127538127893_)
                        (_L127801_ _hd127529127869_))
                    (___kont128660128661_
                     _L127798_
                     _L127799_
                     _L127800_
                     _L127801_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127519127847_))
                      (let ((___splice128664128665_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127519127847_ '0))))
                        (let ((_tl127616127642_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128664128665_ '1)))
                              (_target127614127640_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128664128665_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127616127642_))
                              (___match128913128914_
                               _e127521127842_
                               _hd127520127845_
                               _tl127519127847_
                               ___splice128664128665_
                               _target127614127640_
                               _tl127616127642_)
                              (let ()
                                (declare (not safe))
                                (_g127512127627_)))))
                      (let () (declare (not safe)) (_g127512127627_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127519127847_))
                  (let ((___splice128664128665_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127519127847_ '0))))
                    (let ((_tl127616127642_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128664128665_ '1)))
                          (_target127614127640_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128664128665_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127616127642_))
                          (___match128913128914_
                           _e127521127842_
                           _hd127520127845_
                           _tl127519127847_
                           ___splice128664128665_
                           _target127614127640_
                           _tl127616127642_)
                          (let () (declare (not safe)) (_g127512127627_)))))
                  (let () (declare (not safe)) (_g127512127627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127519127847_))
                                                  (let ((___splice128664128665_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127519127847_
                                                            '0))))
                                                    (let ((_tl127616127642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128664128665_
                                                              '1)))
                                                          (_target127614127640_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128664128665_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127616127642_))
                                                          (___match128913128914_
                                                           _e127521127842_
                                                           _hd127520127845_
                                                           _tl127519127847_
                                                           ___splice128664128665_
                                                           _target127614127640_
                                                           _tl127616127642_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127512127627_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127512127627_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127519127847_))
                                          (let ((___splice128664128665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127519127847_
                                                    '0))))
                                            (let ((_tl127616127642_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128664128665_
                                                      '1)))
                                                  (_target127614127640_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128664128665_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127616127642_))
                                                  (___match128913128914_
                                                   _e127521127842_
                                                   _hd127520127845_
                                                   _tl127519127847_
                                                   ___splice128664128665_
                                                   _target127614127640_
                                                   _tl127616127642_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127512127627_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127512127627_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127519127847_))
                                      (let ((___splice128664128665_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127519127847_
                                                '0))))
                                        (let ((_tl127616127642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128664128665_
                                                  '1)))
                                              (_target127614127640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128664128665_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127616127642_))
                                              (___match128913128914_
                                               _e127521127842_
                                               _hd127520127845_
                                               _tl127519127847_
                                               ___splice128664128665_
                                               _target127614127640_
                                               _tl127616127642_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127512127627_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127512127627_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127519127847_))
                                  (let ((___splice128664128665_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127519127847_
                                            '0))))
                                    (let ((_tl127616127642_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128664128665_
                                              '1)))
                                          (_target127614127640_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128664128665_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127616127642_))
                                          (___match128913128914_
                                           _e127521127842_
                                           _hd127520127845_
                                           _tl127519127847_
                                           ___splice128664128665_
                                           _target127614127640_
                                           _tl127616127642_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127512127627_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127512127627_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127519127847_))
                          (let ((___splice128664128665_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127519127847_
                                    '0))))
                            (let ((_tl127616127642_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128664128665_ '1)))
                                  (_target127614127640_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128664128665_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127616127642_))
                                  (___match128913128914_
                                   _e127521127842_
                                   _hd127520127845_
                                   _tl127519127847_
                                   ___splice128664128665_
                                   _target127614127640_
                                   _tl127616127642_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127512127627_)))))
                          (let () (declare (not safe)) (_g127512127627_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127519127847_))
                  (let ((___splice128664128665_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127519127847_ '0))))
                    (let ((_tl127616127642_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128664128665_ '1)))
                          (_target127614127640_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128664128665_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127616127642_))
                          (___match128913128914_
                           _e127521127842_
                           _hd127520127845_
                           _tl127519127847_
                           ___splice128664128665_
                           _target127614127640_
                           _tl127616127642_)
                          (let () (declare (not safe)) (_g127512127627_)))))
                  (let () (declare (not safe)) (_g127512127627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127519127847_))
                                                      (let ((___splice128664128665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127519127847_ '0))))
                (let ((_tl127616127642_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128664128665_ '1)))
                      (_target127614127640_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128664128665_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127616127642_))
                      (___match128913128914_
                       _e127521127842_
                       _hd127520127845_
                       _tl127519127847_
                       ___splice128664128665_
                       _target127614127640_
                       _tl127616127642_)
                      (let () (declare (not safe)) (_g127512127627_)))))
              (let () (declare (not safe)) (_g127512127627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127519127847_))
                                              (let ((___splice128664128665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127519127847_
                                                        '0))))
                                                (let ((_tl127616127642_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128664128665_
                                                          '1)))
                                                      (_target127614127640_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128664128665_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127616127642_))
                                                      (___match128913128914_
                                                       _e127521127842_
                                                       _hd127520127845_
                                                       _tl127519127847_
                                                       ___splice128664128665_
                                                       _target127614127640_
                                                       _tl127616127642_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127512127627_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127512127627_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127519127847_))
                                          (let ((___splice128664128665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127519127847_
                                                    '0))))
                                            (let ((_tl127616127642_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128664128665_
                                                      '1)))
                                                  (_target127614127640_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128664128665_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127616127642_))
                                                  (___match128913128914_
                                                   _e127521127842_
                                                   _hd127520127845_
                                                   _tl127519127847_
                                                   ___splice128664128665_
                                                   _target127614127640_
                                                   _tl127616127642_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127512127627_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127512127627_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127519127847_))
                                      (let ((___splice128664128665_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127519127847_
                                                '0))))
                                        (let ((_tl127616127642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128664128665_
                                                  '1)))
                                              (_target127614127640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128664128665_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127616127642_))
                                              (___match128913128914_
                                               _e127521127842_
                                               _hd127520127845_
                                               _tl127519127847_
                                               ___splice128664128665_
                                               _target127614127640_
                                               _tl127616127642_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127512127627_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127512127627_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127519127847_))
                              (let ((___splice128664128665_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127519127847_
                                        '0))))
                                (let ((_tl127616127642_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128664128665_
                                          '1)))
                                      (_target127614127640_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128664128665_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127616127642_))
                                      (___match128913128914_
                                       _e127521127842_
                                       _hd127520127845_
                                       _tl127519127847_
                                       ___splice128664128665_
                                       _target127614127640_
                                       _tl127616127642_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127512127627_)))))
                              (let ()
                                (declare (not safe))
                                (_g127512127627_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127519127847_))
                      (let ((___splice128664128665_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127519127847_ '0))))
                        (let ((_tl127616127642_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128664128665_ '1)))
                              (_target127614127640_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128664128665_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127616127642_))
                              (___match128913128914_
                               _e127521127842_
                               _hd127520127845_
                               _tl127519127847_
                               ___splice128664128665_
                               _target127614127640_
                               _tl127616127642_)
                              (let ()
                                (declare (not safe))
                                (_g127512127627_)))))
                      (let () (declare (not safe)) (_g127512127627_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127519127847_))
                  (let ((___splice128664128665_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127519127847_ '0))))
                    (let ((_tl127616127642_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128664128665_ '1)))
                          (_target127614127640_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128664128665_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127616127642_))
                          (___match128913128914_
                           _e127521127842_
                           _hd127520127845_
                           _tl127519127847_
                           ___splice128664128665_
                           _target127614127640_
                           _tl127616127642_)
                          (let () (declare (not safe)) (_g127512127627_)))))
                  (let () (declare (not safe)) (_g127512127627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127519127847_))
                                                  (let ((___splice128664128665_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127519127847_
                                                            '0))))
                                                    (let ((_tl127616127642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128664128665_
                                                              '1)))
                                                          (_target127614127640_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128664128665_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127616127642_))
                                                          (___match128913128914_
                                                           _e127521127842_
                                                           _hd127520127845_
                                                           _tl127519127847_
                                                           ___splice128664128665_
                                                           _target127614127640_
                                                           _tl127616127642_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127512127627_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127512127627_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127519127847_))
                                              (let ((___splice128664128665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127519127847_
                                                        '0))))
                                                (let ((_tl127616127642_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128664128665_
                                                          '1)))
                                                      (_target127614127640_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128664128665_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127616127642_))
                                                      (___match128913128914_
                                                       _e127521127842_
                                                       _hd127520127845_
                                                       _tl127519127847_
                                                       ___splice128664128665_
                                                       _target127614127640_
                                                       _tl127616127642_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127512127627_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127512127627_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127519127847_))
                                          (let ((___splice128664128665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127519127847_
                                                    '0))))
                                            (let ((_tl127616127642_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128664128665_
                                                      '1)))
                                                  (_target127614127640_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128664128665_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127616127642_))
                                                  (___match128913128914_
                                                   _e127521127842_
                                                   _hd127520127845_
                                                   _tl127519127847_
                                                   ___splice128664128665_
                                                   _target127614127640_
                                                   _tl127616127642_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127512127627_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127512127627_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127519127847_))
                                  (let ((___splice128664128665_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127519127847_
                                            '0))))
                                    (let ((_tl127616127642_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128664128665_
                                              '1)))
                                          (_target127614127640_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128664128665_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127616127642_))
                                          (___match128913128914_
                                           _e127521127842_
                                           _hd127520127845_
                                           _tl127519127847_
                                           ___splice128664128665_
                                           _target127614127640_
                                           _tl127616127642_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127512127627_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127512127627_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127519127847_))
                          (let ((___splice128664128665_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127519127847_
                                    '0))))
                            (let ((_tl127616127642_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128664128665_ '1)))
                                  (_target127614127640_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128664128665_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127616127642_))
                                  (___match128913128914_
                                   _e127521127842_
                                   _hd127520127845_
                                   _tl127519127847_
                                   ___splice128664128665_
                                   _target127614127640_
                                   _tl127616127642_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127512127627_)))))
                          (let () (declare (not safe)) (_g127512127627_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127519127847_))
                      (let ((___splice128664128665_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127519127847_ '0))))
                        (let ((_tl127616127642_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128664128665_ '1)))
                              (_target127614127640_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128664128665_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127616127642_))
                              (___match128913128914_
                               _e127521127842_
                               _hd127520127845_
                               _tl127519127847_
                               ___splice128664128665_
                               _target127614127640_
                               _tl127616127642_)
                              (let ()
                                (declare (not safe))
                                (_g127512127627_)))))
                      (let () (declare (not safe)) (_g127512127627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127519127847_))
                                                      (let ((___splice128664128665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127519127847_ '0))))
                (let ((_tl127616127642_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128664128665_ '1)))
                      (_target127614127640_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128664128665_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127616127642_))
                      (___match128913128914_
                       _e127521127842_
                       _hd127520127845_
                       _tl127519127847_
                       ___splice128664128665_
                       _target127614127640_
                       _tl127616127642_)
                      (let () (declare (not safe)) (_g127512127627_)))))
              (let () (declare (not safe)) (_g127512127627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127519127847_))
                                                  (let ((___splice128664128665_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127519127847_
                                                            '0))))
                                                    (let ((_tl127616127642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128664128665_
                                                              '1)))
                                                          (_target127614127640_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128664128665_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127616127642_))
                                                          (___match128913128914_
                                                           _e127521127842_
                                                           _hd127520127845_
                                                           _tl127519127847_
                                                           ___splice128664128665_
                                                           _target127614127640_
                                                           _tl127616127642_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127512127627_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127512127627_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127519127847_))
                                              (let ((___splice128664128665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127519127847_
                                                        '0))))
                                                (let ((_tl127616127642_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128664128665_
                                                          '1)))
                                                      (_target127614127640_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128664128665_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127616127642_))
                                                      (___match128913128914_
                                                       _e127521127842_
                                                       _hd127520127845_
                                                       _tl127519127847_
                                                       ___splice128664128665_
                                                       _target127614127640_
                                                       _tl127616127642_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127512127627_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127512127627_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127519127847_))
                                      (let ((___splice128664128665_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127519127847_
                                                '0))))
                                        (let ((_tl127616127642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128664128665_
                                                  '1)))
                                              (_target127614127640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128664128665_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127616127642_))
                                              (___match128913128914_
                                               _e127521127842_
                                               _hd127520127845_
                                               _tl127519127847_
                                               ___splice128664128665_
                                               _target127614127640_
                                               _tl127616127642_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127512127627_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127512127627_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127519127847_))
                              (let ((___splice128664128665_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127519127847_
                                        '0))))
                                (let ((_tl127616127642_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128664128665_
                                          '1)))
                                      (_target127614127640_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128664128665_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127616127642_))
                                      (___match128913128914_
                                       _e127521127842_
                                       _hd127520127845_
                                       _tl127519127847_
                                       ___splice128664128665_
                                       _target127614127640_
                                       _tl127616127642_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127512127627_)))))
                              (let ()
                                (declare (not safe))
                                (_g127512127627_))))))
                  (let () (declare (not safe)) (_g127512127627_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self127446_ _stx127447_)
        (let* ((___stx128916128917_ _stx127447_)
               (_g127450127463_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128916128917_)))))
          (let ((___kont128918128919_
                 (lambda (_L127491_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127446_ _L127491_))))
                (___kont128920128921_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128916128917_))
                (let ((_e127455127475_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128916128917_))))
                  (let ((_tl127453127480_
                         (let () (declare (not safe)) (##cdr _e127455127475_)))
                        (_hd127454127478_
                         (let ()
                           (declare (not safe))
                           (##car _e127455127475_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl127453127480_))
                        (let ((_e127458127483_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl127453127480_))))
                          (let ((_tl127456127488_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127458127483_)))
                                (_hd127457127486_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127458127483_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl127456127488_))
                                (___kont128918128919_ _hd127457127486_)
                                (___kont128920128921_))))
                        (___kont128920128921_))))
                (___kont128920128921_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self127325_ _stx127326_)
        (let* ((_g127328127345_
                (lambda (_g127329127342_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127329127342_))))
               (_g127327127443_
                (lambda (_g127329127348_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127329127348_))
                      (let ((_e127334127350_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127329127348_))))
                        (let ((_hd127333127353_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127334127350_)))
                              (_tl127332127355_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127334127350_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127332127355_))
                              (let ((_e127337127358_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127332127355_))))
                                (let ((_hd127336127361_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127337127358_)))
                                      (_tl127335127363_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127337127358_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127335127363_))
                                      (let ((_e127340127366_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127335127363_))))
                                        (let ((_hd127339127369_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127340127366_)))
                                              (_tl127338127371_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127340127366_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127338127371_))
                                              ((lambda (_L127374_ _L127375_)
                                                 (let* ((___stx128938128939_
                                                         _L127375_)
                                                        (_g127391127402_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx128938128939_)))))
                                                   (let ((___kont128940128941_
                                                          (lambda (_L127422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L127423_)
                    (let ((_$e127435_
                           (let ((__tmp130679
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L127423_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp130679))))
                      (if _$e127435_
                          ((lambda (_type-e127438_)
                             (_type-e127438_ _stx127326_ _L127375_))
                           _$e127435_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self127325_ _L127374_))))))
                 (___kont128942128943_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self127325_ _L127374_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match128949128950_
                                                            (lambda (_e127397127414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd127396127417_
                             _tl127395127419_)
                      (let ((_L127422_ _tl127395127419_)
                            (_L127423_ _hd127396127417_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L127423_))
                            (___kont128940128941_ _L127422_ _L127423_)
                            (___kont128942128943_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx128938128939_))
                   (let ((_e127397127414_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx128938128939_))))
                     (let ((_tl127395127419_
                            (let ()
                              (declare (not safe))
                              (##cdr _e127397127414_)))
                           (_hd127396127417_
                            (let ()
                              (declare (not safe))
                              (##car _e127397127414_))))
                       (___match128949128950_
                        _e127397127414_
                        _hd127396127417_
                        _tl127395127419_)))
                   (___kont128942128943_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd127339127369_
                                               _hd127336127361_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127328127345_
                                                 _g127329127348_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127328127345_ _g127329127348_)))))
                              (let ()
                                (declare (not safe))
                                (_g127328127345_ _g127329127348_)))))
                      (let ()
                        (declare (not safe))
                        (_g127328127345_ _g127329127348_))))))
          (declare (not safe))
          (_g127327127443_ _stx127326_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx127169_ _ann127170_)
        (let* ((_g127172127209_
                (lambda (_g127173127206_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127173127206_))))
               (_g127171127322_
                (lambda (_g127173127212_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127173127212_))
                      (let ((_e127183127214_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127173127212_))))
                        (let ((_hd127182127217_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127183127214_)))
                              (_tl127181127219_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127183127214_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127181127219_))
                              (let ((_e127186127222_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127181127219_))))
                                (let ((_hd127185127225_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127186127222_)))
                                      (_tl127184127227_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127186127222_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127184127227_))
                                      (let ((_e127189127230_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127184127227_))))
                                        (let ((_hd127188127233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127189127230_)))
                                              (_tl127187127235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127189127230_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127187127235_))
                                              (let ((_e127192127238_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127187127235_))))
                                                (let ((_hd127191127241_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127192127238_)))
                                                      (_tl127190127243_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127192127238_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127190127243_))
                                                      (let ((_e127195127246_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127190127243_))))
                (let ((_hd127194127249_
                       (let () (declare (not safe)) (##car _e127195127246_)))
                      (_tl127193127251_
                       (let () (declare (not safe)) (##cdr _e127195127246_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl127193127251_))
                      (let ((_e127198127254_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127193127251_))))
                        (let ((_hd127197127257_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127198127254_)))
                              (_tl127196127259_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127198127254_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127196127259_))
                              (let ((_e127201127262_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127196127259_))))
                                (let ((_hd127200127265_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127201127262_)))
                                      (_tl127199127267_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127201127262_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127199127267_))
                                      (let ((_e127204127270_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127199127267_))))
                                        (let ((_hd127203127273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127204127270_)))
                                              (_tl127202127275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127204127270_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127202127275_))
                                              ((lambda (_L127278_
                                                        _L127279_
                                                        _L127280_
                                                        _L127281_
                                                        _L127282_
                                                        _L127283_
                                                        _L127284_)
                                                 (let ((_type-id127314_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127284_)))
                                                       (_super127315_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127283_)))
                                                       (_slots127316_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L127282_)))
                                                       (_ctor-method127317_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127281_)))
                                                       (_struct?127318_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127280_)))
                                                       (_final?127319_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127279_)))
                                                       (_metaclass127320_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L127278_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L127278_))
                                                            '#f)))
                                                   (let ((__obj130631
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
                                                      __obj130631
                                                      _type-id127314_
                                                      _super127315_
                                                      _slots127316_
                                                      _ctor-method127317_
                                                      _struct?127318_
                                                      _final?127319_
                                                      '#f
                                                      _metaclass127320_)
                                                     __obj130631)))
                                               _hd127203127273_
                                               _hd127200127265_
                                               _hd127197127257_
                                               _hd127194127249_
                                               _hd127191127241_
                                               _hd127188127233_
                                               _hd127185127225_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127172127209_
                                                 _g127173127212_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127172127209_ _g127173127212_)))))
                              (let ()
                                (declare (not safe))
                                (_g127172127209_ _g127173127212_)))))
                      (let ()
                        (declare (not safe))
                        (_g127172127209_ _g127173127212_)))))
              (let ()
                (declare (not safe))
                (_g127172127209_ _g127173127212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g127172127209_
                                                 _g127173127212_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127172127209_ _g127173127212_)))))
                              (let ()
                                (declare (not safe))
                                (_g127172127209_ _g127173127212_)))))
                      (let ()
                        (declare (not safe))
                        (_g127172127209_ _g127173127212_))))))
          (declare (not safe))
          (_g127171127322_ _ann127170_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_stx127098_ _ann127099_)
        (let* ((_g127101127118_
                (lambda (_g127102127115_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127102127115_))))
               (_g127100127166_
                (lambda (_g127102127121_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127102127121_))
                      (let ((_e127107127123_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127102127121_))))
                        (let ((_hd127106127126_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127107127123_)))
                              (_tl127105127128_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127107127123_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127105127128_))
                              (let ((_e127110127131_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127105127128_))))
                                (let ((_hd127109127134_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127110127131_)))
                                      (_tl127108127136_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127110127131_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127108127136_))
                                      (let ((_e127113127139_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127108127136_))))
                                        (let ((_hd127112127142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127113127139_)))
                                              (_tl127111127144_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127113127139_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127111127144_))
                                              ((lambda (_L127147_ _L127148_)
                                                 (let ((_type-id127163_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127148_)))
                                                       (_super127164_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127147_))))
                                                   (let ((__obj130632
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
                                                      __obj130632
                                                      _type-id127163_
                                                      _super127164_
                                                      '()
                                                      '#f
                                                      '#f
                                                      '#f
                                                      '#t
                                                      '#f)
                                                     __obj130632)))
                                               _hd127112127142_
                                               _hd127109127134_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127101127118_
                                                 _g127102127121_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127101127118_ _g127102127121_)))))
                              (let ()
                                (declare (not safe))
                                (_g127101127118_ _g127102127121_)))))
                      (let ()
                        (declare (not safe))
                        (_g127101127118_ _g127102127121_))))))
          (declare (not safe))
          (_g127100127166_ _ann127099_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx127046_ _ann127047_)
        (let* ((_g127049127062_
                (lambda (_g127050127059_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127050127059_))))
               (_g127048127095_
                (lambda (_g127050127065_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127050127065_))
                      (let ((_e127054127067_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127050127065_))))
                        (let ((_hd127053127070_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127054127067_)))
                              (_tl127052127072_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127054127067_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127052127072_))
                              (let ((_e127057127075_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127052127072_))))
                                (let ((_hd127056127078_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127057127075_)))
                                      (_tl127055127080_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127057127075_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127055127080_))
                                      ((lambda (_L127083_)
                                         (let ((__tmp130680
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L127083_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp130680)))
                                       _hd127056127078_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127049127062_ _g127050127065_)))))
                              (let ()
                                (declare (not safe))
                                (_g127049127062_ _g127050127065_)))))
                      (let ()
                        (declare (not safe))
                        (_g127049127062_ _g127050127065_))))))
          (declare (not safe))
          (_g127048127095_ _ann127047_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx126994_ _ann126995_)
        (let* ((_g126997127010_
                (lambda (_g126998127007_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126998127007_))))
               (_g126996127043_
                (lambda (_g126998127013_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126998127013_))
                      (let ((_e127002127015_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126998127013_))))
                        (let ((_hd127001127018_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127002127015_)))
                              (_tl127000127020_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127002127015_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127000127020_))
                              (let ((_e127005127023_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127000127020_))))
                                (let ((_hd127004127026_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127005127023_)))
                                      (_tl127003127028_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127005127023_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127003127028_))
                                      ((lambda (_L127031_)
                                         (let ((__tmp130681
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L127031_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp130681)))
                                       _hd127004127026_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126997127010_ _g126998127013_)))))
                              (let ()
                                (declare (not safe))
                                (_g126997127010_ _g126998127013_)))))
                      (let ()
                        (declare (not safe))
                        (_g126997127010_ _g126998127013_))))))
          (declare (not safe))
          (_g126996127043_ _ann126995_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx126910_ _ann126911_)
        (let* ((_g126913126934_
                (lambda (_g126914126931_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126914126931_))))
               (_g126912126991_
                (lambda (_g126914126937_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126914126937_))
                      (let ((_e126920126939_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126914126937_))))
                        (let ((_hd126919126942_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126920126939_)))
                              (_tl126918126944_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126920126939_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126918126944_))
                              (let ((_e126923126947_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126918126944_))))
                                (let ((_hd126922126950_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126923126947_)))
                                      (_tl126921126952_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126923126947_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126921126952_))
                                      (let ((_e126926126955_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126921126952_))))
                                        (let ((_hd126925126958_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126926126955_)))
                                              (_tl126924126960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126926126955_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126924126960_))
                                              (let ((_e126929126963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126924126960_))))
                                                (let ((_hd126928126966_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126929126963_)))
                                                      (_tl126927126968_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126929126963_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126927126968_))
                                                      ((lambda (_L126971_
                                                                _L126972_
                                                                _L126973_)
                                                         (let ((__tmp130684
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126973_)))
                       (__tmp130683
                        (let () (declare (not safe)) (gx#stx-e _L126972_)))
                       (__tmp130682
                        (let () (declare (not safe)) (gx#stx-e _L126971_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp130684
                    __tmp130683
                    __tmp130682)))
               _hd126928126966_
               _hd126925126958_
               _hd126922126950_)
              (let ()
                (declare (not safe))
                (_g126913126934_ _g126914126937_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126913126934_
                                                 _g126914126937_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126913126934_ _g126914126937_)))))
                              (let ()
                                (declare (not safe))
                                (_g126913126934_ _g126914126937_)))))
                      (let ()
                        (declare (not safe))
                        (_g126913126934_ _g126914126937_))))))
          (declare (not safe))
          (_g126912126991_ _ann126911_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx126826_ _ann126827_)
        (let* ((_g126829126850_
                (lambda (_g126830126847_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126830126847_))))
               (_g126828126907_
                (lambda (_g126830126853_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126830126853_))
                      (let ((_e126836126855_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126830126853_))))
                        (let ((_hd126835126858_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126836126855_)))
                              (_tl126834126860_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126836126855_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126834126860_))
                              (let ((_e126839126863_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126834126860_))))
                                (let ((_hd126838126866_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126839126863_)))
                                      (_tl126837126868_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126839126863_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126837126868_))
                                      (let ((_e126842126871_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126837126868_))))
                                        (let ((_hd126841126874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126842126871_)))
                                              (_tl126840126876_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126842126871_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126840126876_))
                                              (let ((_e126845126879_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126840126876_))))
                                                (let ((_hd126844126882_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126845126879_)))
                                                      (_tl126843126884_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126845126879_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126843126884_))
                                                      ((lambda (_L126887_
                                                                _L126888_
                                                                _L126889_)
                                                         (let ((__tmp130687
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126889_)))
                       (__tmp130686
                        (let () (declare (not safe)) (gx#stx-e _L126888_)))
                       (__tmp130685
                        (let () (declare (not safe)) (gx#stx-e _L126887_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp130687
                    __tmp130686
                    __tmp130685)))
               _hd126844126882_
               _hd126841126874_
               _hd126838126866_)
              (let ()
                (declare (not safe))
                (_g126829126850_ _g126830126853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126829126850_
                                                 _g126830126853_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126829126850_ _g126830126853_)))))
                              (let ()
                                (declare (not safe))
                                (_g126829126850_ _g126830126853_)))))
                      (let ()
                        (declare (not safe))
                        (_g126829126850_ _g126830126853_))))))
          (declare (not safe))
          (_g126828126907_ _ann126827_))))
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
      (lambda (_self125945_ _stx125946_)
        (let* ((___stx128952128953_ _stx125946_)
               (_g125952126148_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128952128953_)))))
          (let ((___kont128954128955_
                 (lambda (_L126814_)
                   (let ((__obj130633
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130633
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126814_))
                      '#f)
                     __obj130633)))
                (___kont128956128957_
                 (lambda (_L126741_
                          _L126742_
                          _L126743_
                          _L126744_
                          _L126745_
                          _L126746_)
                   (let* ((_tab126796_
                           (let () (declare (not safe)) (gx#stx-e _L126743_)))
                          (_keys126798_
                           (if _tab126796_
                               (filter values (vector->list _tab126796_))
                               '#f)))
                     (let ((__tmp130688
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L126742_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys126798_
                        __tmp130688)))))
                (___kont128958128959_
                 (lambda (_L126474_
                          _L126475_
                          _L126476_
                          _L126477_
                          _L126478_
                          _L126479_
                          _L126480_
                          _L126481_
                          _L126482_
                          _L126483_)
                   (let ((__tmp130690
                          (map gx#stx-e
                               (let ((__tmp130691
                                      (lambda (_g126576126579_ _g126577126581_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g126576126579_
                                                _g126577126581_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp130691 '() _L126476_))))
                         (__tmp130689
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126480_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp130690
                      __tmp130689))))
                (___kont128962128963_
                 (lambda (_L126184_)
                   (let ((__obj130634
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130634
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126184_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L126184_)))
                     __obj130634)))
                (___kont128964128965_
                 (lambda (_L126161_)
                   (let ((__obj130635
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130635
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126161_))
                      '#f)
                     __obj130635))))
            (let* ((___match129271129272_
                    (lambda (_e126139126176_ _hd126138126179_ _tl126137126181_)
                      (let ((_L126184_ _tl126137126181_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L126184_))
                            (___kont128962128963_ _L126184_)
                            (___kont128964128965_ _tl126137126181_)))))
                   (___match129265129266_
                    (lambda (_e126033126198_
                             _hd126032126201_
                             _tl126031126203_
                             _e126036126206_
                             _hd126035126209_
                             _tl126034126211_
                             _e126039126214_
                             _hd126038126217_
                             _tl126037126219_
                             _e126042126222_
                             _hd126041126225_
                             _tl126040126227_
                             _e126045126230_
                             _hd126044126233_
                             _tl126043126235_
                             _e126048126238_
                             _hd126047126241_
                             _tl126046126243_
                             _e126051126246_
                             _hd126050126249_
                             _tl126049126251_
                             _e126054126254_
                             _hd126053126257_
                             _tl126052126259_
                             _e126057126262_
                             _hd126056126265_
                             _tl126055126267_
                             _e126060126270_
                             _hd126059126273_
                             _tl126058126275_
                             _e126063126278_
                             _hd126062126281_
                             _tl126061126283_
                             _e126066126286_
                             _hd126065126289_
                             _tl126064126291_
                             _e126069126294_
                             _hd126068126297_
                             _tl126067126299_
                             _e126072126302_
                             _hd126071126305_
                             _tl126070126307_
                             ___splice128960128961_
                             _target126073126310_
                             _tl126075126312_
                             _e126090126315_
                             _hd126089126318_
                             _tl126088126320_
                             _e126093126323_
                             _hd126092126326_
                             _tl126091126328_
                             _e126096126331_
                             _hd126095126334_
                             _tl126094126336_)
                      (letrec ((_loop126076126339_
                                (lambda (_hd126074126342_
                                         _-absent-value126080126344_
                                         _key126081126346_
                                         _-xkwvar126082126348_
                                         _-hash-ref126083126350_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126074126342_))
                                      (let ((_e126077126353_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126074126342_))))
                                        (let ((_lp-tl126079126358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126077126353_)))
                                              (_lp-hd126078126356_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126077126353_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd126078126356_))
                                              (let ((_e126099126361_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd126078126356_))))
                                                (let ((_tl126097126366_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126099126361_)))
                                                      (_hd126098126364_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126099126361_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd126098126364_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd126098126364_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl126097126366_))
                      (let ((_e126102126369_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126097126366_))))
                        (let ((_tl126100126374_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126102126369_)))
                              (_hd126101126372_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126102126369_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd126101126372_))
                              (let ((_e126105126377_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd126101126372_))))
                                (let ((_tl126103126382_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126105126377_)))
                                      (_hd126104126380_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126105126377_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd126104126380_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd126104126380_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126103126382_))
                                              (let ((_e126108126385_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126103126382_))))
                                                (let ((_tl126106126390_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126108126385_)))
                                                      (_hd126107126388_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126108126385_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126106126390_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126100126374_))
                                                          (let ((_e126111126393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126100126374_))))
                    (let ((_tl126109126398_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126111126393_)))
                          (_hd126110126396_
                           (let ()
                             (declare (not safe))
                             (##car _e126111126393_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126110126396_))
                          (let ((_e126114126401_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126110126396_))))
                            (let ((_tl126112126406_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126114126401_)))
                                  (_hd126113126404_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126114126401_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126113126404_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126113126404_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126112126406_))
                                          (let ((_e126117126409_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126112126406_))))
                                            (let ((_tl126115126414_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126117126409_)))
                                                  (_hd126116126412_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126117126409_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126115126414_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126109126398_))
                                                      (let ((_e126120126417_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126109126398_))))
                (let ((_tl126118126422_
                       (let () (declare (not safe)) (##cdr _e126120126417_)))
                      (_hd126119126420_
                       (let () (declare (not safe)) (##car _e126120126417_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126119126420_))
                      (let ((_e126123126425_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126119126420_))))
                        (let ((_tl126121126430_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126123126425_)))
                              (_hd126122126428_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126123126425_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126122126428_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd126122126428_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126121126430_))
                                      (let ((_e126126126433_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126121126430_))))
                                        (let ((_tl126124126438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126126126433_)))
                                              (_hd126125126436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126126126433_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126124126438_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126118126422_))
                                                  (let ((_e126129126441_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126118126422_))))
                                                    (let ((_tl126127126446_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126129126441_)))
                                                          (_hd126128126444_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126129126441_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126128126444_))
                                                          (let ((_e126132126449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126128126444_))))
                    (let ((_tl126130126454_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126132126449_)))
                          (_hd126131126452_
                           (let ()
                             (declare (not safe))
                             (##car _e126132126449_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126131126452_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126131126452_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126130126454_))
                                  (let ((_e126135126457_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126130126454_))))
                                    (let ((_tl126133126462_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126135126457_)))
                                          (_hd126134126460_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126135126457_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126133126462_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126127126446_))
                                              (let ((__tmp130706
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126134126460_
                                                             _-absent-value126080126344_)))
                                                    (__tmp130705
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126125126436_
                                                             _key126081126346_)))
                                                    (__tmp130704
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126116126412_
                                                             _-xkwvar126082126348_)))
                                                    (__tmp130703
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126107126388_
                                                             _-hash-ref126083126350_))))
                                                (declare (not safe))
                                                (_loop126076126339_
                                                 _lp-tl126079126358_
                                                 __tmp130706
                                                 __tmp130705
                                                 __tmp130704
                                                 __tmp130703))
                                              (___match129271129272_
                                               _e126033126198_
                                               _hd126032126201_
                                               _tl126031126203_))
                                          (___match129271129272_
                                           _e126033126198_
                                           _hd126032126201_
                                           _tl126031126203_))))
                                  (___match129271129272_
                                   _e126033126198_
                                   _hd126032126201_
                                   _tl126031126203_))
                              (___match129271129272_
                               _e126033126198_
                               _hd126032126201_
                               _tl126031126203_))
                          (___match129271129272_
                           _e126033126198_
                           _hd126032126201_
                           _tl126031126203_))))
                  (___match129271129272_
                   _e126033126198_
                   _hd126032126201_
                   _tl126031126203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129271129272_
                                                   _e126033126198_
                                                   _hd126032126201_
                                                   _tl126031126203_))
                                              (___match129271129272_
                                               _e126033126198_
                                               _hd126032126201_
                                               _tl126031126203_))))
                                      (___match129271129272_
                                       _e126033126198_
                                       _hd126032126201_
                                       _tl126031126203_))
                                  (___match129271129272_
                                   _e126033126198_
                                   _hd126032126201_
                                   _tl126031126203_))
                              (___match129271129272_
                               _e126033126198_
                               _hd126032126201_
                               _tl126031126203_))))
                      (___match129271129272_
                       _e126033126198_
                       _hd126032126201_
                       _tl126031126203_))))
              (___match129271129272_
               _e126033126198_
               _hd126032126201_
               _tl126031126203_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129271129272_
                                                   _e126033126198_
                                                   _hd126032126201_
                                                   _tl126031126203_))))
                                          (___match129271129272_
                                           _e126033126198_
                                           _hd126032126201_
                                           _tl126031126203_))
                                      (___match129271129272_
                                       _e126033126198_
                                       _hd126032126201_
                                       _tl126031126203_))
                                  (___match129271129272_
                                   _e126033126198_
                                   _hd126032126201_
                                   _tl126031126203_))))
                          (___match129271129272_
                           _e126033126198_
                           _hd126032126201_
                           _tl126031126203_))))
                  (___match129271129272_
                   _e126033126198_
                   _hd126032126201_
                   _tl126031126203_))
              (___match129271129272_
               _e126033126198_
               _hd126032126201_
               _tl126031126203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129271129272_
                                               _e126033126198_
                                               _hd126032126201_
                                               _tl126031126203_))
                                          (___match129271129272_
                                           _e126033126198_
                                           _hd126032126201_
                                           _tl126031126203_))
                                      (___match129271129272_
                                       _e126033126198_
                                       _hd126032126201_
                                       _tl126031126203_))))
                              (___match129271129272_
                               _e126033126198_
                               _hd126032126201_
                               _tl126031126203_))))
                      (___match129271129272_
                       _e126033126198_
                       _hd126032126201_
                       _tl126031126203_))
                  (___match129271129272_
                   _e126033126198_
                   _hd126032126201_
                   _tl126031126203_))
              (___match129271129272_
               _e126033126198_
               _hd126032126201_
               _tl126031126203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129271129272_
                                               _e126033126198_
                                               _hd126032126201_
                                               _tl126031126203_))))
                                      (let ((_-hash-ref126087126471_
                                             (reverse _-hash-ref126083126350_))
                                            (_-xkwvar126086126469_
                                             (reverse _-xkwvar126082126348_))
                                            (_key126085126467_
                                             (reverse _key126081126346_))
                                            (_-absent-value126084126465_
                                             (reverse _-absent-value126080126344_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl126040126227_))
                                            (let ((_L126474_ _hd126095126334_)
                                                  (_L126475_
                                                   _-absent-value126084126465_)
                                                  (_L126476_ _key126085126467_)
                                                  (_L126477_
                                                   _-xkwvar126086126469_)
                                                  (_L126478_
                                                   _-hash-ref126087126471_)
                                                  (_L126479_ _hd126071126305_)
                                                  (_L126480_ _hd126062126281_)
                                                  (_L126481_ _hd126053126257_)
                                                  (_L126482_ _tl126037126219_)
                                                  (_L126483_ _hd126038126217_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126483_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126482_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L126481_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L126483_
                                                          _L126479_))
                                                       (let ((__tmp130701
                                                              (let ((__tmp130702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g126536126539_ _g126537126541_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126536126539_ _g126537126541_)))))
                        (declare (not safe))
                        (foldr1 __tmp130702 '() _L126476_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp130701))
               (let ((__tmp130700
                      (lambda (_g126543126545_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126543126545_
                           'hash-ref))))
                     (__tmp130698
                      (let ((__tmp130699
                             (lambda (_g126547126550_ _g126548126552_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126547126550_ _g126548126552_)))))
                        (declare (not safe))
                        (foldr1 __tmp130699 '() _L126478_))))
                 (declare (not safe))
                 (andmap1 __tmp130700 __tmp130698))
               (let ((__tmp130697
                      (lambda (_g126554126556_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126554126556_
                           'absent-value))))
                     (__tmp130695
                      (let ((__tmp130696
                             (lambda (_g126558126561_ _g126559126563_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126558126561_ _g126559126563_)))))
                        (declare (not safe))
                        (foldr1 __tmp130696 '() _L126475_))))
                 (declare (not safe))
                 (andmap1 __tmp130697 __tmp130695))
               (let ((__tmp130694
                      (lambda (_g126565126567_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g126565126567_ _L126483_))))
                     (__tmp130692
                      (let ((__tmp130693
                             (lambda (_g126569126572_ _g126570126574_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126569126572_ _g126570126574_)))))
                        (declare (not safe))
                        (foldr1 __tmp130693 '() _L126477_))))
                 (declare (not safe))
                 (andmap1 __tmp130694 __tmp130692)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128958128959_
                                                   _L126474_
                                                   _L126475_
                                                   _L126476_
                                                   _L126477_
                                                   _L126478_
                                                   _L126479_
                                                   _L126480_
                                                   _L126481_
                                                   _L126482_
                                                   _L126483_)
                                                  (___match129271129272_
                                                   _e126033126198_
                                                   _hd126032126201_
                                                   _tl126031126203_)))
                                            (___match129271129272_
                                             _e126033126198_
                                             _hd126032126201_
                                             _tl126031126203_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop126076126339_
                           _target126073126310_
                           '()
                           '()
                           '()
                           '())))))
                   (___match129137129138_
                    (lambda (_e126033126198_
                             _hd126032126201_
                             _tl126031126203_
                             _e126036126206_
                             _hd126035126209_
                             _tl126034126211_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126035126209_))
                          (let ((_e126039126214_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126035126209_))))
                            (let ((_tl126037126219_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126039126214_)))
                                  (_hd126038126217_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126039126214_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126034126211_))
                                  (let ((_e126042126222_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126034126211_))))
                                    (let ((_tl126040126227_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126042126222_)))
                                          (_hd126041126225_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126042126222_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd126041126225_))
                                          (let ((_e126045126230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd126041126225_))))
                                            (let ((_tl126043126235_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126045126230_)))
                                                  (_hd126044126233_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126045126230_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd126044126233_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd126044126233_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126043126235_))
                                                          (let ((_e126048126238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126043126235_))))
                    (let ((_tl126046126243_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126048126238_)))
                          (_hd126047126241_
                           (let ()
                             (declare (not safe))
                             (##car _e126048126238_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126047126241_))
                          (let ((_e126051126246_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126047126241_))))
                            (let ((_tl126049126251_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126051126246_)))
                                  (_hd126050126249_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126051126246_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126050126249_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126050126249_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126049126251_))
                                          (let ((_e126054126254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126049126251_))))
                                            (let ((_tl126052126259_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126054126254_)))
                                                  (_hd126053126257_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126054126254_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126052126259_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126046126243_))
                                                      (let ((_e126057126262_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126046126243_))))
                (let ((_tl126055126267_
                       (let () (declare (not safe)) (##cdr _e126057126262_)))
                      (_hd126056126265_
                       (let () (declare (not safe)) (##car _e126057126262_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126056126265_))
                      (let ((_e126060126270_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126056126265_))))
                        (let ((_tl126058126275_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126060126270_)))
                              (_hd126059126273_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126060126270_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126059126273_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd126059126273_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126058126275_))
                                      (let ((_e126063126278_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126058126275_))))
                                        (let ((_tl126061126283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126063126278_)))
                                              (_hd126062126281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126063126278_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126061126283_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126055126267_))
                                                  (let ((_e126066126286_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126055126267_))))
                                                    (let ((_tl126064126291_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126066126286_)))
                                                          (_hd126065126289_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126066126286_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126065126289_))
                                                          (let ((_e126069126294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126065126289_))))
                    (let ((_tl126067126299_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126069126294_)))
                          (_hd126068126297_
                           (let ()
                             (declare (not safe))
                             (##car _e126069126294_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126068126297_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126068126297_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126067126299_))
                                  (let ((_e126072126302_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126067126299_))))
                                    (let ((_tl126070126307_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126072126302_)))
                                          (_hd126071126305_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126072126302_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126070126307_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126064126291_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl126064126291_))
                                                        '1)
                                                  (let ((___splice128960128961_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126064126291_
                                                            '1))))
                                                    (let ((_tl126075126312_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128960128961_
                                                              '1)))
                                                          (_target126073126310_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128960128961_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126075126312_))
                                                          (let ((_e126090126315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126075126312_))))
                    (let ((_tl126088126320_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126090126315_)))
                          (_hd126089126318_
                           (let ()
                             (declare (not safe))
                             (##car _e126090126315_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126089126318_))
                          (let ((_e126093126323_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126089126318_))))
                            (let ((_tl126091126328_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126093126323_)))
                                  (_hd126092126326_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126093126323_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126092126326_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126092126326_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126091126328_))
                                          (let ((_e126096126331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126091126328_))))
                                            (let ((_tl126094126336_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126096126331_)))
                                                  (_hd126095126334_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126096126331_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126094126336_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126088126320_))
                                                      (___match129265129266_
                                                       _e126033126198_
                                                       _hd126032126201_
                                                       _tl126031126203_
                                                       _e126036126206_
                                                       _hd126035126209_
                                                       _tl126034126211_
                                                       _e126039126214_
                                                       _hd126038126217_
                                                       _tl126037126219_
                                                       _e126042126222_
                                                       _hd126041126225_
                                                       _tl126040126227_
                                                       _e126045126230_
                                                       _hd126044126233_
                                                       _tl126043126235_
                                                       _e126048126238_
                                                       _hd126047126241_
                                                       _tl126046126243_
                                                       _e126051126246_
                                                       _hd126050126249_
                                                       _tl126049126251_
                                                       _e126054126254_
                                                       _hd126053126257_
                                                       _tl126052126259_
                                                       _e126057126262_
                                                       _hd126056126265_
                                                       _tl126055126267_
                                                       _e126060126270_
                                                       _hd126059126273_
                                                       _tl126058126275_
                                                       _e126063126278_
                                                       _hd126062126281_
                                                       _tl126061126283_
                                                       _e126066126286_
                                                       _hd126065126289_
                                                       _tl126064126291_
                                                       _e126069126294_
                                                       _hd126068126297_
                                                       _tl126067126299_
                                                       _e126072126302_
                                                       _hd126071126305_
                                                       _tl126070126307_
                                                       ___splice128960128961_
                                                       _target126073126310_
                                                       _tl126075126312_
                                                       _e126090126315_
                                                       _hd126089126318_
                                                       _tl126088126320_
                                                       _e126093126323_
                                                       _hd126092126326_
                                                       _tl126091126328_
                                                       _e126096126331_
                                                       _hd126095126334_
                                                       _tl126094126336_)
                                                      (___match129271129272_
                                                       _e126033126198_
                                                       _hd126032126201_
                                                       _tl126031126203_))
                                                  (___match129271129272_
                                                   _e126033126198_
                                                   _hd126032126201_
                                                   _tl126031126203_))))
                                          (___match129271129272_
                                           _e126033126198_
                                           _hd126032126201_
                                           _tl126031126203_))
                                      (___match129271129272_
                                       _e126033126198_
                                       _hd126032126201_
                                       _tl126031126203_))
                                  (___match129271129272_
                                   _e126033126198_
                                   _hd126032126201_
                                   _tl126031126203_))))
                          (___match129271129272_
                           _e126033126198_
                           _hd126032126201_
                           _tl126031126203_))))
                  (___match129271129272_
                   _e126033126198_
                   _hd126032126201_
                   _tl126031126203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129271129272_
                                                   _e126033126198_
                                                   _hd126032126201_
                                                   _tl126031126203_))
                                              (___match129271129272_
                                               _e126033126198_
                                               _hd126032126201_
                                               _tl126031126203_))
                                          (___match129271129272_
                                           _e126033126198_
                                           _hd126032126201_
                                           _tl126031126203_))))
                                  (___match129271129272_
                                   _e126033126198_
                                   _hd126032126201_
                                   _tl126031126203_))
                              (___match129271129272_
                               _e126033126198_
                               _hd126032126201_
                               _tl126031126203_))
                          (___match129271129272_
                           _e126033126198_
                           _hd126032126201_
                           _tl126031126203_))))
                  (___match129271129272_
                   _e126033126198_
                   _hd126032126201_
                   _tl126031126203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129271129272_
                                                   _e126033126198_
                                                   _hd126032126201_
                                                   _tl126031126203_))
                                              (___match129271129272_
                                               _e126033126198_
                                               _hd126032126201_
                                               _tl126031126203_))))
                                      (___match129271129272_
                                       _e126033126198_
                                       _hd126032126201_
                                       _tl126031126203_))
                                  (___match129271129272_
                                   _e126033126198_
                                   _hd126032126201_
                                   _tl126031126203_))
                              (___match129271129272_
                               _e126033126198_
                               _hd126032126201_
                               _tl126031126203_))))
                      (___match129271129272_
                       _e126033126198_
                       _hd126032126201_
                       _tl126031126203_))))
              (___match129271129272_
               _e126033126198_
               _hd126032126201_
               _tl126031126203_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129271129272_
                                                   _e126033126198_
                                                   _hd126032126201_
                                                   _tl126031126203_))))
                                          (___match129271129272_
                                           _e126033126198_
                                           _hd126032126201_
                                           _tl126031126203_))
                                      (___match129271129272_
                                       _e126033126198_
                                       _hd126032126201_
                                       _tl126031126203_))
                                  (___match129271129272_
                                   _e126033126198_
                                   _hd126032126201_
                                   _tl126031126203_))))
                          (___match129271129272_
                           _e126033126198_
                           _hd126032126201_
                           _tl126031126203_))))
                  (___match129271129272_
                   _e126033126198_
                   _hd126032126201_
                   _tl126031126203_))
              (___match129271129272_
               _e126033126198_
               _hd126032126201_
               _tl126031126203_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129271129272_
                                                   _e126033126198_
                                                   _hd126032126201_
                                                   _tl126031126203_))))
                                          (___match129271129272_
                                           _e126033126198_
                                           _hd126032126201_
                                           _tl126031126203_))))
                                  (___match129271129272_
                                   _e126033126198_
                                   _hd126032126201_
                                   _tl126031126203_))))
                          (___match129271129272_
                           _e126033126198_
                           _hd126032126201_
                           _tl126031126203_))))
                   (___match129125129126_
                    (lambda (_e125966126589_
                             _hd125965126592_
                             _tl125964126594_
                             _e125969126597_
                             _hd125968126600_
                             _tl125967126602_
                             _e125972126605_
                             _hd125971126608_
                             _tl125970126610_
                             _e125975126613_
                             _hd125974126616_
                             _tl125973126618_
                             _e125978126621_
                             _hd125977126624_
                             _tl125976126626_
                             _e125981126629_
                             _hd125980126632_
                             _tl125979126634_
                             _e125984126637_
                             _hd125983126640_
                             _tl125982126642_
                             _e125987126645_
                             _hd125986126648_
                             _tl125985126650_
                             _e125990126653_
                             _hd125989126656_
                             _tl125988126658_
                             _e125993126661_
                             _hd125992126664_
                             _tl125991126666_
                             _e125996126669_
                             _hd125995126672_
                             _tl125994126674_
                             _e125999126677_
                             _hd125998126680_
                             _tl125997126682_
                             _e126002126685_
                             _hd126001126688_
                             _tl126000126690_
                             _e126005126693_
                             _hd126004126696_
                             _tl126003126698_
                             _e126008126701_
                             _hd126007126704_
                             _tl126006126706_
                             _e126011126709_
                             _hd126010126712_
                             _tl126009126714_
                             _e126014126717_
                             _hd126013126720_
                             _tl126012126722_
                             _e126017126725_
                             _hd126016126728_
                             _tl126015126730_
                             _e126020126733_
                             _hd126019126736_
                             _tl126018126738_)
                      (let ((_L126741_ _hd126019126736_)
                            (_L126742_ _hd126010126712_)
                            (_L126743_ _hd126001126688_)
                            (_L126744_ _hd125992126664_)
                            (_L126745_ _hd125983126640_)
                            (_L126746_ _hd125968126600_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L126746_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L126745_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L126744_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L126746_ _L126741_)))
                            (___kont128956128957_
                             _L126741_
                             _L126742_
                             _L126743_
                             _L126744_
                             _L126745_
                             _L126746_)
                            (___match129137129138_
                             _e125966126589_
                             _hd125965126592_
                             _tl125964126594_
                             _e125969126597_
                             _hd125968126600_
                             _tl125967126602_)))))
                   (___match128979128980_
                    (lambda (_e125966126589_ _hd125965126592_ _tl125964126594_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125964126594_))
                          (let ((_e125969126597_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125964126594_))))
                            (let ((_tl125967126602_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125969126597_)))
                                  (_hd125968126600_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125969126597_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125967126602_))
                                  (let ((_e125972126605_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125967126602_))))
                                    (let ((_tl125970126610_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125972126605_)))
                                          (_hd125971126608_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125972126605_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125971126608_))
                                          (let ((_e125975126613_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125971126608_))))
                                            (let ((_tl125973126618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125975126613_)))
                                                  (_hd125974126616_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125975126613_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125974126616_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125974126616_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125973126618_))
                                                          (let ((_e125978126621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125973126618_))))
                    (let ((_tl125976126626_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125978126621_)))
                          (_hd125977126624_
                           (let ()
                             (declare (not safe))
                             (##car _e125978126621_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125977126624_))
                          (let ((_e125981126629_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125977126624_))))
                            (let ((_tl125979126634_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125981126629_)))
                                  (_hd125980126632_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125981126629_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125980126632_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125980126632_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125979126634_))
                                          (let ((_e125984126637_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125979126634_))))
                                            (let ((_tl125982126642_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125984126637_)))
                                                  (_hd125983126640_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125984126637_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125982126642_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125976126626_))
                                                      (let ((_e125987126645_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125976126626_))))
                (let ((_tl125985126650_
                       (let () (declare (not safe)) (##cdr _e125987126645_)))
                      (_hd125986126648_
                       (let () (declare (not safe)) (##car _e125987126645_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125986126648_))
                      (let ((_e125990126653_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125986126648_))))
                        (let ((_tl125988126658_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125990126653_)))
                              (_hd125989126656_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125990126653_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125989126656_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125989126656_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125988126658_))
                                      (let ((_e125993126661_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125988126658_))))
                                        (let ((_tl125991126666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125993126661_)))
                                              (_hd125992126664_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125993126661_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125991126666_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125985126650_))
                                                  (let ((_e125996126669_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125985126650_))))
                                                    (let ((_tl125994126674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125996126669_)))
                                                          (_hd125995126672_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125996126669_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125995126672_))
                                                          (let ((_e125999126677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125995126672_))))
                    (let ((_tl125997126682_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125999126677_)))
                          (_hd125998126680_
                           (let ()
                             (declare (not safe))
                             (##car _e125999126677_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125998126680_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125998126680_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125997126682_))
                                  (let ((_e126002126685_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125997126682_))))
                                    (let ((_tl126000126690_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126002126685_)))
                                          (_hd126001126688_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126002126685_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126000126690_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125994126674_))
                                              (let ((_e126005126693_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125994126674_))))
                                                (let ((_tl126003126698_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126005126693_)))
                                                      (_hd126004126696_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126005126693_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd126004126696_))
                                                      (let ((_e126008126701_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd126004126696_))))
                (let ((_tl126006126706_
                       (let () (declare (not safe)) (##cdr _e126008126701_)))
                      (_hd126007126704_
                       (let () (declare (not safe)) (##car _e126008126701_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd126007126704_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd126007126704_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126006126706_))
                              (let ((_e126011126709_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126006126706_))))
                                (let ((_tl126009126714_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126011126709_)))
                                      (_hd126010126712_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126011126709_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126009126714_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126003126698_))
                                          (let ((_e126014126717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126003126698_))))
                                            (let ((_tl126012126722_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126014126717_)))
                                                  (_hd126013126720_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126014126717_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd126013126720_))
                                                  (let ((_e126017126725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd126013126720_))))
                                                    (let ((_tl126015126730_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126017126725_)))
                                                          (_hd126016126728_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126017126725_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd126016126728_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd126016126728_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126015126730_))
                          (let ((_e126020126733_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126015126730_))))
                            (let ((_tl126018126738_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126020126733_)))
                                  (_hd126019126736_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126020126733_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126018126738_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126012126722_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125970126610_))
                                          (___match129125129126_
                                           _e125966126589_
                                           _hd125965126592_
                                           _tl125964126594_
                                           _e125969126597_
                                           _hd125968126600_
                                           _tl125967126602_
                                           _e125972126605_
                                           _hd125971126608_
                                           _tl125970126610_
                                           _e125975126613_
                                           _hd125974126616_
                                           _tl125973126618_
                                           _e125978126621_
                                           _hd125977126624_
                                           _tl125976126626_
                                           _e125981126629_
                                           _hd125980126632_
                                           _tl125979126634_
                                           _e125984126637_
                                           _hd125983126640_
                                           _tl125982126642_
                                           _e125987126645_
                                           _hd125986126648_
                                           _tl125985126650_
                                           _e125990126653_
                                           _hd125989126656_
                                           _tl125988126658_
                                           _e125993126661_
                                           _hd125992126664_
                                           _tl125991126666_
                                           _e125996126669_
                                           _hd125995126672_
                                           _tl125994126674_
                                           _e125999126677_
                                           _hd125998126680_
                                           _tl125997126682_
                                           _e126002126685_
                                           _hd126001126688_
                                           _tl126000126690_
                                           _e126005126693_
                                           _hd126004126696_
                                           _tl126003126698_
                                           _e126008126701_
                                           _hd126007126704_
                                           _tl126006126706_
                                           _e126011126709_
                                           _hd126010126712_
                                           _tl126009126714_
                                           _e126014126717_
                                           _hd126013126720_
                                           _tl126012126722_
                                           _e126017126725_
                                           _hd126016126728_
                                           _tl126015126730_
                                           _e126020126733_
                                           _hd126019126736_
                                           _tl126018126738_)
                                          (___match129137129138_
                                           _e125966126589_
                                           _hd125965126592_
                                           _tl125964126594_
                                           _e125969126597_
                                           _hd125968126600_
                                           _tl125967126602_))
                                      (___match129137129138_
                                       _e125966126589_
                                       _hd125965126592_
                                       _tl125964126594_
                                       _e125969126597_
                                       _hd125968126600_
                                       _tl125967126602_))
                                  (___match129137129138_
                                   _e125966126589_
                                   _hd125965126592_
                                   _tl125964126594_
                                   _e125969126597_
                                   _hd125968126600_
                                   _tl125967126602_))))
                          (___match129137129138_
                           _e125966126589_
                           _hd125965126592_
                           _tl125964126594_
                           _e125969126597_
                           _hd125968126600_
                           _tl125967126602_))
                      (___match129137129138_
                       _e125966126589_
                       _hd125965126592_
                       _tl125964126594_
                       _e125969126597_
                       _hd125968126600_
                       _tl125967126602_))
                  (___match129137129138_
                   _e125966126589_
                   _hd125965126592_
                   _tl125964126594_
                   _e125969126597_
                   _hd125968126600_
                   _tl125967126602_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129137129138_
                                                   _e125966126589_
                                                   _hd125965126592_
                                                   _tl125964126594_
                                                   _e125969126597_
                                                   _hd125968126600_
                                                   _tl125967126602_))))
                                          (___match129137129138_
                                           _e125966126589_
                                           _hd125965126592_
                                           _tl125964126594_
                                           _e125969126597_
                                           _hd125968126600_
                                           _tl125967126602_))
                                      (___match129137129138_
                                       _e125966126589_
                                       _hd125965126592_
                                       _tl125964126594_
                                       _e125969126597_
                                       _hd125968126600_
                                       _tl125967126602_))))
                              (___match129137129138_
                               _e125966126589_
                               _hd125965126592_
                               _tl125964126594_
                               _e125969126597_
                               _hd125968126600_
                               _tl125967126602_))
                          (___match129137129138_
                           _e125966126589_
                           _hd125965126592_
                           _tl125964126594_
                           _e125969126597_
                           _hd125968126600_
                           _tl125967126602_))
                      (___match129137129138_
                       _e125966126589_
                       _hd125965126592_
                       _tl125964126594_
                       _e125969126597_
                       _hd125968126600_
                       _tl125967126602_))))
              (___match129137129138_
               _e125966126589_
               _hd125965126592_
               _tl125964126594_
               _e125969126597_
               _hd125968126600_
               _tl125967126602_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129137129138_
                                               _e125966126589_
                                               _hd125965126592_
                                               _tl125964126594_
                                               _e125969126597_
                                               _hd125968126600_
                                               _tl125967126602_))
                                          (___match129137129138_
                                           _e125966126589_
                                           _hd125965126592_
                                           _tl125964126594_
                                           _e125969126597_
                                           _hd125968126600_
                                           _tl125967126602_))))
                                  (___match129137129138_
                                   _e125966126589_
                                   _hd125965126592_
                                   _tl125964126594_
                                   _e125969126597_
                                   _hd125968126600_
                                   _tl125967126602_))
                              (___match129137129138_
                               _e125966126589_
                               _hd125965126592_
                               _tl125964126594_
                               _e125969126597_
                               _hd125968126600_
                               _tl125967126602_))
                          (___match129137129138_
                           _e125966126589_
                           _hd125965126592_
                           _tl125964126594_
                           _e125969126597_
                           _hd125968126600_
                           _tl125967126602_))))
                  (___match129137129138_
                   _e125966126589_
                   _hd125965126592_
                   _tl125964126594_
                   _e125969126597_
                   _hd125968126600_
                   _tl125967126602_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129137129138_
                                                   _e125966126589_
                                                   _hd125965126592_
                                                   _tl125964126594_
                                                   _e125969126597_
                                                   _hd125968126600_
                                                   _tl125967126602_))
                                              (___match129137129138_
                                               _e125966126589_
                                               _hd125965126592_
                                               _tl125964126594_
                                               _e125969126597_
                                               _hd125968126600_
                                               _tl125967126602_))))
                                      (___match129137129138_
                                       _e125966126589_
                                       _hd125965126592_
                                       _tl125964126594_
                                       _e125969126597_
                                       _hd125968126600_
                                       _tl125967126602_))
                                  (___match129137129138_
                                   _e125966126589_
                                   _hd125965126592_
                                   _tl125964126594_
                                   _e125969126597_
                                   _hd125968126600_
                                   _tl125967126602_))
                              (___match129137129138_
                               _e125966126589_
                               _hd125965126592_
                               _tl125964126594_
                               _e125969126597_
                               _hd125968126600_
                               _tl125967126602_))))
                      (___match129137129138_
                       _e125966126589_
                       _hd125965126592_
                       _tl125964126594_
                       _e125969126597_
                       _hd125968126600_
                       _tl125967126602_))))
              (___match129137129138_
               _e125966126589_
               _hd125965126592_
               _tl125964126594_
               _e125969126597_
               _hd125968126600_
               _tl125967126602_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129137129138_
                                                   _e125966126589_
                                                   _hd125965126592_
                                                   _tl125964126594_
                                                   _e125969126597_
                                                   _hd125968126600_
                                                   _tl125967126602_))))
                                          (___match129137129138_
                                           _e125966126589_
                                           _hd125965126592_
                                           _tl125964126594_
                                           _e125969126597_
                                           _hd125968126600_
                                           _tl125967126602_))
                                      (___match129137129138_
                                       _e125966126589_
                                       _hd125965126592_
                                       _tl125964126594_
                                       _e125969126597_
                                       _hd125968126600_
                                       _tl125967126602_))
                                  (___match129137129138_
                                   _e125966126589_
                                   _hd125965126592_
                                   _tl125964126594_
                                   _e125969126597_
                                   _hd125968126600_
                                   _tl125967126602_))))
                          (___match129137129138_
                           _e125966126589_
                           _hd125965126592_
                           _tl125964126594_
                           _e125969126597_
                           _hd125968126600_
                           _tl125967126602_))))
                  (___match129137129138_
                   _e125966126589_
                   _hd125965126592_
                   _tl125964126594_
                   _e125969126597_
                   _hd125968126600_
                   _tl125967126602_))
              (___match129137129138_
               _e125966126589_
               _hd125965126592_
               _tl125964126594_
               _e125969126597_
               _hd125968126600_
               _tl125967126602_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129137129138_
                                                   _e125966126589_
                                                   _hd125965126592_
                                                   _tl125964126594_
                                                   _e125969126597_
                                                   _hd125968126600_
                                                   _tl125967126602_))))
                                          (___match129137129138_
                                           _e125966126589_
                                           _hd125965126592_
                                           _tl125964126594_
                                           _e125969126597_
                                           _hd125968126600_
                                           _tl125967126602_))))
                                  (___match129137129138_
                                   _e125966126589_
                                   _hd125965126592_
                                   _tl125964126594_
                                   _e125969126597_
                                   _hd125968126600_
                                   _tl125967126602_))))
                          (___match129271129272_
                           _e125966126589_
                           _hd125965126592_
                           _tl125964126594_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128952128953_))
                  (let ((_e125957126806_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128952128953_))))
                    (let ((_tl125955126811_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125957126806_)))
                          (_hd125956126809_
                           (let ()
                             (declare (not safe))
                             (##car _e125957126806_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L126814_ _tl125955126811_))
                            (___kont128954128955_ _L126814_))
                          (___match128979128980_
                           _e125957126806_
                           _hd125956126809_
                           _tl125955126811_))))
                  (let () (declare (not safe)) (_g125952126148_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self125899_ _stx125900_)
        (letrec ((_clause-e125902_
                  (lambda (_form125943_)
                    (let ((__obj130636
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
                       __obj130636
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form125943_))
                       (if (let ((__tmp130707
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp130707))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form125943_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form125943_))
                               '#f)
                           '#f))
                      __obj130636))))
          (let* ((_g125904125914_
                  (lambda (_g125905125911_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125905125911_))))
                 (_g125903125940_
                  (lambda (_g125905125917_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125905125917_))
                        (let ((_e125909125919_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125905125917_))))
                          (let ((_hd125908125922_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125909125919_)))
                                (_tl125907125924_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125909125919_))))
                            ((lambda (_L125927_)
                               (let ((_clauses125938_
                                      (map _clause-e125902_ _L125927_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses125938_)))
                             _tl125907125924_)))
                        (let ()
                          (declare (not safe))
                          (_g125904125914_ _g125905125917_))))))
            (declare (not safe))
            (_g125903125940_ _stx125900_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self125830_ _stx125831_)
        (let* ((_g125833125850_
                (lambda (_g125834125847_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125834125847_))))
               (_g125832125896_
                (lambda (_g125834125853_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125834125853_))
                      (let ((_e125839125855_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125834125853_))))
                        (let ((_hd125838125858_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125839125855_)))
                              (_tl125837125860_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125839125855_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125837125860_))
                              (let ((_e125842125863_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125837125860_))))
                                (let ((_hd125841125866_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125842125863_)))
                                      (_tl125840125868_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125842125863_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125840125868_))
                                      (let ((_e125845125871_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125840125868_))))
                                        (let ((_hd125844125874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125845125871_)))
                                              (_tl125843125876_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125845125871_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125843125876_))
                                              ((lambda (_L125879_ _L125880_)
                                                 (let ((__tmp130708
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self125830_
                                                             _L125879_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp130708
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd125844125874_
                                               _hd125841125866_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125833125850_
                                                 _g125834125853_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125833125850_ _g125834125853_)))))
                              (let ()
                                (declare (not safe))
                                (_g125833125850_ _g125834125853_)))))
                      (let ()
                        (declare (not safe))
                        (_g125833125850_ _g125834125853_))))))
          (declare (not safe))
          (_g125832125896_ _stx125831_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self125734_ _stx125735_)
        (let* ((___stx129280129281_ _stx125735_)
               (_g125738125758_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129280129281_)))))
          (let ((___kont129282129283_
                 (lambda (_L125802_ _L125803_)
                   (let ((_type-e125820125822_
                          (let ((__tmp130709
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L125803_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp130709))))
                     (if _type-e125820125822_
                         (let ((_type-e125825_ _type-e125820125822_))
                           (_type-e125825_ _stx125735_ _L125802_))
                         '#f))))
                (___kont129284129285_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129280129281_))
                (let ((_e125744125770_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129280129281_))))
                  (let ((_tl125742125775_
                         (let () (declare (not safe)) (##cdr _e125744125770_)))
                        (_hd125743125773_
                         (let ()
                           (declare (not safe))
                           (##car _e125744125770_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125742125775_))
                        (let ((_e125747125778_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125742125775_))))
                          (let ((_tl125745125783_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125747125778_)))
                                (_hd125746125781_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125747125778_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125746125781_))
                                (let ((_e125750125786_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125746125781_))))
                                  (let ((_tl125748125791_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125750125786_)))
                                        (_hd125749125789_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125750125786_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125749125789_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125749125789_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125748125791_))
                                                (let ((_e125753125794_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125748125791_))))
                                                  (let ((_tl125751125799_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125753125794_)))
                                                        (_hd125752125797_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125753125794_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125751125799_))
                                                        (___kont129282129283_
                                                         _tl125745125783_
                                                         _hd125752125797_)
                                                        (___kont129284129285_))))
                                                (___kont129284129285_))
                                            (___kont129284129285_))
                                        (___kont129284129285_))))
                                (___kont129284129285_))))
                        (___kont129284129285_))))
                (___kont129284129285_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self125682_ _stx125683_)
        (let* ((_g125685125698_
                (lambda (_g125686125695_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125686125695_))))
               (_g125684125731_
                (lambda (_g125686125701_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125686125701_))
                      (let ((_e125690125703_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125686125701_))))
                        (let ((_hd125689125706_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125690125703_)))
                              (_tl125688125708_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125690125703_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125688125708_))
                              (let ((_e125693125711_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125688125708_))))
                                (let ((_hd125692125714_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125693125711_)))
                                      (_tl125691125716_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125693125711_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125691125716_))
                                      ((lambda (_L125719_)
                                         (let ((__tmp130710
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125719_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp130710)))
                                       _hd125692125714_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125685125698_ _g125686125701_)))))
                              (let ()
                                (declare (not safe))
                                (_g125685125698_ _g125686125701_)))))
                      (let ()
                        (declare (not safe))
                        (_g125685125698_ _g125686125701_))))))
          (declare (not safe))
          (_g125684125731_ _stx125683_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form124916_)
        (let* ((___stx129318129319_ _form124916_)
               (_g124921125078_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129318129319_)))))
          (let ((___kont129320129321_
                 (lambda (_L125602_ _L125603_ _L125604_) '#t))
                (___kont129326129327_
                 (lambda (_L125390_
                          _L125391_
                          _L125392_
                          _L125393_
                          _L125394_
                          _L125395_)
                   '#t))
                (___kont129332129333_
                 (lambda (_L125186_ _L125187_ _L125188_ _L125189_) '#t))
                (___kont129334129335_ (lambda () '#f)))
            (let* ((___match129459129460_
                    (lambda (_e125040125090_
                             _hd125039125093_
                             _tl125038125095_
                             _e125043125098_
                             _hd125042125101_
                             _tl125041125103_
                             _e125046125106_
                             _hd125045125109_
                             _tl125044125111_
                             _e125049125114_
                             _hd125048125117_
                             _tl125047125119_
                             _e125052125122_
                             _hd125051125125_
                             _tl125050125127_
                             _e125055125130_
                             _hd125054125133_
                             _tl125053125135_
                             _e125058125138_
                             _hd125057125141_
                             _tl125056125143_
                             _e125061125146_
                             _hd125060125149_
                             _tl125059125151_
                             _e125064125154_
                             _hd125063125157_
                             _tl125062125159_
                             _e125067125162_
                             _hd125066125165_
                             _tl125065125167_
                             _e125070125170_
                             _hd125069125173_
                             _tl125068125175_
                             _e125073125178_
                             _hd125072125181_
                             _tl125071125183_)
                      (let ((_L125186_ _hd125072125181_)
                            (_L125187_ _hd125063125157_)
                            (_L125188_ _hd125054125133_)
                            (_L125189_ _hd125039125093_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125189_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125188_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125189_ _L125186_))
                                 (let ((__tmp130711
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L125187_
                                           _L125189_))))
                                   (declare (not safe))
                                   (not __tmp130711)))
                            (___kont129332129333_
                             _L125186_
                             _L125187_
                             _L125188_
                             _L125189_)
                            (___kont129334129335_)))))
                   (___match129431129432_
                    (lambda (_e125040125090_
                             _hd125039125093_
                             _tl125038125095_
                             _e125043125098_
                             _hd125042125101_
                             _tl125041125103_
                             _e125046125106_
                             _hd125045125109_
                             _tl125044125111_
                             _e125049125114_
                             _hd125048125117_
                             _tl125047125119_
                             _e125052125122_
                             _hd125051125125_
                             _tl125050125127_
                             _e125055125130_
                             _hd125054125133_
                             _tl125053125135_
                             _e125058125138_
                             _hd125057125141_
                             _tl125056125143_
                             _e125061125146_
                             _hd125060125149_
                             _tl125059125151_
                             _e125064125154_
                             _hd125063125157_
                             _tl125062125159_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125056125143_))
                          (let ((_e125067125162_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125056125143_))))
                            (let ((_tl125065125167_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125067125162_)))
                                  (_hd125066125165_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125067125162_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125066125165_))
                                  (let ((_e125070125170_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125066125165_))))
                                    (let ((_tl125068125175_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125070125170_)))
                                          (_hd125069125173_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125070125170_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125069125173_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125069125173_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125068125175_))
                                                  (let ((_e125073125178_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125068125175_))))
                                                    (let ((_tl125071125183_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125073125178_)))
                                                          (_hd125072125181_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125073125178_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125071125183_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl125065125167_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125041125103_))
                          (___match129459129460_
                           _e125040125090_
                           _hd125039125093_
                           _tl125038125095_
                           _e125043125098_
                           _hd125042125101_
                           _tl125041125103_
                           _e125046125106_
                           _hd125045125109_
                           _tl125044125111_
                           _e125049125114_
                           _hd125048125117_
                           _tl125047125119_
                           _e125052125122_
                           _hd125051125125_
                           _tl125050125127_
                           _e125055125130_
                           _hd125054125133_
                           _tl125053125135_
                           _e125058125138_
                           _hd125057125141_
                           _tl125056125143_
                           _e125061125146_
                           _hd125060125149_
                           _tl125059125151_
                           _e125064125154_
                           _hd125063125157_
                           _tl125062125159_
                           _e125067125162_
                           _hd125066125165_
                           _tl125065125167_
                           _e125070125170_
                           _hd125069125173_
                           _tl125068125175_
                           _e125073125178_
                           _hd125072125181_
                           _tl125071125183_)
                          (___kont129334129335_))
                      (___kont129334129335_))
                  (___kont129334129335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129334129335_))
                                              (___kont129334129335_))
                                          (___kont129334129335_))))
                                  (___kont129334129335_))))
                          (___kont129334129335_))))
                   (___match129361129362_
                    (lambda (_e124976125230_
                             _hd124975125233_
                             _tl124974125235_
                             ___splice129328129329_
                             _target124977125238_
                             _tl124979125240_)
                      (letrec ((_loop124980125243_
                                (lambda (_hd124978125246_ _arg124984125248_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124978125246_))
                                      (let ((_e124981125251_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124978125246_))))
                                        (let ((_lp-tl124983125256_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124981125251_)))
                                              (_lp-hd124982125254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124981125251_))))
                                          (let ((__tmp130726
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124982125254_
                                                         _arg124984125248_))))
                                            (declare (not safe))
                                            (_loop124980125243_
                                             _lp-tl124983125256_
                                             __tmp130726))))
                                      (let ((_arg124985125259_
                                             (reverse _arg124984125248_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124974125235_))
                                            (let ((_e124988125262_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124974125235_))))
                                              (let ((_tl124986125267_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124988125262_)))
                                                    (_hd124987125265_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124988125262_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124987125265_))
                                                    (let ((_e124991125270_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124987125265_))))
                                                      (let ((_tl124989125275_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124991125270_)))
                    (_hd124990125273_
                     (let () (declare (not safe)) (##car _e124991125270_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124990125273_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124990125273_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124989125275_))
                            (let ((_e124994125278_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124989125275_))))
                              (let ((_tl124992125283_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124994125278_)))
                                    (_hd124993125281_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124994125278_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124993125281_))
                                    (let ((_e124997125286_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124993125281_))))
                                      (let ((_tl124995125291_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124997125286_)))
                                            (_hd124996125289_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124997125286_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124996125289_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124996125289_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124995125291_))
                                                    (let ((_e125000125294_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124995125291_))))
                                                      (let ((_tl124998125299_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125000125294_)))
                    (_hd124999125297_
                     (let () (declare (not safe)) (##car _e125000125294_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124998125299_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124992125283_))
                        (let ((_e125003125302_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124992125283_))))
                          (let ((_tl125001125307_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125003125302_)))
                                (_hd125002125305_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125003125302_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125002125305_))
                                (let ((_e125006125310_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125002125305_))))
                                  (let ((_tl125004125315_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125006125310_)))
                                        (_hd125005125313_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125006125310_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125005125313_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125005125313_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125004125315_))
                                                (let ((_e125009125318_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125004125315_))))
                                                  (let ((_tl125007125323_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125009125318_)))
                                                        (_hd125008125321_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125009125318_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125007125323_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl125001125307_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl125001125307_))
                              '1)
                        (let ((___splice129330129331_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl125001125307_
                                  '1))))
                          (let ((_tl125012125328_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129330129331_ '1)))
                                (_target125010125326_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129330129331_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125012125328_))
                                (let ((_e125021125331_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125012125328_))))
                                  (let ((_tl125019125336_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125021125331_)))
                                        (_hd125020125334_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125021125331_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd125020125334_))
                                        (let ((_e125024125339_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd125020125334_))))
                                          (let ((_tl125022125344_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e125024125339_)))
                                                (_hd125023125342_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e125024125339_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd125023125342_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd125023125342_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl125022125344_))
                                                        (let ((_e125027125347_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl125022125344_))))
                  (let ((_tl125025125352_
                         (let () (declare (not safe)) (##cdr _e125027125347_)))
                        (_hd125026125350_
                         (let ()
                           (declare (not safe))
                           (##car _e125027125347_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl125025125352_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl125019125336_))
                            (letrec ((_loop125013125355_
                                      (lambda (_hd125011125358_
                                               _xarg125017125360_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd125011125358_))
                                            (let ((_e125014125363_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd125011125358_))))
                                              (let ((_lp-tl125016125368_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e125014125363_)))
                                                    (_lp-hd125015125366_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e125014125363_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd125015125366_))
                                                    (let ((_e125030125371_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd125015125366_))))
                                                      (let ((_tl125028125376_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125030125371_)))
                    (_hd125029125374_
                     (let () (declare (not safe)) (##car _e125030125371_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd125029125374_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd125029125374_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl125028125376_))
                            (let ((_e125033125379_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl125028125376_))))
                              (let ((_tl125031125384_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e125033125379_)))
                                    (_hd125032125382_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e125033125379_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl125031125384_))
                                    (let ((__tmp130725
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd125032125382_
                                                   _xarg125017125360_))))
                                      (declare (not safe))
                                      (_loop125013125355_
                                       _lp-tl125016125368_
                                       __tmp130725))
                                    (___match129431129432_
                                     _e124976125230_
                                     _hd124975125233_
                                     _tl124974125235_
                                     _e124988125262_
                                     _hd124987125265_
                                     _tl124986125267_
                                     _e124991125270_
                                     _hd124990125273_
                                     _tl124989125275_
                                     _e124994125278_
                                     _hd124993125281_
                                     _tl124992125283_
                                     _e124997125286_
                                     _hd124996125289_
                                     _tl124995125291_
                                     _e125000125294_
                                     _hd124999125297_
                                     _tl124998125299_
                                     _e125003125302_
                                     _hd125002125305_
                                     _tl125001125307_
                                     _e125006125310_
                                     _hd125005125313_
                                     _tl125004125315_
                                     _e125009125318_
                                     _hd125008125321_
                                     _tl125007125323_))))
                            (___match129431129432_
                             _e124976125230_
                             _hd124975125233_
                             _tl124974125235_
                             _e124988125262_
                             _hd124987125265_
                             _tl124986125267_
                             _e124991125270_
                             _hd124990125273_
                             _tl124989125275_
                             _e124994125278_
                             _hd124993125281_
                             _tl124992125283_
                             _e124997125286_
                             _hd124996125289_
                             _tl124995125291_
                             _e125000125294_
                             _hd124999125297_
                             _tl124998125299_
                             _e125003125302_
                             _hd125002125305_
                             _tl125001125307_
                             _e125006125310_
                             _hd125005125313_
                             _tl125004125315_
                             _e125009125318_
                             _hd125008125321_
                             _tl125007125323_))
                        (___match129431129432_
                         _e124976125230_
                         _hd124975125233_
                         _tl124974125235_
                         _e124988125262_
                         _hd124987125265_
                         _tl124986125267_
                         _e124991125270_
                         _hd124990125273_
                         _tl124989125275_
                         _e124994125278_
                         _hd124993125281_
                         _tl124992125283_
                         _e124997125286_
                         _hd124996125289_
                         _tl124995125291_
                         _e125000125294_
                         _hd124999125297_
                         _tl124998125299_
                         _e125003125302_
                         _hd125002125305_
                         _tl125001125307_
                         _e125006125310_
                         _hd125005125313_
                         _tl125004125315_
                         _e125009125318_
                         _hd125008125321_
                         _tl125007125323_))
                    (___match129431129432_
                     _e124976125230_
                     _hd124975125233_
                     _tl124974125235_
                     _e124988125262_
                     _hd124987125265_
                     _tl124986125267_
                     _e124991125270_
                     _hd124990125273_
                     _tl124989125275_
                     _e124994125278_
                     _hd124993125281_
                     _tl124992125283_
                     _e124997125286_
                     _hd124996125289_
                     _tl124995125291_
                     _e125000125294_
                     _hd124999125297_
                     _tl124998125299_
                     _e125003125302_
                     _hd125002125305_
                     _tl125001125307_
                     _e125006125310_
                     _hd125005125313_
                     _tl125004125315_
                     _e125009125318_
                     _hd125008125321_
                     _tl125007125323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129431129432_
                                                     _e124976125230_
                                                     _hd124975125233_
                                                     _tl124974125235_
                                                     _e124988125262_
                                                     _hd124987125265_
                                                     _tl124986125267_
                                                     _e124991125270_
                                                     _hd124990125273_
                                                     _tl124989125275_
                                                     _e124994125278_
                                                     _hd124993125281_
                                                     _tl124992125283_
                                                     _e124997125286_
                                                     _hd124996125289_
                                                     _tl124995125291_
                                                     _e125000125294_
                                                     _hd124999125297_
                                                     _tl124998125299_
                                                     _e125003125302_
                                                     _hd125002125305_
                                                     _tl125001125307_
                                                     _e125006125310_
                                                     _hd125005125313_
                                                     _tl125004125315_
                                                     _e125009125318_
                                                     _hd125008125321_
                                                     _tl125007125323_))))
                                            (let ((_xarg125018125387_
                                                   (reverse _xarg125017125360_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124986125267_))
                                                  (let ((_L125390_
                                                         _hd125026125350_)
                                                        (_L125391_
                                                         _xarg125018125387_)
                                                        (_L125392_
                                                         _hd125008125321_)
                                                        (_L125393_
                                                         _hd124999125297_)
                                                        (_L125394_
                                                         _tl124979125240_)
                                                        (_L125395_
                                                         _arg124985125259_))
                                                    (if (and (let ((__tmp130723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130724
                                   (lambda (_g125438125441_ _g125439125443_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125438125441_
                                             _g125439125443_)))))
                              (declare (not safe))
                              (foldr1 __tmp130724 '() _L125395_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp130723))
                     (let () (declare (not safe)) (gx#identifier? _L125394_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L125393_ 'apply))
                     (fx= (length (let ((__tmp130721
                                         (lambda (_g125445125448_
                                                  _g125446125450_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125445125448_
                                                   _g125446125450_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130721 '() _L125395_)))
                          (length (let ((__tmp130722
                                         (lambda (_g125452125455_
                                                  _g125453125457_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125452125455_
                                                   _g125453125457_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130722 '() _L125391_))))
                     (let ((__tmp130719
                            (let ((__tmp130720
                                   (lambda (_g125459125462_ _g125460125464_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125459125462_
                                             _g125460125464_)))))
                              (declare (not safe))
                              (foldr1 __tmp130720 '() _L125395_)))
                           (__tmp130717
                            (let ((__tmp130718
                                   (lambda (_g125466125469_ _g125467125471_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125466125469_
                                             _g125467125471_)))))
                              (declare (not safe))
                              (foldr1 __tmp130718 '() _L125391_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp130719 __tmp130717))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L125394_ _L125390_))
                     (let ((__tmp130712
                            (let ((__tmp130716
                                   (lambda (_g125473125475_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g125473125475_
                                        _L125392_))))
                                  (__tmp130713
                                   (let ((__tmp130715
                                          (lambda (_g125477125480_
                                                   _g125478125482_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g125477125480_
                                                    _g125478125482_))))
                                         (__tmp130714
                                          (let ()
                                            (declare (not safe))
                                            (cons _L125394_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp130715
                                             __tmp130714
                                             _L125395_))))
                              (declare (not safe))
                              (find __tmp130716 __tmp130713))))
                       (declare (not safe))
                       (not __tmp130712)))
                (___kont129326129327_
                 _L125390_
                 _L125391_
                 _L125392_
                 _L125393_
                 _L125394_
                 _L125395_)
                (___match129431129432_
                 _e124976125230_
                 _hd124975125233_
                 _tl124974125235_
                 _e124988125262_
                 _hd124987125265_
                 _tl124986125267_
                 _e124991125270_
                 _hd124990125273_
                 _tl124989125275_
                 _e124994125278_
                 _hd124993125281_
                 _tl124992125283_
                 _e124997125286_
                 _hd124996125289_
                 _tl124995125291_
                 _e125000125294_
                 _hd124999125297_
                 _tl124998125299_
                 _e125003125302_
                 _hd125002125305_
                 _tl125001125307_
                 _e125006125310_
                 _hd125005125313_
                 _tl125004125315_
                 _e125009125318_
                 _hd125008125321_
                 _tl125007125323_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129431129432_
                                                   _e124976125230_
                                                   _hd124975125233_
                                                   _tl124974125235_
                                                   _e124988125262_
                                                   _hd124987125265_
                                                   _tl124986125267_
                                                   _e124991125270_
                                                   _hd124990125273_
                                                   _tl124989125275_
                                                   _e124994125278_
                                                   _hd124993125281_
                                                   _tl124992125283_
                                                   _e124997125286_
                                                   _hd124996125289_
                                                   _tl124995125291_
                                                   _e125000125294_
                                                   _hd124999125297_
                                                   _tl124998125299_
                                                   _e125003125302_
                                                   _hd125002125305_
                                                   _tl125001125307_
                                                   _e125006125310_
                                                   _hd125005125313_
                                                   _tl125004125315_
                                                   _e125009125318_
                                                   _hd125008125321_
                                                   _tl125007125323_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop125013125355_ _target125010125326_ '())))
                            (___match129431129432_
                             _e124976125230_
                             _hd124975125233_
                             _tl124974125235_
                             _e124988125262_
                             _hd124987125265_
                             _tl124986125267_
                             _e124991125270_
                             _hd124990125273_
                             _tl124989125275_
                             _e124994125278_
                             _hd124993125281_
                             _tl124992125283_
                             _e124997125286_
                             _hd124996125289_
                             _tl124995125291_
                             _e125000125294_
                             _hd124999125297_
                             _tl124998125299_
                             _e125003125302_
                             _hd125002125305_
                             _tl125001125307_
                             _e125006125310_
                             _hd125005125313_
                             _tl125004125315_
                             _e125009125318_
                             _hd125008125321_
                             _tl125007125323_))
                        (___match129431129432_
                         _e124976125230_
                         _hd124975125233_
                         _tl124974125235_
                         _e124988125262_
                         _hd124987125265_
                         _tl124986125267_
                         _e124991125270_
                         _hd124990125273_
                         _tl124989125275_
                         _e124994125278_
                         _hd124993125281_
                         _tl124992125283_
                         _e124997125286_
                         _hd124996125289_
                         _tl124995125291_
                         _e125000125294_
                         _hd124999125297_
                         _tl124998125299_
                         _e125003125302_
                         _hd125002125305_
                         _tl125001125307_
                         _e125006125310_
                         _hd125005125313_
                         _tl125004125315_
                         _e125009125318_
                         _hd125008125321_
                         _tl125007125323_))))
                (___match129431129432_
                 _e124976125230_
                 _hd124975125233_
                 _tl124974125235_
                 _e124988125262_
                 _hd124987125265_
                 _tl124986125267_
                 _e124991125270_
                 _hd124990125273_
                 _tl124989125275_
                 _e124994125278_
                 _hd124993125281_
                 _tl124992125283_
                 _e124997125286_
                 _hd124996125289_
                 _tl124995125291_
                 _e125000125294_
                 _hd124999125297_
                 _tl124998125299_
                 _e125003125302_
                 _hd125002125305_
                 _tl125001125307_
                 _e125006125310_
                 _hd125005125313_
                 _tl125004125315_
                 _e125009125318_
                 _hd125008125321_
                 _tl125007125323_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129431129432_
                                                     _e124976125230_
                                                     _hd124975125233_
                                                     _tl124974125235_
                                                     _e124988125262_
                                                     _hd124987125265_
                                                     _tl124986125267_
                                                     _e124991125270_
                                                     _hd124990125273_
                                                     _tl124989125275_
                                                     _e124994125278_
                                                     _hd124993125281_
                                                     _tl124992125283_
                                                     _e124997125286_
                                                     _hd124996125289_
                                                     _tl124995125291_
                                                     _e125000125294_
                                                     _hd124999125297_
                                                     _tl124998125299_
                                                     _e125003125302_
                                                     _hd125002125305_
                                                     _tl125001125307_
                                                     _e125006125310_
                                                     _hd125005125313_
                                                     _tl125004125315_
                                                     _e125009125318_
                                                     _hd125008125321_
                                                     _tl125007125323_))
                                                (___match129431129432_
                                                 _e124976125230_
                                                 _hd124975125233_
                                                 _tl124974125235_
                                                 _e124988125262_
                                                 _hd124987125265_
                                                 _tl124986125267_
                                                 _e124991125270_
                                                 _hd124990125273_
                                                 _tl124989125275_
                                                 _e124994125278_
                                                 _hd124993125281_
                                                 _tl124992125283_
                                                 _e124997125286_
                                                 _hd124996125289_
                                                 _tl124995125291_
                                                 _e125000125294_
                                                 _hd124999125297_
                                                 _tl124998125299_
                                                 _e125003125302_
                                                 _hd125002125305_
                                                 _tl125001125307_
                                                 _e125006125310_
                                                 _hd125005125313_
                                                 _tl125004125315_
                                                 _e125009125318_
                                                 _hd125008125321_
                                                 _tl125007125323_))))
                                        (___match129431129432_
                                         _e124976125230_
                                         _hd124975125233_
                                         _tl124974125235_
                                         _e124988125262_
                                         _hd124987125265_
                                         _tl124986125267_
                                         _e124991125270_
                                         _hd124990125273_
                                         _tl124989125275_
                                         _e124994125278_
                                         _hd124993125281_
                                         _tl124992125283_
                                         _e124997125286_
                                         _hd124996125289_
                                         _tl124995125291_
                                         _e125000125294_
                                         _hd124999125297_
                                         _tl124998125299_
                                         _e125003125302_
                                         _hd125002125305_
                                         _tl125001125307_
                                         _e125006125310_
                                         _hd125005125313_
                                         _tl125004125315_
                                         _e125009125318_
                                         _hd125008125321_
                                         _tl125007125323_))))
                                (___match129431129432_
                                 _e124976125230_
                                 _hd124975125233_
                                 _tl124974125235_
                                 _e124988125262_
                                 _hd124987125265_
                                 _tl124986125267_
                                 _e124991125270_
                                 _hd124990125273_
                                 _tl124989125275_
                                 _e124994125278_
                                 _hd124993125281_
                                 _tl124992125283_
                                 _e124997125286_
                                 _hd124996125289_
                                 _tl124995125291_
                                 _e125000125294_
                                 _hd124999125297_
                                 _tl124998125299_
                                 _e125003125302_
                                 _hd125002125305_
                                 _tl125001125307_
                                 _e125006125310_
                                 _hd125005125313_
                                 _tl125004125315_
                                 _e125009125318_
                                 _hd125008125321_
                                 _tl125007125323_))))
                        (___match129431129432_
                         _e124976125230_
                         _hd124975125233_
                         _tl124974125235_
                         _e124988125262_
                         _hd124987125265_
                         _tl124986125267_
                         _e124991125270_
                         _hd124990125273_
                         _tl124989125275_
                         _e124994125278_
                         _hd124993125281_
                         _tl124992125283_
                         _e124997125286_
                         _hd124996125289_
                         _tl124995125291_
                         _e125000125294_
                         _hd124999125297_
                         _tl124998125299_
                         _e125003125302_
                         _hd125002125305_
                         _tl125001125307_
                         _e125006125310_
                         _hd125005125313_
                         _tl125004125315_
                         _e125009125318_
                         _hd125008125321_
                         _tl125007125323_))
                    (___match129431129432_
                     _e124976125230_
                     _hd124975125233_
                     _tl124974125235_
                     _e124988125262_
                     _hd124987125265_
                     _tl124986125267_
                     _e124991125270_
                     _hd124990125273_
                     _tl124989125275_
                     _e124994125278_
                     _hd124993125281_
                     _tl124992125283_
                     _e124997125286_
                     _hd124996125289_
                     _tl124995125291_
                     _e125000125294_
                     _hd124999125297_
                     _tl124998125299_
                     _e125003125302_
                     _hd125002125305_
                     _tl125001125307_
                     _e125006125310_
                     _hd125005125313_
                     _tl125004125315_
                     _e125009125318_
                     _hd125008125321_
                     _tl125007125323_))
                (___kont129334129335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129334129335_))
                                            (___kont129334129335_))
                                        (___kont129334129335_))))
                                (___kont129334129335_))))
                        (___kont129334129335_))
                    (___kont129334129335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129334129335_))
                                                (___kont129334129335_))
                                            (___kont129334129335_))))
                                    (___kont129334129335_))))
                            (___kont129334129335_))
                        (___kont129334129335_))
                    (___kont129334129335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129334129335_))))
                                            (___kont129334129335_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124980125243_ _target124977125238_ '())))))
                   (___match129349129350_
                    (lambda (_e124928125490_
                             _hd124927125493_
                             _tl124926125495_
                             ___splice129322129323_
                             _target124929125498_
                             _tl124931125500_)
                      (letrec ((_loop124932125503_
                                (lambda (_hd124930125506_ _arg124936125508_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124930125506_))
                                      (let ((_e124933125511_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124930125506_))))
                                        (let ((_lp-tl124935125516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124933125511_)))
                                              (_lp-hd124934125514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124933125511_))))
                                          (let ((__tmp130740
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124934125514_
                                                         _arg124936125508_))))
                                            (declare (not safe))
                                            (_loop124932125503_
                                             _lp-tl124935125516_
                                             __tmp130740))))
                                      (let ((_arg124937125519_
                                             (reverse _arg124936125508_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124926125495_))
                                            (let ((_e124940125522_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124926125495_))))
                                              (let ((_tl124938125527_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124940125522_)))
                                                    (_hd124939125525_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124940125522_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124939125525_))
                                                    (let ((_e124943125530_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124939125525_))))
                                                      (let ((_tl124941125535_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124943125530_)))
                    (_hd124942125533_
                     (let () (declare (not safe)) (##car _e124943125530_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124942125533_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124942125533_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124941125535_))
                            (let ((_e124946125538_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124941125535_))))
                              (let ((_tl124944125543_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124946125538_)))
                                    (_hd124945125541_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124946125538_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124945125541_))
                                    (let ((_e124949125546_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124945125541_))))
                                      (let ((_tl124947125551_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124949125546_)))
                                            (_hd124948125549_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124949125546_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124948125549_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124948125549_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124947125551_))
                                                    (let ((_e124952125554_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124947125551_))))
                                                      (let ((_tl124950125559_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124952125554_)))
                    (_hd124951125557_
                     (let () (declare (not safe)) (##car _e124952125554_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124950125559_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124944125543_))
                        (let ((___splice129324129325_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124944125543_
                                  '0))))
                          (let ((_tl124955125564_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129324129325_ '1)))
                                (_target124953125562_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129324129325_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124955125564_))
                                (letrec ((_loop124956125567_
                                          (lambda (_hd124954125570_
                                                   _xarg124960125572_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124954125570_))
                                                (let ((_e124957125575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124954125570_))))
                                                  (let ((_lp-tl124959125580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124957125575_)))
                                                        (_lp-hd124958125578_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124957125575_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124958125578_))
                                                        (let ((_e124964125583_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124958125578_))))
                  (let ((_tl124962125588_
                         (let () (declare (not safe)) (##cdr _e124964125583_)))
                        (_hd124963125586_
                         (let ()
                           (declare (not safe))
                           (##car _e124964125583_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124963125586_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124963125586_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124962125588_))
                                (let ((_e124967125591_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124962125588_))))
                                  (let ((_tl124965125596_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124967125591_)))
                                        (_hd124966125594_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124967125591_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124965125596_))
                                        (let ((__tmp130739
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124966125594_
                                                       _xarg124960125572_))))
                                          (declare (not safe))
                                          (_loop124956125567_
                                           _lp-tl124959125580_
                                           __tmp130739))
                                        (___match129361129362_
                                         _e124928125490_
                                         _hd124927125493_
                                         _tl124926125495_
                                         ___splice129322129323_
                                         _target124929125498_
                                         _tl124931125500_))))
                                (___match129361129362_
                                 _e124928125490_
                                 _hd124927125493_
                                 _tl124926125495_
                                 ___splice129322129323_
                                 _target124929125498_
                                 _tl124931125500_))
                            (___match129361129362_
                             _e124928125490_
                             _hd124927125493_
                             _tl124926125495_
                             ___splice129322129323_
                             _target124929125498_
                             _tl124931125500_))
                        (___match129361129362_
                         _e124928125490_
                         _hd124927125493_
                         _tl124926125495_
                         ___splice129322129323_
                         _target124929125498_
                         _tl124931125500_))))
                (___match129361129362_
                 _e124928125490_
                 _hd124927125493_
                 _tl124926125495_
                 ___splice129322129323_
                 _target124929125498_
                 _tl124931125500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124961125599_
                                                       (reverse _xarg124960125572_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124938125527_))
                                                      (let ((_L125602_
                                                             _xarg124961125599_)
                                                            (_L125603_
                                                             _hd124951125557_)
                                                            (_L125604_
                                                             _arg124937125519_))
                                                        (if (and (let ((__tmp130737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp130738
                                       (lambda (_g125632125635_
                                                _g125633125637_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125632125635_
                                                 _g125633125637_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130738 '() _L125604_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp130737))
                         (fx= (length (let ((__tmp130735
                                             (lambda (_g125639125642_
                                                      _g125640125644_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125639125642_
                                                       _g125640125644_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130735 '() _L125604_)))
                              (length (let ((__tmp130736
                                             (lambda (_g125646125649_
                                                      _g125647125651_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125646125649_
                                                       _g125647125651_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130736 '() _L125602_))))
                         (let ((__tmp130733
                                (let ((__tmp130734
                                       (lambda (_g125653125656_
                                                _g125654125658_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125653125656_
                                                 _g125654125658_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130734 '() _L125604_)))
                               (__tmp130731
                                (let ((__tmp130732
                                       (lambda (_g125660125663_
                                                _g125661125665_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125660125663_
                                                 _g125661125665_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130732 '() _L125602_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp130733
                                    __tmp130731))
                         (let ((__tmp130727
                                (let ((__tmp130730
                                       (lambda (_g125667125669_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g125667125669_
                                            _L125603_))))
                                      (__tmp130728
                                       (let ((__tmp130729
                                              (lambda (_g125671125674_
                                                       _g125672125676_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g125671125674_
                                                        _g125672125676_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp130729 '() _L125604_))))
                                  (declare (not safe))
                                  (find __tmp130730 __tmp130728))))
                           (declare (not safe))
                           (not __tmp130727)))
                    (___kont129320129321_ _L125602_ _L125603_ _L125604_)
                    (___match129361129362_
                     _e124928125490_
                     _hd124927125493_
                     _tl124926125495_
                     ___splice129322129323_
                     _target124929125498_
                     _tl124931125500_)))
              (___match129361129362_
               _e124928125490_
               _hd124927125493_
               _tl124926125495_
               ___splice129322129323_
               _target124929125498_
               _tl124931125500_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop124956125567_
                                     _target124953125562_
                                     '())))
                                (___match129361129362_
                                 _e124928125490_
                                 _hd124927125493_
                                 _tl124926125495_
                                 ___splice129322129323_
                                 _target124929125498_
                                 _tl124931125500_))))
                        (___match129361129362_
                         _e124928125490_
                         _hd124927125493_
                         _tl124926125495_
                         ___splice129322129323_
                         _target124929125498_
                         _tl124931125500_))
                    (___match129361129362_
                     _e124928125490_
                     _hd124927125493_
                     _tl124926125495_
                     ___splice129322129323_
                     _target124929125498_
                     _tl124931125500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129361129362_
                                                     _e124928125490_
                                                     _hd124927125493_
                                                     _tl124926125495_
                                                     ___splice129322129323_
                                                     _target124929125498_
                                                     _tl124931125500_))
                                                (___match129361129362_
                                                 _e124928125490_
                                                 _hd124927125493_
                                                 _tl124926125495_
                                                 ___splice129322129323_
                                                 _target124929125498_
                                                 _tl124931125500_))
                                            (___match129361129362_
                                             _e124928125490_
                                             _hd124927125493_
                                             _tl124926125495_
                                             ___splice129322129323_
                                             _target124929125498_
                                             _tl124931125500_))))
                                    (___match129361129362_
                                     _e124928125490_
                                     _hd124927125493_
                                     _tl124926125495_
                                     ___splice129322129323_
                                     _target124929125498_
                                     _tl124931125500_))))
                            (___match129361129362_
                             _e124928125490_
                             _hd124927125493_
                             _tl124926125495_
                             ___splice129322129323_
                             _target124929125498_
                             _tl124931125500_))
                        (___match129361129362_
                         _e124928125490_
                         _hd124927125493_
                         _tl124926125495_
                         ___splice129322129323_
                         _target124929125498_
                         _tl124931125500_))
                    (___match129361129362_
                     _e124928125490_
                     _hd124927125493_
                     _tl124926125495_
                     ___splice129322129323_
                     _target124929125498_
                     _tl124931125500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129361129362_
                                                     _e124928125490_
                                                     _hd124927125493_
                                                     _tl124926125495_
                                                     ___splice129322129323_
                                                     _target124929125498_
                                                     _tl124931125500_))))
                                            (___match129361129362_
                                             _e124928125490_
                                             _hd124927125493_
                                             _tl124926125495_
                                             ___splice129322129323_
                                             _target124929125498_
                                             _tl124931125500_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124932125503_ _target124929125498_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129318129319_))
                  (let ((_e124928125490_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129318129319_))))
                    (let ((_tl124926125495_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124928125490_)))
                          (_hd124927125493_
                           (let ()
                             (declare (not safe))
                             (##car _e124928125490_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124927125493_))
                          (let ((___splice129322129323_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124927125493_
                                    '0))))
                            (let ((_tl124931125500_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129322129323_ '1)))
                                  (_target124929125498_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129322129323_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124931125500_))
                                  (___match129349129350_
                                   _e124928125490_
                                   _hd124927125493_
                                   _tl124926125495_
                                   ___splice129322129323_
                                   _target124929125498_
                                   _tl124931125500_)
                                  (___match129361129362_
                                   _e124928125490_
                                   _hd124927125493_
                                   _tl124926125495_
                                   ___splice129322129323_
                                   _target124929125498_
                                   _tl124931125500_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124926125495_))
                              (let ((_e125043125098_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124926125495_))))
                                (let ((_tl125041125103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125043125098_)))
                                      (_hd125042125101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125043125098_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125042125101_))
                                      (let ((_e125046125106_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125042125101_))))
                                        (let ((_tl125044125111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125046125106_)))
                                              (_hd125045125109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125046125106_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd125045125109_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd125045125109_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125044125111_))
                                                      (let ((_e125049125114_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125044125111_))))
                (let ((_tl125047125119_
                       (let () (declare (not safe)) (##cdr _e125049125114_)))
                      (_hd125048125117_
                       (let () (declare (not safe)) (##car _e125049125114_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125048125117_))
                      (let ((_e125052125122_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125048125117_))))
                        (let ((_tl125050125127_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125052125122_)))
                              (_hd125051125125_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125052125122_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125051125125_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125051125125_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125050125127_))
                                      (let ((_e125055125130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125050125127_))))
                                        (let ((_tl125053125135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125055125130_)))
                                              (_hd125054125133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125055125130_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125053125135_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125047125119_))
                                                  (let ((_e125058125138_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125047125119_))))
                                                    (let ((_tl125056125143_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125058125138_)))
                                                          (_hd125057125141_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125058125138_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125057125141_))
                                                          (let ((_e125061125146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125057125141_))))
                    (let ((_tl125059125151_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125061125146_)))
                          (_hd125060125149_
                           (let ()
                             (declare (not safe))
                             (##car _e125061125146_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125060125149_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125060125149_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125059125151_))
                                  (let ((_e125064125154_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125059125151_))))
                                    (let ((_tl125062125159_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125064125154_)))
                                          (_hd125063125157_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125064125154_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125062125159_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125056125143_))
                                              (let ((_e125067125162_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125056125143_))))
                                                (let ((_tl125065125167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125067125162_)))
                                                      (_hd125066125165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125067125162_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd125066125165_))
                                                      (let ((_e125070125170_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd125066125165_))))
                (let ((_tl125068125175_
                       (let () (declare (not safe)) (##cdr _e125070125170_)))
                      (_hd125069125173_
                       (let () (declare (not safe)) (##car _e125070125170_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd125069125173_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd125069125173_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125068125175_))
                              (let ((_e125073125178_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125068125175_))))
                                (let ((_tl125071125183_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125073125178_)))
                                      (_hd125072125181_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125073125178_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125071125183_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125065125167_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125041125103_))
                                              (___match129459129460_
                                               _e124928125490_
                                               _hd124927125493_
                                               _tl124926125495_
                                               _e125043125098_
                                               _hd125042125101_
                                               _tl125041125103_
                                               _e125046125106_
                                               _hd125045125109_
                                               _tl125044125111_
                                               _e125049125114_
                                               _hd125048125117_
                                               _tl125047125119_
                                               _e125052125122_
                                               _hd125051125125_
                                               _tl125050125127_
                                               _e125055125130_
                                               _hd125054125133_
                                               _tl125053125135_
                                               _e125058125138_
                                               _hd125057125141_
                                               _tl125056125143_
                                               _e125061125146_
                                               _hd125060125149_
                                               _tl125059125151_
                                               _e125064125154_
                                               _hd125063125157_
                                               _tl125062125159_
                                               _e125067125162_
                                               _hd125066125165_
                                               _tl125065125167_
                                               _e125070125170_
                                               _hd125069125173_
                                               _tl125068125175_
                                               _e125073125178_
                                               _hd125072125181_
                                               _tl125071125183_)
                                              (___kont129334129335_))
                                          (___kont129334129335_))
                                      (___kont129334129335_))))
                              (___kont129334129335_))
                          (___kont129334129335_))
                      (___kont129334129335_))))
              (___kont129334129335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont129334129335_))
                                          (___kont129334129335_))))
                                  (___kont129334129335_))
                              (___kont129334129335_))
                          (___kont129334129335_))))
                  (___kont129334129335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129334129335_))
                                              (___kont129334129335_))))
                                      (___kont129334129335_))
                                  (___kont129334129335_))
                              (___kont129334129335_))))
                      (___kont129334129335_))))
              (___kont129334129335_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129334129335_))
                                              (___kont129334129335_))))
                                      (___kont129334129335_))))
                              (___kont129334129335_)))))
                  (___kont129334129335_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form124384_)
        (let* ((___stx129462129463_ _form124384_)
               (_g124388124512_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129462129463_)))))
          (let ((___kont129464129465_
                 (lambda (_L124882_ _L124883_ _L124884_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124883_))))
                (___kont129470129471_
                 (lambda (_L124730_ _L124731_ _L124732_ _L124733_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124730_))))
                (___kont129474129475_
                 (lambda (_L124597_ _L124598_ _L124599_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124597_)))))
            (let* ((___match129571129572_
                    (lambda (_e124480124517_
                             _hd124479124520_
                             _tl124478124522_
                             _e124483124525_
                             _hd124482124528_
                             _tl124481124530_
                             _e124486124533_
                             _hd124485124536_
                             _tl124484124538_
                             _e124489124541_
                             _hd124488124544_
                             _tl124487124546_
                             _e124492124549_
                             _hd124491124552_
                             _tl124490124554_
                             _e124495124557_
                             _hd124494124560_
                             _tl124493124562_
                             _e124498124565_
                             _hd124497124568_
                             _tl124496124570_
                             _e124501124573_
                             _hd124500124576_
                             _tl124499124578_
                             _e124504124581_
                             _hd124503124584_
                             _tl124502124586_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124496124570_))
                          (let ((_e124507124589_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124496124570_))))
                            (let ((_tl124505124594_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124507124589_)))
                                  (_hd124506124592_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124507124589_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124505124594_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124481124530_))
                                      (___kont129474129475_
                                       _hd124503124584_
                                       _hd124494124560_
                                       _hd124479124520_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124388124512_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124388124512_)))))
                          (let () (declare (not safe)) (_g124388124512_)))))
                   (___match129501129502_
                    (lambda (_e124441124634_
                             _hd124440124637_
                             _tl124439124639_
                             ___splice129472129473_
                             _target124442124642_
                             _tl124444124644_)
                      (letrec ((_loop124445124647_
                                (lambda (_hd124443124650_ _arg124449124652_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124443124650_))
                                      (let ((_e124446124655_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124443124650_))))
                                        (let ((_lp-tl124448124660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124446124655_)))
                                              (_lp-hd124447124658_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124446124655_))))
                                          (let ((__tmp130741
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124447124658_
                                                         _arg124449124652_))))
                                            (declare (not safe))
                                            (_loop124445124647_
                                             _lp-tl124448124660_
                                             __tmp130741))))
                                      (let ((_arg124450124663_
                                             (reverse _arg124449124652_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124439124639_))
                                            (let ((_e124453124666_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124439124639_))))
                                              (let ((_tl124451124671_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124453124666_)))
                                                    (_hd124452124669_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124453124666_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124452124669_))
                                                    (let ((_e124456124674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124452124669_))))
                                                      (let ((_tl124454124679_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124456124674_)))
                    (_hd124455124677_
                     (let () (declare (not safe)) (##car _e124456124674_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124455124677_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124455124677_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124454124679_))
                            (let ((_e124459124682_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124454124679_))))
                              (let ((_tl124457124687_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124459124682_)))
                                    (_hd124458124685_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124459124682_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124458124685_))
                                    (let ((_e124462124690_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124458124685_))))
                                      (let ((_tl124460124695_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124462124690_)))
                                            (_hd124461124693_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124462124690_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124461124693_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124461124693_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124460124695_))
                                                    (let ((_e124465124698_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124460124695_))))
                                                      (let ((_tl124463124703_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124465124698_)))
                    (_hd124464124701_
                     (let () (declare (not safe)) (##car _e124465124698_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124463124703_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124457124687_))
                        (let ((_e124468124706_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124457124687_))))
                          (let ((_tl124466124711_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124468124706_)))
                                (_hd124467124709_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124468124706_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124467124709_))
                                (let ((_e124471124714_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124467124709_))))
                                  (let ((_tl124469124719_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124471124714_)))
                                        (_hd124470124717_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124471124714_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124470124717_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124470124717_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124469124719_))
                                                (let ((_e124474124722_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124469124719_))))
                                                  (let ((_tl124472124727_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124474124722_)))
                                                        (_hd124473124725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124474124722_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124472124727_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl124451124671_))
                                                            (___kont129470129471_
                                                             _hd124473124725_
                                                             _hd124464124701_
                                                             _tl124444124644_
                                                             _arg124450124663_)
                                                            (___match129571129572_
                                                             _e124441124634_
                                                             _hd124440124637_
                                                             _tl124439124639_
                                                             _e124453124666_
                                                             _hd124452124669_
                                                             _tl124451124671_
                                                             _e124456124674_
                                                             _hd124455124677_
                                                             _tl124454124679_
                                                             _e124459124682_
                                                             _hd124458124685_
                                                             _tl124457124687_
                                                             _e124462124690_
                                                             _hd124461124693_
                                                             _tl124460124695_
                                                             _e124465124698_
                                                             _hd124464124701_
                                                             _tl124463124703_
                                                             _e124468124706_
                                                             _hd124467124709_
                                                             _tl124466124711_
                                                             _e124471124714_
                                                             _hd124470124717_
                                                             _tl124469124719_
                                                             _e124474124722_
                                                             _hd124473124725_
                                                             _tl124472124727_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g124388124512_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124388124512_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124388124512_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g124388124512_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124388124512_)))))
                        (let () (declare (not safe)) (_g124388124512_)))
                    (let () (declare (not safe)) (_g124388124512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124388124512_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124388124512_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124388124512_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g124388124512_)))))
                            (let () (declare (not safe)) (_g124388124512_)))
                        (let () (declare (not safe)) (_g124388124512_)))
                    (let () (declare (not safe)) (_g124388124512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124388124512_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g124388124512_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop124445124647_ _target124442124642_ '())))))
                   (___match129489129490_
                    (lambda (_e124395124770_
                             _hd124394124773_
                             _tl124393124775_
                             ___splice129466129467_
                             _target124396124778_
                             _tl124398124780_)
                      (letrec ((_loop124399124783_
                                (lambda (_hd124397124786_ _arg124403124788_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124397124786_))
                                      (let ((_e124400124791_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124397124786_))))
                                        (let ((_lp-tl124402124796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124400124791_)))
                                              (_lp-hd124401124794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124400124791_))))
                                          (let ((__tmp130743
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124401124794_
                                                         _arg124403124788_))))
                                            (declare (not safe))
                                            (_loop124399124783_
                                             _lp-tl124402124796_
                                             __tmp130743))))
                                      (let ((_arg124404124799_
                                             (reverse _arg124403124788_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124393124775_))
                                            (let ((_e124407124802_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124393124775_))))
                                              (let ((_tl124405124807_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124407124802_)))
                                                    (_hd124406124805_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124407124802_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124406124805_))
                                                    (let ((_e124410124810_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124406124805_))))
                                                      (let ((_tl124408124815_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124410124810_)))
                    (_hd124409124813_
                     (let () (declare (not safe)) (##car _e124410124810_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124409124813_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124409124813_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124408124815_))
                            (let ((_e124413124818_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124408124815_))))
                              (let ((_tl124411124823_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124413124818_)))
                                    (_hd124412124821_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124413124818_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124412124821_))
                                    (let ((_e124416124826_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124412124821_))))
                                      (let ((_tl124414124831_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124416124826_)))
                                            (_hd124415124829_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124416124826_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124415124829_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124415124829_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124414124831_))
                                                    (let ((_e124419124834_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124414124831_))))
                                                      (let ((_tl124417124839_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124419124834_)))
                    (_hd124418124837_
                     (let () (declare (not safe)) (##car _e124419124834_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124417124839_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124411124823_))
                        (let ((___splice129468129469_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124411124823_
                                  '0))))
                          (let ((_tl124422124844_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129468129469_ '1)))
                                (_target124420124842_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129468129469_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124422124844_))
                                (letrec ((_loop124423124847_
                                          (lambda (_hd124421124850_
                                                   _xarg124427124852_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124421124850_))
                                                (let ((_e124424124855_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124421124850_))))
                                                  (let ((_lp-tl124426124860_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124424124855_)))
                                                        (_lp-hd124425124858_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124424124855_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124425124858_))
                                                        (let ((_e124431124863_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124425124858_))))
                  (let ((_tl124429124868_
                         (let () (declare (not safe)) (##cdr _e124431124863_)))
                        (_hd124430124866_
                         (let ()
                           (declare (not safe))
                           (##car _e124431124863_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124430124866_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124430124866_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124429124868_))
                                (let ((_e124434124871_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124429124868_))))
                                  (let ((_tl124432124876_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124434124871_)))
                                        (_hd124433124874_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124434124871_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124432124876_))
                                        (let ((__tmp130742
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124433124874_
                                                       _xarg124427124852_))))
                                          (declare (not safe))
                                          (_loop124423124847_
                                           _lp-tl124426124860_
                                           __tmp130742))
                                        (___match129501129502_
                                         _e124395124770_
                                         _hd124394124773_
                                         _tl124393124775_
                                         ___splice129466129467_
                                         _target124396124778_
                                         _tl124398124780_))))
                                (___match129501129502_
                                 _e124395124770_
                                 _hd124394124773_
                                 _tl124393124775_
                                 ___splice129466129467_
                                 _target124396124778_
                                 _tl124398124780_))
                            (___match129501129502_
                             _e124395124770_
                             _hd124394124773_
                             _tl124393124775_
                             ___splice129466129467_
                             _target124396124778_
                             _tl124398124780_))
                        (___match129501129502_
                         _e124395124770_
                         _hd124394124773_
                         _tl124393124775_
                         ___splice129466129467_
                         _target124396124778_
                         _tl124398124780_))))
                (___match129501129502_
                 _e124395124770_
                 _hd124394124773_
                 _tl124393124775_
                 ___splice129466129467_
                 _target124396124778_
                 _tl124398124780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124428124879_
                                                       (reverse _xarg124427124852_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124405124807_))
                                                      (___kont129464129465_
                                                       _xarg124428124879_
                                                       _hd124418124837_
                                                       _arg124404124799_)
                                                      (___match129501129502_
                                                       _e124395124770_
                                                       _hd124394124773_
                                                       _tl124393124775_
                                                       ___splice129466129467_
                                                       _target124396124778_
                                                       _tl124398124780_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop124423124847_
                                     _target124420124842_
                                     '())))
                                (___match129501129502_
                                 _e124395124770_
                                 _hd124394124773_
                                 _tl124393124775_
                                 ___splice129466129467_
                                 _target124396124778_
                                 _tl124398124780_))))
                        (___match129501129502_
                         _e124395124770_
                         _hd124394124773_
                         _tl124393124775_
                         ___splice129466129467_
                         _target124396124778_
                         _tl124398124780_))
                    (___match129501129502_
                     _e124395124770_
                     _hd124394124773_
                     _tl124393124775_
                     ___splice129466129467_
                     _target124396124778_
                     _tl124398124780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129501129502_
                                                     _e124395124770_
                                                     _hd124394124773_
                                                     _tl124393124775_
                                                     ___splice129466129467_
                                                     _target124396124778_
                                                     _tl124398124780_))
                                                (___match129501129502_
                                                 _e124395124770_
                                                 _hd124394124773_
                                                 _tl124393124775_
                                                 ___splice129466129467_
                                                 _target124396124778_
                                                 _tl124398124780_))
                                            (___match129501129502_
                                             _e124395124770_
                                             _hd124394124773_
                                             _tl124393124775_
                                             ___splice129466129467_
                                             _target124396124778_
                                             _tl124398124780_))))
                                    (___match129501129502_
                                     _e124395124770_
                                     _hd124394124773_
                                     _tl124393124775_
                                     ___splice129466129467_
                                     _target124396124778_
                                     _tl124398124780_))))
                            (___match129501129502_
                             _e124395124770_
                             _hd124394124773_
                             _tl124393124775_
                             ___splice129466129467_
                             _target124396124778_
                             _tl124398124780_))
                        (___match129501129502_
                         _e124395124770_
                         _hd124394124773_
                         _tl124393124775_
                         ___splice129466129467_
                         _target124396124778_
                         _tl124398124780_))
                    (___match129501129502_
                     _e124395124770_
                     _hd124394124773_
                     _tl124393124775_
                     ___splice129466129467_
                     _target124396124778_
                     _tl124398124780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129501129502_
                                                     _e124395124770_
                                                     _hd124394124773_
                                                     _tl124393124775_
                                                     ___splice129466129467_
                                                     _target124396124778_
                                                     _tl124398124780_))))
                                            (___match129501129502_
                                             _e124395124770_
                                             _hd124394124773_
                                             _tl124393124775_
                                             ___splice129466129467_
                                             _target124396124778_
                                             _tl124398124780_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124399124783_ _target124396124778_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129462129463_))
                  (let ((_e124395124770_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129462129463_))))
                    (let ((_tl124393124775_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124395124770_)))
                          (_hd124394124773_
                           (let ()
                             (declare (not safe))
                             (##car _e124395124770_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124394124773_))
                          (let ((___splice129466129467_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124394124773_
                                    '0))))
                            (let ((_tl124398124780_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129466129467_ '1)))
                                  (_target124396124778_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129466129467_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124398124780_))
                                  (___match129489129490_
                                   _e124395124770_
                                   _hd124394124773_
                                   _tl124393124775_
                                   ___splice129466129467_
                                   _target124396124778_
                                   _tl124398124780_)
                                  (___match129501129502_
                                   _e124395124770_
                                   _hd124394124773_
                                   _tl124393124775_
                                   ___splice129466129467_
                                   _target124396124778_
                                   _tl124398124780_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124393124775_))
                              (let ((_e124483124525_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124393124775_))))
                                (let ((_tl124481124530_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124483124525_)))
                                      (_hd124482124528_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124483124525_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124482124528_))
                                      (let ((_e124486124533_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124482124528_))))
                                        (let ((_tl124484124538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124486124533_)))
                                              (_hd124485124536_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124486124533_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124485124536_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124485124536_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124484124538_))
                                                      (let ((_e124489124541_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124484124538_))))
                (let ((_tl124487124546_
                       (let () (declare (not safe)) (##cdr _e124489124541_)))
                      (_hd124488124544_
                       (let () (declare (not safe)) (##car _e124489124541_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124488124544_))
                      (let ((_e124492124549_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124488124544_))))
                        (let ((_tl124490124554_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124492124549_)))
                              (_hd124491124552_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124492124549_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124491124552_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124491124552_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124490124554_))
                                      (let ((_e124495124557_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124490124554_))))
                                        (let ((_tl124493124562_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124495124557_)))
                                              (_hd124494124560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124495124557_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124493124562_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124487124546_))
                                                  (let ((_e124498124565_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124487124546_))))
                                                    (let ((_tl124496124570_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124498124565_)))
                                                          (_hd124497124568_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124498124565_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124497124568_))
                                                          (let ((_e124501124573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124497124568_))))
                    (let ((_tl124499124578_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124501124573_)))
                          (_hd124500124576_
                           (let ()
                             (declare (not safe))
                             (##car _e124501124573_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124500124576_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124500124576_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124499124578_))
                                  (let ((_e124504124581_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124499124578_))))
                                    (let ((_tl124502124586_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124504124581_)))
                                          (_hd124503124584_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124504124581_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124502124586_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124496124570_))
                                              (let ((_e124507124589_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124496124570_))))
                                                (let ((_tl124505124594_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124507124589_)))
                                                      (_hd124506124592_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124507124589_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124505124594_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124481124530_))
                                                          (___kont129474129475_
                                                           _hd124503124584_
                                                           _hd124494124560_
                                                           _hd124394124773_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124388124512_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124388124512_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124388124512_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g124388124512_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124388124512_)))
                              (let () (declare (not safe)) (_g124388124512_)))
                          (let () (declare (not safe)) (_g124388124512_)))))
                  (let () (declare (not safe)) (_g124388124512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124388124512_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124388124512_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124388124512_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124388124512_)))
                              (let ()
                                (declare (not safe))
                                (_g124388124512_)))))
                      (let () (declare (not safe)) (_g124388124512_)))))
              (let () (declare (not safe)) (_g124388124512_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124388124512_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124388124512_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124388124512_)))))
                              (let ()
                                (declare (not safe))
                                (_g124388124512_))))))
                  (let () (declare (not safe)) (_g124388124512_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form124188_)
        (let* ((_g124190124204_
                (lambda (_g124191124201_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124191124201_))))
               (_g124189124381_
                (lambda (_g124191124207_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124191124207_))
                      (let ((_e124196124209_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124191124207_))))
                        (let ((_hd124195124212_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124196124209_)))
                              (_tl124194124214_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124196124209_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124194124214_))
                              (let ((_e124199124217_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124194124214_))))
                                (let ((_hd124198124220_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124199124217_)))
                                      (_tl124197124222_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124199124217_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124197124222_))
                                      ((lambda (_L124225_ _L124226_)
                                         (let* ((___stx129584129585_ _L124226_)
                                                (_g124241124269_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx129584129585_)))))
                                           (let ((___kont129586129587_
                                                  (lambda (_L124360_)
                                                    (length (let ((__tmp130744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124370124373_ _g124371124375_)
                             (let ()
                               (declare (not safe))
                               (cons _g124370124373_ _g124371124375_)))))
                      (declare (not safe))
                      (foldr1 __tmp130744 '() _L124360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129590129591_
                                                  (lambda (_L124311_ _L124312_)
                                                    (let ((__tmp130745
                                                           (length (let ((__tmp130746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g124323124326_ _g124324124328_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g124323124326_
                                            _g124324124328_)))))
                             (declare (not safe))
                             (foldr1 __tmp130746 '() _L124312_)))))
              (declare (not safe))
              (cons __tmp130745 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129594129595_
                                                  (lambda (_L124274_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match129609129610_
                                                     (lambda (___splice129592129593_
                                                              _target124255124287_
                                                              _tl124257124289_)
                                                       (letrec ((_loop124258124292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124256124295_ _arg124262124297_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124256124295_))
                               (let ((_e124259124300_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124256124295_))))
                                 (let ((_lp-tl124261124305_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124259124300_)))
                                       (_lp-hd124260124303_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124259124300_))))
                                   (let ((__tmp130747
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124260124303_
                                                  _arg124262124297_))))
                                     (declare (not safe))
                                     (_loop124258124292_
                                      _lp-tl124261124305_
                                      __tmp130747))))
                               (let ((_arg124263124308_
                                      (reverse _arg124262124297_)))
                                 (___kont129590129591_
                                  _tl124257124289_
                                  _arg124263124308_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124258124292_ _target124255124287_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129603129604_
                                                     (lambda (___splice129588129589_
                                                              _target124244124336_
                                                              _tl124246124338_)
                                                       (letrec ((_loop124247124341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124245124344_ _arg124251124346_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124245124344_))
                               (let ((_e124248124349_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124245124344_))))
                                 (let ((_lp-tl124250124354_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124248124349_)))
                                       (_lp-hd124249124352_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124248124349_))))
                                   (let ((__tmp130748
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124249124352_
                                                  _arg124251124346_))))
                                     (declare (not safe))
                                     (_loop124247124341_
                                      _lp-tl124250124354_
                                      __tmp130748))))
                               (let ((_arg124252124357_
                                      (reverse _arg124251124346_)))
                                 (___kont129586129587_ _arg124252124357_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124247124341_ _target124244124336_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx129584129585_))
                                                   (let ((___splice129588129589_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx129584129585_
                                                             '0))))
                                                     (let ((_tl124246124338_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129588129589_
                                                               '1)))
                                                           (_target124244124336_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129588129589_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl124246124338_))
                                                           (___match129603129604_
                                                            ___splice129588129589_
                                                            _target124244124336_
                                                            _tl124246124338_)
                                                           (___match129609129610_
                                                            ___splice129588129589_
                                                            _target124244124336_
                                                            _tl124246124338_))))
                                                   (___kont129594129595_
                                                    ___stx129584129585_))))))
                                       _hd124198124220_
                                       _hd124195124212_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124190124204_ _g124191124207_)))))
                              (let ()
                                (declare (not safe))
                                (_g124190124204_ _g124191124207_)))))
                      (let ()
                        (declare (not safe))
                        (_g124190124204_ _g124191124207_))))))
          (declare (not safe))
          (_g124189124381_ _form124188_))))
    (define gxc#lambda-expr?
      (lambda (_expr124141_)
        (let* ((___stx129612129613_ _expr124141_)
               (_g124144124154_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129612129613_)))))
          (let ((___kont129614129615_ (lambda (_L124174_) '#t))
                (___kont129616129617_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129612129613_))
                (let ((_e124149124166_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129612129613_))))
                  (let ((_tl124147124171_
                         (let () (declare (not safe)) (##cdr _e124149124166_)))
                        (_hd124148124169_
                         (let ()
                           (declare (not safe))
                           (##car _e124149124166_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124148124169_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd124148124169_))
                            (___kont129614129615_ _tl124147124171_)
                            (___kont129616129617_))
                        (___kont129616129617_))))
                (___kont129616129617_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr124094_)
        (let* ((___stx129630129631_ _expr124094_)
               (_g124097124107_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129630129631_)))))
          (let ((___kont129632129633_ (lambda (_L124127_) '#t))
                (___kont129634129635_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129630129631_))
                (let ((_e124102124119_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129630129631_))))
                  (let ((_tl124100124124_
                         (let () (declare (not safe)) (##cdr _e124102124119_)))
                        (_hd124101124122_
                         (let ()
                           (declare (not safe))
                           (##car _e124102124119_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124101124122_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd124101124122_))
                            (___kont129632129633_ _tl124100124124_)
                            (___kont129634129635_))
                        (___kont129634129635_))))
                (___kont129634129635_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr123963_)
        (let* ((___stx129648129649_ _expr123963_)
               (_g123966123996_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129648129649_)))))
          (let ((___kont129650129651_
                 (lambda (_L124064_ _L124065_ _L124066_)
                   (if (let () (declare (not safe)) (gx#identifier? _L124066_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L124065_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L124064_))
                           '#f)
                       '#f)))
                (___kont129652129653_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129648129649_))
                (let ((_e123973124008_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129648129649_))))
                  (let ((_tl123971124013_
                         (let () (declare (not safe)) (##cdr _e123973124008_)))
                        (_hd123972124011_
                         (let ()
                           (declare (not safe))
                           (##car _e123973124008_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123972124011_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123972124011_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123971124013_))
                                (let ((_e123976124016_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123971124013_))))
                                  (let ((_tl123974124021_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123976124016_)))
                                        (_hd123975124019_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123976124016_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123975124019_))
                                        (let ((_e123979124024_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123975124019_))))
                                          (let ((_tl123977124029_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123979124024_)))
                                                (_hd123978124027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123979124024_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123978124027_))
                                                (let ((_e123982124032_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123978124027_))))
                                                  (let ((_tl123980124037_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123982124032_)))
                                                        (_hd123981124035_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123982124032_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123981124035_))
                                                        (let ((_e123985124040_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123981124035_))))
                  (let ((_tl123983124045_
                         (let () (declare (not safe)) (##cdr _e123985124040_)))
                        (_hd123984124043_
                         (let ()
                           (declare (not safe))
                           (##car _e123985124040_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123983124045_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123980124037_))
                            (let ((_e123988124048_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123980124037_))))
                              (let ((_tl123986124053_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123988124048_)))
                                    (_hd123987124051_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123988124048_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123986124053_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123977124029_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123974124021_))
                                            (let ((_e123991124056_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123974124021_))))
                                              (let ((_tl123989124061_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123991124056_)))
                                                    (_hd123990124059_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123991124056_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123989124061_))
                                                    (___kont129650129651_
                                                     _hd123990124059_
                                                     _hd123987124051_
                                                     _hd123984124043_)
                                                    (___kont129652129653_))))
                                            (___kont129652129653_))
                                        (___kont129652129653_))
                                    (___kont129652129653_))))
                            (___kont129652129653_))
                        (___kont129652129653_))))
                (___kont129652129653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129652129653_))))
                                        (___kont129652129653_))))
                                (___kont129652129653_))
                            (___kont129652129653_))
                        (___kont129652129653_))))
                (___kont129652129653_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr123288_)
        (let* ((___stx129710129711_ _expr123288_)
               (_g123291123449_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129710129711_)))))
          (let ((___kont129712129713_
                 (lambda (_L123837_
                          _L123838_
                          _L123839_
                          _L123840_
                          _L123841_
                          _L123842_
                          _L123843_
                          _L123844_
                          _L123845_
                          _L123846_
                          _L123847_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L123844_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L123840_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L123839_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L123847_
                                      _L123838_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L123846_
                                          _L123843_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123841_
                                              _L123837_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123845_
                                              _L123842_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont129714129715_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129710129711_))
                (let ((_e123306123461_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129710129711_))))
                  (let ((_tl123304123466_
                         (let () (declare (not safe)) (##cdr _e123306123461_)))
                        (_hd123305123464_
                         (let ()
                           (declare (not safe))
                           (##car _e123306123461_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123305123464_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123305123464_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123304123466_))
                                (let ((_e123309123469_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123304123466_))))
                                  (let ((_tl123307123474_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123309123469_)))
                                        (_hd123308123472_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123309123469_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123308123472_))
                                        (let ((_e123312123477_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123308123472_))))
                                          (let ((_tl123310123482_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123312123477_)))
                                                (_hd123311123480_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123312123477_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123311123480_))
                                                (let ((_e123315123485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123311123480_))))
                                                  (let ((_tl123313123490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123315123485_)))
                                                        (_hd123314123488_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123315123485_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123314123488_))
                                                        (let ((_e123318123493_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123314123488_))))
                  (let ((_tl123316123498_
                         (let () (declare (not safe)) (##cdr _e123318123493_)))
                        (_hd123317123496_
                         (let ()
                           (declare (not safe))
                           (##car _e123318123493_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123316123498_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123313123490_))
                            (let ((_e123321123501_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123313123490_))))
                              (let ((_tl123319123506_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123321123501_)))
                                    (_hd123320123504_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123321123501_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123320123504_))
                                    (let ((_e123324123509_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123320123504_))))
                                      (let ((_tl123322123514_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123324123509_)))
                                            (_hd123323123512_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123324123509_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123323123512_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd123323123512_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123322123514_))
                                                    (let ((_e123327123517_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123322123514_))))
                                                      (let ((_tl123325123522_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123327123517_)))
                    (_hd123326123520_
                     (let () (declare (not safe)) (##car _e123327123517_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123326123520_))
                    (let ((_e123330123525_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123326123520_))))
                      (let ((_tl123328123530_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123330123525_)))
                            (_hd123329123528_
                             (let ()
                               (declare (not safe))
                               (##car _e123330123525_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123329123528_))
                            (let ((_e123333123533_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123329123528_))))
                              (let ((_tl123331123538_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123333123533_)))
                                    (_hd123332123536_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123333123533_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123332123536_))
                                    (let ((_e123336123541_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123332123536_))))
                                      (let ((_tl123334123546_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123336123541_)))
                                            (_hd123335123544_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123336123541_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123334123546_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123331123538_))
                                                (let ((_e123339123549_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123331123538_))))
                                                  (let ((_tl123337123554_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123339123549_)))
                                                        (_hd123338123552_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123339123549_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123337123554_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl123328123530_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123325123522_))
                        (let ((_e123342123557_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123325123522_))))
                          (let ((_tl123340123562_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123342123557_)))
                                (_hd123341123560_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123342123557_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123341123560_))
                                (let ((_e123345123565_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123341123560_))))
                                  (let ((_tl123343123570_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123345123565_)))
                                        (_hd123344123568_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123345123565_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123344123568_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd123344123568_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123343123570_))
                                                (let ((_e123348123573_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123343123570_))))
                                                  (let ((_tl123346123578_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123348123573_)))
                                                        (_hd123347123576_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123348123573_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123347123576_))
                                                        (let ((_e123351123581_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123347123576_))))
                  (let ((_tl123349123586_
                         (let () (declare (not safe)) (##cdr _e123351123581_)))
                        (_hd123350123584_
                         (let ()
                           (declare (not safe))
                           (##car _e123351123581_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123346123578_))
                        (let ((_e123354123589_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123346123578_))))
                          (let ((_tl123352123594_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123354123589_)))
                                (_hd123353123592_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123354123589_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123353123592_))
                                (let ((_e123357123597_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123353123592_))))
                                  (let ((_tl123355123602_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123357123597_)))
                                        (_hd123356123600_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123357123597_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123356123600_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd123356123600_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123355123602_))
                                                (let ((_e123360123605_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123355123602_))))
                                                  (let ((_tl123358123610_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123360123605_)))
                                                        (_hd123359123608_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123360123605_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123359123608_))
                                                        (let ((_e123363123613_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123359123608_))))
                  (let ((_tl123361123618_
                         (let () (declare (not safe)) (##cdr _e123363123613_)))
                        (_hd123362123616_
                         (let ()
                           (declare (not safe))
                           (##car _e123363123613_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123362123616_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123362123616_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123361123618_))
                                (let ((_e123366123621_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123361123618_))))
                                  (let ((_tl123364123626_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123366123621_)))
                                        (_hd123365123624_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123366123621_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123364123626_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123358123610_))
                                            (let ((_e123369123629_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123358123610_))))
                                              (let ((_tl123367123634_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123369123629_)))
                                                    (_hd123368123632_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123369123629_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123368123632_))
                                                    (let ((_e123372123637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123368123632_))))
                                                      (let ((_tl123370123642_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123372123637_)))
                    (_hd123371123640_
                     (let () (declare (not safe)) (##car _e123372123637_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123371123640_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123371123640_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123370123642_))
                            (let ((_e123375123645_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123370123642_))))
                              (let ((_tl123373123650_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123375123645_)))
                                    (_hd123374123648_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123375123645_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123373123650_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123367123634_))
                                        (let ((_e123378123653_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123367123634_))))
                                          (let ((_tl123376123658_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123378123653_)))
                                                (_hd123377123656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123378123653_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123377123656_))
                                                (let ((_e123381123661_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123377123656_))))
                                                  (let ((_tl123379123666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123381123661_)))
                                                        (_hd123380123664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123381123661_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd123380123664_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd123380123664_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123379123666_))
                        (let ((_e123384123669_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123379123666_))))
                          (let ((_tl123382123674_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123384123669_)))
                                (_hd123383123672_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123384123669_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123382123674_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123352123594_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123340123562_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123319123506_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123310123482_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123307123474_))
                                                    (let ((_e123387123677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123307123474_))))
                                                      (let ((_tl123385123682_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123387123677_)))
                    (_hd123386123680_
                     (let () (declare (not safe)) (##car _e123387123677_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123386123680_))
                    (let ((_e123390123685_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123386123680_))))
                      (let ((_tl123388123690_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123390123685_)))
                            (_hd123389123688_
                             (let ()
                               (declare (not safe))
                               (##car _e123390123685_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123389123688_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd123389123688_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123388123690_))
                                    (let ((_e123393123693_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123388123690_))))
                                      (let ((_tl123391123698_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123393123693_)))
                                            (_hd123392123696_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123393123693_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123391123698_))
                                            (let ((_e123396123701_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123391123698_))))
                                              (let ((_tl123394123706_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123396123701_)))
                                                    (_hd123395123704_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123396123701_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123395123704_))
                                                    (let ((_e123399123709_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123395123704_))))
                                                      (let ((_tl123397123714_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123399123709_)))
                    (_hd123398123712_
                     (let () (declare (not safe)) (##car _e123399123709_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123398123712_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123398123712_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123397123714_))
                            (let ((_e123402123717_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123397123714_))))
                              (let ((_tl123400123722_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123402123717_)))
                                    (_hd123401123720_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123402123717_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123401123720_))
                                    (let ((_e123405123725_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123401123720_))))
                                      (let ((_tl123403123730_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123405123725_)))
                                            (_hd123404123728_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123405123725_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123404123728_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123404123728_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123403123730_))
                                                    (let ((_e123408123733_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123403123730_))))
                                                      (let ((_tl123406123738_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123408123733_)))
                    (_hd123407123736_
                     (let () (declare (not safe)) (##car _e123408123733_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123406123738_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123400123722_))
                        (let ((_e123411123741_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123400123722_))))
                          (let ((_tl123409123746_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123411123741_)))
                                (_hd123410123744_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123411123741_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123410123744_))
                                (let ((_e123414123749_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123410123744_))))
                                  (let ((_tl123412123754_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123414123749_)))
                                        (_hd123413123752_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123414123749_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123413123752_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123413123752_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123412123754_))
                                                (let ((_e123417123757_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123412123754_))))
                                                  (let ((_tl123415123762_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123417123757_)))
                                                        (_hd123416123760_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123417123757_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123415123762_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl123409123746_))
                                                            (let ((_e123420123765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl123409123746_))))
                      (let ((_tl123418123770_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123420123765_)))
                            (_hd123419123768_
                             (let ()
                               (declare (not safe))
                               (##car _e123420123765_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123419123768_))
                            (let ((_e123423123773_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123419123768_))))
                              (let ((_tl123421123778_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123423123773_)))
                                    (_hd123422123776_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123423123773_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd123422123776_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd123422123776_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123421123778_))
                                            (let ((_e123426123781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123421123778_))))
                                              (let ((_tl123424123786_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123426123781_)))
                                                    (_hd123425123784_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123426123781_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123424123786_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123418123770_))
                                                        (let ((_e123429123789_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123418123770_))))
                  (let ((_tl123427123794_
                         (let () (declare (not safe)) (##cdr _e123429123789_)))
                        (_hd123428123792_
                         (let ()
                           (declare (not safe))
                           (##car _e123429123789_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd123428123792_))
                        (let ((_e123432123797_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd123428123792_))))
                          (let ((_tl123430123802_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123432123797_)))
                                (_hd123431123800_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123432123797_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd123431123800_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd123431123800_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123430123802_))
                                        (let ((_e123435123805_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123430123802_))))
                                          (let ((_tl123433123810_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123435123805_)))
                                                (_hd123434123808_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123435123805_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123433123810_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123427123794_))
                                                    (let ((_e123438123813_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123427123794_))))
                                                      (let ((_tl123436123818_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123438123813_)))
                    (_hd123437123816_
                     (let () (declare (not safe)) (##car _e123438123813_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123437123816_))
                    (let ((_e123441123821_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123437123816_))))
                      (let ((_tl123439123826_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123441123821_)))
                            (_hd123440123824_
                             (let ()
                               (declare (not safe))
                               (##car _e123441123821_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123440123824_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd123440123824_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123439123826_))
                                    (let ((_e123444123829_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123439123826_))))
                                      (let ((_tl123442123834_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123444123829_)))
                                            (_hd123443123832_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123444123829_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123442123834_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123436123818_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123394123706_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123385123682_))
                                                        (___kont129712129713_
                                                         _hd123443123832_
                                                         _hd123434123808_
                                                         _hd123416123760_
                                                         _hd123407123736_
                                                         _hd123392123696_
                                                         _hd123383123672_
                                                         _hd123374123648_
                                                         _hd123365123624_
                                                         _hd123350123584_
                                                         _hd123335123544_
                                                         _hd123317123496_)
                                                        (___kont129714129715_))
                                                    (___kont129714129715_))
                                                (___kont129714129715_))
                                            (___kont129714129715_))))
                                    (___kont129714129715_))
                                (___kont129714129715_))
                            (___kont129714129715_))))
                    (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129714129715_))
                                                (___kont129714129715_))))
                                        (___kont129714129715_))
                                    (___kont129714129715_))
                                (___kont129714129715_))))
                        (___kont129714129715_))))
                (___kont129714129715_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129714129715_))))
                                            (___kont129714129715_))
                                        (___kont129714129715_))
                                    (___kont129714129715_))))
                            (___kont129714129715_))))
                    (___kont129714129715_))
                (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129714129715_))
                                            (___kont129714129715_))
                                        (___kont129714129715_))))
                                (___kont129714129715_))))
                        (___kont129714129715_))
                    (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129714129715_))
                                                (___kont129714129715_))
                                            (___kont129714129715_))))
                                    (___kont129714129715_))))
                            (___kont129714129715_))
                        (___kont129714129715_))
                    (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129714129715_))))
                                            (___kont129714129715_))))
                                    (___kont129714129715_))
                                (___kont129714129715_))
                            (___kont129714129715_))))
                    (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129714129715_))
                                                (___kont129714129715_))
                                            (___kont129714129715_))
                                        (___kont129714129715_))
                                    (___kont129714129715_))
                                (___kont129714129715_))))
                        (___kont129714129715_))
                    (___kont129714129715_))
                (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129714129715_))))
                                        (___kont129714129715_))
                                    (___kont129714129715_))))
                            (___kont129714129715_))
                        (___kont129714129715_))
                    (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129714129715_))))
                                            (___kont129714129715_))
                                        (___kont129714129715_))))
                                (___kont129714129715_))
                            (___kont129714129715_))
                        (___kont129714129715_))))
                (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129714129715_))
                                            (___kont129714129715_))
                                        (___kont129714129715_))))
                                (___kont129714129715_))))
                        (___kont129714129715_))))
                (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129714129715_))
                                            (___kont129714129715_))
                                        (___kont129714129715_))))
                                (___kont129714129715_))))
                        (___kont129714129715_))
                    (___kont129714129715_))
                (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129714129715_))
                                            (___kont129714129715_))))
                                    (___kont129714129715_))))
                            (___kont129714129715_))))
                    (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129714129715_))
                                                (___kont129714129715_))
                                            (___kont129714129715_))))
                                    (___kont129714129715_))))
                            (___kont129714129715_))
                        (___kont129714129715_))))
                (___kont129714129715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129714129715_))))
                                        (___kont129714129715_))))
                                (___kont129714129715_))
                            (___kont129714129715_))
                        (___kont129714129715_))))
                (___kont129714129715_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx123030_ _id123031_ _clauses123032_ _gensym?123033_)
        (let _lp123035_ ((_rest123037_ _clauses123032_)
                         (_ids123038_ '())
                         (_impls123039_ '())
                         (_clauses123040_ '()))
          (let* ((_rest123041123049_ _rest123037_)
                 (_else123043123057_
                  (lambda ()
                    (values (reverse _ids123038_)
                            (reverse _impls123039_)
                            (reverse _clauses123040_))))
                 (_K123045123262_
                  (lambda (_rest123060_ _clause123061_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause123061_))
                        (let ((__tmp130804
                               (let ()
                                 (declare (not safe))
                                 (cons _clause123061_ _clauses123040_))))
                          (declare (not safe))
                          (_lp123035_
                           _rest123060_
                           _ids123038_
                           _impls123039_
                           __tmp130804))
                        (let* ((_g123063123074_
                                (lambda (_g123064123071_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g123064123071_))))
                               (_g123062123259_
                                (lambda (_g123064123077_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g123064123077_))
                                      (let ((_e123069123079_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g123064123077_))))
                                        (let ((_hd123068123082_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123069123079_)))
                                              (_tl123067123084_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123069123079_))))
                                          ((lambda (_L123087_ _L123088_)
                                             (let* ((_id123105_
                                                     (let ((__tmp130751
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id123031_)))
                                                           (__tmp130750
                                                            (length _clauses123040_))
                                                           (__tmp130749
                                                            (if _gensym?123033_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp130751
                                                        '"__"
                                                        __tmp130750
                                                        __tmp130749)))
                                                    (_id123107_
                                                     (let ((__tmp130752
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx123030_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id123105_
                                                        __tmp130752)))
                                                    (_impl123109_
                                                     (let ((__tmp130753
                                                            (let ((__tmp130755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp130754
                           (let ()
                             (declare (not safe))
                             (cons _L123088_ _L123087_))))
                      (declare (not safe))
                      (cons __tmp130755 __tmp130754))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp130753 _stx123030_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause123256_
                                                     (let* ((___stx130094130095_
                                                             _L123088_)
                                                            (_g123113123141_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx130094130095_)))))
               (let ((___kont130096130097_
                      (lambda (_L123235_)
                        (let ((__tmp130756
                               (let ((__tmp130757
                                      (let ((__tmp130758
                                             (let ((__tmp130759
                                                    (let ((__tmp130765
                                                           (let ((__tmp130766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id123107_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130766)))
                  (__tmp130760
                   (let ((__tmp130761
                          (lambda (_g123245123248_ _g123246123250_)
                            (let ((__tmp130762
                                   (let ((__tmp130764
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp130763
                                          (let ()
                                            (declare (not safe))
                                            (cons _g123245123248_ '()))))
                                     (declare (not safe))
                                     (cons __tmp130764 __tmp130763))))
                              (declare (not safe))
                              (cons __tmp130762 _g123246123250_)))))
                     (declare (not safe))
                     (foldr1 __tmp130761 '() _L123235_))))
              (declare (not safe))
              (cons __tmp130765 __tmp130760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130759))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130758
                                         _stx123030_))))
                                 (declare (not safe))
                                 (cons __tmp130757 '()))))
                          (declare (not safe))
                          (cons _L123088_ __tmp130756))))
                     (___kont130100130101_
                      (lambda (_L123186_ _L123187_)
                        (let ((__tmp130767
                               (let ((__tmp130768
                                      (let ((__tmp130769
                                             (let ((__tmp130770
                                                    (let ((__tmp130784
                                                           (let ((__tmp130785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130785)))
                  (__tmp130771
                   (let ((__tmp130782
                          (let ((__tmp130783
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123107_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130783)))
                         (__tmp130772
                          (let ((__tmp130778
                                 (let ((__tmp130779
                                        (let ((__tmp130781
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp130780
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L123186_ '()))))
                                          (declare (not safe))
                                          (cons __tmp130781 __tmp130780))))
                                   (declare (not safe))
                                   (cons __tmp130779 '())))
                                (__tmp130773
                                 (let ((__tmp130774
                                        (lambda (_g123198123201_
                                                 _g123199123203_)
                                          (let ((__tmp130775
                                                 (let ((__tmp130777
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp130776
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g123198123201_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp130777
                                                         __tmp130776))))
                                            (declare (not safe))
                                            (cons __tmp130775
                                                  _g123199123203_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp130774 '() _L123187_))))
                            (declare (not safe))
                            (foldr1 cons __tmp130778 __tmp130773))))
                     (declare (not safe))
                     (cons __tmp130782 __tmp130772))))
              (declare (not safe))
              (cons __tmp130784 __tmp130771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130770))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130769
                                         _stx123030_))))
                                 (declare (not safe))
                                 (cons __tmp130768 '()))))
                          (declare (not safe))
                          (cons _L123088_ __tmp130767))))
                     (___kont130104130105_
                      (lambda (_L123146_)
                        (let ((__tmp130786
                               (let ((__tmp130787
                                      (let ((__tmp130788
                                             (let ((__tmp130789
                                                    (let ((__tmp130797
                                                           (let ((__tmp130798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130798)))
                  (__tmp130790
                   (let ((__tmp130795
                          (let ((__tmp130796
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123107_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130796)))
                         (__tmp130791
                          (let ((__tmp130792
                                 (let ((__tmp130794
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp130793
                                        (let ()
                                          (declare (not safe))
                                          (cons _L123146_ '()))))
                                   (declare (not safe))
                                   (cons __tmp130794 __tmp130793))))
                            (declare (not safe))
                            (cons __tmp130792 '()))))
                     (declare (not safe))
                     (cons __tmp130795 __tmp130791))))
              (declare (not safe))
              (cons __tmp130797 __tmp130790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130789))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130788
                                         _stx123030_))))
                                 (declare (not safe))
                                 (cons __tmp130787 '()))))
                          (declare (not safe))
                          (cons _L123088_ __tmp130786)))))
                 (let* ((___match130119130120_
                         (lambda (___splice130102130103_
                                  _target123127123162_
                                  _tl123129123164_)
                           (letrec ((_loop123130123167_
                                     (lambda (_hd123128123170_
                                              _arg123134123172_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123128123170_))
                                           (let ((_e123131123175_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123128123170_))))
                                             (let ((_lp-tl123133123180_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123131123175_)))
                                                   (_lp-hd123132123178_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123131123175_))))
                                               (let ((__tmp130799
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123132123178_
                                                              _arg123134123172_))))
                                                 (declare (not safe))
                                                 (_loop123130123167_
                                                  _lp-tl123133123180_
                                                  __tmp130799))))
                                           (let ((_arg123135123183_
                                                  (reverse _arg123134123172_)))
                                             (___kont130100130101_
                                              _tl123129123164_
                                              _arg123135123183_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123130123167_
                                _target123127123162_
                                '())))))
                        (___match130113130114_
                         (lambda (___splice130098130099_
                                  _target123116123211_
                                  _tl123118123213_)
                           (letrec ((_loop123119123216_
                                     (lambda (_hd123117123219_
                                              _arg123123123221_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123117123219_))
                                           (let ((_e123120123224_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123117123219_))))
                                             (let ((_lp-tl123122123229_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123120123224_)))
                                                   (_lp-hd123121123227_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123120123224_))))
                                               (let ((__tmp130800
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123121123227_
                                                              _arg123123123221_))))
                                                 (declare (not safe))
                                                 (_loop123119123216_
                                                  _lp-tl123122123229_
                                                  __tmp130800))))
                                           (let ((_arg123124123232_
                                                  (reverse _arg123123123221_)))
                                             (___kont130096130097_
                                              _arg123124123232_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123119123216_
                                _target123116123211_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx130094130095_))
                       (let ((___splice130098130099_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx130094130095_
                                 '0))))
                         (let ((_tl123118123213_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130098130099_ '1)))
                               (_target123116123211_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130098130099_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl123118123213_))
                               (___match130113130114_
                                ___splice130098130099_
                                _target123116123211_
                                _tl123118123213_)
                               (___match130119130120_
                                ___splice130098130099_
                                _target123116123211_
                                _tl123118123213_))))
                       (___kont130104130105_ ___stx130094130095_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp130803
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id123107_
                                                              _ids123038_)))
                                                     (__tmp130802
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl123109_
                                                              _impls123039_)))
                                                     (__tmp130801
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause123256_
                                                              _clauses123040_))))
                                                 (declare (not safe))
                                                 (_lp123035_
                                                  _rest123060_
                                                  __tmp130803
                                                  __tmp130802
                                                  __tmp130801))))
                                           _tl123067123084_
                                           _hd123068123082_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g123063123074_ _g123064123077_))))))
                          (declare (not safe))
                          (_g123062123259_ _clause123061_))))))
            (if (let () (declare (not safe)) (##pair? _rest123041123049_))
                (let ((_hd123046123265_
                       (let ()
                         (declare (not safe))
                         (##car _rest123041123049_)))
                      (_tl123047123267_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest123041123049_))))
                  (let* ((_clause123270_ _hd123046123265_)
                         (_rest123272_ _tl123047123267_))
                    (declare (not safe))
                    (_K123045123262_ _rest123272_ _clause123270_)))
                (let () (declare (not safe)) (_else123043123057_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx123277_ _id123278_ _clauses123279_)
        (let ((_gensym?123281_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx123277_
           _id123278_
           _clauses123279_
           _gensym?123281_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g130806_
        (let ((_g130805_ (let () (declare (not safe)) (##length _g130806_))))
          (cond ((let () (declare (not safe)) (##fx= _g130805_ 3))
                 (apply (lambda (_stx123277_ _id123278_ _clauses123279_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx123277_
                             _id123278_
                             _clauses123279_)))
                        _g130806_))
                ((let () (declare (not safe)) (##fx= _g130805_ 4))
                 (apply (lambda (_stx123283_
                                 _id123284_
                                 _clauses123285_
                                 _gensym?123286_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx123283_
                             _id123284_
                             _clauses123285_
                             _gensym?123286_)))
                        _g130806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g130806_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self122306_ _stx122307_)
        (letrec ((_case-lambda-clause-def122309_
                  (lambda (_id123026_ _impl123027_)
                    (let ((__tmp130807
                           (let ((__tmp130808
                                  (let ((__tmp130811
                                         (let ()
                                           (declare (not safe))
                                           (cons _id123026_ '())))
                                        (__tmp130809
                                         (let ((__tmp130810
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self122306_
                                                   _impl123027_))))
                                           (declare (not safe))
                                           (cons __tmp130810 '()))))
                                    (declare (not safe))
                                    (cons __tmp130811 __tmp130809))))
                             (declare (not safe))
                             (cons '%#define-values __tmp130808))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130807 _stx122307_))))
                 (_opt-lambda-dispatch-name122310_
                  (lambda (_id123022_)
                    (if (uninterned-symbol? _id123022_)
                        (let ((_str123024_ (symbol->string _id123022_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str123024_))
                              '"%"
                              _id123022_))
                        _id123022_)))
                 (_kw-lambda-dispatch-name122311_
                  (lambda (_id123017_ _name123018_)
                    (if (uninterned-symbol? _id123017_)
                        (let ((_str123020_ (symbol->string _id123017_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str123020_))
                              _name123018_
                              _id123017_))
                        _id123017_))))
          (let* ((___stx130142130143_ _stx122307_)
                 (_g122316122375_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130142130143_)))))
            (let ((___kont130144130145_
                   (lambda (_L122926_ _L122927_)
                     (let* ((___stx130122130123_ _L122926_)
                            (_g122944122958_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130122130123_)))))
                       (let ((___kont130124130125_
                              (lambda (_L123002_) _stx122307_))
                             (___kont130126130127_
                              (lambda (_L122971_)
                                (let ((_g130812_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx122307_
                                          _L122927_
                                          _L122971_))))
                                  (begin
                                    (let ((_g130813_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130812_)
                                                 (##vector-length _g130812_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130813_ 3)))
                                          (error "Context expects 3 values"
                                                 _g130813_)))
                                    (let ((_ids122981_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130812_ 0)))
                                          (_impls122982_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130812_ 1)))
                                          (_clauses122983_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130812_ 2))))
                                      (let* ((_g130814_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids122981_))
                                             (_defs122986_
                                              (map _case-lambda-clause-def122309_
                                                   _ids122981_
                                                   _impls122982_)))
                                        (let ((__tmp130816
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L122927_)))
                                              (__tmp130815
                                               (map gxc#identifier-symbol
                                                    _ids122981_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp130816
                                           '" => "
                                           __tmp130815))
                                        (let ((__tmp130817
                                               (let ((__tmp130818
                                                      (let ((__tmp130819
                                                             (let ((__tmp130820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130821
                                   (let ((__tmp130822
                                          (let ((__tmp130827
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L122927_ '())))
                                                (__tmp130823
                                                 (let ((__tmp130824
                                                        (let ((__tmp130826
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses122983_)))
                      (__tmp130825
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp130826 __tmp130825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130824 '()))))
                                            (declare (not safe))
                                            (cons __tmp130827 __tmp130823))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp130822))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130821
                               _stx122307_))))
                       (declare (not safe))
                       (cons __tmp130820 '()))))
                (declare (not safe))
                (foldr1 cons __tmp130819 _defs122986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp130818))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp130817
                                           _stx122307_)))))))))
                         (let ((___match130133130134_
                                (lambda (_e122949122994_
                                         _hd122948122997_
                                         _tl122947122999_)
                                  (let ((_L123002_ _tl122947122999_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L123002_))
                                        (___kont130124130125_ _L123002_)
                                        (___kont130126130127_
                                         _tl122947122999_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx130122130123_))
                               (let ((_e122949122994_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx130122130123_))))
                                 (let ((_tl122947122999_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122949122994_)))
                                       (_hd122948122997_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122949122994_))))
                                   (___match130133130134_
                                    _e122949122994_
                                    _hd122948122997_
                                    _tl122947122999_)))
                               (let ()
                                 (declare (not safe))
                                 (_g122944122958_))))))))
                  (___kont130146130147_
                   (lambda (_L122744_ _L122745_)
                     (let* ((_g122761122791_
                             (lambda (_g122762122788_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122762122788_))))
                            (_g122760122886_
                             (lambda (_g122762122794_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122762122794_))
                                   (let ((_e122768122796_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122762122794_))))
                                     (let ((_hd122767122799_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122768122796_)))
                                           (_tl122766122801_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122768122796_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122766122801_))
                                           (let ((_e122771122804_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122766122801_))))
                                             (let ((_hd122770122807_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122771122804_)))
                                                   (_tl122769122809_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122771122804_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122770122807_))
                                                   (let ((_e122774122812_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122770122807_))))
                                                     (let ((_hd122773122815_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122774122812_)))
                                                           (_tl122772122817_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122774122812_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122773122815_))
                                                           (let ((_e122777122820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122773122815_))))
                     (let ((_hd122776122823_
                            (let ()
                              (declare (not safe))
                              (##car _e122777122820_)))
                           (_tl122775122825_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122777122820_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122776122823_))
                           (let ((_e122780122828_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122776122823_))))
                             (let ((_hd122779122831_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122780122828_)))
                                   (_tl122778122833_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122780122828_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122778122833_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122775122825_))
                                       (let ((_e122783122836_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122775122825_))))
                                         (let ((_hd122782122839_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122783122836_)))
                                               (_tl122781122841_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122783122836_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122781122841_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl122772122817_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122769122809_))
                                                       (let ((_e122786122844_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122769122809_))))
                 (let ((_hd122785122847_
                        (let () (declare (not safe)) (##car _e122786122844_)))
                       (_tl122784122849_
                        (let () (declare (not safe)) (##cdr _e122786122844_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl122784122849_))
                       ((lambda (_L122852_ _L122853_ _L122854_)
                          (let* ((_lambda-id122878_
                                  (let ((__tmp130830
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L122745_)))
                                        (__tmp130828
                                         (let ((__tmp130829
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L122854_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name122310_
                                            __tmp130829))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp130830
                                     '"__"
                                     __tmp130828)))
                                 (_lambda-id122880_
                                  (let ((__tmp130831
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx122307_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id122878_
                                     __tmp130831)))
                                 (_g130832_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id122880_)))
                                 (_new-case-lambda-expr122883_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L122852_
                                     'id:
                                     _L122854_
                                     'new-id:
                                     _lambda-id122880_))))
                            (let ((__tmp130834
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L122745_)))
                                  (__tmp130833
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id122880_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp130834
                               '" => "
                               __tmp130833))
                            (let ((__tmp130835
                                   (let ((__tmp130836
                                          (let ((__tmp130844
                                                 (let ((__tmp130845
                                                        (let ((__tmp130846
                                                               (let ((__tmp130849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id122880_ '())))
                             (__tmp130847
                              (let ((__tmp130848
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self122306_
                                        _L122853_))))
                                (declare (not safe))
                                (cons __tmp130848 '()))))
                         (declare (not safe))
                         (cons __tmp130849 __tmp130847))))
                  (declare (not safe))
                  (cons '%#define-values __tmp130846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp130845
                                                    _stx122307_)))
                                                (__tmp130837
                                                 (let ((__tmp130838
                                                        (let ((__tmp130839
                                                               (let ((__tmp130840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp130841
                                     (let ((__tmp130843
                                            (let ()
                                              (declare (not safe))
                                              (cons _L122745_ '())))
                                           (__tmp130842
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr122883_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp130843 __tmp130842))))
                                (declare (not safe))
                                (cons '%#define-values __tmp130841))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp130840 _stx122307_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self122306_
                   __tmp130839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130838 '()))))
                                            (declare (not safe))
                                            (cons __tmp130844 __tmp130837))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp130836))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130835
                               _stx122307_))))
                        _hd122785122847_
                        _hd122782122839_
                        _hd122779122831_)
                       (let ()
                         (declare (not safe))
                         (_g122761122791_ _g122762122794_)))))
               (let () (declare (not safe)) (_g122761122791_ _g122762122794_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122761122791_
                                                      _g122762122794_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122761122791_
                                                  _g122762122794_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122761122791_ _g122762122794_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122761122791_ _g122762122794_)))))
                           (let ()
                             (declare (not safe))
                             (_g122761122791_ _g122762122794_)))))
                   (let ()
                     (declare (not safe))
                     (_g122761122791_ _g122762122794_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122761122791_
                                                      _g122762122794_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122761122791_
                                              _g122762122794_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122761122791_ _g122762122794_))))))
                       (declare (not safe))
                       (_g122760122886_ _L122744_))))
                  (___kont130148130149_
                   (lambda (_L122458_ _L122459_)
                     (let* ((_g122475122528_
                             (lambda (_g122476122525_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122476122525_))))
                            (_g122474122704_
                             (lambda (_g122476122531_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122476122531_))
                                   (let ((_e122484122533_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122476122531_))))
                                     (let ((_hd122483122536_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122484122533_)))
                                           (_tl122482122538_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122484122533_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122482122538_))
                                           (let ((_e122487122541_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122482122538_))))
                                             (let ((_hd122486122544_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122487122541_)))
                                                   (_tl122485122546_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122487122541_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122486122544_))
                                                   (let ((_e122490122549_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122486122544_))))
                                                     (let ((_hd122489122552_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122490122549_)))
                                                           (_tl122488122554_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122490122549_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122489122552_))
                                                           (let ((_e122493122557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122489122552_))))
                     (let ((_hd122492122560_
                            (let ()
                              (declare (not safe))
                              (##car _e122493122557_)))
                           (_tl122491122562_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122493122557_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122492122560_))
                           (let ((_e122496122565_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122492122560_))))
                             (let ((_hd122495122568_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122496122565_)))
                                   (_tl122494122570_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122496122565_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122494122570_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122491122562_))
                                       (let ((_e122499122573_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122491122562_))))
                                         (let ((_hd122498122576_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122499122573_)))
                                               (_tl122497122578_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122499122573_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd122498122576_))
                                               (let ((_e122502122581_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd122498122576_))))
                                                 (let ((_hd122501122584_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122502122581_)))
                                                       (_tl122500122586_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122502122581_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122500122586_))
                                                       (let ((_e122505122589_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122500122586_))))
                 (let ((_hd122504122592_
                        (let () (declare (not safe)) (##car _e122505122589_)))
                       (_tl122503122594_
                        (let () (declare (not safe)) (##cdr _e122505122589_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd122504122592_))
                       (let ((_e122508122597_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd122504122592_))))
                         (let ((_hd122507122600_
                                (let ()
                                  (declare (not safe))
                                  (##car _e122508122597_)))
                               (_tl122506122602_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e122508122597_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122507122600_))
                               (let ((_e122511122605_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122507122600_))))
                                 (let ((_hd122510122608_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122511122605_)))
                                       (_tl122509122610_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122511122605_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd122510122608_))
                                       (let ((_e122514122613_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd122510122608_))))
                                         (let ((_hd122513122616_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122514122613_)))
                                               (_tl122512122618_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122514122613_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122512122618_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl122509122610_))
                                                   (let ((_e122517122621_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl122509122610_))))
                                                     (let ((_hd122516122624_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122517122621_)))
                                                           (_tl122515122626_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122517122621_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122515122626_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl122506122602_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl122503122594_))
                           (let ((_e122520122629_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl122503122594_))))
                             (let ((_hd122519122632_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122520122629_)))
                                   (_tl122518122634_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122520122629_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122518122634_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl122497122578_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl122488122554_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl122485122546_))
                                               (let ((_e122523122637_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl122485122546_))))
                                                 (let ((_hd122522122640_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122523122637_)))
                                                       (_tl122521122642_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122523122637_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl122521122642_))
                                                       ((lambda (_L122645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L122646_
                         _L122647_
                         _L122648_
                         _L122649_)
                  (let* ((_get-kws-id122689_
                          (let ((__tmp130852
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122459_)))
                                (__tmp130850
                                 (let ((__tmp130851
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122649_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122311_
                                    __tmp130851
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130852 '"__" __tmp130850)))
                         (_get-kws-id122691_
                          (let ((__tmp130853
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122307_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id122689_
                             __tmp130853)))
                         (_main-id122693_
                          (let ((__tmp130856
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122459_)))
                                (__tmp130854
                                 (let ((__tmp130855
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122648_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122311_
                                    __tmp130855
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130856 '"__" __tmp130854)))
                         (_main-id122695_
                          (let ((__tmp130857
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122307_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id122693_
                             __tmp130857)))
                         (_g130858_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id122691_)))
                         (_g130859_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id122695_)))
                         (_new-kw-dispatch122699_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122645_
                             'id:
                             _L122649_
                             'new-id:
                             _get-kws-id122691_)))
                         (_new-get-kws122701_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122646_
                             'id:
                             _L122648_
                             'new-id:
                             _main-id122695_))))
                    (let ((__tmp130862
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L122459_)))
                          (__tmp130861
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id122691_)))
                          (__tmp130860
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id122695_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp130862
                       '" => "
                       __tmp130861
                       '" => "
                       __tmp130860))
                    (let ((__tmp130863
                           (let ((__tmp130864
                                  (let ((__tmp130877
                                         (let ((__tmp130878
                                                (let ((__tmp130879
                                                       (let ((__tmp130880
                                                              (let ((__tmp130882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id122695_ '())))
                            (__tmp130881
                             (let ()
                               (declare (not safe))
                               (cons _L122647_ '()))))
                        (declare (not safe))
                        (cons __tmp130882 __tmp130881))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130879
                                                   _stx122307_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self122306_
                                            __tmp130878)))
                                        (__tmp130865
                                         (let ((__tmp130872
                                                (let ((__tmp130873
                                                       (let ((__tmp130874
                                                              (let ((__tmp130876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id122691_ '())))
                            (__tmp130875
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws122701_ '()))))
                        (declare (not safe))
                        (cons __tmp130876 __tmp130875))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130873
                                                   _stx122307_)))
                                               (__tmp130866
                                                (let ((__tmp130867
                                                       (let ((__tmp130868
                                                              (let ((__tmp130869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp130871
                                    (let ()
                                      (declare (not safe))
                                      (cons _L122459_ '())))
                                   (__tmp130870
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch122699_ '()))))
                               (declare (not safe))
                               (cons __tmp130871 __tmp130870))))
                        (declare (not safe))
                        (cons '%#define-values __tmp130869))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp130868 _stx122307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp130867 '()))))
                                           (declare (not safe))
                                           (cons __tmp130872 __tmp130866))))
                                    (declare (not safe))
                                    (cons __tmp130877 __tmp130865))))
                             (declare (not safe))
                             (cons '%#begin __tmp130864))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130863 _stx122307_))))
                _hd122522122640_
                _hd122519122632_
                _hd122516122624_
                _hd122513122616_
                _hd122495122568_)
               (let ()
                 (declare (not safe))
                 (_g122475122528_ _g122476122531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122475122528_
                                                  _g122476122531_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g122475122528_
                                              _g122476122531_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g122475122528_ _g122476122531_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122475122528_ _g122476122531_)))))
                           (let ()
                             (declare (not safe))
                             (_g122475122528_ _g122476122531_)))
                       (let ()
                         (declare (not safe))
                         (_g122475122528_ _g122476122531_)))
                   (let ()
                     (declare (not safe))
                     (_g122475122528_ _g122476122531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122475122528_
                                                      _g122476122531_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122475122528_
                                                  _g122476122531_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122475122528_ _g122476122531_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g122475122528_ _g122476122531_)))))
                       (let ()
                         (declare (not safe))
                         (_g122475122528_ _g122476122531_)))))
               (let ()
                 (declare (not safe))
                 (_g122475122528_ _g122476122531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122475122528_
                                                  _g122476122531_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122475122528_ _g122476122531_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122475122528_ _g122476122531_)))))
                           (let ()
                             (declare (not safe))
                             (_g122475122528_ _g122476122531_)))))
                   (let ()
                     (declare (not safe))
                     (_g122475122528_ _g122476122531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122475122528_
                                                      _g122476122531_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122475122528_
                                              _g122476122531_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122475122528_ _g122476122531_))))))
                       (declare (not safe))
                       (_g122474122704_ _L122458_))))
                  (___kont130150130151_
                   (lambda (_L122404_ _L122405_)
                     (let ((__tmp130883
                            (let ((__tmp130884
                                   (let ((__tmp130885
                                          (let ((__tmp130886
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self122306_
                                                    _L122404_))))
                                            (declare (not safe))
                                            (cons __tmp130886 '()))))
                                     (declare (not safe))
                                     (cons _L122405_ __tmp130885))))
                              (declare (not safe))
                              (cons '%#define-values __tmp130884))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp130883 _stx122307_)))))
              (let* ((___match130235130236_
                      (lambda (_e122350122426_
                               _hd122349122429_
                               _tl122348122431_
                               _e122353122434_
                               _hd122352122437_
                               _tl122351122439_
                               _e122356122442_
                               _hd122355122445_
                               _tl122354122447_
                               _e122359122450_
                               _hd122358122453_
                               _tl122357122455_)
                        (let ((_L122458_ _hd122358122453_)
                              (_L122459_ _hd122355122445_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122459_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L122458_)))
                              (___kont130148130149_ _L122458_ _L122459_)
                              (___kont130150130151_
                               _hd122358122453_
                               _hd122352122437_)))))
                     (___match130207130208_
                      (lambda (_e122336122712_
                               _hd122335122715_
                               _tl122334122717_
                               _e122339122720_
                               _hd122338122723_
                               _tl122337122725_
                               _e122342122728_
                               _hd122341122731_
                               _tl122340122733_
                               _e122345122736_
                               _hd122344122739_
                               _tl122343122741_)
                        (let ((_L122744_ _hd122344122739_)
                              (_L122745_ _hd122341122731_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122745_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L122744_)))
                              (___kont130146130147_ _L122744_ _L122745_)
                              (___match130235130236_
                               _e122336122712_
                               _hd122335122715_
                               _tl122334122717_
                               _e122339122720_
                               _hd122338122723_
                               _tl122337122725_
                               _e122342122728_
                               _hd122341122731_
                               _tl122340122733_
                               _e122345122736_
                               _hd122344122739_
                               _tl122343122741_)))))
                     (___match130179130180_
                      (lambda (_e122322122894_
                               _hd122321122897_
                               _tl122320122899_
                               _e122325122902_
                               _hd122324122905_
                               _tl122323122907_
                               _e122328122910_
                               _hd122327122913_
                               _tl122326122915_
                               _e122331122918_
                               _hd122330122921_
                               _tl122329122923_)
                        (let ((_L122926_ _hd122330122921_)
                              (_L122927_ _hd122327122913_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122927_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L122926_)))
                              (___kont130144130145_ _L122926_ _L122927_)
                              (___match130207130208_
                               _e122322122894_
                               _hd122321122897_
                               _tl122320122899_
                               _e122325122902_
                               _hd122324122905_
                               _tl122323122907_
                               _e122328122910_
                               _hd122327122913_
                               _tl122326122915_
                               _e122331122918_
                               _hd122330122921_
                               _tl122329122923_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130142130143_))
                    (let ((_e122322122894_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130142130143_))))
                      (let ((_tl122320122899_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122322122894_)))
                            (_hd122321122897_
                             (let ()
                               (declare (not safe))
                               (##car _e122322122894_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122320122899_))
                            (let ((_e122325122902_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122320122899_))))
                              (let ((_tl122323122907_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122325122902_)))
                                    (_hd122324122905_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122325122902_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122324122905_))
                                    (let ((_e122328122910_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122324122905_))))
                                      (let ((_tl122326122915_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122328122910_)))
                                            (_hd122327122913_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122328122910_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122326122915_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122323122907_))
                                                (let ((_e122331122918_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122323122907_))))
                                                  (let ((_tl122329122923_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122331122918_)))
                                                        (_hd122330122921_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122331122918_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122329122923_))
                                                        (___match130179130180_
                                                         _e122322122894_
                                                         _hd122321122897_
                                                         _tl122320122899_
                                                         _e122325122902_
                                                         _hd122324122905_
                                                         _tl122323122907_
                                                         _e122328122910_
                                                         _hd122327122913_
                                                         _tl122326122915_
                                                         _e122331122918_
                                                         _hd122330122921_
                                                         _tl122329122923_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122316122375_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122316122375_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122323122907_))
                                                (let ((_e122370122396_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122323122907_))))
                                                  (let ((_tl122368122401_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122370122396_)))
                                                        (_hd122369122399_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122370122396_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122368122401_))
                                                        (___kont130150130151_
                                                         _hd122369122399_
                                                         _hd122324122905_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122316122375_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122316122375_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122323122907_))
                                        (let ((_e122370122396_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122323122907_))))
                                          (let ((_tl122368122401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122370122396_)))
                                                (_hd122369122399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122370122396_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122368122401_))
                                                (___kont130150130151_
                                                 _hd122369122399_
                                                 _hd122324122905_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122316122375_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g122316122375_))))))
                            (let () (declare (not safe)) (_g122316122375_)))))
                    (let () (declare (not safe)) (_g122316122375_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self121237_ _stx121238_)
        (letrec* ((_bind-e__128538128539_
                   (lambda (_id122290_ _expr122291_ _compile?122292_)
                     (let ((__tmp130889
                            (let ()
                              (declare (not safe))
                              (cons _id122290_ '())))
                           (__tmp130887
                            (let ((__tmp130888
                                   (if _compile?122292_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self121237_
                                          _expr122291_))
                                       _expr122291_)))
                              (declare (not safe))
                              (cons __tmp130888 '()))))
                       (declare (not safe))
                       (cons __tmp130889 __tmp130887))))
                  (_bind-e__0__128540128541_
                   (lambda (_id122297_ _expr122298_)
                     (let ((_compile?122300_ '#t))
                       (declare (not safe))
                       (_bind-e__128538128539_
                        _id122297_
                        _expr122298_
                        _compile?122300_))))
                  (_bind-e121240_
                   (lambda _g130891_
                     (let ((_g130890_
                            (let ()
                              (declare (not safe))
                              (##length _g130891_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130890_ 2))
                              (apply (lambda (_id122297_ _expr122298_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128540128541_
                                          _id122297_
                                          _expr122298_)))
                                     _g130891_))
                             ((let () (declare (not safe)) (##fx= _g130890_ 3))
                              (apply (lambda (_id122302_
                                              _expr122303_
                                              _compile?122304_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128538128539_
                                          _id122302_
                                          _expr122303_
                                          _compile?122304_)))
                                     _g130891_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130891_))))))
                  (_compile-bindings121241_
                   (lambda (_bindings121874_)
                     (let _lp121876_ ((_rest121878_ _bindings121874_)
                                      (_lift1121879_ '())
                                      (_lift2121880_ '())
                                      (_bind121881_ '()))
                       (let* ((_rest121882121890_ _rest121878_)
                              (_else121884121898_
                               (lambda ()
                                 (values (reverse _lift1121879_)
                                         (reverse _lift2121880_)
                                         (reverse _bind121881_))))
                              (_K121886122277_
                               (lambda (_rest121901_ _hd121902_)
                                 (let* ((___stx130278130279_ _hd121902_)
                                        (_g121906121942_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130278130279_)))))
                                   (let ((___kont130280130281_
                                          (lambda (_L122184_ _L122185_)
                                            (let* ((___stx130258130259_
                                                    _L122184_)
                                                   (_g122200122214_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130258130259_)))))
                                              (let ((___kont130260130261_
                                                     (lambda (_L122262_)
                                                       (let ((__tmp130892
                                                              (let ((__tmp130893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128538128539_
                                _L122185_
                                _L122184_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130893 _bind121881_))))
                 (declare (not safe))
                 (_lp121876_
                  _rest121901_
                  _lift1121879_
                  _lift2121880_
                  __tmp130892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130262130263_
                                                     (lambda (_L122227_)
                                                       (let ((_g130894_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx121238_
                         _L122185_
                         _L122227_
                         '#t))))
                 (begin
                   (let ((_g130895_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130894_)
                                (##vector-length _g130894_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130895_ 3)))
                         (error "Context expects 3 values" _g130895_)))
                   (let ((_ids122237_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130894_ 0)))
                         (_impls122238_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130894_ 1)))
                         (_clauses122239_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130894_ 2))))
                     (let* ((_g130896_
                             (for-each gx#core-bind-runtime! _ids122237_))
                            (_xbind122242_
                             (map _bind-e121240_ _ids122237_ _impls122238_))
                            (_expr*122244_
                             (let ((__tmp130898
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses122239_)))
                                   (__tmp130897
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130898
                                __tmp130897)))
                            (_bind*122246_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128538128539_
                                _L122185_
                                _expr*122244_
                                '#f))))
                       (let ((__tmp130900
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L122185_)))
                             (__tmp130899
                              (map gxc#identifier-symbol _ids122237_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130900
                          '" => "
                          __tmp130899))
                       (let ((__tmp130902
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2121880_ _xbind122242_)))
                             (__tmp130901
                              (let ()
                                (declare (not safe))
                                (cons _bind*122246_ _bind121881_))))
                         (declare (not safe))
                         (_lp121876_
                          _rest121901_
                          _lift1121879_
                          __tmp130902
                          __tmp130901)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130269130270_
                                                       (lambda (_e122205122254_
                                                                _hd122204122257_
                                                                _tl122203122259_)
                                                         (let ((_L122262_
                                                                _tl122203122259_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L122262_))
                       (___kont130260130261_ _L122262_)
                       (___kont130262130263_ _tl122203122259_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130258130259_))
                                                      (let ((_e122205122254_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130258130259_))))
                (let ((_tl122203122259_
                       (let () (declare (not safe)) (##cdr _e122205122254_)))
                      (_hd122204122257_
                       (let () (declare (not safe)) (##car _e122205122254_))))
                  (___match130269130270_
                   _e122205122254_
                   _hd122204122257_
                   _tl122203122259_)))
              (let () (declare (not safe)) (_g122200122214_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130282130283_
                                          (lambda (_L122012_ _L122013_)
                                            (let* ((_g122027122057_
                                                    (lambda (_g122028122054_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g122028122054_))))
                                                   (_g122026122152_
                                                    (lambda (_g122028122060_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g122028122060_))
                                                          (let ((_e122034122062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g122028122060_))))
                    (let ((_hd122033122065_
                           (let ()
                             (declare (not safe))
                             (##car _e122034122062_)))
                          (_tl122032122067_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122034122062_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122032122067_))
                          (let ((_e122037122070_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122032122067_))))
                            (let ((_hd122036122073_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122037122070_)))
                                  (_tl122035122075_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122037122070_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122036122073_))
                                  (let ((_e122040122078_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122036122073_))))
                                    (let ((_hd122039122081_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122040122078_)))
                                          (_tl122038122083_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122040122078_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd122039122081_))
                                          (let ((_e122043122086_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd122039122081_))))
                                            (let ((_hd122042122089_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122043122086_)))
                                                  (_tl122041122091_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122043122086_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd122042122089_))
                                                  (let ((_e122046122094_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd122042122089_))))
                                                    (let ((_hd122045122097_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122046122094_)))
                                                          (_tl122044122099_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122046122094_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122044122099_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl122041122091_))
                      (let ((_e122049122102_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl122041122091_))))
                        (let ((_hd122048122105_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122049122102_)))
                              (_tl122047122107_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122049122102_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122047122107_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122038122083_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122035122075_))
                                      (let ((_e122052122110_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122035122075_))))
                                        (let ((_hd122051122113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122052122110_)))
                                              (_tl122050122115_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122052122110_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122050122115_))
                                              ((lambda (_L122118_
                                                        _L122119_
                                                        _L122120_)
                                                 (let* ((_lambda-id122144_
                                                         (let ((__tmp130904
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L122013_)))
                       (__tmp130903 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130904 __tmp130903)))
                (_lambda-id122146_
                 (let ((__tmp130905
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx121238_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id122144_ __tmp130905)))
                (_g130906_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id122146_)))
                (_new-case-lambda-expr122149_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L122118_
                    'id:
                    _L122120_
                    'new-id:
                    _lambda-id122146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130908
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L122013_)))
                                                         (__tmp130907
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id122146_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130908
                                                      '" => "
                                                      __tmp130907))
                                                   (let ((__tmp130911
                                                          (let ((__tmp130912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128538128539_
                            _L122013_
                            _new-case-lambda-expr122149_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130912 _rest121901_)))
                 (__tmp130909
                  (let ((__tmp130910
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128540128541_
                            _lambda-id122146_
                            _L122119_))))
                    (declare (not safe))
                    (cons __tmp130910 _lift1121879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp121876_
                                                      __tmp130911
                                                      __tmp130909
                                                      _lift2121880_
                                                      _bind121881_))))
                                               _hd122051122113_
                                               _hd122048122105_
                                               _hd122045122097_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122027122057_
                                                 _g122028122060_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122027122057_ _g122028122060_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122027122057_ _g122028122060_)))
                              (let ()
                                (declare (not safe))
                                (_g122027122057_ _g122028122060_)))))
                      (let ()
                        (declare (not safe))
                        (_g122027122057_ _g122028122060_)))
                  (let ()
                    (declare (not safe))
                    (_g122027122057_ _g122028122060_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122027122057_
                                                     _g122028122060_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122027122057_
                                             _g122028122060_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122027122057_ _g122028122060_)))))
                          (let ()
                            (declare (not safe))
                            (_g122027122057_ _g122028122060_)))))
                  (let ()
                    (declare (not safe))
                    (_g122027122057_ _g122028122060_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g122026122152_ _L122012_))))
                                         (___kont130284130285_
                                          (lambda (_L121963_ _L121964_)
                                            (let ((__tmp130913
                                                   (let ((__tmp130914
                                                          (let ((__tmp130915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130916
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self121237_ _L121963_))))
                           (declare (not safe))
                           (cons __tmp130916 '()))))
                    (declare (not safe))
                    (cons _L121964_ __tmp130915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130914
                                                           _bind121881_))))
                                              (declare (not safe))
                                              (_lp121876_
                                               _rest121901_
                                               _lift1121879_
                                               _lift2121880_
                                               __tmp130913)))))
                                     (let* ((___match130329130330_
                                             (lambda (_e121923121988_
                                                      _hd121922121991_
                                                      _tl121921121993_
                                                      _e121926121996_
                                                      _hd121925121999_
                                                      _tl121924122001_
                                                      _e121929122004_
                                                      _hd121928122007_
                                                      _tl121927122009_)
                                               (let ((_L122012_
                                                      _hd121928122007_)
                                                     (_L122013_
                                                      _hd121925121999_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L122013_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L122012_)))
                                                     (___kont130282130283_
                                                      _L122012_
                                                      _L122013_)
                                                     (___kont130284130285_
                                                      _hd121928122007_
                                                      _hd121922121991_)))))
                                            (___match130307130308_
                                             (lambda (_e121912122160_
                                                      _hd121911122163_
                                                      _tl121910122165_
                                                      _e121915122168_
                                                      _hd121914122171_
                                                      _tl121913122173_
                                                      _e121918122176_
                                                      _hd121917122179_
                                                      _tl121916122181_)
                                               (let ((_L122184_
                                                      _hd121917122179_)
                                                     (_L122185_
                                                      _hd121914122171_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L122185_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L122184_)))
                                                     (___kont130280130281_
                                                      _L122184_
                                                      _L122185_)
                                                     (___match130329130330_
                                                      _e121912122160_
                                                      _hd121911122163_
                                                      _tl121910122165_
                                                      _e121915122168_
                                                      _hd121914122171_
                                                      _tl121913122173_
                                                      _e121918122176_
                                                      _hd121917122179_
                                                      _tl121916122181_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130278130279_))
                                           (let ((_e121912122160_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130278130279_))))
                                             (let ((_tl121910122165_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121912122160_)))
                                                   (_hd121911122163_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121912122160_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121911122163_))
                                                   (let ((_e121915122168_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121911122163_))))
                                                     (let ((_tl121913122173_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121915122168_)))
                                                           (_hd121914122171_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121915122168_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121913122173_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121910122165_))
                       (let ((_e121918122176_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121910122165_))))
                         (let ((_tl121916122181_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121918122176_)))
                               (_hd121917122179_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121918122176_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121916122181_))
                               (___match130307130308_
                                _e121912122160_
                                _hd121911122163_
                                _tl121910122165_
                                _e121915122168_
                                _hd121914122171_
                                _tl121913122173_
                                _e121918122176_
                                _hd121917122179_
                                _tl121916122181_)
                               (let ()
                                 (declare (not safe))
                                 (_g121906121942_)))))
                       (let () (declare (not safe)) (_g121906121942_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121910122165_))
                       (let ((_e121937121955_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121910122165_))))
                         (let ((_tl121935121960_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121937121955_)))
                               (_hd121936121958_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121937121955_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121935121960_))
                               (___kont130284130285_
                                _hd121936121958_
                                _hd121911122163_)
                               (let ()
                                 (declare (not safe))
                                 (_g121906121942_)))))
                       (let () (declare (not safe)) (_g121906121942_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121910122165_))
                                                       (let ((_e121937121955_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121910122165_))))
                 (let ((_tl121935121960_
                        (let () (declare (not safe)) (##cdr _e121937121955_)))
                       (_hd121936121958_
                        (let () (declare (not safe)) (##car _e121937121955_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121935121960_))
                       (___kont130284130285_ _hd121936121958_ _hd121911122163_)
                       (let () (declare (not safe)) (_g121906121942_)))))
               (let () (declare (not safe)) (_g121906121942_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121906121942_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121882121890_))
                             (let ((_hd121887122280_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121882121890_)))
                                   (_tl121888122282_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121882121890_))))
                               (let* ((_hd122285_ _hd121887122280_)
                                      (_rest122287_ _tl121888122282_))
                                 (declare (not safe))
                                 (_K121886122277_ _rest122287_ _hd122285_)))
                             (let ()
                               (declare (not safe))
                               (_else121884121898_)))))))
                  (_lift-kw-lambda?121242_
                   (lambda (_bind121798_)
                     (let* ((___stx130346130347_ _bind121798_)
                            (_g121801121818_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130346130347_)))))
                       (let ((___kont130348130349_
                              (lambda (_L121854_ _L121855_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L121855_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L121854_))
                                    '#f)))
                             (___kont130350130351_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx130346130347_))
                             (let ((_e121807121830_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx130346130347_))))
                               (let ((_tl121805121835_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e121807121830_)))
                                     (_hd121806121833_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e121807121830_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd121806121833_))
                                     (let ((_e121810121838_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd121806121833_))))
                                       (let ((_tl121808121843_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e121810121838_)))
                                             (_hd121809121841_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e121810121838_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl121808121843_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl121805121835_))
                                                 (let ((_e121813121846_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl121805121835_))))
                                                   (let ((_tl121811121851_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e121813121846_)))
                                                         (_hd121812121849_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e121813121846_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl121811121851_))
                                                         (___kont130348130349_
                                                          _hd121812121849_
                                                          _hd121809121841_)
                                                         (___kont130350130351_))))
                                                 (___kont130350130351_))
                                             (___kont130350130351_))))
                                     (___kont130350130351_))))
                             (___kont130350130351_))))))
                  (_lift-kw-lambda-bindings121243_
                   (lambda (_bindings121410_)
                     (let _lp121412_ ((_rest121414_ _bindings121410_)
                                      (_lift1121415_ '())
                                      (_lift2121416_ '())
                                      (_bind121417_ '()))
                       (let* ((_rest121418121426_ _rest121414_)
                              (_else121420121434_
                               (lambda ()
                                 (values (reverse _lift1121415_)
                                         (reverse _lift2121416_)
                                         (reverse _bind121417_))))
                              (_K121422121786_
                               (lambda (_rest121437_ _hd121438_)
                                 (let* ((___stx130376130377_ _hd121438_)
                                        (_g121441121466_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130376130377_)))))
                                   (let ((___kont130378130379_
                                          (lambda (_L121536_ _L121537_)
                                            (let* ((_g121551121604_
                                                    (lambda (_g121552121601_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121552121601_))))
                                                   (_g121550121780_
                                                    (lambda (_g121552121607_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121552121607_))
                                                          (let ((_e121560121609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121552121607_))))
                    (let ((_hd121559121612_
                           (let ()
                             (declare (not safe))
                             (##car _e121560121609_)))
                          (_tl121558121614_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121560121609_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121558121614_))
                          (let ((_e121563121617_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121558121614_))))
                            (let ((_hd121562121620_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121563121617_)))
                                  (_tl121561121622_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121563121617_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121562121620_))
                                  (let ((_e121566121625_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121562121620_))))
                                    (let ((_hd121565121628_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121566121625_)))
                                          (_tl121564121630_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121566121625_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121565121628_))
                                          (let ((_e121569121633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121565121628_))))
                                            (let ((_hd121568121636_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121569121633_)))
                                                  (_tl121567121638_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121569121633_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121568121636_))
                                                  (let ((_e121572121641_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121568121636_))))
                                                    (let ((_hd121571121644_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121572121641_)))
                                                          (_tl121570121646_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121572121641_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121570121646_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121567121638_))
                      (let ((_e121575121649_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121567121638_))))
                        (let ((_hd121574121652_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121575121649_)))
                              (_tl121573121654_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121575121649_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd121574121652_))
                              (let ((_e121578121657_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd121574121652_))))
                                (let ((_hd121577121660_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121578121657_)))
                                      (_tl121576121662_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121578121657_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121576121662_))
                                      (let ((_e121581121665_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121576121662_))))
                                        (let ((_hd121580121668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121581121665_)))
                                              (_tl121579121670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121581121665_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd121580121668_))
                                              (let ((_e121584121673_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd121580121668_))))
                                                (let ((_hd121583121676_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121584121673_)))
                                                      (_tl121582121678_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121584121673_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd121583121676_))
                                                      (let ((_e121587121681_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd121583121676_))))
                (let ((_hd121586121684_
                       (let () (declare (not safe)) (##car _e121587121681_)))
                      (_tl121585121686_
                       (let () (declare (not safe)) (##cdr _e121587121681_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121586121684_))
                      (let ((_e121590121689_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121586121684_))))
                        (let ((_hd121589121692_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121590121689_)))
                              (_tl121588121694_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121590121689_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121588121694_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121585121686_))
                                  (let ((_e121593121697_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121585121686_))))
                                    (let ((_hd121592121700_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121593121697_)))
                                          (_tl121591121702_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121593121697_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121591121702_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121582121678_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121579121670_))
                                                  (let ((_e121596121705_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121579121670_))))
                                                    (let ((_hd121595121708_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121596121705_)))
                                                          (_tl121594121710_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121596121705_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121594121710_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl121573121654_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl121564121630_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121561121622_))
                              (let ((_e121599121713_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121561121622_))))
                                (let ((_hd121598121716_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121599121713_)))
                                      (_tl121597121718_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121599121713_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121597121718_))
                                      ((lambda (_L121721_
                                                _L121722_
                                                _L121723_
                                                _L121724_
                                                _L121725_)
                                         (let* ((_get-kws-id121765_
                                                 (let ((__tmp130918
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121537_)))
                                                       (__tmp130917
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130918
                                                    __tmp130917)))
                                                (_get-kws-id121767_
                                                 (let ((__tmp130919
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121238_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id121765_
                                                    __tmp130919)))
                                                (_main-id121769_
                                                 (let ((__tmp130921
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121537_)))
                                                       (__tmp130920
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130921
                                                    __tmp130920)))
                                                (_main-id121771_
                                                 (let ((__tmp130922
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121238_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id121769_
                                                    __tmp130922)))
                                                (_g130923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id121767_)))
                                                (_g130924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id121771_)))
                                                (_new-kw-dispatch121775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121721_
                                                    'id:
                                                    _L121725_
                                                    'new-id:
                                                    _get-kws-id121767_)))
                                                (_new-get-kws121777_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121722_
                                                    'id:
                                                    _L121724_
                                                    'new-id:
                                                    _main-id121771_))))
                                           (let ((__tmp130927
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L121537_)))
                                                 (__tmp130926
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id121767_)))
                                                 (__tmp130925
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id121771_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130927
                                              '" => "
                                              __tmp130926
                                              '" => "
                                              __tmp130925))
                                           (let ((__tmp130932
                                                  (let ((__tmp130933
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128538128539_
                                                            _main-id121771_
                                                            _L121723_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130933
                                                          _lift1121415_)))
                                                 (__tmp130930
                                                  (let ((__tmp130931
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128538128539_
                                                            _get-kws-id121767_
                                                            _new-get-kws121777_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130931
                                                          _lift2121416_)))
                                                 (__tmp130928
                                                  (let ((__tmp130929
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128538128539_
                                                            _L121537_
                                                            _new-kw-dispatch121775_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130929
                                                          _bind121417_))))
                                             (declare (not safe))
                                             (_lp121412_
                                              _rest121437_
                                              __tmp130932
                                              __tmp130930
                                              __tmp130928))))
                                       _hd121598121716_
                                       _hd121595121708_
                                       _hd121592121700_
                                       _hd121589121692_
                                       _hd121571121644_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121551121604_ _g121552121607_)))))
                              (let ()
                                (declare (not safe))
                                (_g121551121604_ _g121552121607_)))
                          (let ()
                            (declare (not safe))
                            (_g121551121604_ _g121552121607_)))
                      (let ()
                        (declare (not safe))
                        (_g121551121604_ _g121552121607_)))
                  (let ()
                    (declare (not safe))
                    (_g121551121604_ _g121552121607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121551121604_
                                                     _g121552121607_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121551121604_
                                                 _g121552121607_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121551121604_
                                             _g121552121607_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121551121604_ _g121552121607_)))
                              (let ()
                                (declare (not safe))
                                (_g121551121604_ _g121552121607_)))))
                      (let ()
                        (declare (not safe))
                        (_g121551121604_ _g121552121607_)))))
              (let ()
                (declare (not safe))
                (_g121551121604_ _g121552121607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121551121604_
                                                 _g121552121607_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121551121604_ _g121552121607_)))))
                              (let ()
                                (declare (not safe))
                                (_g121551121604_ _g121552121607_)))))
                      (let ()
                        (declare (not safe))
                        (_g121551121604_ _g121552121607_)))
                  (let ()
                    (declare (not safe))
                    (_g121551121604_ _g121552121607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121551121604_
                                                     _g121552121607_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121551121604_
                                             _g121552121607_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121551121604_ _g121552121607_)))))
                          (let ()
                            (declare (not safe))
                            (_g121551121604_ _g121552121607_)))))
                  (let ()
                    (declare (not safe))
                    (_g121551121604_ _g121552121607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121550121780_ _L121536_))))
                                         (___kont130380130381_
                                          (lambda (_L121487_ _L121488_)
                                            (let ((__tmp130934
                                                   (let ((__tmp130935
                                                          (let ((__tmp130936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L121487_ '()))))
                    (declare (not safe))
                    (cons _L121488_ __tmp130936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130935
                                                           _bind121417_))))
                                              (declare (not safe))
                                              (_lp121412_
                                               _rest121437_
                                               _lift1121415_
                                               _lift2121416_
                                               __tmp130934)))))
                                     (let ((___match130403130404_
                                            (lambda (_e121447121512_
                                                     _hd121446121515_
                                                     _tl121445121517_
                                                     _e121450121520_
                                                     _hd121449121523_
                                                     _tl121448121525_
                                                     _e121453121528_
                                                     _hd121452121531_
                                                     _tl121451121533_)
                                              (let ((_L121536_
                                                     _hd121452121531_)
                                                    (_L121537_
                                                     _hd121449121523_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L121537_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L121536_)))
                                                    (___kont130378130379_
                                                     _L121536_
                                                     _L121537_)
                                                    (___kont130380130381_
                                                     _hd121452121531_
                                                     _hd121446121515_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130376130377_))
                                           (let ((_e121447121512_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130376130377_))))
                                             (let ((_tl121445121517_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121447121512_)))
                                                   (_hd121446121515_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121447121512_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121446121515_))
                                                   (let ((_e121450121520_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121446121515_))))
                                                     (let ((_tl121448121525_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121450121520_)))
                                                           (_hd121449121523_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121450121520_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121448121525_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121445121517_))
                       (let ((_e121453121528_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121445121517_))))
                         (let ((_tl121451121533_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121453121528_)))
                               (_hd121452121531_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121453121528_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121451121533_))
                               (___match130403130404_
                                _e121447121512_
                                _hd121446121515_
                                _tl121445121517_
                                _e121450121520_
                                _hd121449121523_
                                _tl121448121525_
                                _e121453121528_
                                _hd121452121531_
                                _tl121451121533_)
                               (let ()
                                 (declare (not safe))
                                 (_g121441121466_)))))
                       (let () (declare (not safe)) (_g121441121466_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121445121517_))
                       (let ((_e121461121479_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121445121517_))))
                         (let ((_tl121459121484_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121461121479_)))
                               (_hd121460121482_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121461121479_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121459121484_))
                               (___kont130380130381_
                                _hd121460121482_
                                _hd121446121515_)
                               (let ()
                                 (declare (not safe))
                                 (_g121441121466_)))))
                       (let () (declare (not safe)) (_g121441121466_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121445121517_))
                                                       (let ((_e121461121479_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121445121517_))))
                 (let ((_tl121459121484_
                        (let () (declare (not safe)) (##cdr _e121461121479_)))
                       (_hd121460121482_
                        (let () (declare (not safe)) (##car _e121461121479_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121459121484_))
                       (___kont130380130381_ _hd121460121482_ _hd121446121515_)
                       (let () (declare (not safe)) (_g121441121466_)))))
               (let () (declare (not safe)) (_g121441121466_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121441121466_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121418121426_))
                             (let ((_hd121423121789_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121418121426_)))
                                   (_tl121424121791_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121418121426_))))
                               (let* ((_hd121794_ _hd121423121789_)
                                      (_rest121796_ _tl121424121791_))
                                 (declare (not safe))
                                 (_K121422121786_ _rest121796_ _hd121794_)))
                             (let ()
                               (declare (not safe))
                               (_else121420121434_))))))))
          (let* ((___stx130420130421_ _stx121238_)
                 (_g121246121272_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130420130421_)))))
            (let ((___kont130422130423_
                   (lambda (_L121332_ _L121333_)
                     (let ((__tmp130938
                            (lambda ()
                              (if (let ((__tmp130965
                                         (let ((__tmp130966
                                                (lambda (_g121361121364_
                                                         _g121362121366_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g121361121364_
                                                          _g121362121366_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp130966
                                                   '()
                                                   _L121333_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?121242_
                                            __tmp130965))
                                  (let ((_g130952_
                                         (let ((__tmp130954
                                                (let ((__tmp130955
                                                       (lambda (_g121368121371_
                                                                _g121369121373_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121368121371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121369121373_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130955
                                                          '()
                                                          _L121333_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings121243_
                                            __tmp130954))))
                                    (begin
                                      (let ((_g130953_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130952_)
                                                   (##vector-length _g130952_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130953_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130953_)))
                                      (let ((_lift1121376_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130952_ 0)))
                                            (_lift2121377_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130952_ 1)))
                                            (_hd121378_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130952_ 2))))
                                        (let* ((_expr121380_
                                                (let ((__tmp130956
                                                       (let ((__tmp130957
                                                              (let ((__tmp130958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L121332_ '()))))
                        (declare (not safe))
                        (cons _hd121378_ __tmp130958))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130956
                                                   _stx121238_)))
                                               (_expr121382_
                                                (let ((__tmp130959
                                                       (let ((__tmp130960
                                                              (let ((__tmp130961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121380_ '()))))
                        (declare (not safe))
                        (cons _lift2121377_ __tmp130961))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130959
                                                   _stx121238_)))
                                               (_expr121384_
                                                (let ((__tmp130962
                                                       (let ((__tmp130963
                                                              (let ((__tmp130964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121382_ '()))))
                        (declare (not safe))
                        (cons _lift1121376_ __tmp130964))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130962
                                                   _stx121238_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self121237_
                                             _expr121384_))))))
                                  (let ((_g130939_
                                         (let ((__tmp130941
                                                (let ((__tmp130942
                                                       (lambda (_g121386121389_
                                                                _g121387121391_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121386121389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121387121391_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130942
                                                          '()
                                                          _L121333_))))
                                           (declare (not safe))
                                           (_compile-bindings121241_
                                            __tmp130941))))
                                    (begin
                                      (let ((_g130940_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130939_)
                                                   (##vector-length _g130939_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130940_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130940_)))
                                      (let ((_lift1121394_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130939_ 0)))
                                            (_lift2121395_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130939_ 1)))
                                            (_hd121396_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130939_ 2))))
                                        (let* ((_body121398_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self121237_
                                                   _L121332_)))
                                               (_expr121400_
                                                (let ((__tmp130943
                                                       (let ((__tmp130944
                                                              (let ((__tmp130945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body121398_ '()))))
                        (declare (not safe))
                        (cons _hd121396_ __tmp130945))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130943
                                                   _stx121238_)))
                                               (_expr121402_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2121395_))
                                                    _expr121400_
                                                    (let ((__tmp130946
                                                           (let ((__tmp130947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130948
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121400_ '()))))
                            (declare (not safe))
                            (cons _lift2121395_ __tmp130948))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130947))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130946 _stx121238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr121404_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1121394_))
                                                    _expr121402_
                                                    (let ((__tmp130949
                                                           (let ((__tmp130950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130951
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121402_ '()))))
                            (declare (not safe))
                            (cons _lift1121394_ __tmp130951))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130950))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130949 _stx121238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr121404_)))))))
                           (__tmp130937
                            (let ((__obj130637
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130637)
                              __obj130637)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130938
                        gx#current-expander-context
                        __tmp130937))))
                  (___kont130426130427_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self121237_ _stx121238_)))))
              (let ((___match130447130448_
                     (lambda (_e121252121284_
                              _hd121251121287_
                              _tl121250121289_
                              _e121255121292_
                              _hd121254121295_
                              _tl121253121297_
                              ___splice130424130425_
                              _target121256121300_
                              _tl121258121302_)
                       (letrec ((_loop121259121305_
                                 (lambda (_hd121257121308_ _bind121263121310_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd121257121308_))
                                       (let ((_e121260121313_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd121257121308_))))
                                         (let ((_lp-tl121262121318_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121260121313_)))
                                               (_lp-hd121261121316_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121260121313_))))
                                           (let ((__tmp130969
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd121261121316_
                                                          _bind121263121310_))))
                                             (declare (not safe))
                                             (_loop121259121305_
                                              _lp-tl121262121318_
                                              __tmp130969))))
                                       (let ((_bind121264121321_
                                              (reverse _bind121263121310_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl121253121297_))
                                             (let ((_e121267121324_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl121253121297_))))
                                               (let ((_tl121265121329_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e121267121324_)))
                                                     (_hd121266121327_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e121267121324_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl121265121329_))
                                                     (let ((_L121332_
                                                            _hd121266121327_)
                                                           (_L121333_
                                                            _bind121264121321_))
                                                       (if (let ((__tmp130967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130968
                                 (lambda (_g121353121356_ _g121354121358_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g121353121356_ _g121354121358_)))))
                            (declare (not safe))
                            (foldr1 __tmp130968 '() _L121333_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130967))
                   (___kont130422130423_ _L121332_ _L121333_)
                   (___kont130426130427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130426130427_))))
                                             (___kont130426130427_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop121259121305_ _target121256121300_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130420130421_))
                    (let ((_e121252121284_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130420130421_))))
                      (let ((_tl121250121289_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121252121284_)))
                            (_hd121251121287_
                             (let ()
                               (declare (not safe))
                               (##car _e121252121284_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121250121289_))
                            (let ((_e121255121292_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121250121289_))))
                              (let ((_tl121253121297_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121255121292_)))
                                    (_hd121254121295_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121255121292_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd121254121295_))
                                    (let ((___splice130424130425_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd121254121295_
                                              '0))))
                                      (let ((_tl121258121302_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130424130425_
                                                '1)))
                                            (_target121256121300_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130424130425_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121258121302_))
                                            (___match130447130448_
                                             _e121252121284_
                                             _hd121251121287_
                                             _tl121250121289_
                                             _e121255121292_
                                             _hd121254121295_
                                             _tl121253121297_
                                             ___splice130424130425_
                                             _target121256121300_
                                             _tl121258121302_)
                                            (___kont130426130427_))))
                                    (___kont130426130427_))))
                            (___kont130426130427_))))
                    (___kont130426130427_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self120380_ _stx120381_)
        (letrec* ((_bind-e__128543128544_
                   (lambda (_id121221_ _expr121222_ _compile?121223_)
                     (let ((__tmp130972
                            (let ()
                              (declare (not safe))
                              (cons _id121221_ '())))
                           (__tmp130970
                            (let ((__tmp130971
                                   (if _compile?121223_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120380_
                                          _expr121222_))
                                       _expr121222_)))
                              (declare (not safe))
                              (cons __tmp130971 '()))))
                       (declare (not safe))
                       (cons __tmp130972 __tmp130970))))
                  (_bind-e__0__128545128546_
                   (lambda (_id121228_ _expr121229_)
                     (let ((_compile?121231_ '#t))
                       (declare (not safe))
                       (_bind-e__128543128544_
                        _id121228_
                        _expr121229_
                        _compile?121231_))))
                  (_bind-e120383_
                   (lambda _g130974_
                     (let ((_g130973_
                            (let ()
                              (declare (not safe))
                              (##length _g130974_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130973_ 2))
                              (apply (lambda (_id121228_ _expr121229_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128545128546_
                                          _id121228_
                                          _expr121229_)))
                                     _g130974_))
                             ((let () (declare (not safe)) (##fx= _g130973_ 3))
                              (apply (lambda (_id121233_
                                              _expr121234_
                                              _compile?121235_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128543128544_
                                          _id121233_
                                          _expr121234_
                                          _compile?121235_)))
                                     _g130974_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130974_))))))
                  (_compile-bindings120384_
                   (lambda (_rest120519_)
                     (let _lp120521_ ((_rest120523_ _rest120519_)
                                      (_bind120524_ '()))
                       (let* ((_rest120525120533_ _rest120523_)
                              (_else120527120541_
                               (lambda () (reverse _bind120524_)))
                              (_K120529121208_
                               (lambda (_rest120544_ _hd120545_)
                                 (let* ((___stx130470130471_ _hd120545_)
                                        (_g120550120597_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130470130471_)))))
                                   (let ((___kont130472130473_
                                          (lambda (_L121115_ _L121116_)
                                            (let* ((___stx130450130451_
                                                    _L121115_)
                                                   (_g121131121145_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130450130451_)))))
                                              (let ((___kont130452130453_
                                                     (lambda (_L121193_)
                                                       (let ((__tmp130975
                                                              (let ((__tmp130976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128543128544_
                                _L121116_
                                _L121115_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130976 _bind120524_))))
                 (declare (not safe))
                 (_lp120521_ _rest120544_ __tmp130975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130454130455_
                                                     (lambda (_L121158_)
                                                       (let ((_g130977_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120381_
                         _L121116_
                         _L121158_
                         '#t))))
                 (begin
                   (let ((_g130978_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130977_)
                                (##vector-length _g130977_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130978_ 3)))
                         (error "Context expects 3 values" _g130978_)))
                   (let ((_ids121168_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130977_ 0)))
                         (_impls121169_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130977_ 1)))
                         (_clauses121170_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130977_ 2))))
                     (let* ((_g130979_
                             (for-each gx#core-bind-runtime! _ids121168_))
                            (_xbind121173_
                             (map _bind-e120383_ _ids121168_ _impls121169_))
                            (_expr*121175_
                             (let ((__tmp130981
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121170_)))
                                   (__tmp130980
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130981
                                __tmp130980)))
                            (_bind*121177_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128543128544_
                                _L121116_
                                _expr*121175_
                                '#f))))
                       (let ((__tmp130983
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121116_)))
                             (__tmp130982
                              (map gxc#identifier-symbol _ids121168_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130983
                          '" => "
                          __tmp130982))
                       (let ((__tmp130984
                              (let ((__tmp130985
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind120524_
                                               _xbind121173_))))
                                (declare (not safe))
                                (cons _bind*121177_ __tmp130985))))
                         (declare (not safe))
                         (_lp120521_ _rest120544_ __tmp130984)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130461130462_
                                                       (lambda (_e121136121185_
                                                                _hd121135121188_
                                                                _tl121134121190_)
                                                         (let ((_L121193_
                                                                _tl121134121190_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L121193_))
                       (___kont130452130453_ _L121193_)
                       (___kont130454130455_ _tl121134121190_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130450130451_))
                                                      (let ((_e121136121185_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130450130451_))))
                (let ((_tl121134121190_
                       (let () (declare (not safe)) (##cdr _e121136121185_)))
                      (_hd121135121188_
                       (let () (declare (not safe)) (##car _e121136121185_))))
                  (___match130461130462_
                   _e121136121185_
                   _hd121135121188_
                   _tl121134121190_)))
              (let () (declare (not safe)) (_g121131121145_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130474130475_
                                          (lambda (_L120943_ _L120944_)
                                            (let* ((_g120958120988_
                                                    (lambda (_g120959120985_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120959120985_))))
                                                   (_g120957121083_
                                                    (lambda (_g120959120991_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120959120991_))
                                                          (let ((_e120965120993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120959120991_))))
                    (let ((_hd120964120996_
                           (let ()
                             (declare (not safe))
                             (##car _e120965120993_)))
                          (_tl120963120998_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120965120993_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120963120998_))
                          (let ((_e120968121001_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120963120998_))))
                            (let ((_hd120967121004_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120968121001_)))
                                  (_tl120966121006_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120968121001_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120967121004_))
                                  (let ((_e120971121009_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120967121004_))))
                                    (let ((_hd120970121012_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120971121009_)))
                                          (_tl120969121014_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120971121009_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120970121012_))
                                          (let ((_e120974121017_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120970121012_))))
                                            (let ((_hd120973121020_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120974121017_)))
                                                  (_tl120972121022_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120974121017_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120973121020_))
                                                  (let ((_e120977121025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120973121020_))))
                                                    (let ((_hd120976121028_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120977121025_)))
                                                          (_tl120975121030_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120977121025_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120975121030_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120972121022_))
                      (let ((_e120980121033_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120972121022_))))
                        (let ((_hd120979121036_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120980121033_)))
                              (_tl120978121038_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120980121033_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120978121038_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120969121014_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120966121006_))
                                      (let ((_e120983121041_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120966121006_))))
                                        (let ((_hd120982121044_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120983121041_)))
                                              (_tl120981121046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120983121041_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120981121046_))
                                              ((lambda (_L121049_
                                                        _L121050_
                                                        _L121051_)
                                                 (let* ((_lambda-id121075_
                                                         (let ((__tmp130987
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120944_)))
                       (__tmp130986 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130987 __tmp130986)))
                (_lambda-id121077_
                 (let ((__tmp130988
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120381_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id121075_ __tmp130988)))
                (_g130989_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id121077_)))
                (_new-case-lambda-expr121080_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L121049_
                    'id:
                    _L121051_
                    'new-id:
                    _lambda-id121077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130991
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120944_)))
                                                         (__tmp130990
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id121077_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130991
                                                      '" => "
                                                      __tmp130990))
                                                   (let ((__tmp130994
                                                          (let ((__tmp130995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128543128544_
                            _L120944_
                            _new-case-lambda-expr121080_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130995 _rest120544_)))
                 (__tmp130992
                  (let ((__tmp130993
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128545128546_
                            _lambda-id121077_
                            _L121050_))))
                    (declare (not safe))
                    (cons __tmp130993 _bind120524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120521_
                                                      __tmp130994
                                                      __tmp130992))))
                                               _hd120982121044_
                                               _hd120979121036_
                                               _hd120976121028_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120958120988_
                                                 _g120959120991_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120958120988_ _g120959120991_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120958120988_ _g120959120991_)))
                              (let ()
                                (declare (not safe))
                                (_g120958120988_ _g120959120991_)))))
                      (let ()
                        (declare (not safe))
                        (_g120958120988_ _g120959120991_)))
                  (let ()
                    (declare (not safe))
                    (_g120958120988_ _g120959120991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120958120988_
                                                     _g120959120991_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120958120988_
                                             _g120959120991_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120958120988_ _g120959120991_)))))
                          (let ()
                            (declare (not safe))
                            (_g120958120988_ _g120959120991_)))))
                  (let ()
                    (declare (not safe))
                    (_g120958120988_ _g120959120991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120957121083_ _L120943_))))
                                         (___kont130476130477_
                                          (lambda (_L120667_ _L120668_)
                                            (let* ((_g120682120735_
                                                    (lambda (_g120683120732_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120683120732_))))
                                                   (_g120681120911_
                                                    (lambda (_g120683120738_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120683120738_))
                                                          (let ((_e120691120740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120683120738_))))
                    (let ((_hd120690120743_
                           (let ()
                             (declare (not safe))
                             (##car _e120691120740_)))
                          (_tl120689120745_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120691120740_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120689120745_))
                          (let ((_e120694120748_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120689120745_))))
                            (let ((_hd120693120751_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120694120748_)))
                                  (_tl120692120753_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120694120748_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120693120751_))
                                  (let ((_e120697120756_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120693120751_))))
                                    (let ((_hd120696120759_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120697120756_)))
                                          (_tl120695120761_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120697120756_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120696120759_))
                                          (let ((_e120700120764_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120696120759_))))
                                            (let ((_hd120699120767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120700120764_)))
                                                  (_tl120698120769_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120700120764_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120699120767_))
                                                  (let ((_e120703120772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120699120767_))))
                                                    (let ((_hd120702120775_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120703120772_)))
                                                          (_tl120701120777_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120703120772_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120701120777_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120698120769_))
                      (let ((_e120706120780_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120698120769_))))
                        (let ((_hd120705120783_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120706120780_)))
                              (_tl120704120785_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120706120780_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120705120783_))
                              (let ((_e120709120788_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120705120783_))))
                                (let ((_hd120708120791_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120709120788_)))
                                      (_tl120707120793_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120709120788_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120707120793_))
                                      (let ((_e120712120796_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120707120793_))))
                                        (let ((_hd120711120799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120712120796_)))
                                              (_tl120710120801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120712120796_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120711120799_))
                                              (let ((_e120715120804_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120711120799_))))
                                                (let ((_hd120714120807_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120715120804_)))
                                                      (_tl120713120809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120715120804_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120714120807_))
                                                      (let ((_e120718120812_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120714120807_))))
                (let ((_hd120717120815_
                       (let () (declare (not safe)) (##car _e120718120812_)))
                      (_tl120716120817_
                       (let () (declare (not safe)) (##cdr _e120718120812_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120717120815_))
                      (let ((_e120721120820_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120717120815_))))
                        (let ((_hd120720120823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120721120820_)))
                              (_tl120719120825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120721120820_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120719120825_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120716120817_))
                                  (let ((_e120724120828_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120716120817_))))
                                    (let ((_hd120723120831_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120724120828_)))
                                          (_tl120722120833_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120724120828_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120722120833_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120713120809_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120710120801_))
                                                  (let ((_e120727120836_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120710120801_))))
                                                    (let ((_hd120726120839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120727120836_)))
                                                          (_tl120725120841_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120727120836_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120725120841_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120704120785_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120695120761_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120692120753_))
                              (let ((_e120730120844_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120692120753_))))
                                (let ((_hd120729120847_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120730120844_)))
                                      (_tl120728120849_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120730120844_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120728120849_))
                                      ((lambda (_L120852_
                                                _L120853_
                                                _L120854_
                                                _L120855_
                                                _L120856_)
                                         (let* ((_get-kws-id120896_
                                                 (let ((__tmp130997
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120668_)))
                                                       (__tmp130996
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130997
                                                    __tmp130996)))
                                                (_get-kws-id120898_
                                                 (let ((__tmp130998
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120381_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120896_
                                                    __tmp130998)))
                                                (_main-id120900_
                                                 (let ((__tmp131000
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120668_)))
                                                       (__tmp130999
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp131000
                                                    __tmp130999)))
                                                (_main-id120902_
                                                 (let ((__tmp131001
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120381_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120900_
                                                    __tmp131001)))
                                                (_g131002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120898_)))
                                                (_g131003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120902_)))
                                                (_new-kw-dispatch120906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120852_
                                                    'id:
                                                    _L120856_
                                                    'new-id:
                                                    _get-kws-id120898_)))
                                                (_new-get-kws120908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120853_
                                                    'id:
                                                    _L120855_
                                                    'new-id:
                                                    _main-id120902_))))
                                           (let ((__tmp131006
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120668_)))
                                                 (__tmp131005
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120898_)))
                                                 (__tmp131004
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120902_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp131006
                                              '" => "
                                              __tmp131005
                                              '" => "
                                              __tmp131004))
                                           (let ((__tmp131007
                                                  (let ((__tmp131012
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128543128544_
                                                            _main-id120902_
                                                            _L120854_
                                                            '#f)))
                                                        (__tmp131008
                                                         (let ((__tmp131011
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__128543128544_
                           _get-kws-id120898_
                           _new-get-kws120908_
                           '#f)))
                       (__tmp131009
                        (let ((__tmp131010
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__128543128544_
                                  _L120668_
                                  _new-kw-dispatch120906_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp131010 _rest120544_))))
                   (declare (not safe))
                   (cons __tmp131011 __tmp131009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp131012
                                                          __tmp131008))))
                                             (declare (not safe))
                                             (_lp120521_
                                              __tmp131007
                                              _bind120524_))))
                                       _hd120729120847_
                                       _hd120726120839_
                                       _hd120723120831_
                                       _hd120720120823_
                                       _hd120702120775_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120682120735_ _g120683120738_)))))
                              (let ()
                                (declare (not safe))
                                (_g120682120735_ _g120683120738_)))
                          (let ()
                            (declare (not safe))
                            (_g120682120735_ _g120683120738_)))
                      (let ()
                        (declare (not safe))
                        (_g120682120735_ _g120683120738_)))
                  (let ()
                    (declare (not safe))
                    (_g120682120735_ _g120683120738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120682120735_
                                                     _g120683120738_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120682120735_
                                                 _g120683120738_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120682120735_
                                             _g120683120738_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120682120735_ _g120683120738_)))
                              (let ()
                                (declare (not safe))
                                (_g120682120735_ _g120683120738_)))))
                      (let ()
                        (declare (not safe))
                        (_g120682120735_ _g120683120738_)))))
              (let ()
                (declare (not safe))
                (_g120682120735_ _g120683120738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120682120735_
                                                 _g120683120738_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120682120735_ _g120683120738_)))))
                              (let ()
                                (declare (not safe))
                                (_g120682120735_ _g120683120738_)))))
                      (let ()
                        (declare (not safe))
                        (_g120682120735_ _g120683120738_)))
                  (let ()
                    (declare (not safe))
                    (_g120682120735_ _g120683120738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120682120735_
                                                     _g120683120738_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120682120735_
                                             _g120683120738_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120682120735_ _g120683120738_)))))
                          (let ()
                            (declare (not safe))
                            (_g120682120735_ _g120683120738_)))))
                  (let ()
                    (declare (not safe))
                    (_g120682120735_ _g120683120738_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120681120911_ _L120667_))))
                                         (___kont130478130479_
                                          (lambda (_L120618_ _L120619_)
                                            (let ((__tmp131013
                                                   (let ((__tmp131014
                                                          (let ((__tmp131015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp131016
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120380_ _L120618_))))
                           (declare (not safe))
                           (cons __tmp131016 '()))))
                    (declare (not safe))
                    (cons _L120619_ __tmp131015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp131014
                                                           _bind120524_))))
                                              (declare (not safe))
                                              (_lp120521_
                                               _rest120544_
                                               __tmp131013)))))
                                     (let* ((___match130545130546_
                                             (lambda (_e120578120643_
                                                      _hd120577120646_
                                                      _tl120576120648_
                                                      _e120581120651_
                                                      _hd120580120654_
                                                      _tl120579120656_
                                                      _e120584120659_
                                                      _hd120583120662_
                                                      _tl120582120664_)
                                               (let ((_L120667_
                                                      _hd120583120662_)
                                                     (_L120668_
                                                      _hd120580120654_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120668_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L120667_)))
                                                     (___kont130476130477_
                                                      _L120667_
                                                      _L120668_)
                                                     (___kont130478130479_
                                                      _hd120583120662_
                                                      _hd120577120646_)))))
                                            (___match130523130524_
                                             (lambda (_e120567120919_
                                                      _hd120566120922_
                                                      _tl120565120924_
                                                      _e120570120927_
                                                      _hd120569120930_
                                                      _tl120568120932_
                                                      _e120573120935_
                                                      _hd120572120938_
                                                      _tl120571120940_)
                                               (let ((_L120943_
                                                      _hd120572120938_)
                                                     (_L120944_
                                                      _hd120569120930_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120944_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120943_)))
                                                     (___kont130474130475_
                                                      _L120943_
                                                      _L120944_)
                                                     (___match130545130546_
                                                      _e120567120919_
                                                      _hd120566120922_
                                                      _tl120565120924_
                                                      _e120570120927_
                                                      _hd120569120930_
                                                      _tl120568120932_
                                                      _e120573120935_
                                                      _hd120572120938_
                                                      _tl120571120940_)))))
                                            (___match130501130502_
                                             (lambda (_e120556121091_
                                                      _hd120555121094_
                                                      _tl120554121096_
                                                      _e120559121099_
                                                      _hd120558121102_
                                                      _tl120557121104_
                                                      _e120562121107_
                                                      _hd120561121110_
                                                      _tl120560121112_)
                                               (let ((_L121115_
                                                      _hd120561121110_)
                                                     (_L121116_
                                                      _hd120558121102_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121116_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121115_)))
                                                     (___kont130472130473_
                                                      _L121115_
                                                      _L121116_)
                                                     (___match130523130524_
                                                      _e120556121091_
                                                      _hd120555121094_
                                                      _tl120554121096_
                                                      _e120559121099_
                                                      _hd120558121102_
                                                      _tl120557121104_
                                                      _e120562121107_
                                                      _hd120561121110_
                                                      _tl120560121112_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130470130471_))
                                           (let ((_e120556121091_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130470130471_))))
                                             (let ((_tl120554121096_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120556121091_)))
                                                   (_hd120555121094_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120556121091_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120555121094_))
                                                   (let ((_e120559121099_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120555121094_))))
                                                     (let ((_tl120557121104_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120559121099_)))
                                                           (_hd120558121102_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120559121099_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120557121104_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120554121096_))
                       (let ((_e120562121107_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120554121096_))))
                         (let ((_tl120560121112_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120562121107_)))
                               (_hd120561121110_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120562121107_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120560121112_))
                               (___match130501130502_
                                _e120556121091_
                                _hd120555121094_
                                _tl120554121096_
                                _e120559121099_
                                _hd120558121102_
                                _tl120557121104_
                                _e120562121107_
                                _hd120561121110_
                                _tl120560121112_)
                               (let ()
                                 (declare (not safe))
                                 (_g120550120597_)))))
                       (let () (declare (not safe)) (_g120550120597_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120554121096_))
                       (let ((_e120592120610_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120554121096_))))
                         (let ((_tl120590120615_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120592120610_)))
                               (_hd120591120613_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120592120610_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120590120615_))
                               (___kont130478130479_
                                _hd120591120613_
                                _hd120555121094_)
                               (let ()
                                 (declare (not safe))
                                 (_g120550120597_)))))
                       (let () (declare (not safe)) (_g120550120597_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120554121096_))
                                                       (let ((_e120592120610_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120554121096_))))
                 (let ((_tl120590120615_
                        (let () (declare (not safe)) (##cdr _e120592120610_)))
                       (_hd120591120613_
                        (let () (declare (not safe)) (##car _e120592120610_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120590120615_))
                       (___kont130478130479_ _hd120591120613_ _hd120555121094_)
                       (let () (declare (not safe)) (_g120550120597_)))))
               (let () (declare (not safe)) (_g120550120597_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120550120597_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120525120533_))
                             (let ((_hd120530121211_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120525120533_)))
                                   (_tl120531121213_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120525120533_))))
                               (let* ((_hd121216_ _hd120530121211_)
                                      (_rest121218_ _tl120531121213_))
                                 (declare (not safe))
                                 (_K120529121208_ _rest121218_ _hd121216_)))
                             (let ()
                               (declare (not safe))
                               (_else120527120541_))))))))
          (let* ((___stx130562130563_ _stx120381_)
                 (_g120387120414_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130562130563_)))))
            (let ((___kont130564130565_
                   (lambda (_L120474_ _L120475_ _L120476_)
                     (let ((__tmp131018
                            (lambda ()
                              (let ((_hd120513_
                                     (let ((__tmp131019
                                            (let ((__tmp131020
                                                   (lambda (_g120505120508_
                                                            _g120506120510_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g120505120508_
                                                             _g120506120510_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp131020
                                                      '()
                                                      _L120475_))))
                                       (declare (not safe))
                                       (_compile-bindings120384_ __tmp131019)))
                                    (_body120514_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120380_
                                        _L120474_))))
                                (let ((__tmp131021
                                       (let ((__tmp131022
                                              (let ((__tmp131023
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body120514_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd120513_
                                                      __tmp131023))))
                                         (declare (not safe))
                                         (cons _L120476_ __tmp131022))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp131021
                                   _stx120381_)))))
                           (__tmp131017
                            (let ((__obj130638
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130638)
                              __obj130638)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp131018
                        gx#current-expander-context
                        __tmp131017))))
                  (___kont130568130569_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120380_ _stx120381_)))))
              (let ((___match130589130590_
                     (lambda (_e120394120426_
                              _hd120393120429_
                              _tl120392120431_
                              _e120397120434_
                              _hd120396120437_
                              _tl120395120439_
                              ___splice130566130567_
                              _target120398120442_
                              _tl120400120444_)
                       (letrec ((_loop120401120447_
                                 (lambda (_hd120399120450_ _bind120405120452_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120399120450_))
                                       (let ((_e120402120455_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120399120450_))))
                                         (let ((_lp-tl120404120460_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120402120455_)))
                                               (_lp-hd120403120458_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120402120455_))))
                                           (let ((__tmp131026
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120403120458_
                                                          _bind120405120452_))))
                                             (declare (not safe))
                                             (_loop120401120447_
                                              _lp-tl120404120460_
                                              __tmp131026))))
                                       (let ((_bind120406120463_
                                              (reverse _bind120405120452_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120395120439_))
                                             (let ((_e120409120466_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120395120439_))))
                                               (let ((_tl120407120471_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120409120466_)))
                                                     (_hd120408120469_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120409120466_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120407120471_))
                                                     (let ((_L120474_
                                                            _hd120408120469_)
                                                           (_L120475_
                                                            _bind120406120463_)
                                                           (_L120476_
                                                            _hd120393120429_))
                                                       (if (let ((__tmp131024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131025
                                 (lambda (_g120497120500_ _g120498120502_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120497120500_ _g120498120502_)))))
                            (declare (not safe))
                            (foldr1 __tmp131025 '() _L120475_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp131024))
                   (___kont130564130565_ _L120474_ _L120475_ _L120476_)
                   (___kont130568130569_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130568130569_))))
                                             (___kont130568130569_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120401120447_ _target120398120442_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130562130563_))
                    (let ((_e120394120426_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130562130563_))))
                      (let ((_tl120392120431_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120394120426_)))
                            (_hd120393120429_
                             (let ()
                               (declare (not safe))
                               (##car _e120394120426_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120392120431_))
                            (let ((_e120397120434_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120392120431_))))
                              (let ((_tl120395120439_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120397120434_)))
                                    (_hd120396120437_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120397120434_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120396120437_))
                                    (let ((___splice130566130567_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120396120437_
                                              '0))))
                                      (let ((_tl120400120444_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130566130567_
                                                '1)))
                                            (_target120398120442_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130566130567_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120400120444_))
                                            (___match130589130590_
                                             _e120394120426_
                                             _hd120393120429_
                                             _tl120392120431_
                                             _e120397120434_
                                             _hd120396120437_
                                             _tl120395120439_
                                             ___splice130566130567_
                                             _target120398120442_
                                             _tl120400120444_)
                                            (___kont130568130569_))))
                                    (___kont130568130569_))))
                            (___kont130568130569_))))
                    (___kont130568130569_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind120298_)
        (let* ((___stx130592130593_ _bind120298_)
               (_g120301120318_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx130592130593_)))))
          (let ((___kont130594130595_
                 (lambda (_L120354_ _L120355_)
                   (if (let () (declare (not safe)) (gx#identifier? _L120355_))
                       (let ((_$e120371_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L120354_))))
                         (if _$e120371_
                             _$e120371_
                             (let ((_$e120374_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L120354_))))
                               (if _$e120374_
                                   _$e120374_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120354_))))))
                       '#f)))
                (___kont130596130597_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx130592130593_))
                (let ((_e120307120330_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx130592130593_))))
                  (let ((_tl120305120335_
                         (let () (declare (not safe)) (##cdr _e120307120330_)))
                        (_hd120306120333_
                         (let ()
                           (declare (not safe))
                           (##car _e120307120330_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120306120333_))
                        (let ((_e120310120338_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120306120333_))))
                          (let ((_tl120308120343_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120310120338_)))
                                (_hd120309120341_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120310120338_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120308120343_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120305120335_))
                                    (let ((_e120313120346_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120305120335_))))
                                      (let ((_tl120311120351_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120313120346_)))
                                            (_hd120312120349_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120313120346_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120311120351_))
                                            (___kont130594130595_
                                             _hd120312120349_
                                             _hd120309120341_)
                                            (___kont130596130597_))))
                                    (___kont130596130597_))
                                (___kont130596130597_))))
                        (___kont130596130597_))))
                (___kont130596130597_))))))))
