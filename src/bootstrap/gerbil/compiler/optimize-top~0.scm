(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710781150)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp130646 (list gxc#::void::t))
            (__tmp130644
             (let ((__tmp130645
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130645 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp130646
         '()
         __tmp130644
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args128540_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args128540_)))
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
      (lambda (_stx128532_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self128535_
                (let ((__obj130627
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj130627))
               (__tmp130647
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128535_ _stx128532_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130647
           gxc#current-compile-method
           _self128535_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp130650 (list gxc#::false::t))
            (__tmp130648
             (let ((__tmp130649
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130649 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp130650
         '()
         __tmp130648
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args128529_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args128529_)))
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
      (lambda (_stx128521_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self128524_
                (let ((__obj130629
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj130629))
               (__tmp130651
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128524_ _stx128521_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130651
           gxc#current-compile-method
           _self128524_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp130654 (list gxc#::void::t))
            (__tmp130652
             (let ((__tmp130653
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130653 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp130654
         '()
         __tmp130652
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args128518_
        (apply make-instance gxc#::collect-type-info::t _$args128518_)))
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
      (lambda (_stx128510_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self128513_
                (let ((__obj130631
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj130631))
               (__tmp130655
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128513_ _stx128510_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130655
           gxc#current-compile-method
           _self128513_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp130658 (list gxc#::false::t))
            (__tmp130656
             (let ((__tmp130657
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130657 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp130658
         '()
         __tmp130656
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args128507_
        (apply make-instance gxc#::basic-expression-type::t _$args128507_)))
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
      (lambda (_stx128499_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self128502_
                (let ((__obj130633
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj130633))
               (__tmp130659
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128502_ _stx128499_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130659
           gxc#current-compile-method
           _self128502_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp130662 (list gxc#::basic-xform::t))
            (__tmp130660
             (let ((__tmp130661
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130661 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp130662
         '()
         __tmp130660
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args128496_
        (apply make-instance gxc#::lift-top-lambdas::t _$args128496_)))
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
      (lambda (_stx128488_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self128491_
                (let ((__obj130635
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj130635))
               (__tmp130663
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128491_ _stx128488_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130663
           gxc#current-compile-method
           _self128491_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self128390_ _stx128391_)
        (let* ((___stx128553128554_ _stx128391_)
               (_g128394128414_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128553128554_)))))
          (let ((___kont128555128556_
                 (lambda (_L128458_ _L128459_)
                   (let ((_sym128477_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128459_))))
                     (if (let ((__tmp130664 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130664 _sym128477_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128477_))
                         (let ((_type128478128480_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L128458_))))
                           (if _type128478128480_
                               (let ((_type128483_ _type128478128480_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym128477_
                                  _type128483_))
                               '#f))))))
                (___kont128557128558_ (lambda () '#!void)))
            (let ((___match128586128587_
                   (lambda (_e128400128426_
                            _hd128399128429_
                            _tl128398128431_
                            _e128403128434_
                            _hd128402128437_
                            _tl128401128439_
                            _e128406128442_
                            _hd128405128445_
                            _tl128404128447_
                            _e128409128450_
                            _hd128408128453_
                            _tl128407128455_)
                     (let ((_L128458_ _hd128408128453_)
                           (_L128459_ _hd128405128445_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128459_))
                           (___kont128555128556_ _L128458_ _L128459_)
                           (___kont128557128558_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128553128554_))
                  (let ((_e128400128426_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128553128554_))))
                    (let ((_tl128398128431_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128400128426_)))
                          (_hd128399128429_
                           (let ()
                             (declare (not safe))
                             (##car _e128400128426_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128398128431_))
                          (let ((_e128403128434_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128398128431_))))
                            (let ((_tl128401128439_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128403128434_)))
                                  (_hd128402128437_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128403128434_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128402128437_))
                                  (let ((_e128406128442_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128402128437_))))
                                    (let ((_tl128404128447_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128406128442_)))
                                          (_hd128405128445_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128406128442_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128404128447_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128401128439_))
                                              (let ((_e128409128450_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128401128439_))))
                                                (let ((_tl128407128455_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128409128450_)))
                                                      (_hd128408128453_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128409128450_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128407128455_))
                                                      (___match128586128587_
                                                       _e128400128426_
                                                       _hd128399128429_
                                                       _tl128398128431_
                                                       _e128403128434_
                                                       _hd128402128437_
                                                       _tl128401128439_
                                                       _e128406128442_
                                                       _hd128405128445_
                                                       _tl128404128447_
                                                       _e128409128450_
                                                       _hd128408128453_
                                                       _tl128407128455_)
                                                      (___kont128557128558_))))
                                              (___kont128557128558_))
                                          (___kont128557128558_))))
                                  (___kont128557128558_))))
                          (___kont128557128558_))))
                  (___kont128557128558_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self128245_ _stx128246_)
        (let* ((___stx128589128590_ _stx128246_)
               (_g128249128280_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128589128590_)))))
          (let ((___kont128591128592_
                 (lambda (_L128362_ _L128363_)
                   (let ((_sym128379_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128363_))))
                     (if (let ((__tmp130665 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130665 _sym128379_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128379_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym128379_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym128379_))
                             (let ((_type128380128382_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L128362_))))
                               (if _type128380128382_
                                   (let ((_type128385_ _type128380128382_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym128379_
                                      _type128385_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self128245_ _L128362_)))))
                (___kont128593128594_
                 (lambda (_L128309_ _L128310_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self128245_ _L128309_)))))
            (let ((___match128622128623_
                   (lambda (_e128255128330_
                            _hd128254128333_
                            _tl128253128335_
                            _e128258128338_
                            _hd128257128341_
                            _tl128256128343_
                            _e128261128346_
                            _hd128260128349_
                            _tl128259128351_
                            _e128264128354_
                            _hd128263128357_
                            _tl128262128359_)
                     (let ((_L128362_ _hd128263128357_)
                           (_L128363_ _hd128260128349_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128363_))
                           (___kont128591128592_ _L128362_ _L128363_)
                           (___kont128593128594_
                            _hd128263128357_
                            _hd128257128341_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128589128590_))
                  (let ((_e128255128330_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128589128590_))))
                    (let ((_tl128253128335_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128255128330_)))
                          (_hd128254128333_
                           (let ()
                             (declare (not safe))
                             (##car _e128255128330_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128253128335_))
                          (let ((_e128258128338_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128253128335_))))
                            (let ((_tl128256128343_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128258128338_)))
                                  (_hd128257128341_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128258128338_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128257128341_))
                                  (let ((_e128261128346_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128257128341_))))
                                    (let ((_tl128259128351_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128261128346_)))
                                          (_hd128260128349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128261128346_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128259128351_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128256128343_))
                                              (let ((_e128264128354_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128256128343_))))
                                                (let ((_tl128262128359_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128264128354_)))
                                                      (_hd128263128357_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128264128354_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128262128359_))
                                                      (___match128622128623_
                                                       _e128255128330_
                                                       _hd128254128333_
                                                       _tl128253128335_
                                                       _e128258128338_
                                                       _hd128257128341_
                                                       _tl128256128343_
                                                       _e128261128346_
                                                       _hd128260128349_
                                                       _tl128259128351_
                                                       _e128264128354_
                                                       _hd128263128357_
                                                       _tl128262128359_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128249128280_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128249128280_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128256128343_))
                                              (let ((_e128275128301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128256128343_))))
                                                (let ((_tl128273128306_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128275128301_)))
                                                      (_hd128274128304_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128275128301_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128273128306_))
                                                      (___kont128593128594_
                                                       _hd128274128304_
                                                       _hd128257128341_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128249128280_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128249128280_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl128256128343_))
                                      (let ((_e128275128301_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl128256128343_))))
                                        (let ((_tl128273128306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e128275128301_)))
                                              (_hd128274128304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e128275128301_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl128273128306_))
                                              (___kont128593128594_
                                               _hd128274128304_
                                               _hd128257128341_)
                                              (let ()
                                                (declare (not safe))
                                                (_g128249128280_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g128249128280_))))))
                          (let () (declare (not safe)) (_g128249128280_)))))
                  (let () (declare (not safe)) (_g128249128280_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self128025_ _stx128026_)
        (letrec ((_collect-e128028_
                  (lambda (_hd128189_ _expr128190_)
                    (let* ((___stx128645128646_ _hd128189_)
                           (_g128193128203_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx128645128646_)))))
                      (let ((___kont128647128648_
                             (lambda (_L128223_)
                               (let ((_sym128234_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L128223_))))
                                 (if (let ((__tmp130666
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp130666 _sym128234_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym128234_))
                                     (let ((_type128235128237_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr128190_))))
                                       (if _type128235128237_
                                           (let ((_type128240_
                                                  _type128235128237_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym128234_
                                              _type128240_
                                              '#t))
                                           '#f))))))
                            (___kont128649128650_ (lambda () '#!void)))
                        (let ((___match128658128659_
                               (lambda (_e128198128215_
                                        _hd128197128218_
                                        _tl128196128220_)
                                 (let ((_L128223_ _hd128197128218_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L128223_))
                                       (___kont128647128648_ _L128223_)
                                       (___kont128649128650_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx128645128646_))
                              (let ((_e128198128215_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx128645128646_))))
                                (let ((_tl128196128220_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128198128215_)))
                                      (_hd128197128218_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128198128215_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl128196128220_))
                                      (___match128658128659_
                                       _e128198128215_
                                       _hd128197128218_
                                       _tl128196128220_)
                                      (___kont128649128650_))))
                              (___kont128649128650_))))))))
          (let* ((_g128030128065_
                  (lambda (_g128031128062_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g128031128062_))))
                 (_g128029128186_
                  (lambda (_g128031128068_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g128031128068_))
                        (let ((_e128037128070_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g128031128068_))))
                          (let ((_hd128036128073_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128037128070_)))
                                (_tl128035128075_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128037128070_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128035128075_))
                                (let ((_e128040128078_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128035128075_))))
                                  (let ((_hd128039128081_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128040128078_)))
                                        (_tl128038128083_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128040128078_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd128039128081_))
                                        (let ((_g130667_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd128039128081_
                                                  '0))))
                                          (begin
                                            (let ((_g130668_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g130667_)
                                                         (##vector-length
                                                          _g130667_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g130668_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g130668_)))
                                            (let ((_target128041128086_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130667_
                                                      0)))
                                                  (_tl128043128088_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130667_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl128043128088_))
                                                  (letrec ((_loop128044128091_
                                                            (lambda (_hd128042128094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr128048128096_
                             _hd128049128098_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd128042128094_))
                          (let ((_e128045128101_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd128042128094_))))
                            (let ((_lp-hd128046128104_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128045128101_)))
                                  (_lp-tl128047128106_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128045128101_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd128046128104_))
                                  (let ((_e128054128109_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd128046128104_))))
                                    (let ((_hd128053128112_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128054128109_)))
                                          (_tl128052128114_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128054128109_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl128052128114_))
                                          (let ((_e128057128117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl128052128114_))))
                                            (let ((_hd128056128120_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128057128117_)))
                                                  (_tl128055128122_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128057128117_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl128055128122_))
                                                  (let ((__tmp130673
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd128056128120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr128048128096_)))
                (__tmp130672
                 (let ()
                   (declare (not safe))
                   (cons _hd128053128112_ _hd128049128098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop128044128091_
                                                     _lp-tl128047128106_
                                                     __tmp130673
                                                     __tmp130672))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g128030128065_
                                                     _g128031128068_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g128030128065_
                                             _g128031128068_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g128030128065_ _g128031128068_)))))
                          (let ((_expr128050128125_
                                 (reverse _expr128048128096_))
                                (_hd128051128127_ (reverse _hd128049128098_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128038128083_))
                                (let ((_e128060128130_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128038128083_))))
                                  (let ((_hd128059128133_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128060128130_)))
                                        (_tl128058128135_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128060128130_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128058128135_))
                                        ((lambda (_L128138_
                                                  _L128139_
                                                  _L128140_)
                                           (for-each
                                            _collect-e128028_
                                            (let ((__tmp130669
                                                   (lambda (_g128160128163_
                                                            _g128161128165_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128160128163_
                                                             _g128161128165_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130669
                                                      '()
                                                      _L128140_))
                                            (let ((__tmp130670
                                                   (lambda (_g128167128170_
                                                            _g128168128172_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128167128170_
                                                             _g128168128172_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130670
                                                      '()
                                                      _L128139_)))
                                           (for-each
                                            (lambda (_g128174128176_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self128025_
                                                 _g128174128176_)))
                                            (let ((__tmp130671
                                                   (lambda (_g128178128181_
                                                            _g128179128183_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128178128181_
                                                             _g128179128183_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130671
                                                      '()
                                                      _L128139_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self128025_
                                              _L128138_)))
                                         _hd128059128133_
                                         _expr128050128125_
                                         _hd128051128127_)
                                        (let ()
                                          (declare (not safe))
                                          (_g128030128065_ _g128031128068_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g128030128065_ _g128031128068_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop128044128091_
                                                       _target128041128086_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g128030128065_
                                                     _g128031128068_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g128030128065_ _g128031128068_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g128030128065_ _g128031128068_)))))
                        (let ()
                          (declare (not safe))
                          (_g128030128065_ _g128031128068_))))))
            (declare (not safe))
            (_g128029128186_ _stx128026_)))))
    (define gxc#collect-type-call%
      (lambda (_self127512_ _stx127513_)
        (let* ((___stx128661128662_ _stx127513_)
               (_g127517127632_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128661128662_)))))
          (let ((___kont128663128664_
                 (lambda (_L127975_ _L127976_ _L127977_ _L127978_ _L127979_)
                   (let ((__tmp130677
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127978_)))
                         (__tmp130676
                          (let () (declare (not safe)) (gx#stx-e _L127977_)))
                         (__tmp130675
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127976_)))
                         (__tmp130674
                          (let () (declare (not safe)) (gx#stx-e _L127975_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130677
                      __tmp130676
                      __tmp130675
                      __tmp130674))))
                (___kont128665128666_
                 (lambda (_L127803_ _L127804_ _L127805_ _L127806_)
                   (let ((__tmp130680
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127805_)))
                         (__tmp130679
                          (let () (declare (not safe)) (gx#stx-e _L127804_)))
                         (__tmp130678
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127803_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130680
                      __tmp130679
                      __tmp130678
                      '#f))))
                (___kont128667128668_
                 (lambda (_L127669_)
                   (for-each
                    (lambda (_g127682127684_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self127512_ _g127682127684_)))
                    (let ((__tmp130681
                           (lambda (_g127686127689_ _g127687127691_)
                             (let ()
                               (declare (not safe))
                               (cons _g127686127689_ _g127687127691_)))))
                      (declare (not safe))
                      (foldr1 __tmp130681 '() _L127669_))))))
            (let* ((___match128918128919_
                    (lambda (_e127618127637_
                             _hd127617127640_
                             _tl127616127642_
                             ___splice128669128670_
                             _target127619127645_
                             _tl127621127647_)
                      (letrec ((_loop127622127650_
                                (lambda (_hd127620127653_ _expr127626127655_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd127620127653_))
                                      (let ((_e127623127658_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd127620127653_))))
                                        (let ((_lp-tl127625127663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127623127658_)))
                                              (_lp-hd127624127661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127623127658_))))
                                          (let ((__tmp130682
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd127624127661_
                                                         _expr127626127655_))))
                                            (declare (not safe))
                                            (_loop127622127650_
                                             _lp-tl127625127663_
                                             __tmp130682))))
                                      (let ((_expr127627127666_
                                             (reverse _expr127626127655_)))
                                        (___kont128667128668_
                                         _expr127627127666_))))))
                        (let ()
                          (declare (not safe))
                          (_loop127622127650_ _target127619127645_ '())))))
                   (___match128798128799_
                    (lambda (_e127526127847_
                             _hd127525127850_
                             _tl127524127852_
                             _e127529127855_
                             _hd127528127858_
                             _tl127527127860_
                             _e127532127863_
                             _hd127531127866_
                             _tl127530127868_
                             _e127535127871_
                             _hd127534127874_
                             _tl127533127876_
                             _e127538127879_
                             _hd127537127882_
                             _tl127536127884_
                             _e127541127887_
                             _hd127540127890_
                             _tl127539127892_
                             _e127544127895_
                             _hd127543127898_
                             _tl127542127900_
                             _e127547127903_
                             _hd127546127906_
                             _tl127545127908_
                             _e127550127911_
                             _hd127549127914_
                             _tl127548127916_
                             _e127553127919_
                             _hd127552127922_
                             _tl127551127924_
                             _e127556127927_
                             _hd127555127930_
                             _tl127554127932_
                             _e127559127935_
                             _hd127558127938_
                             _tl127557127940_
                             _e127562127943_
                             _hd127561127946_
                             _tl127560127948_
                             _e127565127951_
                             _hd127564127954_
                             _tl127563127956_
                             _e127568127959_
                             _hd127567127962_
                             _tl127566127964_
                             _e127571127967_
                             _hd127570127970_
                             _tl127569127972_)
                      (let ((_L127975_ _hd127570127970_)
                            (_L127976_ _hd127561127946_)
                            (_L127977_ _hd127552127922_)
                            (_L127978_ _hd127543127898_)
                            (_L127979_ _hd127534127874_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L127979_
                               'bind-method!))
                            (___kont128663128664_
                             _L127975_
                             _L127976_
                             _L127977_
                             _L127978_
                             _L127979_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl127524127852_))
                                (let ((___splice128669128670_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl127524127852_
                                          '0))))
                                  (let ((_tl127621127647_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128669128670_
                                            '1)))
                                        (_target127619127645_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128669128670_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127621127647_))
                                        (___match128918128919_
                                         _e127526127847_
                                         _hd127525127850_
                                         _tl127524127852_
                                         ___splice128669128670_
                                         _target127619127645_
                                         _tl127621127647_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127517127632_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127517127632_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128661128662_))
                  (let ((_e127526127847_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128661128662_))))
                    (let ((_tl127524127852_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127526127847_)))
                          (_hd127525127850_
                           (let ()
                             (declare (not safe))
                             (##car _e127526127847_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127524127852_))
                          (let ((_e127529127855_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127524127852_))))
                            (let ((_tl127527127860_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127529127855_)))
                                  (_hd127528127858_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127529127855_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127528127858_))
                                  (let ((_e127532127863_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127528127858_))))
                                    (let ((_tl127530127868_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127532127863_)))
                                          (_hd127531127866_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127532127863_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd127531127866_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd127531127866_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127530127868_))
                                                  (let ((_e127535127871_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127530127868_))))
                                                    (let ((_tl127533127876_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127535127871_)))
                                                          (_hd127534127874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127535127871_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127533127876_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl127527127860_))
                      (let ((_e127538127879_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127527127860_))))
                        (let ((_tl127536127884_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127538127879_)))
                              (_hd127537127882_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127538127879_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd127537127882_))
                              (let ((_e127541127887_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd127537127882_))))
                                (let ((_tl127539127892_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127541127887_)))
                                      (_hd127540127890_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127541127887_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd127540127890_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd127540127890_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127539127892_))
                                              (let ((_e127544127895_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127539127892_))))
                                                (let ((_tl127542127900_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127544127895_)))
                                                      (_hd127543127898_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127544127895_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127542127900_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl127536127884_))
                                                          (let ((_e127547127903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl127536127884_))))
                    (let ((_tl127545127908_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127547127903_)))
                          (_hd127546127906_
                           (let ()
                             (declare (not safe))
                             (##car _e127547127903_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127546127906_))
                          (let ((_e127550127911_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127546127906_))))
                            (let ((_tl127548127916_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127550127911_)))
                                  (_hd127549127914_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127550127911_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd127549127914_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd127549127914_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127548127916_))
                                          (let ((_e127553127919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127548127916_))))
                                            (let ((_tl127551127924_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127553127919_)))
                                                  (_hd127552127922_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127553127919_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127551127924_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127545127908_))
                                                      (let ((_e127556127927_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127545127908_))))
                (let ((_tl127554127932_
                       (let () (declare (not safe)) (##cdr _e127556127927_)))
                      (_hd127555127930_
                       (let () (declare (not safe)) (##car _e127556127927_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd127555127930_))
                      (let ((_e127559127935_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd127555127930_))))
                        (let ((_tl127557127940_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127559127935_)))
                              (_hd127558127938_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127559127935_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd127558127938_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd127558127938_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127557127940_))
                                      (let ((_e127562127943_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127557127940_))))
                                        (let ((_tl127560127948_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127562127943_)))
                                              (_hd127561127946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127562127943_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127560127948_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127554127932_))
                                                  (let ((_e127565127951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127554127932_))))
                                                    (let ((_tl127563127956_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127565127951_)))
                                                          (_hd127564127954_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127565127951_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd127564127954_))
                                                          (let ((_e127568127959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd127564127954_))))
                    (let ((_tl127566127964_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127568127959_)))
                          (_hd127567127962_
                           (let ()
                             (declare (not safe))
                             (##car _e127568127959_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd127567127962_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd127567127962_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl127566127964_))
                                  (let ((_e127571127967_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl127566127964_))))
                                    (let ((_tl127569127972_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127571127967_)))
                                          (_hd127570127970_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127571127967_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127569127972_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127563127956_))
                                              (___match128798128799_
                                               _e127526127847_
                                               _hd127525127850_
                                               _tl127524127852_
                                               _e127529127855_
                                               _hd127528127858_
                                               _tl127527127860_
                                               _e127532127863_
                                               _hd127531127866_
                                               _tl127530127868_
                                               _e127535127871_
                                               _hd127534127874_
                                               _tl127533127876_
                                               _e127538127879_
                                               _hd127537127882_
                                               _tl127536127884_
                                               _e127541127887_
                                               _hd127540127890_
                                               _tl127539127892_
                                               _e127544127895_
                                               _hd127543127898_
                                               _tl127542127900_
                                               _e127547127903_
                                               _hd127546127906_
                                               _tl127545127908_
                                               _e127550127911_
                                               _hd127549127914_
                                               _tl127548127916_
                                               _e127553127919_
                                               _hd127552127922_
                                               _tl127551127924_
                                               _e127556127927_
                                               _hd127555127930_
                                               _tl127554127932_
                                               _e127559127935_
                                               _hd127558127938_
                                               _tl127557127940_
                                               _e127562127943_
                                               _hd127561127946_
                                               _tl127560127948_
                                               _e127565127951_
                                               _hd127564127954_
                                               _tl127563127956_
                                               _e127568127959_
                                               _hd127567127962_
                                               _tl127566127964_
                                               _e127571127967_
                                               _hd127570127970_
                                               _tl127569127972_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127524127852_))
                                                  (let ((___splice128669128670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127524127852_
                                                            '0))))
                                                    (let ((_tl127621127647_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128669128670_
                                                              '1)))
                                                          (_target127619127645_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128669128670_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127621127647_))
                                                          (___match128918128919_
                                                           _e127526127847_
                                                           _hd127525127850_
                                                           _tl127524127852_
                                                           ___splice128669128670_
                                                           _target127619127645_
                                                           _tl127621127647_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127517127632_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127517127632_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127524127852_))
                                              (let ((___splice128669128670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127524127852_
                                                        '0))))
                                                (let ((_tl127621127647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128669128670_
                                                          '1)))
                                                      (_target127619127645_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128669128670_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127621127647_))
                                                      (___match128918128919_
                                                       _e127526127847_
                                                       _hd127525127850_
                                                       _tl127524127852_
                                                       ___splice128669128670_
                                                       _target127619127645_
                                                       _tl127621127647_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127517127632_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127517127632_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127524127852_))
                                      (let ((___splice128669128670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127524127852_
                                                '0))))
                                        (let ((_tl127621127647_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128669128670_
                                                  '1)))
                                              (_target127619127645_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128669128670_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127621127647_))
                                              (___match128918128919_
                                               _e127526127847_
                                               _hd127525127850_
                                               _tl127524127852_
                                               ___splice128669128670_
                                               _target127619127645_
                                               _tl127621127647_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127517127632_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127517127632_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127524127852_))
                                  (let ((___splice128669128670_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127524127852_
                                            '0))))
                                    (let ((_tl127621127647_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128669128670_
                                              '1)))
                                          (_target127619127645_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128669128670_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127621127647_))
                                          (___match128918128919_
                                           _e127526127847_
                                           _hd127525127850_
                                           _tl127524127852_
                                           ___splice128669128670_
                                           _target127619127645_
                                           _tl127621127647_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127517127632_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127517127632_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127524127852_))
                              (let ((___splice128669128670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127524127852_
                                        '0))))
                                (let ((_tl127621127647_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128669128670_
                                          '1)))
                                      (_target127619127645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128669128670_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127621127647_))
                                      (___match128918128919_
                                       _e127526127847_
                                       _hd127525127850_
                                       _tl127524127852_
                                       ___splice128669128670_
                                       _target127619127645_
                                       _tl127621127647_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127517127632_)))))
                              (let ()
                                (declare (not safe))
                                (_g127517127632_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127524127852_))
                      (let ((___splice128669128670_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127524127852_ '0))))
                        (let ((_tl127621127647_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128669128670_ '1)))
                              (_target127619127645_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128669128670_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127621127647_))
                              (___match128918128919_
                               _e127526127847_
                               _hd127525127850_
                               _tl127524127852_
                               ___splice128669128670_
                               _target127619127645_
                               _tl127621127647_)
                              (let ()
                                (declare (not safe))
                                (_g127517127632_)))))
                      (let () (declare (not safe)) (_g127517127632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127554127932_))
                                                      (if (let ((__tmp130683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp130683 'bind-method!))
                  (let ((_L127803_ _hd127561127946_)
                        (_L127804_ _hd127552127922_)
                        (_L127805_ _hd127543127898_)
                        (_L127806_ _hd127534127874_))
                    (___kont128665128666_
                     _L127803_
                     _L127804_
                     _L127805_
                     _L127806_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127524127852_))
                      (let ((___splice128669128670_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127524127852_ '0))))
                        (let ((_tl127621127647_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128669128670_ '1)))
                              (_target127619127645_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128669128670_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127621127647_))
                              (___match128918128919_
                               _e127526127847_
                               _hd127525127850_
                               _tl127524127852_
                               ___splice128669128670_
                               _target127619127645_
                               _tl127621127647_)
                              (let ()
                                (declare (not safe))
                                (_g127517127632_)))))
                      (let () (declare (not safe)) (_g127517127632_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127524127852_))
                  (let ((___splice128669128670_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127524127852_ '0))))
                    (let ((_tl127621127647_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128669128670_ '1)))
                          (_target127619127645_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128669128670_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127621127647_))
                          (___match128918128919_
                           _e127526127847_
                           _hd127525127850_
                           _tl127524127852_
                           ___splice128669128670_
                           _target127619127645_
                           _tl127621127647_)
                          (let () (declare (not safe)) (_g127517127632_)))))
                  (let () (declare (not safe)) (_g127517127632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127524127852_))
                                                  (let ((___splice128669128670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127524127852_
                                                            '0))))
                                                    (let ((_tl127621127647_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128669128670_
                                                              '1)))
                                                          (_target127619127645_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128669128670_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127621127647_))
                                                          (___match128918128919_
                                                           _e127526127847_
                                                           _hd127525127850_
                                                           _tl127524127852_
                                                           ___splice128669128670_
                                                           _target127619127645_
                                                           _tl127621127647_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127517127632_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127517127632_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127524127852_))
                                          (let ((___splice128669128670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127524127852_
                                                    '0))))
                                            (let ((_tl127621127647_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128669128670_
                                                      '1)))
                                                  (_target127619127645_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128669128670_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127621127647_))
                                                  (___match128918128919_
                                                   _e127526127847_
                                                   _hd127525127850_
                                                   _tl127524127852_
                                                   ___splice128669128670_
                                                   _target127619127645_
                                                   _tl127621127647_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127517127632_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127517127632_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127524127852_))
                                      (let ((___splice128669128670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127524127852_
                                                '0))))
                                        (let ((_tl127621127647_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128669128670_
                                                  '1)))
                                              (_target127619127645_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128669128670_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127621127647_))
                                              (___match128918128919_
                                               _e127526127847_
                                               _hd127525127850_
                                               _tl127524127852_
                                               ___splice128669128670_
                                               _target127619127645_
                                               _tl127621127647_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127517127632_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127517127632_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127524127852_))
                                  (let ((___splice128669128670_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127524127852_
                                            '0))))
                                    (let ((_tl127621127647_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128669128670_
                                              '1)))
                                          (_target127619127645_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128669128670_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127621127647_))
                                          (___match128918128919_
                                           _e127526127847_
                                           _hd127525127850_
                                           _tl127524127852_
                                           ___splice128669128670_
                                           _target127619127645_
                                           _tl127621127647_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127517127632_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127517127632_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127524127852_))
                          (let ((___splice128669128670_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127524127852_
                                    '0))))
                            (let ((_tl127621127647_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128669128670_ '1)))
                                  (_target127619127645_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128669128670_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127621127647_))
                                  (___match128918128919_
                                   _e127526127847_
                                   _hd127525127850_
                                   _tl127524127852_
                                   ___splice128669128670_
                                   _target127619127645_
                                   _tl127621127647_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127517127632_)))))
                          (let () (declare (not safe)) (_g127517127632_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127524127852_))
                  (let ((___splice128669128670_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127524127852_ '0))))
                    (let ((_tl127621127647_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128669128670_ '1)))
                          (_target127619127645_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128669128670_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127621127647_))
                          (___match128918128919_
                           _e127526127847_
                           _hd127525127850_
                           _tl127524127852_
                           ___splice128669128670_
                           _target127619127645_
                           _tl127621127647_)
                          (let () (declare (not safe)) (_g127517127632_)))))
                  (let () (declare (not safe)) (_g127517127632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127524127852_))
                                                      (let ((___splice128669128670_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127524127852_ '0))))
                (let ((_tl127621127647_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128669128670_ '1)))
                      (_target127619127645_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128669128670_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127621127647_))
                      (___match128918128919_
                       _e127526127847_
                       _hd127525127850_
                       _tl127524127852_
                       ___splice128669128670_
                       _target127619127645_
                       _tl127621127647_)
                      (let () (declare (not safe)) (_g127517127632_)))))
              (let () (declare (not safe)) (_g127517127632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127524127852_))
                                              (let ((___splice128669128670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127524127852_
                                                        '0))))
                                                (let ((_tl127621127647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128669128670_
                                                          '1)))
                                                      (_target127619127645_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128669128670_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127621127647_))
                                                      (___match128918128919_
                                                       _e127526127847_
                                                       _hd127525127850_
                                                       _tl127524127852_
                                                       ___splice128669128670_
                                                       _target127619127645_
                                                       _tl127621127647_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127517127632_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127517127632_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127524127852_))
                                          (let ((___splice128669128670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127524127852_
                                                    '0))))
                                            (let ((_tl127621127647_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128669128670_
                                                      '1)))
                                                  (_target127619127645_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128669128670_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127621127647_))
                                                  (___match128918128919_
                                                   _e127526127847_
                                                   _hd127525127850_
                                                   _tl127524127852_
                                                   ___splice128669128670_
                                                   _target127619127645_
                                                   _tl127621127647_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127517127632_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127517127632_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127524127852_))
                                      (let ((___splice128669128670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127524127852_
                                                '0))))
                                        (let ((_tl127621127647_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128669128670_
                                                  '1)))
                                              (_target127619127645_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128669128670_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127621127647_))
                                              (___match128918128919_
                                               _e127526127847_
                                               _hd127525127850_
                                               _tl127524127852_
                                               ___splice128669128670_
                                               _target127619127645_
                                               _tl127621127647_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127517127632_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127517127632_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127524127852_))
                              (let ((___splice128669128670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127524127852_
                                        '0))))
                                (let ((_tl127621127647_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128669128670_
                                          '1)))
                                      (_target127619127645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128669128670_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127621127647_))
                                      (___match128918128919_
                                       _e127526127847_
                                       _hd127525127850_
                                       _tl127524127852_
                                       ___splice128669128670_
                                       _target127619127645_
                                       _tl127621127647_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127517127632_)))))
                              (let ()
                                (declare (not safe))
                                (_g127517127632_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127524127852_))
                      (let ((___splice128669128670_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127524127852_ '0))))
                        (let ((_tl127621127647_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128669128670_ '1)))
                              (_target127619127645_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128669128670_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127621127647_))
                              (___match128918128919_
                               _e127526127847_
                               _hd127525127850_
                               _tl127524127852_
                               ___splice128669128670_
                               _target127619127645_
                               _tl127621127647_)
                              (let ()
                                (declare (not safe))
                                (_g127517127632_)))))
                      (let () (declare (not safe)) (_g127517127632_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127524127852_))
                  (let ((___splice128669128670_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127524127852_ '0))))
                    (let ((_tl127621127647_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128669128670_ '1)))
                          (_target127619127645_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128669128670_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127621127647_))
                          (___match128918128919_
                           _e127526127847_
                           _hd127525127850_
                           _tl127524127852_
                           ___splice128669128670_
                           _target127619127645_
                           _tl127621127647_)
                          (let () (declare (not safe)) (_g127517127632_)))))
                  (let () (declare (not safe)) (_g127517127632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127524127852_))
                                                  (let ((___splice128669128670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127524127852_
                                                            '0))))
                                                    (let ((_tl127621127647_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128669128670_
                                                              '1)))
                                                          (_target127619127645_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128669128670_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127621127647_))
                                                          (___match128918128919_
                                                           _e127526127847_
                                                           _hd127525127850_
                                                           _tl127524127852_
                                                           ___splice128669128670_
                                                           _target127619127645_
                                                           _tl127621127647_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127517127632_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127517127632_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127524127852_))
                                              (let ((___splice128669128670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127524127852_
                                                        '0))))
                                                (let ((_tl127621127647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128669128670_
                                                          '1)))
                                                      (_target127619127645_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128669128670_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127621127647_))
                                                      (___match128918128919_
                                                       _e127526127847_
                                                       _hd127525127850_
                                                       _tl127524127852_
                                                       ___splice128669128670_
                                                       _target127619127645_
                                                       _tl127621127647_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127517127632_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127517127632_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127524127852_))
                                          (let ((___splice128669128670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127524127852_
                                                    '0))))
                                            (let ((_tl127621127647_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128669128670_
                                                      '1)))
                                                  (_target127619127645_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128669128670_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127621127647_))
                                                  (___match128918128919_
                                                   _e127526127847_
                                                   _hd127525127850_
                                                   _tl127524127852_
                                                   ___splice128669128670_
                                                   _target127619127645_
                                                   _tl127621127647_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127517127632_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127517127632_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127524127852_))
                                  (let ((___splice128669128670_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127524127852_
                                            '0))))
                                    (let ((_tl127621127647_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128669128670_
                                              '1)))
                                          (_target127619127645_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128669128670_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127621127647_))
                                          (___match128918128919_
                                           _e127526127847_
                                           _hd127525127850_
                                           _tl127524127852_
                                           ___splice128669128670_
                                           _target127619127645_
                                           _tl127621127647_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127517127632_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127517127632_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127524127852_))
                          (let ((___splice128669128670_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127524127852_
                                    '0))))
                            (let ((_tl127621127647_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128669128670_ '1)))
                                  (_target127619127645_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128669128670_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127621127647_))
                                  (___match128918128919_
                                   _e127526127847_
                                   _hd127525127850_
                                   _tl127524127852_
                                   ___splice128669128670_
                                   _target127619127645_
                                   _tl127621127647_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127517127632_)))))
                          (let () (declare (not safe)) (_g127517127632_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127524127852_))
                      (let ((___splice128669128670_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127524127852_ '0))))
                        (let ((_tl127621127647_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128669128670_ '1)))
                              (_target127619127645_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128669128670_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127621127647_))
                              (___match128918128919_
                               _e127526127847_
                               _hd127525127850_
                               _tl127524127852_
                               ___splice128669128670_
                               _target127619127645_
                               _tl127621127647_)
                              (let ()
                                (declare (not safe))
                                (_g127517127632_)))))
                      (let () (declare (not safe)) (_g127517127632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127524127852_))
                                                      (let ((___splice128669128670_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127524127852_ '0))))
                (let ((_tl127621127647_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128669128670_ '1)))
                      (_target127619127645_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128669128670_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127621127647_))
                      (___match128918128919_
                       _e127526127847_
                       _hd127525127850_
                       _tl127524127852_
                       ___splice128669128670_
                       _target127619127645_
                       _tl127621127647_)
                      (let () (declare (not safe)) (_g127517127632_)))))
              (let () (declare (not safe)) (_g127517127632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127524127852_))
                                                  (let ((___splice128669128670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127524127852_
                                                            '0))))
                                                    (let ((_tl127621127647_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128669128670_
                                                              '1)))
                                                          (_target127619127645_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128669128670_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127621127647_))
                                                          (___match128918128919_
                                                           _e127526127847_
                                                           _hd127525127850_
                                                           _tl127524127852_
                                                           ___splice128669128670_
                                                           _target127619127645_
                                                           _tl127621127647_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127517127632_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127517127632_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127524127852_))
                                              (let ((___splice128669128670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127524127852_
                                                        '0))))
                                                (let ((_tl127621127647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128669128670_
                                                          '1)))
                                                      (_target127619127645_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128669128670_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127621127647_))
                                                      (___match128918128919_
                                                       _e127526127847_
                                                       _hd127525127850_
                                                       _tl127524127852_
                                                       ___splice128669128670_
                                                       _target127619127645_
                                                       _tl127621127647_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127517127632_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127517127632_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127524127852_))
                                      (let ((___splice128669128670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127524127852_
                                                '0))))
                                        (let ((_tl127621127647_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128669128670_
                                                  '1)))
                                              (_target127619127645_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128669128670_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127621127647_))
                                              (___match128918128919_
                                               _e127526127847_
                                               _hd127525127850_
                                               _tl127524127852_
                                               ___splice128669128670_
                                               _target127619127645_
                                               _tl127621127647_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127517127632_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127517127632_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127524127852_))
                              (let ((___splice128669128670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127524127852_
                                        '0))))
                                (let ((_tl127621127647_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128669128670_
                                          '1)))
                                      (_target127619127645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128669128670_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127621127647_))
                                      (___match128918128919_
                                       _e127526127847_
                                       _hd127525127850_
                                       _tl127524127852_
                                       ___splice128669128670_
                                       _target127619127645_
                                       _tl127621127647_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127517127632_)))))
                              (let ()
                                (declare (not safe))
                                (_g127517127632_))))))
                  (let () (declare (not safe)) (_g127517127632_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self127451_ _stx127452_)
        (let* ((___stx128921128922_ _stx127452_)
               (_g127455127468_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128921128922_)))))
          (let ((___kont128923128924_
                 (lambda (_L127496_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127451_ _L127496_))))
                (___kont128925128926_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128921128922_))
                (let ((_e127460127480_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128921128922_))))
                  (let ((_tl127458127485_
                         (let () (declare (not safe)) (##cdr _e127460127480_)))
                        (_hd127459127483_
                         (let ()
                           (declare (not safe))
                           (##car _e127460127480_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl127458127485_))
                        (let ((_e127463127488_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl127458127485_))))
                          (let ((_tl127461127493_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127463127488_)))
                                (_hd127462127491_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127463127488_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl127461127493_))
                                (___kont128923128924_ _hd127462127491_)
                                (___kont128925128926_))))
                        (___kont128925128926_))))
                (___kont128925128926_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self127330_ _stx127331_)
        (let* ((_g127333127350_
                (lambda (_g127334127347_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127334127347_))))
               (_g127332127448_
                (lambda (_g127334127353_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127334127353_))
                      (let ((_e127339127355_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127334127353_))))
                        (let ((_hd127338127358_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127339127355_)))
                              (_tl127337127360_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127339127355_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127337127360_))
                              (let ((_e127342127363_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127337127360_))))
                                (let ((_hd127341127366_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127342127363_)))
                                      (_tl127340127368_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127342127363_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127340127368_))
                                      (let ((_e127345127371_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127340127368_))))
                                        (let ((_hd127344127374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127345127371_)))
                                              (_tl127343127376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127345127371_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127343127376_))
                                              ((lambda (_L127379_ _L127380_)
                                                 (let* ((___stx128943128944_
                                                         _L127380_)
                                                        (_g127396127407_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx128943128944_)))))
                                                   (let ((___kont128945128946_
                                                          (lambda (_L127427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L127428_)
                    (let ((_$e127440_
                           (let ((__tmp130684
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L127428_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp130684))))
                      (if _$e127440_
                          ((lambda (_type-e127443_)
                             (_type-e127443_ _stx127331_ _L127380_))
                           _$e127440_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self127330_ _L127379_))))))
                 (___kont128947128948_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self127330_ _L127379_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match128954128955_
                                                            (lambda (_e127402127419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd127401127422_
                             _tl127400127424_)
                      (let ((_L127427_ _tl127400127424_)
                            (_L127428_ _hd127401127422_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L127428_))
                            (___kont128945128946_ _L127427_ _L127428_)
                            (___kont128947128948_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx128943128944_))
                   (let ((_e127402127419_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx128943128944_))))
                     (let ((_tl127400127424_
                            (let ()
                              (declare (not safe))
                              (##cdr _e127402127419_)))
                           (_hd127401127422_
                            (let ()
                              (declare (not safe))
                              (##car _e127402127419_))))
                       (___match128954128955_
                        _e127402127419_
                        _hd127401127422_
                        _tl127400127424_)))
                   (___kont128947128948_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd127344127374_
                                               _hd127341127366_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127333127350_
                                                 _g127334127353_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127333127350_ _g127334127353_)))))
                              (let ()
                                (declare (not safe))
                                (_g127333127350_ _g127334127353_)))))
                      (let ()
                        (declare (not safe))
                        (_g127333127350_ _g127334127353_))))))
          (declare (not safe))
          (_g127332127448_ _stx127331_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx127174_ _ann127175_)
        (let* ((_g127177127214_
                (lambda (_g127178127211_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127178127211_))))
               (_g127176127327_
                (lambda (_g127178127217_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127178127217_))
                      (let ((_e127188127219_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127178127217_))))
                        (let ((_hd127187127222_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127188127219_)))
                              (_tl127186127224_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127188127219_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127186127224_))
                              (let ((_e127191127227_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127186127224_))))
                                (let ((_hd127190127230_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127191127227_)))
                                      (_tl127189127232_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127191127227_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127189127232_))
                                      (let ((_e127194127235_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127189127232_))))
                                        (let ((_hd127193127238_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127194127235_)))
                                              (_tl127192127240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127194127235_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127192127240_))
                                              (let ((_e127197127243_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127192127240_))))
                                                (let ((_hd127196127246_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127197127243_)))
                                                      (_tl127195127248_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127197127243_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127195127248_))
                                                      (let ((_e127200127251_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127195127248_))))
                (let ((_hd127199127254_
                       (let () (declare (not safe)) (##car _e127200127251_)))
                      (_tl127198127256_
                       (let () (declare (not safe)) (##cdr _e127200127251_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl127198127256_))
                      (let ((_e127203127259_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127198127256_))))
                        (let ((_hd127202127262_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127203127259_)))
                              (_tl127201127264_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127203127259_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127201127264_))
                              (let ((_e127206127267_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127201127264_))))
                                (let ((_hd127205127270_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127206127267_)))
                                      (_tl127204127272_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127206127267_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127204127272_))
                                      (let ((_e127209127275_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127204127272_))))
                                        (let ((_hd127208127278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127209127275_)))
                                              (_tl127207127280_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127209127275_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127207127280_))
                                              ((lambda (_L127283_
                                                        _L127284_
                                                        _L127285_
                                                        _L127286_
                                                        _L127287_
                                                        _L127288_
                                                        _L127289_)
                                                 (let ((_type-id127319_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127289_)))
                                                       (_super127320_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127288_)))
                                                       (_slots127321_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L127287_)))
                                                       (_ctor-method127322_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127286_)))
                                                       (_struct?127323_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127285_)))
                                                       (_final?127324_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127284_)))
                                                       (_metaclass127325_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L127283_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L127283_))
                                                            '#f)))
                                                   (let ((__obj130636
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
                                                      __obj130636
                                                      _type-id127319_
                                                      _super127320_
                                                      _slots127321_
                                                      _ctor-method127322_
                                                      _struct?127323_
                                                      _final?127324_
                                                      '#f
                                                      _metaclass127325_)
                                                     __obj130636)))
                                               _hd127208127278_
                                               _hd127205127270_
                                               _hd127202127262_
                                               _hd127199127254_
                                               _hd127196127246_
                                               _hd127193127238_
                                               _hd127190127230_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127177127214_
                                                 _g127178127217_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127177127214_ _g127178127217_)))))
                              (let ()
                                (declare (not safe))
                                (_g127177127214_ _g127178127217_)))))
                      (let ()
                        (declare (not safe))
                        (_g127177127214_ _g127178127217_)))))
              (let ()
                (declare (not safe))
                (_g127177127214_ _g127178127217_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g127177127214_
                                                 _g127178127217_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127177127214_ _g127178127217_)))))
                              (let ()
                                (declare (not safe))
                                (_g127177127214_ _g127178127217_)))))
                      (let ()
                        (declare (not safe))
                        (_g127177127214_ _g127178127217_))))))
          (declare (not safe))
          (_g127176127327_ _ann127175_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_stx127103_ _ann127104_)
        (let* ((_g127106127123_
                (lambda (_g127107127120_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127107127120_))))
               (_g127105127171_
                (lambda (_g127107127126_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127107127126_))
                      (let ((_e127112127128_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127107127126_))))
                        (let ((_hd127111127131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127112127128_)))
                              (_tl127110127133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127112127128_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127110127133_))
                              (let ((_e127115127136_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127110127133_))))
                                (let ((_hd127114127139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127115127136_)))
                                      (_tl127113127141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127115127136_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127113127141_))
                                      (let ((_e127118127144_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127113127141_))))
                                        (let ((_hd127117127147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127118127144_)))
                                              (_tl127116127149_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127118127144_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127116127149_))
                                              ((lambda (_L127152_ _L127153_)
                                                 (let ((_type-id127168_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127153_)))
                                                       (_super127169_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127152_))))
                                                   (let ((__obj130637
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
                                                      __obj130637
                                                      _type-id127168_
                                                      _super127169_
                                                      '()
                                                      '#f
                                                      '#f
                                                      '#f
                                                      '#t
                                                      '#f)
                                                     __obj130637)))
                                               _hd127117127147_
                                               _hd127114127139_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127106127123_
                                                 _g127107127126_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127106127123_ _g127107127126_)))))
                              (let ()
                                (declare (not safe))
                                (_g127106127123_ _g127107127126_)))))
                      (let ()
                        (declare (not safe))
                        (_g127106127123_ _g127107127126_))))))
          (declare (not safe))
          (_g127105127171_ _ann127104_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx127051_ _ann127052_)
        (let* ((_g127054127067_
                (lambda (_g127055127064_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127055127064_))))
               (_g127053127100_
                (lambda (_g127055127070_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127055127070_))
                      (let ((_e127059127072_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127055127070_))))
                        (let ((_hd127058127075_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127059127072_)))
                              (_tl127057127077_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127059127072_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127057127077_))
                              (let ((_e127062127080_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127057127077_))))
                                (let ((_hd127061127083_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127062127080_)))
                                      (_tl127060127085_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127062127080_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127060127085_))
                                      ((lambda (_L127088_)
                                         (let ((__tmp130685
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L127088_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp130685)))
                                       _hd127061127083_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127054127067_ _g127055127070_)))))
                              (let ()
                                (declare (not safe))
                                (_g127054127067_ _g127055127070_)))))
                      (let ()
                        (declare (not safe))
                        (_g127054127067_ _g127055127070_))))))
          (declare (not safe))
          (_g127053127100_ _ann127052_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx126999_ _ann127000_)
        (let* ((_g127002127015_
                (lambda (_g127003127012_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127003127012_))))
               (_g127001127048_
                (lambda (_g127003127018_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127003127018_))
                      (let ((_e127007127020_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127003127018_))))
                        (let ((_hd127006127023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127007127020_)))
                              (_tl127005127025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127007127020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127005127025_))
                              (let ((_e127010127028_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127005127025_))))
                                (let ((_hd127009127031_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127010127028_)))
                                      (_tl127008127033_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127010127028_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127008127033_))
                                      ((lambda (_L127036_)
                                         (let ((__tmp130686
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L127036_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp130686)))
                                       _hd127009127031_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127002127015_ _g127003127018_)))))
                              (let ()
                                (declare (not safe))
                                (_g127002127015_ _g127003127018_)))))
                      (let ()
                        (declare (not safe))
                        (_g127002127015_ _g127003127018_))))))
          (declare (not safe))
          (_g127001127048_ _ann127000_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx126915_ _ann126916_)
        (let* ((_g126918126939_
                (lambda (_g126919126936_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126919126936_))))
               (_g126917126996_
                (lambda (_g126919126942_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126919126942_))
                      (let ((_e126925126944_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126919126942_))))
                        (let ((_hd126924126947_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126925126944_)))
                              (_tl126923126949_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126925126944_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126923126949_))
                              (let ((_e126928126952_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126923126949_))))
                                (let ((_hd126927126955_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126928126952_)))
                                      (_tl126926126957_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126928126952_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126926126957_))
                                      (let ((_e126931126960_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126926126957_))))
                                        (let ((_hd126930126963_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126931126960_)))
                                              (_tl126929126965_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126931126960_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126929126965_))
                                              (let ((_e126934126968_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126929126965_))))
                                                (let ((_hd126933126971_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126934126968_)))
                                                      (_tl126932126973_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126934126968_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126932126973_))
                                                      ((lambda (_L126976_
                                                                _L126977_
                                                                _L126978_)
                                                         (let ((__tmp130689
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126978_)))
                       (__tmp130688
                        (let () (declare (not safe)) (gx#stx-e _L126977_)))
                       (__tmp130687
                        (let () (declare (not safe)) (gx#stx-e _L126976_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp130689
                    __tmp130688
                    __tmp130687)))
               _hd126933126971_
               _hd126930126963_
               _hd126927126955_)
              (let ()
                (declare (not safe))
                (_g126918126939_ _g126919126942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126918126939_
                                                 _g126919126942_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126918126939_ _g126919126942_)))))
                              (let ()
                                (declare (not safe))
                                (_g126918126939_ _g126919126942_)))))
                      (let ()
                        (declare (not safe))
                        (_g126918126939_ _g126919126942_))))))
          (declare (not safe))
          (_g126917126996_ _ann126916_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx126831_ _ann126832_)
        (let* ((_g126834126855_
                (lambda (_g126835126852_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126835126852_))))
               (_g126833126912_
                (lambda (_g126835126858_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126835126858_))
                      (let ((_e126841126860_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126835126858_))))
                        (let ((_hd126840126863_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126841126860_)))
                              (_tl126839126865_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126841126860_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126839126865_))
                              (let ((_e126844126868_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126839126865_))))
                                (let ((_hd126843126871_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126844126868_)))
                                      (_tl126842126873_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126844126868_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126842126873_))
                                      (let ((_e126847126876_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126842126873_))))
                                        (let ((_hd126846126879_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126847126876_)))
                                              (_tl126845126881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126847126876_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126845126881_))
                                              (let ((_e126850126884_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126845126881_))))
                                                (let ((_hd126849126887_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126850126884_)))
                                                      (_tl126848126889_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126850126884_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126848126889_))
                                                      ((lambda (_L126892_
                                                                _L126893_
                                                                _L126894_)
                                                         (let ((__tmp130692
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126894_)))
                       (__tmp130691
                        (let () (declare (not safe)) (gx#stx-e _L126893_)))
                       (__tmp130690
                        (let () (declare (not safe)) (gx#stx-e _L126892_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp130692
                    __tmp130691
                    __tmp130690)))
               _hd126849126887_
               _hd126846126879_
               _hd126843126871_)
              (let ()
                (declare (not safe))
                (_g126834126855_ _g126835126858_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126834126855_
                                                 _g126835126858_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126834126855_ _g126835126858_)))))
                              (let ()
                                (declare (not safe))
                                (_g126834126855_ _g126835126858_)))))
                      (let ()
                        (declare (not safe))
                        (_g126834126855_ _g126835126858_))))))
          (declare (not safe))
          (_g126833126912_ _ann126832_))))
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
      (lambda (_self125950_ _stx125951_)
        (let* ((___stx128957128958_ _stx125951_)
               (_g125957126153_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128957128958_)))))
          (let ((___kont128959128960_
                 (lambda (_L126819_)
                   (let ((__obj130638
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130638
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126819_))
                      '#f)
                     __obj130638)))
                (___kont128961128962_
                 (lambda (_L126746_
                          _L126747_
                          _L126748_
                          _L126749_
                          _L126750_
                          _L126751_)
                   (let* ((_tab126801_
                           (let () (declare (not safe)) (gx#stx-e _L126748_)))
                          (_keys126803_
                           (if _tab126801_
                               (filter values (vector->list _tab126801_))
                               '#f)))
                     (let ((__tmp130693
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L126747_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys126803_
                        __tmp130693)))))
                (___kont128963128964_
                 (lambda (_L126479_
                          _L126480_
                          _L126481_
                          _L126482_
                          _L126483_
                          _L126484_
                          _L126485_
                          _L126486_
                          _L126487_
                          _L126488_)
                   (let ((__tmp130695
                          (map gx#stx-e
                               (let ((__tmp130696
                                      (lambda (_g126581126584_ _g126582126586_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g126581126584_
                                                _g126582126586_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp130696 '() _L126481_))))
                         (__tmp130694
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126485_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp130695
                      __tmp130694))))
                (___kont128967128968_
                 (lambda (_L126189_)
                   (let ((__obj130639
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130639
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126189_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L126189_)))
                     __obj130639)))
                (___kont128969128970_
                 (lambda (_L126166_)
                   (let ((__obj130640
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130640
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126166_))
                      '#f)
                     __obj130640))))
            (let* ((___match129276129277_
                    (lambda (_e126144126181_ _hd126143126184_ _tl126142126186_)
                      (let ((_L126189_ _tl126142126186_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L126189_))
                            (___kont128967128968_ _L126189_)
                            (___kont128969128970_ _tl126142126186_)))))
                   (___match129270129271_
                    (lambda (_e126038126203_
                             _hd126037126206_
                             _tl126036126208_
                             _e126041126211_
                             _hd126040126214_
                             _tl126039126216_
                             _e126044126219_
                             _hd126043126222_
                             _tl126042126224_
                             _e126047126227_
                             _hd126046126230_
                             _tl126045126232_
                             _e126050126235_
                             _hd126049126238_
                             _tl126048126240_
                             _e126053126243_
                             _hd126052126246_
                             _tl126051126248_
                             _e126056126251_
                             _hd126055126254_
                             _tl126054126256_
                             _e126059126259_
                             _hd126058126262_
                             _tl126057126264_
                             _e126062126267_
                             _hd126061126270_
                             _tl126060126272_
                             _e126065126275_
                             _hd126064126278_
                             _tl126063126280_
                             _e126068126283_
                             _hd126067126286_
                             _tl126066126288_
                             _e126071126291_
                             _hd126070126294_
                             _tl126069126296_
                             _e126074126299_
                             _hd126073126302_
                             _tl126072126304_
                             _e126077126307_
                             _hd126076126310_
                             _tl126075126312_
                             ___splice128965128966_
                             _target126078126315_
                             _tl126080126317_
                             _e126095126320_
                             _hd126094126323_
                             _tl126093126325_
                             _e126098126328_
                             _hd126097126331_
                             _tl126096126333_
                             _e126101126336_
                             _hd126100126339_
                             _tl126099126341_)
                      (letrec ((_loop126081126344_
                                (lambda (_hd126079126347_
                                         _-absent-value126085126349_
                                         _key126086126351_
                                         _-xkwvar126087126353_
                                         _-hash-ref126088126355_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126079126347_))
                                      (let ((_e126082126358_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126079126347_))))
                                        (let ((_lp-tl126084126363_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126082126358_)))
                                              (_lp-hd126083126361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126082126358_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd126083126361_))
                                              (let ((_e126104126366_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd126083126361_))))
                                                (let ((_tl126102126371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126104126366_)))
                                                      (_hd126103126369_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126104126366_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd126103126369_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd126103126369_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl126102126371_))
                      (let ((_e126107126374_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126102126371_))))
                        (let ((_tl126105126379_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126107126374_)))
                              (_hd126106126377_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126107126374_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd126106126377_))
                              (let ((_e126110126382_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd126106126377_))))
                                (let ((_tl126108126387_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126110126382_)))
                                      (_hd126109126385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126110126382_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd126109126385_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd126109126385_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126108126387_))
                                              (let ((_e126113126390_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126108126387_))))
                                                (let ((_tl126111126395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126113126390_)))
                                                      (_hd126112126393_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126113126390_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126111126395_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126105126379_))
                                                          (let ((_e126116126398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126105126379_))))
                    (let ((_tl126114126403_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126116126398_)))
                          (_hd126115126401_
                           (let ()
                             (declare (not safe))
                             (##car _e126116126398_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126115126401_))
                          (let ((_e126119126406_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126115126401_))))
                            (let ((_tl126117126411_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126119126406_)))
                                  (_hd126118126409_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126119126406_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126118126409_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126118126409_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126117126411_))
                                          (let ((_e126122126414_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126117126411_))))
                                            (let ((_tl126120126419_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126122126414_)))
                                                  (_hd126121126417_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126122126414_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126120126419_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126114126403_))
                                                      (let ((_e126125126422_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126114126403_))))
                (let ((_tl126123126427_
                       (let () (declare (not safe)) (##cdr _e126125126422_)))
                      (_hd126124126425_
                       (let () (declare (not safe)) (##car _e126125126422_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126124126425_))
                      (let ((_e126128126430_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126124126425_))))
                        (let ((_tl126126126435_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126128126430_)))
                              (_hd126127126433_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126128126430_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126127126433_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd126127126433_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126126126435_))
                                      (let ((_e126131126438_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126126126435_))))
                                        (let ((_tl126129126443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126131126438_)))
                                              (_hd126130126441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126131126438_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126129126443_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126123126427_))
                                                  (let ((_e126134126446_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126123126427_))))
                                                    (let ((_tl126132126451_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126134126446_)))
                                                          (_hd126133126449_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126134126446_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126133126449_))
                                                          (let ((_e126137126454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126133126449_))))
                    (let ((_tl126135126459_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126137126454_)))
                          (_hd126136126457_
                           (let ()
                             (declare (not safe))
                             (##car _e126137126454_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126136126457_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126136126457_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126135126459_))
                                  (let ((_e126140126462_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126135126459_))))
                                    (let ((_tl126138126467_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126140126462_)))
                                          (_hd126139126465_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126140126462_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126138126467_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126132126451_))
                                              (let ((__tmp130711
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126139126465_
                                                             _-absent-value126085126349_)))
                                                    (__tmp130710
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126130126441_
                                                             _key126086126351_)))
                                                    (__tmp130709
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126121126417_
                                                             _-xkwvar126087126353_)))
                                                    (__tmp130708
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126112126393_
                                                             _-hash-ref126088126355_))))
                                                (declare (not safe))
                                                (_loop126081126344_
                                                 _lp-tl126084126363_
                                                 __tmp130711
                                                 __tmp130710
                                                 __tmp130709
                                                 __tmp130708))
                                              (___match129276129277_
                                               _e126038126203_
                                               _hd126037126206_
                                               _tl126036126208_))
                                          (___match129276129277_
                                           _e126038126203_
                                           _hd126037126206_
                                           _tl126036126208_))))
                                  (___match129276129277_
                                   _e126038126203_
                                   _hd126037126206_
                                   _tl126036126208_))
                              (___match129276129277_
                               _e126038126203_
                               _hd126037126206_
                               _tl126036126208_))
                          (___match129276129277_
                           _e126038126203_
                           _hd126037126206_
                           _tl126036126208_))))
                  (___match129276129277_
                   _e126038126203_
                   _hd126037126206_
                   _tl126036126208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129276129277_
                                                   _e126038126203_
                                                   _hd126037126206_
                                                   _tl126036126208_))
                                              (___match129276129277_
                                               _e126038126203_
                                               _hd126037126206_
                                               _tl126036126208_))))
                                      (___match129276129277_
                                       _e126038126203_
                                       _hd126037126206_
                                       _tl126036126208_))
                                  (___match129276129277_
                                   _e126038126203_
                                   _hd126037126206_
                                   _tl126036126208_))
                              (___match129276129277_
                               _e126038126203_
                               _hd126037126206_
                               _tl126036126208_))))
                      (___match129276129277_
                       _e126038126203_
                       _hd126037126206_
                       _tl126036126208_))))
              (___match129276129277_
               _e126038126203_
               _hd126037126206_
               _tl126036126208_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129276129277_
                                                   _e126038126203_
                                                   _hd126037126206_
                                                   _tl126036126208_))))
                                          (___match129276129277_
                                           _e126038126203_
                                           _hd126037126206_
                                           _tl126036126208_))
                                      (___match129276129277_
                                       _e126038126203_
                                       _hd126037126206_
                                       _tl126036126208_))
                                  (___match129276129277_
                                   _e126038126203_
                                   _hd126037126206_
                                   _tl126036126208_))))
                          (___match129276129277_
                           _e126038126203_
                           _hd126037126206_
                           _tl126036126208_))))
                  (___match129276129277_
                   _e126038126203_
                   _hd126037126206_
                   _tl126036126208_))
              (___match129276129277_
               _e126038126203_
               _hd126037126206_
               _tl126036126208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129276129277_
                                               _e126038126203_
                                               _hd126037126206_
                                               _tl126036126208_))
                                          (___match129276129277_
                                           _e126038126203_
                                           _hd126037126206_
                                           _tl126036126208_))
                                      (___match129276129277_
                                       _e126038126203_
                                       _hd126037126206_
                                       _tl126036126208_))))
                              (___match129276129277_
                               _e126038126203_
                               _hd126037126206_
                               _tl126036126208_))))
                      (___match129276129277_
                       _e126038126203_
                       _hd126037126206_
                       _tl126036126208_))
                  (___match129276129277_
                   _e126038126203_
                   _hd126037126206_
                   _tl126036126208_))
              (___match129276129277_
               _e126038126203_
               _hd126037126206_
               _tl126036126208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129276129277_
                                               _e126038126203_
                                               _hd126037126206_
                                               _tl126036126208_))))
                                      (let ((_-hash-ref126092126476_
                                             (reverse _-hash-ref126088126355_))
                                            (_-xkwvar126091126474_
                                             (reverse _-xkwvar126087126353_))
                                            (_key126090126472_
                                             (reverse _key126086126351_))
                                            (_-absent-value126089126470_
                                             (reverse _-absent-value126085126349_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl126045126232_))
                                            (let ((_L126479_ _hd126100126339_)
                                                  (_L126480_
                                                   _-absent-value126089126470_)
                                                  (_L126481_ _key126090126472_)
                                                  (_L126482_
                                                   _-xkwvar126091126474_)
                                                  (_L126483_
                                                   _-hash-ref126092126476_)
                                                  (_L126484_ _hd126076126310_)
                                                  (_L126485_ _hd126067126286_)
                                                  (_L126486_ _hd126058126262_)
                                                  (_L126487_ _tl126042126224_)
                                                  (_L126488_ _hd126043126222_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126488_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126487_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L126486_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L126488_
                                                          _L126484_))
                                                       (let ((__tmp130706
                                                              (let ((__tmp130707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g126541126544_ _g126542126546_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126541126544_ _g126542126546_)))))
                        (declare (not safe))
                        (foldr1 __tmp130707 '() _L126481_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp130706))
               (let ((__tmp130705
                      (lambda (_g126548126550_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126548126550_
                           'hash-ref))))
                     (__tmp130703
                      (let ((__tmp130704
                             (lambda (_g126552126555_ _g126553126557_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126552126555_ _g126553126557_)))))
                        (declare (not safe))
                        (foldr1 __tmp130704 '() _L126483_))))
                 (declare (not safe))
                 (andmap1 __tmp130705 __tmp130703))
               (let ((__tmp130702
                      (lambda (_g126559126561_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126559126561_
                           'absent-value))))
                     (__tmp130700
                      (let ((__tmp130701
                             (lambda (_g126563126566_ _g126564126568_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126563126566_ _g126564126568_)))))
                        (declare (not safe))
                        (foldr1 __tmp130701 '() _L126480_))))
                 (declare (not safe))
                 (andmap1 __tmp130702 __tmp130700))
               (let ((__tmp130699
                      (lambda (_g126570126572_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g126570126572_ _L126488_))))
                     (__tmp130697
                      (let ((__tmp130698
                             (lambda (_g126574126577_ _g126575126579_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126574126577_ _g126575126579_)))))
                        (declare (not safe))
                        (foldr1 __tmp130698 '() _L126482_))))
                 (declare (not safe))
                 (andmap1 __tmp130699 __tmp130697)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128963128964_
                                                   _L126479_
                                                   _L126480_
                                                   _L126481_
                                                   _L126482_
                                                   _L126483_
                                                   _L126484_
                                                   _L126485_
                                                   _L126486_
                                                   _L126487_
                                                   _L126488_)
                                                  (___match129276129277_
                                                   _e126038126203_
                                                   _hd126037126206_
                                                   _tl126036126208_)))
                                            (___match129276129277_
                                             _e126038126203_
                                             _hd126037126206_
                                             _tl126036126208_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop126081126344_
                           _target126078126315_
                           '()
                           '()
                           '()
                           '())))))
                   (___match129142129143_
                    (lambda (_e126038126203_
                             _hd126037126206_
                             _tl126036126208_
                             _e126041126211_
                             _hd126040126214_
                             _tl126039126216_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126040126214_))
                          (let ((_e126044126219_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126040126214_))))
                            (let ((_tl126042126224_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126044126219_)))
                                  (_hd126043126222_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126044126219_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126039126216_))
                                  (let ((_e126047126227_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126039126216_))))
                                    (let ((_tl126045126232_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126047126227_)))
                                          (_hd126046126230_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126047126227_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd126046126230_))
                                          (let ((_e126050126235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd126046126230_))))
                                            (let ((_tl126048126240_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126050126235_)))
                                                  (_hd126049126238_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126050126235_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd126049126238_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd126049126238_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126048126240_))
                                                          (let ((_e126053126243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126048126240_))))
                    (let ((_tl126051126248_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126053126243_)))
                          (_hd126052126246_
                           (let ()
                             (declare (not safe))
                             (##car _e126053126243_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126052126246_))
                          (let ((_e126056126251_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126052126246_))))
                            (let ((_tl126054126256_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126056126251_)))
                                  (_hd126055126254_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126056126251_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126055126254_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126055126254_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126054126256_))
                                          (let ((_e126059126259_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126054126256_))))
                                            (let ((_tl126057126264_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126059126259_)))
                                                  (_hd126058126262_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126059126259_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126057126264_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126051126248_))
                                                      (let ((_e126062126267_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126051126248_))))
                (let ((_tl126060126272_
                       (let () (declare (not safe)) (##cdr _e126062126267_)))
                      (_hd126061126270_
                       (let () (declare (not safe)) (##car _e126062126267_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126061126270_))
                      (let ((_e126065126275_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126061126270_))))
                        (let ((_tl126063126280_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126065126275_)))
                              (_hd126064126278_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126065126275_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126064126278_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd126064126278_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126063126280_))
                                      (let ((_e126068126283_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126063126280_))))
                                        (let ((_tl126066126288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126068126283_)))
                                              (_hd126067126286_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126068126283_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126066126288_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126060126272_))
                                                  (let ((_e126071126291_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126060126272_))))
                                                    (let ((_tl126069126296_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126071126291_)))
                                                          (_hd126070126294_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126071126291_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126070126294_))
                                                          (let ((_e126074126299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126070126294_))))
                    (let ((_tl126072126304_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126074126299_)))
                          (_hd126073126302_
                           (let ()
                             (declare (not safe))
                             (##car _e126074126299_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126073126302_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126073126302_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126072126304_))
                                  (let ((_e126077126307_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126072126304_))))
                                    (let ((_tl126075126312_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126077126307_)))
                                          (_hd126076126310_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126077126307_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126075126312_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126069126296_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl126069126296_))
                                                        '1)
                                                  (let ((___splice128965128966_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126069126296_
                                                            '1))))
                                                    (let ((_tl126080126317_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128965128966_
                                                              '1)))
                                                          (_target126078126315_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128965128966_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126080126317_))
                                                          (let ((_e126095126320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126080126317_))))
                    (let ((_tl126093126325_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126095126320_)))
                          (_hd126094126323_
                           (let ()
                             (declare (not safe))
                             (##car _e126095126320_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126094126323_))
                          (let ((_e126098126328_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126094126323_))))
                            (let ((_tl126096126333_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126098126328_)))
                                  (_hd126097126331_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126098126328_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126097126331_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126097126331_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126096126333_))
                                          (let ((_e126101126336_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126096126333_))))
                                            (let ((_tl126099126341_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126101126336_)))
                                                  (_hd126100126339_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126101126336_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126099126341_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126093126325_))
                                                      (___match129270129271_
                                                       _e126038126203_
                                                       _hd126037126206_
                                                       _tl126036126208_
                                                       _e126041126211_
                                                       _hd126040126214_
                                                       _tl126039126216_
                                                       _e126044126219_
                                                       _hd126043126222_
                                                       _tl126042126224_
                                                       _e126047126227_
                                                       _hd126046126230_
                                                       _tl126045126232_
                                                       _e126050126235_
                                                       _hd126049126238_
                                                       _tl126048126240_
                                                       _e126053126243_
                                                       _hd126052126246_
                                                       _tl126051126248_
                                                       _e126056126251_
                                                       _hd126055126254_
                                                       _tl126054126256_
                                                       _e126059126259_
                                                       _hd126058126262_
                                                       _tl126057126264_
                                                       _e126062126267_
                                                       _hd126061126270_
                                                       _tl126060126272_
                                                       _e126065126275_
                                                       _hd126064126278_
                                                       _tl126063126280_
                                                       _e126068126283_
                                                       _hd126067126286_
                                                       _tl126066126288_
                                                       _e126071126291_
                                                       _hd126070126294_
                                                       _tl126069126296_
                                                       _e126074126299_
                                                       _hd126073126302_
                                                       _tl126072126304_
                                                       _e126077126307_
                                                       _hd126076126310_
                                                       _tl126075126312_
                                                       ___splice128965128966_
                                                       _target126078126315_
                                                       _tl126080126317_
                                                       _e126095126320_
                                                       _hd126094126323_
                                                       _tl126093126325_
                                                       _e126098126328_
                                                       _hd126097126331_
                                                       _tl126096126333_
                                                       _e126101126336_
                                                       _hd126100126339_
                                                       _tl126099126341_)
                                                      (___match129276129277_
                                                       _e126038126203_
                                                       _hd126037126206_
                                                       _tl126036126208_))
                                                  (___match129276129277_
                                                   _e126038126203_
                                                   _hd126037126206_
                                                   _tl126036126208_))))
                                          (___match129276129277_
                                           _e126038126203_
                                           _hd126037126206_
                                           _tl126036126208_))
                                      (___match129276129277_
                                       _e126038126203_
                                       _hd126037126206_
                                       _tl126036126208_))
                                  (___match129276129277_
                                   _e126038126203_
                                   _hd126037126206_
                                   _tl126036126208_))))
                          (___match129276129277_
                           _e126038126203_
                           _hd126037126206_
                           _tl126036126208_))))
                  (___match129276129277_
                   _e126038126203_
                   _hd126037126206_
                   _tl126036126208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129276129277_
                                                   _e126038126203_
                                                   _hd126037126206_
                                                   _tl126036126208_))
                                              (___match129276129277_
                                               _e126038126203_
                                               _hd126037126206_
                                               _tl126036126208_))
                                          (___match129276129277_
                                           _e126038126203_
                                           _hd126037126206_
                                           _tl126036126208_))))
                                  (___match129276129277_
                                   _e126038126203_
                                   _hd126037126206_
                                   _tl126036126208_))
                              (___match129276129277_
                               _e126038126203_
                               _hd126037126206_
                               _tl126036126208_))
                          (___match129276129277_
                           _e126038126203_
                           _hd126037126206_
                           _tl126036126208_))))
                  (___match129276129277_
                   _e126038126203_
                   _hd126037126206_
                   _tl126036126208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129276129277_
                                                   _e126038126203_
                                                   _hd126037126206_
                                                   _tl126036126208_))
                                              (___match129276129277_
                                               _e126038126203_
                                               _hd126037126206_
                                               _tl126036126208_))))
                                      (___match129276129277_
                                       _e126038126203_
                                       _hd126037126206_
                                       _tl126036126208_))
                                  (___match129276129277_
                                   _e126038126203_
                                   _hd126037126206_
                                   _tl126036126208_))
                              (___match129276129277_
                               _e126038126203_
                               _hd126037126206_
                               _tl126036126208_))))
                      (___match129276129277_
                       _e126038126203_
                       _hd126037126206_
                       _tl126036126208_))))
              (___match129276129277_
               _e126038126203_
               _hd126037126206_
               _tl126036126208_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129276129277_
                                                   _e126038126203_
                                                   _hd126037126206_
                                                   _tl126036126208_))))
                                          (___match129276129277_
                                           _e126038126203_
                                           _hd126037126206_
                                           _tl126036126208_))
                                      (___match129276129277_
                                       _e126038126203_
                                       _hd126037126206_
                                       _tl126036126208_))
                                  (___match129276129277_
                                   _e126038126203_
                                   _hd126037126206_
                                   _tl126036126208_))))
                          (___match129276129277_
                           _e126038126203_
                           _hd126037126206_
                           _tl126036126208_))))
                  (___match129276129277_
                   _e126038126203_
                   _hd126037126206_
                   _tl126036126208_))
              (___match129276129277_
               _e126038126203_
               _hd126037126206_
               _tl126036126208_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129276129277_
                                                   _e126038126203_
                                                   _hd126037126206_
                                                   _tl126036126208_))))
                                          (___match129276129277_
                                           _e126038126203_
                                           _hd126037126206_
                                           _tl126036126208_))))
                                  (___match129276129277_
                                   _e126038126203_
                                   _hd126037126206_
                                   _tl126036126208_))))
                          (___match129276129277_
                           _e126038126203_
                           _hd126037126206_
                           _tl126036126208_))))
                   (___match129130129131_
                    (lambda (_e125971126594_
                             _hd125970126597_
                             _tl125969126599_
                             _e125974126602_
                             _hd125973126605_
                             _tl125972126607_
                             _e125977126610_
                             _hd125976126613_
                             _tl125975126615_
                             _e125980126618_
                             _hd125979126621_
                             _tl125978126623_
                             _e125983126626_
                             _hd125982126629_
                             _tl125981126631_
                             _e125986126634_
                             _hd125985126637_
                             _tl125984126639_
                             _e125989126642_
                             _hd125988126645_
                             _tl125987126647_
                             _e125992126650_
                             _hd125991126653_
                             _tl125990126655_
                             _e125995126658_
                             _hd125994126661_
                             _tl125993126663_
                             _e125998126666_
                             _hd125997126669_
                             _tl125996126671_
                             _e126001126674_
                             _hd126000126677_
                             _tl125999126679_
                             _e126004126682_
                             _hd126003126685_
                             _tl126002126687_
                             _e126007126690_
                             _hd126006126693_
                             _tl126005126695_
                             _e126010126698_
                             _hd126009126701_
                             _tl126008126703_
                             _e126013126706_
                             _hd126012126709_
                             _tl126011126711_
                             _e126016126714_
                             _hd126015126717_
                             _tl126014126719_
                             _e126019126722_
                             _hd126018126725_
                             _tl126017126727_
                             _e126022126730_
                             _hd126021126733_
                             _tl126020126735_
                             _e126025126738_
                             _hd126024126741_
                             _tl126023126743_)
                      (let ((_L126746_ _hd126024126741_)
                            (_L126747_ _hd126015126717_)
                            (_L126748_ _hd126006126693_)
                            (_L126749_ _hd125997126669_)
                            (_L126750_ _hd125988126645_)
                            (_L126751_ _hd125973126605_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L126751_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L126750_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L126749_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L126751_ _L126746_)))
                            (___kont128961128962_
                             _L126746_
                             _L126747_
                             _L126748_
                             _L126749_
                             _L126750_
                             _L126751_)
                            (___match129142129143_
                             _e125971126594_
                             _hd125970126597_
                             _tl125969126599_
                             _e125974126602_
                             _hd125973126605_
                             _tl125972126607_)))))
                   (___match128984128985_
                    (lambda (_e125971126594_ _hd125970126597_ _tl125969126599_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125969126599_))
                          (let ((_e125974126602_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125969126599_))))
                            (let ((_tl125972126607_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125974126602_)))
                                  (_hd125973126605_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125974126602_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125972126607_))
                                  (let ((_e125977126610_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125972126607_))))
                                    (let ((_tl125975126615_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125977126610_)))
                                          (_hd125976126613_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125977126610_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125976126613_))
                                          (let ((_e125980126618_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125976126613_))))
                                            (let ((_tl125978126623_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125980126618_)))
                                                  (_hd125979126621_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125980126618_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125979126621_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125979126621_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125978126623_))
                                                          (let ((_e125983126626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125978126623_))))
                    (let ((_tl125981126631_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125983126626_)))
                          (_hd125982126629_
                           (let ()
                             (declare (not safe))
                             (##car _e125983126626_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125982126629_))
                          (let ((_e125986126634_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125982126629_))))
                            (let ((_tl125984126639_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125986126634_)))
                                  (_hd125985126637_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125986126634_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125985126637_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125985126637_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125984126639_))
                                          (let ((_e125989126642_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125984126639_))))
                                            (let ((_tl125987126647_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125989126642_)))
                                                  (_hd125988126645_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125989126642_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125987126647_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125981126631_))
                                                      (let ((_e125992126650_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125981126631_))))
                (let ((_tl125990126655_
                       (let () (declare (not safe)) (##cdr _e125992126650_)))
                      (_hd125991126653_
                       (let () (declare (not safe)) (##car _e125992126650_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125991126653_))
                      (let ((_e125995126658_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125991126653_))))
                        (let ((_tl125993126663_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125995126658_)))
                              (_hd125994126661_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125995126658_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125994126661_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125994126661_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125993126663_))
                                      (let ((_e125998126666_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125993126663_))))
                                        (let ((_tl125996126671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125998126666_)))
                                              (_hd125997126669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125998126666_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125996126671_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125990126655_))
                                                  (let ((_e126001126674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125990126655_))))
                                                    (let ((_tl125999126679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126001126674_)))
                                                          (_hd126000126677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126001126674_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126000126677_))
                                                          (let ((_e126004126682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126000126677_))))
                    (let ((_tl126002126687_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126004126682_)))
                          (_hd126003126685_
                           (let ()
                             (declare (not safe))
                             (##car _e126004126682_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126003126685_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd126003126685_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126002126687_))
                                  (let ((_e126007126690_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126002126687_))))
                                    (let ((_tl126005126695_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126007126690_)))
                                          (_hd126006126693_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126007126690_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126005126695_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125999126679_))
                                              (let ((_e126010126698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125999126679_))))
                                                (let ((_tl126008126703_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126010126698_)))
                                                      (_hd126009126701_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126010126698_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd126009126701_))
                                                      (let ((_e126013126706_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd126009126701_))))
                (let ((_tl126011126711_
                       (let () (declare (not safe)) (##cdr _e126013126706_)))
                      (_hd126012126709_
                       (let () (declare (not safe)) (##car _e126013126706_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd126012126709_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd126012126709_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126011126711_))
                              (let ((_e126016126714_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126011126711_))))
                                (let ((_tl126014126719_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126016126714_)))
                                      (_hd126015126717_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126016126714_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126014126719_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126008126703_))
                                          (let ((_e126019126722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126008126703_))))
                                            (let ((_tl126017126727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126019126722_)))
                                                  (_hd126018126725_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126019126722_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd126018126725_))
                                                  (let ((_e126022126730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd126018126725_))))
                                                    (let ((_tl126020126735_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126022126730_)))
                                                          (_hd126021126733_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126022126730_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd126021126733_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd126021126733_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126020126735_))
                          (let ((_e126025126738_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126020126735_))))
                            (let ((_tl126023126743_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126025126738_)))
                                  (_hd126024126741_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126025126738_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126023126743_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126017126727_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125975126615_))
                                          (___match129130129131_
                                           _e125971126594_
                                           _hd125970126597_
                                           _tl125969126599_
                                           _e125974126602_
                                           _hd125973126605_
                                           _tl125972126607_
                                           _e125977126610_
                                           _hd125976126613_
                                           _tl125975126615_
                                           _e125980126618_
                                           _hd125979126621_
                                           _tl125978126623_
                                           _e125983126626_
                                           _hd125982126629_
                                           _tl125981126631_
                                           _e125986126634_
                                           _hd125985126637_
                                           _tl125984126639_
                                           _e125989126642_
                                           _hd125988126645_
                                           _tl125987126647_
                                           _e125992126650_
                                           _hd125991126653_
                                           _tl125990126655_
                                           _e125995126658_
                                           _hd125994126661_
                                           _tl125993126663_
                                           _e125998126666_
                                           _hd125997126669_
                                           _tl125996126671_
                                           _e126001126674_
                                           _hd126000126677_
                                           _tl125999126679_
                                           _e126004126682_
                                           _hd126003126685_
                                           _tl126002126687_
                                           _e126007126690_
                                           _hd126006126693_
                                           _tl126005126695_
                                           _e126010126698_
                                           _hd126009126701_
                                           _tl126008126703_
                                           _e126013126706_
                                           _hd126012126709_
                                           _tl126011126711_
                                           _e126016126714_
                                           _hd126015126717_
                                           _tl126014126719_
                                           _e126019126722_
                                           _hd126018126725_
                                           _tl126017126727_
                                           _e126022126730_
                                           _hd126021126733_
                                           _tl126020126735_
                                           _e126025126738_
                                           _hd126024126741_
                                           _tl126023126743_)
                                          (___match129142129143_
                                           _e125971126594_
                                           _hd125970126597_
                                           _tl125969126599_
                                           _e125974126602_
                                           _hd125973126605_
                                           _tl125972126607_))
                                      (___match129142129143_
                                       _e125971126594_
                                       _hd125970126597_
                                       _tl125969126599_
                                       _e125974126602_
                                       _hd125973126605_
                                       _tl125972126607_))
                                  (___match129142129143_
                                   _e125971126594_
                                   _hd125970126597_
                                   _tl125969126599_
                                   _e125974126602_
                                   _hd125973126605_
                                   _tl125972126607_))))
                          (___match129142129143_
                           _e125971126594_
                           _hd125970126597_
                           _tl125969126599_
                           _e125974126602_
                           _hd125973126605_
                           _tl125972126607_))
                      (___match129142129143_
                       _e125971126594_
                       _hd125970126597_
                       _tl125969126599_
                       _e125974126602_
                       _hd125973126605_
                       _tl125972126607_))
                  (___match129142129143_
                   _e125971126594_
                   _hd125970126597_
                   _tl125969126599_
                   _e125974126602_
                   _hd125973126605_
                   _tl125972126607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129142129143_
                                                   _e125971126594_
                                                   _hd125970126597_
                                                   _tl125969126599_
                                                   _e125974126602_
                                                   _hd125973126605_
                                                   _tl125972126607_))))
                                          (___match129142129143_
                                           _e125971126594_
                                           _hd125970126597_
                                           _tl125969126599_
                                           _e125974126602_
                                           _hd125973126605_
                                           _tl125972126607_))
                                      (___match129142129143_
                                       _e125971126594_
                                       _hd125970126597_
                                       _tl125969126599_
                                       _e125974126602_
                                       _hd125973126605_
                                       _tl125972126607_))))
                              (___match129142129143_
                               _e125971126594_
                               _hd125970126597_
                               _tl125969126599_
                               _e125974126602_
                               _hd125973126605_
                               _tl125972126607_))
                          (___match129142129143_
                           _e125971126594_
                           _hd125970126597_
                           _tl125969126599_
                           _e125974126602_
                           _hd125973126605_
                           _tl125972126607_))
                      (___match129142129143_
                       _e125971126594_
                       _hd125970126597_
                       _tl125969126599_
                       _e125974126602_
                       _hd125973126605_
                       _tl125972126607_))))
              (___match129142129143_
               _e125971126594_
               _hd125970126597_
               _tl125969126599_
               _e125974126602_
               _hd125973126605_
               _tl125972126607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129142129143_
                                               _e125971126594_
                                               _hd125970126597_
                                               _tl125969126599_
                                               _e125974126602_
                                               _hd125973126605_
                                               _tl125972126607_))
                                          (___match129142129143_
                                           _e125971126594_
                                           _hd125970126597_
                                           _tl125969126599_
                                           _e125974126602_
                                           _hd125973126605_
                                           _tl125972126607_))))
                                  (___match129142129143_
                                   _e125971126594_
                                   _hd125970126597_
                                   _tl125969126599_
                                   _e125974126602_
                                   _hd125973126605_
                                   _tl125972126607_))
                              (___match129142129143_
                               _e125971126594_
                               _hd125970126597_
                               _tl125969126599_
                               _e125974126602_
                               _hd125973126605_
                               _tl125972126607_))
                          (___match129142129143_
                           _e125971126594_
                           _hd125970126597_
                           _tl125969126599_
                           _e125974126602_
                           _hd125973126605_
                           _tl125972126607_))))
                  (___match129142129143_
                   _e125971126594_
                   _hd125970126597_
                   _tl125969126599_
                   _e125974126602_
                   _hd125973126605_
                   _tl125972126607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129142129143_
                                                   _e125971126594_
                                                   _hd125970126597_
                                                   _tl125969126599_
                                                   _e125974126602_
                                                   _hd125973126605_
                                                   _tl125972126607_))
                                              (___match129142129143_
                                               _e125971126594_
                                               _hd125970126597_
                                               _tl125969126599_
                                               _e125974126602_
                                               _hd125973126605_
                                               _tl125972126607_))))
                                      (___match129142129143_
                                       _e125971126594_
                                       _hd125970126597_
                                       _tl125969126599_
                                       _e125974126602_
                                       _hd125973126605_
                                       _tl125972126607_))
                                  (___match129142129143_
                                   _e125971126594_
                                   _hd125970126597_
                                   _tl125969126599_
                                   _e125974126602_
                                   _hd125973126605_
                                   _tl125972126607_))
                              (___match129142129143_
                               _e125971126594_
                               _hd125970126597_
                               _tl125969126599_
                               _e125974126602_
                               _hd125973126605_
                               _tl125972126607_))))
                      (___match129142129143_
                       _e125971126594_
                       _hd125970126597_
                       _tl125969126599_
                       _e125974126602_
                       _hd125973126605_
                       _tl125972126607_))))
              (___match129142129143_
               _e125971126594_
               _hd125970126597_
               _tl125969126599_
               _e125974126602_
               _hd125973126605_
               _tl125972126607_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129142129143_
                                                   _e125971126594_
                                                   _hd125970126597_
                                                   _tl125969126599_
                                                   _e125974126602_
                                                   _hd125973126605_
                                                   _tl125972126607_))))
                                          (___match129142129143_
                                           _e125971126594_
                                           _hd125970126597_
                                           _tl125969126599_
                                           _e125974126602_
                                           _hd125973126605_
                                           _tl125972126607_))
                                      (___match129142129143_
                                       _e125971126594_
                                       _hd125970126597_
                                       _tl125969126599_
                                       _e125974126602_
                                       _hd125973126605_
                                       _tl125972126607_))
                                  (___match129142129143_
                                   _e125971126594_
                                   _hd125970126597_
                                   _tl125969126599_
                                   _e125974126602_
                                   _hd125973126605_
                                   _tl125972126607_))))
                          (___match129142129143_
                           _e125971126594_
                           _hd125970126597_
                           _tl125969126599_
                           _e125974126602_
                           _hd125973126605_
                           _tl125972126607_))))
                  (___match129142129143_
                   _e125971126594_
                   _hd125970126597_
                   _tl125969126599_
                   _e125974126602_
                   _hd125973126605_
                   _tl125972126607_))
              (___match129142129143_
               _e125971126594_
               _hd125970126597_
               _tl125969126599_
               _e125974126602_
               _hd125973126605_
               _tl125972126607_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129142129143_
                                                   _e125971126594_
                                                   _hd125970126597_
                                                   _tl125969126599_
                                                   _e125974126602_
                                                   _hd125973126605_
                                                   _tl125972126607_))))
                                          (___match129142129143_
                                           _e125971126594_
                                           _hd125970126597_
                                           _tl125969126599_
                                           _e125974126602_
                                           _hd125973126605_
                                           _tl125972126607_))))
                                  (___match129142129143_
                                   _e125971126594_
                                   _hd125970126597_
                                   _tl125969126599_
                                   _e125974126602_
                                   _hd125973126605_
                                   _tl125972126607_))))
                          (___match129276129277_
                           _e125971126594_
                           _hd125970126597_
                           _tl125969126599_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128957128958_))
                  (let ((_e125962126811_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128957128958_))))
                    (let ((_tl125960126816_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125962126811_)))
                          (_hd125961126814_
                           (let ()
                             (declare (not safe))
                             (##car _e125962126811_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L126819_ _tl125960126816_))
                            (___kont128959128960_ _L126819_))
                          (___match128984128985_
                           _e125962126811_
                           _hd125961126814_
                           _tl125960126816_))))
                  (let () (declare (not safe)) (_g125957126153_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self125904_ _stx125905_)
        (letrec ((_clause-e125907_
                  (lambda (_form125948_)
                    (let ((__obj130641
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
                       __obj130641
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form125948_))
                       (if (let ((__tmp130712
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp130712))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form125948_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form125948_))
                               '#f)
                           '#f))
                      __obj130641))))
          (let* ((_g125909125919_
                  (lambda (_g125910125916_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125910125916_))))
                 (_g125908125945_
                  (lambda (_g125910125922_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125910125922_))
                        (let ((_e125914125924_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125910125922_))))
                          (let ((_hd125913125927_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125914125924_)))
                                (_tl125912125929_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125914125924_))))
                            ((lambda (_L125932_)
                               (let ((_clauses125943_
                                      (map _clause-e125907_ _L125932_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses125943_)))
                             _tl125912125929_)))
                        (let ()
                          (declare (not safe))
                          (_g125909125919_ _g125910125922_))))))
            (declare (not safe))
            (_g125908125945_ _stx125905_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self125835_ _stx125836_)
        (let* ((_g125838125855_
                (lambda (_g125839125852_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125839125852_))))
               (_g125837125901_
                (lambda (_g125839125858_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125839125858_))
                      (let ((_e125844125860_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125839125858_))))
                        (let ((_hd125843125863_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125844125860_)))
                              (_tl125842125865_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125844125860_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125842125865_))
                              (let ((_e125847125868_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125842125865_))))
                                (let ((_hd125846125871_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125847125868_)))
                                      (_tl125845125873_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125847125868_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125845125873_))
                                      (let ((_e125850125876_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125845125873_))))
                                        (let ((_hd125849125879_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125850125876_)))
                                              (_tl125848125881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125850125876_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125848125881_))
                                              ((lambda (_L125884_ _L125885_)
                                                 (let ((__tmp130713
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self125835_
                                                             _L125884_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp130713
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd125849125879_
                                               _hd125846125871_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125838125855_
                                                 _g125839125858_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125838125855_ _g125839125858_)))))
                              (let ()
                                (declare (not safe))
                                (_g125838125855_ _g125839125858_)))))
                      (let ()
                        (declare (not safe))
                        (_g125838125855_ _g125839125858_))))))
          (declare (not safe))
          (_g125837125901_ _stx125836_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self125739_ _stx125740_)
        (let* ((___stx129285129286_ _stx125740_)
               (_g125743125763_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129285129286_)))))
          (let ((___kont129287129288_
                 (lambda (_L125807_ _L125808_)
                   (let ((_type-e125825125827_
                          (let ((__tmp130714
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L125808_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp130714))))
                     (if _type-e125825125827_
                         (let ((_type-e125830_ _type-e125825125827_))
                           (_type-e125830_ _stx125740_ _L125807_))
                         '#f))))
                (___kont129289129290_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129285129286_))
                (let ((_e125749125775_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129285129286_))))
                  (let ((_tl125747125780_
                         (let () (declare (not safe)) (##cdr _e125749125775_)))
                        (_hd125748125778_
                         (let ()
                           (declare (not safe))
                           (##car _e125749125775_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125747125780_))
                        (let ((_e125752125783_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125747125780_))))
                          (let ((_tl125750125788_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125752125783_)))
                                (_hd125751125786_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125752125783_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125751125786_))
                                (let ((_e125755125791_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125751125786_))))
                                  (let ((_tl125753125796_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125755125791_)))
                                        (_hd125754125794_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125755125791_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125754125794_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125754125794_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125753125796_))
                                                (let ((_e125758125799_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125753125796_))))
                                                  (let ((_tl125756125804_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125758125799_)))
                                                        (_hd125757125802_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125758125799_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125756125804_))
                                                        (___kont129287129288_
                                                         _tl125750125788_
                                                         _hd125757125802_)
                                                        (___kont129289129290_))))
                                                (___kont129289129290_))
                                            (___kont129289129290_))
                                        (___kont129289129290_))))
                                (___kont129289129290_))))
                        (___kont129289129290_))))
                (___kont129289129290_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self125687_ _stx125688_)
        (let* ((_g125690125703_
                (lambda (_g125691125700_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125691125700_))))
               (_g125689125736_
                (lambda (_g125691125706_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125691125706_))
                      (let ((_e125695125708_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125691125706_))))
                        (let ((_hd125694125711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125695125708_)))
                              (_tl125693125713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125695125708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125693125713_))
                              (let ((_e125698125716_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125693125713_))))
                                (let ((_hd125697125719_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125698125716_)))
                                      (_tl125696125721_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125698125716_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125696125721_))
                                      ((lambda (_L125724_)
                                         (let ((__tmp130715
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125724_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp130715)))
                                       _hd125697125719_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125690125703_ _g125691125706_)))))
                              (let ()
                                (declare (not safe))
                                (_g125690125703_ _g125691125706_)))))
                      (let ()
                        (declare (not safe))
                        (_g125690125703_ _g125691125706_))))))
          (declare (not safe))
          (_g125689125736_ _stx125688_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form124921_)
        (let* ((___stx129323129324_ _form124921_)
               (_g124926125083_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129323129324_)))))
          (let ((___kont129325129326_
                 (lambda (_L125607_ _L125608_ _L125609_) '#t))
                (___kont129331129332_
                 (lambda (_L125395_
                          _L125396_
                          _L125397_
                          _L125398_
                          _L125399_
                          _L125400_)
                   '#t))
                (___kont129337129338_
                 (lambda (_L125191_ _L125192_ _L125193_ _L125194_) '#t))
                (___kont129339129340_ (lambda () '#f)))
            (let* ((___match129464129465_
                    (lambda (_e125045125095_
                             _hd125044125098_
                             _tl125043125100_
                             _e125048125103_
                             _hd125047125106_
                             _tl125046125108_
                             _e125051125111_
                             _hd125050125114_
                             _tl125049125116_
                             _e125054125119_
                             _hd125053125122_
                             _tl125052125124_
                             _e125057125127_
                             _hd125056125130_
                             _tl125055125132_
                             _e125060125135_
                             _hd125059125138_
                             _tl125058125140_
                             _e125063125143_
                             _hd125062125146_
                             _tl125061125148_
                             _e125066125151_
                             _hd125065125154_
                             _tl125064125156_
                             _e125069125159_
                             _hd125068125162_
                             _tl125067125164_
                             _e125072125167_
                             _hd125071125170_
                             _tl125070125172_
                             _e125075125175_
                             _hd125074125178_
                             _tl125073125180_
                             _e125078125183_
                             _hd125077125186_
                             _tl125076125188_)
                      (let ((_L125191_ _hd125077125186_)
                            (_L125192_ _hd125068125162_)
                            (_L125193_ _hd125059125138_)
                            (_L125194_ _hd125044125098_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125194_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125193_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125194_ _L125191_))
                                 (let ((__tmp130716
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L125192_
                                           _L125194_))))
                                   (declare (not safe))
                                   (not __tmp130716)))
                            (___kont129337129338_
                             _L125191_
                             _L125192_
                             _L125193_
                             _L125194_)
                            (___kont129339129340_)))))
                   (___match129436129437_
                    (lambda (_e125045125095_
                             _hd125044125098_
                             _tl125043125100_
                             _e125048125103_
                             _hd125047125106_
                             _tl125046125108_
                             _e125051125111_
                             _hd125050125114_
                             _tl125049125116_
                             _e125054125119_
                             _hd125053125122_
                             _tl125052125124_
                             _e125057125127_
                             _hd125056125130_
                             _tl125055125132_
                             _e125060125135_
                             _hd125059125138_
                             _tl125058125140_
                             _e125063125143_
                             _hd125062125146_
                             _tl125061125148_
                             _e125066125151_
                             _hd125065125154_
                             _tl125064125156_
                             _e125069125159_
                             _hd125068125162_
                             _tl125067125164_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125061125148_))
                          (let ((_e125072125167_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125061125148_))))
                            (let ((_tl125070125172_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125072125167_)))
                                  (_hd125071125170_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125072125167_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125071125170_))
                                  (let ((_e125075125175_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125071125170_))))
                                    (let ((_tl125073125180_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125075125175_)))
                                          (_hd125074125178_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125075125175_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125074125178_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125074125178_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125073125180_))
                                                  (let ((_e125078125183_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125073125180_))))
                                                    (let ((_tl125076125188_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125078125183_)))
                                                          (_hd125077125186_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125078125183_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125076125188_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl125070125172_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125046125108_))
                          (___match129464129465_
                           _e125045125095_
                           _hd125044125098_
                           _tl125043125100_
                           _e125048125103_
                           _hd125047125106_
                           _tl125046125108_
                           _e125051125111_
                           _hd125050125114_
                           _tl125049125116_
                           _e125054125119_
                           _hd125053125122_
                           _tl125052125124_
                           _e125057125127_
                           _hd125056125130_
                           _tl125055125132_
                           _e125060125135_
                           _hd125059125138_
                           _tl125058125140_
                           _e125063125143_
                           _hd125062125146_
                           _tl125061125148_
                           _e125066125151_
                           _hd125065125154_
                           _tl125064125156_
                           _e125069125159_
                           _hd125068125162_
                           _tl125067125164_
                           _e125072125167_
                           _hd125071125170_
                           _tl125070125172_
                           _e125075125175_
                           _hd125074125178_
                           _tl125073125180_
                           _e125078125183_
                           _hd125077125186_
                           _tl125076125188_)
                          (___kont129339129340_))
                      (___kont129339129340_))
                  (___kont129339129340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129339129340_))
                                              (___kont129339129340_))
                                          (___kont129339129340_))))
                                  (___kont129339129340_))))
                          (___kont129339129340_))))
                   (___match129366129367_
                    (lambda (_e124981125235_
                             _hd124980125238_
                             _tl124979125240_
                             ___splice129333129334_
                             _target124982125243_
                             _tl124984125245_)
                      (letrec ((_loop124985125248_
                                (lambda (_hd124983125251_ _arg124989125253_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124983125251_))
                                      (let ((_e124986125256_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124983125251_))))
                                        (let ((_lp-tl124988125261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124986125256_)))
                                              (_lp-hd124987125259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124986125256_))))
                                          (let ((__tmp130731
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124987125259_
                                                         _arg124989125253_))))
                                            (declare (not safe))
                                            (_loop124985125248_
                                             _lp-tl124988125261_
                                             __tmp130731))))
                                      (let ((_arg124990125264_
                                             (reverse _arg124989125253_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124979125240_))
                                            (let ((_e124993125267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124979125240_))))
                                              (let ((_tl124991125272_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124993125267_)))
                                                    (_hd124992125270_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124993125267_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124992125270_))
                                                    (let ((_e124996125275_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124992125270_))))
                                                      (let ((_tl124994125280_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124996125275_)))
                    (_hd124995125278_
                     (let () (declare (not safe)) (##car _e124996125275_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124995125278_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124995125278_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124994125280_))
                            (let ((_e124999125283_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124994125280_))))
                              (let ((_tl124997125288_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124999125283_)))
                                    (_hd124998125286_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124999125283_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124998125286_))
                                    (let ((_e125002125291_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124998125286_))))
                                      (let ((_tl125000125296_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e125002125291_)))
                                            (_hd125001125294_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e125002125291_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd125001125294_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd125001125294_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl125000125296_))
                                                    (let ((_e125005125299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl125000125296_))))
                                                      (let ((_tl125003125304_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125005125299_)))
                    (_hd125004125302_
                     (let () (declare (not safe)) (##car _e125005125299_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl125003125304_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124997125288_))
                        (let ((_e125008125307_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124997125288_))))
                          (let ((_tl125006125312_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125008125307_)))
                                (_hd125007125310_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125008125307_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125007125310_))
                                (let ((_e125011125315_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125007125310_))))
                                  (let ((_tl125009125320_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125011125315_)))
                                        (_hd125010125318_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125011125315_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125010125318_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125010125318_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125009125320_))
                                                (let ((_e125014125323_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125009125320_))))
                                                  (let ((_tl125012125328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125014125323_)))
                                                        (_hd125013125326_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125014125323_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125012125328_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl125006125312_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl125006125312_))
                              '1)
                        (let ((___splice129335129336_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl125006125312_
                                  '1))))
                          (let ((_tl125017125333_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129335129336_ '1)))
                                (_target125015125331_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129335129336_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125017125333_))
                                (let ((_e125026125336_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125017125333_))))
                                  (let ((_tl125024125341_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125026125336_)))
                                        (_hd125025125339_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125026125336_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd125025125339_))
                                        (let ((_e125029125344_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd125025125339_))))
                                          (let ((_tl125027125349_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e125029125344_)))
                                                (_hd125028125347_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e125029125344_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd125028125347_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd125028125347_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl125027125349_))
                                                        (let ((_e125032125352_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl125027125349_))))
                  (let ((_tl125030125357_
                         (let () (declare (not safe)) (##cdr _e125032125352_)))
                        (_hd125031125355_
                         (let ()
                           (declare (not safe))
                           (##car _e125032125352_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl125030125357_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl125024125341_))
                            (letrec ((_loop125018125360_
                                      (lambda (_hd125016125363_
                                               _xarg125022125365_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd125016125363_))
                                            (let ((_e125019125368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd125016125363_))))
                                              (let ((_lp-tl125021125373_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e125019125368_)))
                                                    (_lp-hd125020125371_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e125019125368_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd125020125371_))
                                                    (let ((_e125035125376_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd125020125371_))))
                                                      (let ((_tl125033125381_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125035125376_)))
                    (_hd125034125379_
                     (let () (declare (not safe)) (##car _e125035125376_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd125034125379_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd125034125379_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl125033125381_))
                            (let ((_e125038125384_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl125033125381_))))
                              (let ((_tl125036125389_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e125038125384_)))
                                    (_hd125037125387_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e125038125384_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl125036125389_))
                                    (let ((__tmp130730
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd125037125387_
                                                   _xarg125022125365_))))
                                      (declare (not safe))
                                      (_loop125018125360_
                                       _lp-tl125021125373_
                                       __tmp130730))
                                    (___match129436129437_
                                     _e124981125235_
                                     _hd124980125238_
                                     _tl124979125240_
                                     _e124993125267_
                                     _hd124992125270_
                                     _tl124991125272_
                                     _e124996125275_
                                     _hd124995125278_
                                     _tl124994125280_
                                     _e124999125283_
                                     _hd124998125286_
                                     _tl124997125288_
                                     _e125002125291_
                                     _hd125001125294_
                                     _tl125000125296_
                                     _e125005125299_
                                     _hd125004125302_
                                     _tl125003125304_
                                     _e125008125307_
                                     _hd125007125310_
                                     _tl125006125312_
                                     _e125011125315_
                                     _hd125010125318_
                                     _tl125009125320_
                                     _e125014125323_
                                     _hd125013125326_
                                     _tl125012125328_))))
                            (___match129436129437_
                             _e124981125235_
                             _hd124980125238_
                             _tl124979125240_
                             _e124993125267_
                             _hd124992125270_
                             _tl124991125272_
                             _e124996125275_
                             _hd124995125278_
                             _tl124994125280_
                             _e124999125283_
                             _hd124998125286_
                             _tl124997125288_
                             _e125002125291_
                             _hd125001125294_
                             _tl125000125296_
                             _e125005125299_
                             _hd125004125302_
                             _tl125003125304_
                             _e125008125307_
                             _hd125007125310_
                             _tl125006125312_
                             _e125011125315_
                             _hd125010125318_
                             _tl125009125320_
                             _e125014125323_
                             _hd125013125326_
                             _tl125012125328_))
                        (___match129436129437_
                         _e124981125235_
                         _hd124980125238_
                         _tl124979125240_
                         _e124993125267_
                         _hd124992125270_
                         _tl124991125272_
                         _e124996125275_
                         _hd124995125278_
                         _tl124994125280_
                         _e124999125283_
                         _hd124998125286_
                         _tl124997125288_
                         _e125002125291_
                         _hd125001125294_
                         _tl125000125296_
                         _e125005125299_
                         _hd125004125302_
                         _tl125003125304_
                         _e125008125307_
                         _hd125007125310_
                         _tl125006125312_
                         _e125011125315_
                         _hd125010125318_
                         _tl125009125320_
                         _e125014125323_
                         _hd125013125326_
                         _tl125012125328_))
                    (___match129436129437_
                     _e124981125235_
                     _hd124980125238_
                     _tl124979125240_
                     _e124993125267_
                     _hd124992125270_
                     _tl124991125272_
                     _e124996125275_
                     _hd124995125278_
                     _tl124994125280_
                     _e124999125283_
                     _hd124998125286_
                     _tl124997125288_
                     _e125002125291_
                     _hd125001125294_
                     _tl125000125296_
                     _e125005125299_
                     _hd125004125302_
                     _tl125003125304_
                     _e125008125307_
                     _hd125007125310_
                     _tl125006125312_
                     _e125011125315_
                     _hd125010125318_
                     _tl125009125320_
                     _e125014125323_
                     _hd125013125326_
                     _tl125012125328_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129436129437_
                                                     _e124981125235_
                                                     _hd124980125238_
                                                     _tl124979125240_
                                                     _e124993125267_
                                                     _hd124992125270_
                                                     _tl124991125272_
                                                     _e124996125275_
                                                     _hd124995125278_
                                                     _tl124994125280_
                                                     _e124999125283_
                                                     _hd124998125286_
                                                     _tl124997125288_
                                                     _e125002125291_
                                                     _hd125001125294_
                                                     _tl125000125296_
                                                     _e125005125299_
                                                     _hd125004125302_
                                                     _tl125003125304_
                                                     _e125008125307_
                                                     _hd125007125310_
                                                     _tl125006125312_
                                                     _e125011125315_
                                                     _hd125010125318_
                                                     _tl125009125320_
                                                     _e125014125323_
                                                     _hd125013125326_
                                                     _tl125012125328_))))
                                            (let ((_xarg125023125392_
                                                   (reverse _xarg125022125365_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124991125272_))
                                                  (let ((_L125395_
                                                         _hd125031125355_)
                                                        (_L125396_
                                                         _xarg125023125392_)
                                                        (_L125397_
                                                         _hd125013125326_)
                                                        (_L125398_
                                                         _hd125004125302_)
                                                        (_L125399_
                                                         _tl124984125245_)
                                                        (_L125400_
                                                         _arg124990125264_))
                                                    (if (and (let ((__tmp130728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130729
                                   (lambda (_g125443125446_ _g125444125448_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125443125446_
                                             _g125444125448_)))))
                              (declare (not safe))
                              (foldr1 __tmp130729 '() _L125400_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp130728))
                     (let () (declare (not safe)) (gx#identifier? _L125399_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L125398_ 'apply))
                     (fx= (length (let ((__tmp130726
                                         (lambda (_g125450125453_
                                                  _g125451125455_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125450125453_
                                                   _g125451125455_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130726 '() _L125400_)))
                          (length (let ((__tmp130727
                                         (lambda (_g125457125460_
                                                  _g125458125462_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125457125460_
                                                   _g125458125462_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130727 '() _L125396_))))
                     (let ((__tmp130724
                            (let ((__tmp130725
                                   (lambda (_g125464125467_ _g125465125469_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125464125467_
                                             _g125465125469_)))))
                              (declare (not safe))
                              (foldr1 __tmp130725 '() _L125400_)))
                           (__tmp130722
                            (let ((__tmp130723
                                   (lambda (_g125471125474_ _g125472125476_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125471125474_
                                             _g125472125476_)))))
                              (declare (not safe))
                              (foldr1 __tmp130723 '() _L125396_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp130724 __tmp130722))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L125399_ _L125395_))
                     (let ((__tmp130717
                            (let ((__tmp130721
                                   (lambda (_g125478125480_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g125478125480_
                                        _L125397_))))
                                  (__tmp130718
                                   (let ((__tmp130720
                                          (lambda (_g125482125485_
                                                   _g125483125487_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g125482125485_
                                                    _g125483125487_))))
                                         (__tmp130719
                                          (let ()
                                            (declare (not safe))
                                            (cons _L125399_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp130720
                                             __tmp130719
                                             _L125400_))))
                              (declare (not safe))
                              (find __tmp130721 __tmp130718))))
                       (declare (not safe))
                       (not __tmp130717)))
                (___kont129331129332_
                 _L125395_
                 _L125396_
                 _L125397_
                 _L125398_
                 _L125399_
                 _L125400_)
                (___match129436129437_
                 _e124981125235_
                 _hd124980125238_
                 _tl124979125240_
                 _e124993125267_
                 _hd124992125270_
                 _tl124991125272_
                 _e124996125275_
                 _hd124995125278_
                 _tl124994125280_
                 _e124999125283_
                 _hd124998125286_
                 _tl124997125288_
                 _e125002125291_
                 _hd125001125294_
                 _tl125000125296_
                 _e125005125299_
                 _hd125004125302_
                 _tl125003125304_
                 _e125008125307_
                 _hd125007125310_
                 _tl125006125312_
                 _e125011125315_
                 _hd125010125318_
                 _tl125009125320_
                 _e125014125323_
                 _hd125013125326_
                 _tl125012125328_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129436129437_
                                                   _e124981125235_
                                                   _hd124980125238_
                                                   _tl124979125240_
                                                   _e124993125267_
                                                   _hd124992125270_
                                                   _tl124991125272_
                                                   _e124996125275_
                                                   _hd124995125278_
                                                   _tl124994125280_
                                                   _e124999125283_
                                                   _hd124998125286_
                                                   _tl124997125288_
                                                   _e125002125291_
                                                   _hd125001125294_
                                                   _tl125000125296_
                                                   _e125005125299_
                                                   _hd125004125302_
                                                   _tl125003125304_
                                                   _e125008125307_
                                                   _hd125007125310_
                                                   _tl125006125312_
                                                   _e125011125315_
                                                   _hd125010125318_
                                                   _tl125009125320_
                                                   _e125014125323_
                                                   _hd125013125326_
                                                   _tl125012125328_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop125018125360_ _target125015125331_ '())))
                            (___match129436129437_
                             _e124981125235_
                             _hd124980125238_
                             _tl124979125240_
                             _e124993125267_
                             _hd124992125270_
                             _tl124991125272_
                             _e124996125275_
                             _hd124995125278_
                             _tl124994125280_
                             _e124999125283_
                             _hd124998125286_
                             _tl124997125288_
                             _e125002125291_
                             _hd125001125294_
                             _tl125000125296_
                             _e125005125299_
                             _hd125004125302_
                             _tl125003125304_
                             _e125008125307_
                             _hd125007125310_
                             _tl125006125312_
                             _e125011125315_
                             _hd125010125318_
                             _tl125009125320_
                             _e125014125323_
                             _hd125013125326_
                             _tl125012125328_))
                        (___match129436129437_
                         _e124981125235_
                         _hd124980125238_
                         _tl124979125240_
                         _e124993125267_
                         _hd124992125270_
                         _tl124991125272_
                         _e124996125275_
                         _hd124995125278_
                         _tl124994125280_
                         _e124999125283_
                         _hd124998125286_
                         _tl124997125288_
                         _e125002125291_
                         _hd125001125294_
                         _tl125000125296_
                         _e125005125299_
                         _hd125004125302_
                         _tl125003125304_
                         _e125008125307_
                         _hd125007125310_
                         _tl125006125312_
                         _e125011125315_
                         _hd125010125318_
                         _tl125009125320_
                         _e125014125323_
                         _hd125013125326_
                         _tl125012125328_))))
                (___match129436129437_
                 _e124981125235_
                 _hd124980125238_
                 _tl124979125240_
                 _e124993125267_
                 _hd124992125270_
                 _tl124991125272_
                 _e124996125275_
                 _hd124995125278_
                 _tl124994125280_
                 _e124999125283_
                 _hd124998125286_
                 _tl124997125288_
                 _e125002125291_
                 _hd125001125294_
                 _tl125000125296_
                 _e125005125299_
                 _hd125004125302_
                 _tl125003125304_
                 _e125008125307_
                 _hd125007125310_
                 _tl125006125312_
                 _e125011125315_
                 _hd125010125318_
                 _tl125009125320_
                 _e125014125323_
                 _hd125013125326_
                 _tl125012125328_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129436129437_
                                                     _e124981125235_
                                                     _hd124980125238_
                                                     _tl124979125240_
                                                     _e124993125267_
                                                     _hd124992125270_
                                                     _tl124991125272_
                                                     _e124996125275_
                                                     _hd124995125278_
                                                     _tl124994125280_
                                                     _e124999125283_
                                                     _hd124998125286_
                                                     _tl124997125288_
                                                     _e125002125291_
                                                     _hd125001125294_
                                                     _tl125000125296_
                                                     _e125005125299_
                                                     _hd125004125302_
                                                     _tl125003125304_
                                                     _e125008125307_
                                                     _hd125007125310_
                                                     _tl125006125312_
                                                     _e125011125315_
                                                     _hd125010125318_
                                                     _tl125009125320_
                                                     _e125014125323_
                                                     _hd125013125326_
                                                     _tl125012125328_))
                                                (___match129436129437_
                                                 _e124981125235_
                                                 _hd124980125238_
                                                 _tl124979125240_
                                                 _e124993125267_
                                                 _hd124992125270_
                                                 _tl124991125272_
                                                 _e124996125275_
                                                 _hd124995125278_
                                                 _tl124994125280_
                                                 _e124999125283_
                                                 _hd124998125286_
                                                 _tl124997125288_
                                                 _e125002125291_
                                                 _hd125001125294_
                                                 _tl125000125296_
                                                 _e125005125299_
                                                 _hd125004125302_
                                                 _tl125003125304_
                                                 _e125008125307_
                                                 _hd125007125310_
                                                 _tl125006125312_
                                                 _e125011125315_
                                                 _hd125010125318_
                                                 _tl125009125320_
                                                 _e125014125323_
                                                 _hd125013125326_
                                                 _tl125012125328_))))
                                        (___match129436129437_
                                         _e124981125235_
                                         _hd124980125238_
                                         _tl124979125240_
                                         _e124993125267_
                                         _hd124992125270_
                                         _tl124991125272_
                                         _e124996125275_
                                         _hd124995125278_
                                         _tl124994125280_
                                         _e124999125283_
                                         _hd124998125286_
                                         _tl124997125288_
                                         _e125002125291_
                                         _hd125001125294_
                                         _tl125000125296_
                                         _e125005125299_
                                         _hd125004125302_
                                         _tl125003125304_
                                         _e125008125307_
                                         _hd125007125310_
                                         _tl125006125312_
                                         _e125011125315_
                                         _hd125010125318_
                                         _tl125009125320_
                                         _e125014125323_
                                         _hd125013125326_
                                         _tl125012125328_))))
                                (___match129436129437_
                                 _e124981125235_
                                 _hd124980125238_
                                 _tl124979125240_
                                 _e124993125267_
                                 _hd124992125270_
                                 _tl124991125272_
                                 _e124996125275_
                                 _hd124995125278_
                                 _tl124994125280_
                                 _e124999125283_
                                 _hd124998125286_
                                 _tl124997125288_
                                 _e125002125291_
                                 _hd125001125294_
                                 _tl125000125296_
                                 _e125005125299_
                                 _hd125004125302_
                                 _tl125003125304_
                                 _e125008125307_
                                 _hd125007125310_
                                 _tl125006125312_
                                 _e125011125315_
                                 _hd125010125318_
                                 _tl125009125320_
                                 _e125014125323_
                                 _hd125013125326_
                                 _tl125012125328_))))
                        (___match129436129437_
                         _e124981125235_
                         _hd124980125238_
                         _tl124979125240_
                         _e124993125267_
                         _hd124992125270_
                         _tl124991125272_
                         _e124996125275_
                         _hd124995125278_
                         _tl124994125280_
                         _e124999125283_
                         _hd124998125286_
                         _tl124997125288_
                         _e125002125291_
                         _hd125001125294_
                         _tl125000125296_
                         _e125005125299_
                         _hd125004125302_
                         _tl125003125304_
                         _e125008125307_
                         _hd125007125310_
                         _tl125006125312_
                         _e125011125315_
                         _hd125010125318_
                         _tl125009125320_
                         _e125014125323_
                         _hd125013125326_
                         _tl125012125328_))
                    (___match129436129437_
                     _e124981125235_
                     _hd124980125238_
                     _tl124979125240_
                     _e124993125267_
                     _hd124992125270_
                     _tl124991125272_
                     _e124996125275_
                     _hd124995125278_
                     _tl124994125280_
                     _e124999125283_
                     _hd124998125286_
                     _tl124997125288_
                     _e125002125291_
                     _hd125001125294_
                     _tl125000125296_
                     _e125005125299_
                     _hd125004125302_
                     _tl125003125304_
                     _e125008125307_
                     _hd125007125310_
                     _tl125006125312_
                     _e125011125315_
                     _hd125010125318_
                     _tl125009125320_
                     _e125014125323_
                     _hd125013125326_
                     _tl125012125328_))
                (___kont129339129340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129339129340_))
                                            (___kont129339129340_))
                                        (___kont129339129340_))))
                                (___kont129339129340_))))
                        (___kont129339129340_))
                    (___kont129339129340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129339129340_))
                                                (___kont129339129340_))
                                            (___kont129339129340_))))
                                    (___kont129339129340_))))
                            (___kont129339129340_))
                        (___kont129339129340_))
                    (___kont129339129340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129339129340_))))
                                            (___kont129339129340_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124985125248_ _target124982125243_ '())))))
                   (___match129354129355_
                    (lambda (_e124933125495_
                             _hd124932125498_
                             _tl124931125500_
                             ___splice129327129328_
                             _target124934125503_
                             _tl124936125505_)
                      (letrec ((_loop124937125508_
                                (lambda (_hd124935125511_ _arg124941125513_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124935125511_))
                                      (let ((_e124938125516_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124935125511_))))
                                        (let ((_lp-tl124940125521_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124938125516_)))
                                              (_lp-hd124939125519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124938125516_))))
                                          (let ((__tmp130745
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124939125519_
                                                         _arg124941125513_))))
                                            (declare (not safe))
                                            (_loop124937125508_
                                             _lp-tl124940125521_
                                             __tmp130745))))
                                      (let ((_arg124942125524_
                                             (reverse _arg124941125513_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124931125500_))
                                            (let ((_e124945125527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124931125500_))))
                                              (let ((_tl124943125532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124945125527_)))
                                                    (_hd124944125530_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124945125527_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124944125530_))
                                                    (let ((_e124948125535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124944125530_))))
                                                      (let ((_tl124946125540_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124948125535_)))
                    (_hd124947125538_
                     (let () (declare (not safe)) (##car _e124948125535_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124947125538_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124947125538_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124946125540_))
                            (let ((_e124951125543_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124946125540_))))
                              (let ((_tl124949125548_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124951125543_)))
                                    (_hd124950125546_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124951125543_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124950125546_))
                                    (let ((_e124954125551_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124950125546_))))
                                      (let ((_tl124952125556_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124954125551_)))
                                            (_hd124953125554_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124954125551_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124953125554_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124953125554_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124952125556_))
                                                    (let ((_e124957125559_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124952125556_))))
                                                      (let ((_tl124955125564_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124957125559_)))
                    (_hd124956125562_
                     (let () (declare (not safe)) (##car _e124957125559_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124955125564_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124949125548_))
                        (let ((___splice129329129330_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124949125548_
                                  '0))))
                          (let ((_tl124960125569_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129329129330_ '1)))
                                (_target124958125567_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129329129330_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124960125569_))
                                (letrec ((_loop124961125572_
                                          (lambda (_hd124959125575_
                                                   _xarg124965125577_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124959125575_))
                                                (let ((_e124962125580_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124959125575_))))
                                                  (let ((_lp-tl124964125585_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124962125580_)))
                                                        (_lp-hd124963125583_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124962125580_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124963125583_))
                                                        (let ((_e124969125588_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124963125583_))))
                  (let ((_tl124967125593_
                         (let () (declare (not safe)) (##cdr _e124969125588_)))
                        (_hd124968125591_
                         (let ()
                           (declare (not safe))
                           (##car _e124969125588_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124968125591_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124968125591_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124967125593_))
                                (let ((_e124972125596_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124967125593_))))
                                  (let ((_tl124970125601_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124972125596_)))
                                        (_hd124971125599_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124972125596_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124970125601_))
                                        (let ((__tmp130744
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124971125599_
                                                       _xarg124965125577_))))
                                          (declare (not safe))
                                          (_loop124961125572_
                                           _lp-tl124964125585_
                                           __tmp130744))
                                        (___match129366129367_
                                         _e124933125495_
                                         _hd124932125498_
                                         _tl124931125500_
                                         ___splice129327129328_
                                         _target124934125503_
                                         _tl124936125505_))))
                                (___match129366129367_
                                 _e124933125495_
                                 _hd124932125498_
                                 _tl124931125500_
                                 ___splice129327129328_
                                 _target124934125503_
                                 _tl124936125505_))
                            (___match129366129367_
                             _e124933125495_
                             _hd124932125498_
                             _tl124931125500_
                             ___splice129327129328_
                             _target124934125503_
                             _tl124936125505_))
                        (___match129366129367_
                         _e124933125495_
                         _hd124932125498_
                         _tl124931125500_
                         ___splice129327129328_
                         _target124934125503_
                         _tl124936125505_))))
                (___match129366129367_
                 _e124933125495_
                 _hd124932125498_
                 _tl124931125500_
                 ___splice129327129328_
                 _target124934125503_
                 _tl124936125505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124966125604_
                                                       (reverse _xarg124965125577_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124943125532_))
                                                      (let ((_L125607_
                                                             _xarg124966125604_)
                                                            (_L125608_
                                                             _hd124956125562_)
                                                            (_L125609_
                                                             _arg124942125524_))
                                                        (if (and (let ((__tmp130742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp130743
                                       (lambda (_g125637125640_
                                                _g125638125642_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125637125640_
                                                 _g125638125642_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130743 '() _L125609_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp130742))
                         (fx= (length (let ((__tmp130740
                                             (lambda (_g125644125647_
                                                      _g125645125649_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125644125647_
                                                       _g125645125649_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130740 '() _L125609_)))
                              (length (let ((__tmp130741
                                             (lambda (_g125651125654_
                                                      _g125652125656_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125651125654_
                                                       _g125652125656_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130741 '() _L125607_))))
                         (let ((__tmp130738
                                (let ((__tmp130739
                                       (lambda (_g125658125661_
                                                _g125659125663_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125658125661_
                                                 _g125659125663_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130739 '() _L125609_)))
                               (__tmp130736
                                (let ((__tmp130737
                                       (lambda (_g125665125668_
                                                _g125666125670_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125665125668_
                                                 _g125666125670_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130737 '() _L125607_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp130738
                                    __tmp130736))
                         (let ((__tmp130732
                                (let ((__tmp130735
                                       (lambda (_g125672125674_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g125672125674_
                                            _L125608_))))
                                      (__tmp130733
                                       (let ((__tmp130734
                                              (lambda (_g125676125679_
                                                       _g125677125681_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g125676125679_
                                                        _g125677125681_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp130734 '() _L125609_))))
                                  (declare (not safe))
                                  (find __tmp130735 __tmp130733))))
                           (declare (not safe))
                           (not __tmp130732)))
                    (___kont129325129326_ _L125607_ _L125608_ _L125609_)
                    (___match129366129367_
                     _e124933125495_
                     _hd124932125498_
                     _tl124931125500_
                     ___splice129327129328_
                     _target124934125503_
                     _tl124936125505_)))
              (___match129366129367_
               _e124933125495_
               _hd124932125498_
               _tl124931125500_
               ___splice129327129328_
               _target124934125503_
               _tl124936125505_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop124961125572_
                                     _target124958125567_
                                     '())))
                                (___match129366129367_
                                 _e124933125495_
                                 _hd124932125498_
                                 _tl124931125500_
                                 ___splice129327129328_
                                 _target124934125503_
                                 _tl124936125505_))))
                        (___match129366129367_
                         _e124933125495_
                         _hd124932125498_
                         _tl124931125500_
                         ___splice129327129328_
                         _target124934125503_
                         _tl124936125505_))
                    (___match129366129367_
                     _e124933125495_
                     _hd124932125498_
                     _tl124931125500_
                     ___splice129327129328_
                     _target124934125503_
                     _tl124936125505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129366129367_
                                                     _e124933125495_
                                                     _hd124932125498_
                                                     _tl124931125500_
                                                     ___splice129327129328_
                                                     _target124934125503_
                                                     _tl124936125505_))
                                                (___match129366129367_
                                                 _e124933125495_
                                                 _hd124932125498_
                                                 _tl124931125500_
                                                 ___splice129327129328_
                                                 _target124934125503_
                                                 _tl124936125505_))
                                            (___match129366129367_
                                             _e124933125495_
                                             _hd124932125498_
                                             _tl124931125500_
                                             ___splice129327129328_
                                             _target124934125503_
                                             _tl124936125505_))))
                                    (___match129366129367_
                                     _e124933125495_
                                     _hd124932125498_
                                     _tl124931125500_
                                     ___splice129327129328_
                                     _target124934125503_
                                     _tl124936125505_))))
                            (___match129366129367_
                             _e124933125495_
                             _hd124932125498_
                             _tl124931125500_
                             ___splice129327129328_
                             _target124934125503_
                             _tl124936125505_))
                        (___match129366129367_
                         _e124933125495_
                         _hd124932125498_
                         _tl124931125500_
                         ___splice129327129328_
                         _target124934125503_
                         _tl124936125505_))
                    (___match129366129367_
                     _e124933125495_
                     _hd124932125498_
                     _tl124931125500_
                     ___splice129327129328_
                     _target124934125503_
                     _tl124936125505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129366129367_
                                                     _e124933125495_
                                                     _hd124932125498_
                                                     _tl124931125500_
                                                     ___splice129327129328_
                                                     _target124934125503_
                                                     _tl124936125505_))))
                                            (___match129366129367_
                                             _e124933125495_
                                             _hd124932125498_
                                             _tl124931125500_
                                             ___splice129327129328_
                                             _target124934125503_
                                             _tl124936125505_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124937125508_ _target124934125503_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129323129324_))
                  (let ((_e124933125495_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129323129324_))))
                    (let ((_tl124931125500_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124933125495_)))
                          (_hd124932125498_
                           (let ()
                             (declare (not safe))
                             (##car _e124933125495_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124932125498_))
                          (let ((___splice129327129328_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124932125498_
                                    '0))))
                            (let ((_tl124936125505_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129327129328_ '1)))
                                  (_target124934125503_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129327129328_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124936125505_))
                                  (___match129354129355_
                                   _e124933125495_
                                   _hd124932125498_
                                   _tl124931125500_
                                   ___splice129327129328_
                                   _target124934125503_
                                   _tl124936125505_)
                                  (___match129366129367_
                                   _e124933125495_
                                   _hd124932125498_
                                   _tl124931125500_
                                   ___splice129327129328_
                                   _target124934125503_
                                   _tl124936125505_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124931125500_))
                              (let ((_e125048125103_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124931125500_))))
                                (let ((_tl125046125108_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125048125103_)))
                                      (_hd125047125106_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125048125103_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125047125106_))
                                      (let ((_e125051125111_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125047125106_))))
                                        (let ((_tl125049125116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125051125111_)))
                                              (_hd125050125114_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125051125111_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd125050125114_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd125050125114_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125049125116_))
                                                      (let ((_e125054125119_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125049125116_))))
                (let ((_tl125052125124_
                       (let () (declare (not safe)) (##cdr _e125054125119_)))
                      (_hd125053125122_
                       (let () (declare (not safe)) (##car _e125054125119_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125053125122_))
                      (let ((_e125057125127_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125053125122_))))
                        (let ((_tl125055125132_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125057125127_)))
                              (_hd125056125130_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125057125127_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125056125130_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125056125130_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125055125132_))
                                      (let ((_e125060125135_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125055125132_))))
                                        (let ((_tl125058125140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125060125135_)))
                                              (_hd125059125138_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125060125135_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125058125140_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125052125124_))
                                                  (let ((_e125063125143_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125052125124_))))
                                                    (let ((_tl125061125148_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125063125143_)))
                                                          (_hd125062125146_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125063125143_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125062125146_))
                                                          (let ((_e125066125151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125062125146_))))
                    (let ((_tl125064125156_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125066125151_)))
                          (_hd125065125154_
                           (let ()
                             (declare (not safe))
                             (##car _e125066125151_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125065125154_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125065125154_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125064125156_))
                                  (let ((_e125069125159_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125064125156_))))
                                    (let ((_tl125067125164_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125069125159_)))
                                          (_hd125068125162_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125069125159_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125067125164_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125061125148_))
                                              (let ((_e125072125167_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125061125148_))))
                                                (let ((_tl125070125172_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125072125167_)))
                                                      (_hd125071125170_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125072125167_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd125071125170_))
                                                      (let ((_e125075125175_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd125071125170_))))
                (let ((_tl125073125180_
                       (let () (declare (not safe)) (##cdr _e125075125175_)))
                      (_hd125074125178_
                       (let () (declare (not safe)) (##car _e125075125175_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd125074125178_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd125074125178_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125073125180_))
                              (let ((_e125078125183_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125073125180_))))
                                (let ((_tl125076125188_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125078125183_)))
                                      (_hd125077125186_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125078125183_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125076125188_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125070125172_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125046125108_))
                                              (___match129464129465_
                                               _e124933125495_
                                               _hd124932125498_
                                               _tl124931125500_
                                               _e125048125103_
                                               _hd125047125106_
                                               _tl125046125108_
                                               _e125051125111_
                                               _hd125050125114_
                                               _tl125049125116_
                                               _e125054125119_
                                               _hd125053125122_
                                               _tl125052125124_
                                               _e125057125127_
                                               _hd125056125130_
                                               _tl125055125132_
                                               _e125060125135_
                                               _hd125059125138_
                                               _tl125058125140_
                                               _e125063125143_
                                               _hd125062125146_
                                               _tl125061125148_
                                               _e125066125151_
                                               _hd125065125154_
                                               _tl125064125156_
                                               _e125069125159_
                                               _hd125068125162_
                                               _tl125067125164_
                                               _e125072125167_
                                               _hd125071125170_
                                               _tl125070125172_
                                               _e125075125175_
                                               _hd125074125178_
                                               _tl125073125180_
                                               _e125078125183_
                                               _hd125077125186_
                                               _tl125076125188_)
                                              (___kont129339129340_))
                                          (___kont129339129340_))
                                      (___kont129339129340_))))
                              (___kont129339129340_))
                          (___kont129339129340_))
                      (___kont129339129340_))))
              (___kont129339129340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont129339129340_))
                                          (___kont129339129340_))))
                                  (___kont129339129340_))
                              (___kont129339129340_))
                          (___kont129339129340_))))
                  (___kont129339129340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129339129340_))
                                              (___kont129339129340_))))
                                      (___kont129339129340_))
                                  (___kont129339129340_))
                              (___kont129339129340_))))
                      (___kont129339129340_))))
              (___kont129339129340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129339129340_))
                                              (___kont129339129340_))))
                                      (___kont129339129340_))))
                              (___kont129339129340_)))))
                  (___kont129339129340_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form124389_)
        (let* ((___stx129467129468_ _form124389_)
               (_g124393124517_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129467129468_)))))
          (let ((___kont129469129470_
                 (lambda (_L124887_ _L124888_ _L124889_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124888_))))
                (___kont129475129476_
                 (lambda (_L124735_ _L124736_ _L124737_ _L124738_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124735_))))
                (___kont129479129480_
                 (lambda (_L124602_ _L124603_ _L124604_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124602_)))))
            (let* ((___match129576129577_
                    (lambda (_e124485124522_
                             _hd124484124525_
                             _tl124483124527_
                             _e124488124530_
                             _hd124487124533_
                             _tl124486124535_
                             _e124491124538_
                             _hd124490124541_
                             _tl124489124543_
                             _e124494124546_
                             _hd124493124549_
                             _tl124492124551_
                             _e124497124554_
                             _hd124496124557_
                             _tl124495124559_
                             _e124500124562_
                             _hd124499124565_
                             _tl124498124567_
                             _e124503124570_
                             _hd124502124573_
                             _tl124501124575_
                             _e124506124578_
                             _hd124505124581_
                             _tl124504124583_
                             _e124509124586_
                             _hd124508124589_
                             _tl124507124591_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124501124575_))
                          (let ((_e124512124594_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124501124575_))))
                            (let ((_tl124510124599_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124512124594_)))
                                  (_hd124511124597_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124512124594_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124510124599_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124486124535_))
                                      (___kont129479129480_
                                       _hd124508124589_
                                       _hd124499124565_
                                       _hd124484124525_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124393124517_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124393124517_)))))
                          (let () (declare (not safe)) (_g124393124517_)))))
                   (___match129506129507_
                    (lambda (_e124446124639_
                             _hd124445124642_
                             _tl124444124644_
                             ___splice129477129478_
                             _target124447124647_
                             _tl124449124649_)
                      (letrec ((_loop124450124652_
                                (lambda (_hd124448124655_ _arg124454124657_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124448124655_))
                                      (let ((_e124451124660_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124448124655_))))
                                        (let ((_lp-tl124453124665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124451124660_)))
                                              (_lp-hd124452124663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124451124660_))))
                                          (let ((__tmp130746
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124452124663_
                                                         _arg124454124657_))))
                                            (declare (not safe))
                                            (_loop124450124652_
                                             _lp-tl124453124665_
                                             __tmp130746))))
                                      (let ((_arg124455124668_
                                             (reverse _arg124454124657_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124444124644_))
                                            (let ((_e124458124671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124444124644_))))
                                              (let ((_tl124456124676_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124458124671_)))
                                                    (_hd124457124674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124458124671_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124457124674_))
                                                    (let ((_e124461124679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124457124674_))))
                                                      (let ((_tl124459124684_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124461124679_)))
                    (_hd124460124682_
                     (let () (declare (not safe)) (##car _e124461124679_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124460124682_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124460124682_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124459124684_))
                            (let ((_e124464124687_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124459124684_))))
                              (let ((_tl124462124692_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124464124687_)))
                                    (_hd124463124690_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124464124687_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124463124690_))
                                    (let ((_e124467124695_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124463124690_))))
                                      (let ((_tl124465124700_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124467124695_)))
                                            (_hd124466124698_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124467124695_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124466124698_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124466124698_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124465124700_))
                                                    (let ((_e124470124703_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124465124700_))))
                                                      (let ((_tl124468124708_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124470124703_)))
                    (_hd124469124706_
                     (let () (declare (not safe)) (##car _e124470124703_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124468124708_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124462124692_))
                        (let ((_e124473124711_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124462124692_))))
                          (let ((_tl124471124716_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124473124711_)))
                                (_hd124472124714_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124473124711_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124472124714_))
                                (let ((_e124476124719_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124472124714_))))
                                  (let ((_tl124474124724_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124476124719_)))
                                        (_hd124475124722_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124476124719_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124475124722_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124475124722_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124474124724_))
                                                (let ((_e124479124727_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124474124724_))))
                                                  (let ((_tl124477124732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124479124727_)))
                                                        (_hd124478124730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124479124727_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124477124732_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl124456124676_))
                                                            (___kont129475129476_
                                                             _hd124478124730_
                                                             _hd124469124706_
                                                             _tl124449124649_
                                                             _arg124455124668_)
                                                            (___match129576129577_
                                                             _e124446124639_
                                                             _hd124445124642_
                                                             _tl124444124644_
                                                             _e124458124671_
                                                             _hd124457124674_
                                                             _tl124456124676_
                                                             _e124461124679_
                                                             _hd124460124682_
                                                             _tl124459124684_
                                                             _e124464124687_
                                                             _hd124463124690_
                                                             _tl124462124692_
                                                             _e124467124695_
                                                             _hd124466124698_
                                                             _tl124465124700_
                                                             _e124470124703_
                                                             _hd124469124706_
                                                             _tl124468124708_
                                                             _e124473124711_
                                                             _hd124472124714_
                                                             _tl124471124716_
                                                             _e124476124719_
                                                             _hd124475124722_
                                                             _tl124474124724_
                                                             _e124479124727_
                                                             _hd124478124730_
                                                             _tl124477124732_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g124393124517_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124393124517_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124393124517_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g124393124517_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124393124517_)))))
                        (let () (declare (not safe)) (_g124393124517_)))
                    (let () (declare (not safe)) (_g124393124517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124393124517_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124393124517_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124393124517_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g124393124517_)))))
                            (let () (declare (not safe)) (_g124393124517_)))
                        (let () (declare (not safe)) (_g124393124517_)))
                    (let () (declare (not safe)) (_g124393124517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124393124517_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g124393124517_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop124450124652_ _target124447124647_ '())))))
                   (___match129494129495_
                    (lambda (_e124400124775_
                             _hd124399124778_
                             _tl124398124780_
                             ___splice129471129472_
                             _target124401124783_
                             _tl124403124785_)
                      (letrec ((_loop124404124788_
                                (lambda (_hd124402124791_ _arg124408124793_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124402124791_))
                                      (let ((_e124405124796_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124402124791_))))
                                        (let ((_lp-tl124407124801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124405124796_)))
                                              (_lp-hd124406124799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124405124796_))))
                                          (let ((__tmp130748
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124406124799_
                                                         _arg124408124793_))))
                                            (declare (not safe))
                                            (_loop124404124788_
                                             _lp-tl124407124801_
                                             __tmp130748))))
                                      (let ((_arg124409124804_
                                             (reverse _arg124408124793_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124398124780_))
                                            (let ((_e124412124807_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124398124780_))))
                                              (let ((_tl124410124812_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124412124807_)))
                                                    (_hd124411124810_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124412124807_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124411124810_))
                                                    (let ((_e124415124815_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124411124810_))))
                                                      (let ((_tl124413124820_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124415124815_)))
                    (_hd124414124818_
                     (let () (declare (not safe)) (##car _e124415124815_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124414124818_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124414124818_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124413124820_))
                            (let ((_e124418124823_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124413124820_))))
                              (let ((_tl124416124828_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124418124823_)))
                                    (_hd124417124826_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124418124823_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124417124826_))
                                    (let ((_e124421124831_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124417124826_))))
                                      (let ((_tl124419124836_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124421124831_)))
                                            (_hd124420124834_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124421124831_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124420124834_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124420124834_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124419124836_))
                                                    (let ((_e124424124839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124419124836_))))
                                                      (let ((_tl124422124844_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124424124839_)))
                    (_hd124423124842_
                     (let () (declare (not safe)) (##car _e124424124839_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124422124844_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124416124828_))
                        (let ((___splice129473129474_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124416124828_
                                  '0))))
                          (let ((_tl124427124849_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129473129474_ '1)))
                                (_target124425124847_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129473129474_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124427124849_))
                                (letrec ((_loop124428124852_
                                          (lambda (_hd124426124855_
                                                   _xarg124432124857_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124426124855_))
                                                (let ((_e124429124860_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124426124855_))))
                                                  (let ((_lp-tl124431124865_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124429124860_)))
                                                        (_lp-hd124430124863_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124429124860_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124430124863_))
                                                        (let ((_e124436124868_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124430124863_))))
                  (let ((_tl124434124873_
                         (let () (declare (not safe)) (##cdr _e124436124868_)))
                        (_hd124435124871_
                         (let ()
                           (declare (not safe))
                           (##car _e124436124868_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124435124871_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124435124871_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124434124873_))
                                (let ((_e124439124876_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124434124873_))))
                                  (let ((_tl124437124881_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124439124876_)))
                                        (_hd124438124879_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124439124876_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124437124881_))
                                        (let ((__tmp130747
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124438124879_
                                                       _xarg124432124857_))))
                                          (declare (not safe))
                                          (_loop124428124852_
                                           _lp-tl124431124865_
                                           __tmp130747))
                                        (___match129506129507_
                                         _e124400124775_
                                         _hd124399124778_
                                         _tl124398124780_
                                         ___splice129471129472_
                                         _target124401124783_
                                         _tl124403124785_))))
                                (___match129506129507_
                                 _e124400124775_
                                 _hd124399124778_
                                 _tl124398124780_
                                 ___splice129471129472_
                                 _target124401124783_
                                 _tl124403124785_))
                            (___match129506129507_
                             _e124400124775_
                             _hd124399124778_
                             _tl124398124780_
                             ___splice129471129472_
                             _target124401124783_
                             _tl124403124785_))
                        (___match129506129507_
                         _e124400124775_
                         _hd124399124778_
                         _tl124398124780_
                         ___splice129471129472_
                         _target124401124783_
                         _tl124403124785_))))
                (___match129506129507_
                 _e124400124775_
                 _hd124399124778_
                 _tl124398124780_
                 ___splice129471129472_
                 _target124401124783_
                 _tl124403124785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124433124884_
                                                       (reverse _xarg124432124857_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124410124812_))
                                                      (___kont129469129470_
                                                       _xarg124433124884_
                                                       _hd124423124842_
                                                       _arg124409124804_)
                                                      (___match129506129507_
                                                       _e124400124775_
                                                       _hd124399124778_
                                                       _tl124398124780_
                                                       ___splice129471129472_
                                                       _target124401124783_
                                                       _tl124403124785_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop124428124852_
                                     _target124425124847_
                                     '())))
                                (___match129506129507_
                                 _e124400124775_
                                 _hd124399124778_
                                 _tl124398124780_
                                 ___splice129471129472_
                                 _target124401124783_
                                 _tl124403124785_))))
                        (___match129506129507_
                         _e124400124775_
                         _hd124399124778_
                         _tl124398124780_
                         ___splice129471129472_
                         _target124401124783_
                         _tl124403124785_))
                    (___match129506129507_
                     _e124400124775_
                     _hd124399124778_
                     _tl124398124780_
                     ___splice129471129472_
                     _target124401124783_
                     _tl124403124785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129506129507_
                                                     _e124400124775_
                                                     _hd124399124778_
                                                     _tl124398124780_
                                                     ___splice129471129472_
                                                     _target124401124783_
                                                     _tl124403124785_))
                                                (___match129506129507_
                                                 _e124400124775_
                                                 _hd124399124778_
                                                 _tl124398124780_
                                                 ___splice129471129472_
                                                 _target124401124783_
                                                 _tl124403124785_))
                                            (___match129506129507_
                                             _e124400124775_
                                             _hd124399124778_
                                             _tl124398124780_
                                             ___splice129471129472_
                                             _target124401124783_
                                             _tl124403124785_))))
                                    (___match129506129507_
                                     _e124400124775_
                                     _hd124399124778_
                                     _tl124398124780_
                                     ___splice129471129472_
                                     _target124401124783_
                                     _tl124403124785_))))
                            (___match129506129507_
                             _e124400124775_
                             _hd124399124778_
                             _tl124398124780_
                             ___splice129471129472_
                             _target124401124783_
                             _tl124403124785_))
                        (___match129506129507_
                         _e124400124775_
                         _hd124399124778_
                         _tl124398124780_
                         ___splice129471129472_
                         _target124401124783_
                         _tl124403124785_))
                    (___match129506129507_
                     _e124400124775_
                     _hd124399124778_
                     _tl124398124780_
                     ___splice129471129472_
                     _target124401124783_
                     _tl124403124785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129506129507_
                                                     _e124400124775_
                                                     _hd124399124778_
                                                     _tl124398124780_
                                                     ___splice129471129472_
                                                     _target124401124783_
                                                     _tl124403124785_))))
                                            (___match129506129507_
                                             _e124400124775_
                                             _hd124399124778_
                                             _tl124398124780_
                                             ___splice129471129472_
                                             _target124401124783_
                                             _tl124403124785_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124404124788_ _target124401124783_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129467129468_))
                  (let ((_e124400124775_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129467129468_))))
                    (let ((_tl124398124780_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124400124775_)))
                          (_hd124399124778_
                           (let ()
                             (declare (not safe))
                             (##car _e124400124775_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124399124778_))
                          (let ((___splice129471129472_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124399124778_
                                    '0))))
                            (let ((_tl124403124785_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129471129472_ '1)))
                                  (_target124401124783_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129471129472_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124403124785_))
                                  (___match129494129495_
                                   _e124400124775_
                                   _hd124399124778_
                                   _tl124398124780_
                                   ___splice129471129472_
                                   _target124401124783_
                                   _tl124403124785_)
                                  (___match129506129507_
                                   _e124400124775_
                                   _hd124399124778_
                                   _tl124398124780_
                                   ___splice129471129472_
                                   _target124401124783_
                                   _tl124403124785_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124398124780_))
                              (let ((_e124488124530_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124398124780_))))
                                (let ((_tl124486124535_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124488124530_)))
                                      (_hd124487124533_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124488124530_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124487124533_))
                                      (let ((_e124491124538_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124487124533_))))
                                        (let ((_tl124489124543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124491124538_)))
                                              (_hd124490124541_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124491124538_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124490124541_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124490124541_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124489124543_))
                                                      (let ((_e124494124546_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124489124543_))))
                (let ((_tl124492124551_
                       (let () (declare (not safe)) (##cdr _e124494124546_)))
                      (_hd124493124549_
                       (let () (declare (not safe)) (##car _e124494124546_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124493124549_))
                      (let ((_e124497124554_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124493124549_))))
                        (let ((_tl124495124559_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124497124554_)))
                              (_hd124496124557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124497124554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124496124557_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124496124557_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124495124559_))
                                      (let ((_e124500124562_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124495124559_))))
                                        (let ((_tl124498124567_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124500124562_)))
                                              (_hd124499124565_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124500124562_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124498124567_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124492124551_))
                                                  (let ((_e124503124570_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124492124551_))))
                                                    (let ((_tl124501124575_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124503124570_)))
                                                          (_hd124502124573_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124503124570_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124502124573_))
                                                          (let ((_e124506124578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124502124573_))))
                    (let ((_tl124504124583_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124506124578_)))
                          (_hd124505124581_
                           (let ()
                             (declare (not safe))
                             (##car _e124506124578_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124505124581_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124505124581_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124504124583_))
                                  (let ((_e124509124586_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124504124583_))))
                                    (let ((_tl124507124591_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124509124586_)))
                                          (_hd124508124589_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124509124586_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124507124591_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124501124575_))
                                              (let ((_e124512124594_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124501124575_))))
                                                (let ((_tl124510124599_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124512124594_)))
                                                      (_hd124511124597_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124512124594_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124510124599_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124486124535_))
                                                          (___kont129479129480_
                                                           _hd124508124589_
                                                           _hd124499124565_
                                                           _hd124399124778_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124393124517_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124393124517_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124393124517_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g124393124517_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124393124517_)))
                              (let () (declare (not safe)) (_g124393124517_)))
                          (let () (declare (not safe)) (_g124393124517_)))))
                  (let () (declare (not safe)) (_g124393124517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124393124517_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124393124517_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124393124517_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124393124517_)))
                              (let ()
                                (declare (not safe))
                                (_g124393124517_)))))
                      (let () (declare (not safe)) (_g124393124517_)))))
              (let () (declare (not safe)) (_g124393124517_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124393124517_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124393124517_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124393124517_)))))
                              (let ()
                                (declare (not safe))
                                (_g124393124517_))))))
                  (let () (declare (not safe)) (_g124393124517_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form124193_)
        (let* ((_g124195124209_
                (lambda (_g124196124206_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124196124206_))))
               (_g124194124386_
                (lambda (_g124196124212_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124196124212_))
                      (let ((_e124201124214_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124196124212_))))
                        (let ((_hd124200124217_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124201124214_)))
                              (_tl124199124219_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124201124214_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124199124219_))
                              (let ((_e124204124222_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124199124219_))))
                                (let ((_hd124203124225_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124204124222_)))
                                      (_tl124202124227_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124204124222_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124202124227_))
                                      ((lambda (_L124230_ _L124231_)
                                         (let* ((___stx129589129590_ _L124231_)
                                                (_g124246124274_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx129589129590_)))))
                                           (let ((___kont129591129592_
                                                  (lambda (_L124365_)
                                                    (length (let ((__tmp130749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124375124378_ _g124376124380_)
                             (let ()
                               (declare (not safe))
                               (cons _g124375124378_ _g124376124380_)))))
                      (declare (not safe))
                      (foldr1 __tmp130749 '() _L124365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129595129596_
                                                  (lambda (_L124316_ _L124317_)
                                                    (let ((__tmp130750
                                                           (length (let ((__tmp130751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g124328124331_ _g124329124333_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g124328124331_
                                            _g124329124333_)))))
                             (declare (not safe))
                             (foldr1 __tmp130751 '() _L124317_)))))
              (declare (not safe))
              (cons __tmp130750 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129599129600_
                                                  (lambda (_L124279_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match129614129615_
                                                     (lambda (___splice129597129598_
                                                              _target124260124292_
                                                              _tl124262124294_)
                                                       (letrec ((_loop124263124297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124261124300_ _arg124267124302_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124261124300_))
                               (let ((_e124264124305_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124261124300_))))
                                 (let ((_lp-tl124266124310_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124264124305_)))
                                       (_lp-hd124265124308_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124264124305_))))
                                   (let ((__tmp130752
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124265124308_
                                                  _arg124267124302_))))
                                     (declare (not safe))
                                     (_loop124263124297_
                                      _lp-tl124266124310_
                                      __tmp130752))))
                               (let ((_arg124268124313_
                                      (reverse _arg124267124302_)))
                                 (___kont129595129596_
                                  _tl124262124294_
                                  _arg124268124313_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124263124297_ _target124260124292_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129608129609_
                                                     (lambda (___splice129593129594_
                                                              _target124249124341_
                                                              _tl124251124343_)
                                                       (letrec ((_loop124252124346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124250124349_ _arg124256124351_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124250124349_))
                               (let ((_e124253124354_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124250124349_))))
                                 (let ((_lp-tl124255124359_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124253124354_)))
                                       (_lp-hd124254124357_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124253124354_))))
                                   (let ((__tmp130753
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124254124357_
                                                  _arg124256124351_))))
                                     (declare (not safe))
                                     (_loop124252124346_
                                      _lp-tl124255124359_
                                      __tmp130753))))
                               (let ((_arg124257124362_
                                      (reverse _arg124256124351_)))
                                 (___kont129591129592_ _arg124257124362_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124252124346_ _target124249124341_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx129589129590_))
                                                   (let ((___splice129593129594_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx129589129590_
                                                             '0))))
                                                     (let ((_tl124251124343_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129593129594_
                                                               '1)))
                                                           (_target124249124341_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129593129594_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl124251124343_))
                                                           (___match129608129609_
                                                            ___splice129593129594_
                                                            _target124249124341_
                                                            _tl124251124343_)
                                                           (___match129614129615_
                                                            ___splice129593129594_
                                                            _target124249124341_
                                                            _tl124251124343_))))
                                                   (___kont129599129600_
                                                    ___stx129589129590_))))))
                                       _hd124203124225_
                                       _hd124200124217_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124195124209_ _g124196124212_)))))
                              (let ()
                                (declare (not safe))
                                (_g124195124209_ _g124196124212_)))))
                      (let ()
                        (declare (not safe))
                        (_g124195124209_ _g124196124212_))))))
          (declare (not safe))
          (_g124194124386_ _form124193_))))
    (define gxc#lambda-expr?
      (lambda (_expr124146_)
        (let* ((___stx129617129618_ _expr124146_)
               (_g124149124159_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129617129618_)))))
          (let ((___kont129619129620_ (lambda (_L124179_) '#t))
                (___kont129621129622_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129617129618_))
                (let ((_e124154124171_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129617129618_))))
                  (let ((_tl124152124176_
                         (let () (declare (not safe)) (##cdr _e124154124171_)))
                        (_hd124153124174_
                         (let ()
                           (declare (not safe))
                           (##car _e124154124171_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124153124174_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd124153124174_))
                            (___kont129619129620_ _tl124152124176_)
                            (___kont129621129622_))
                        (___kont129621129622_))))
                (___kont129621129622_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr124099_)
        (let* ((___stx129635129636_ _expr124099_)
               (_g124102124112_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129635129636_)))))
          (let ((___kont129637129638_ (lambda (_L124132_) '#t))
                (___kont129639129640_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129635129636_))
                (let ((_e124107124124_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129635129636_))))
                  (let ((_tl124105124129_
                         (let () (declare (not safe)) (##cdr _e124107124124_)))
                        (_hd124106124127_
                         (let ()
                           (declare (not safe))
                           (##car _e124107124124_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124106124127_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd124106124127_))
                            (___kont129637129638_ _tl124105124129_)
                            (___kont129639129640_))
                        (___kont129639129640_))))
                (___kont129639129640_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr123968_)
        (let* ((___stx129653129654_ _expr123968_)
               (_g123971124001_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129653129654_)))))
          (let ((___kont129655129656_
                 (lambda (_L124069_ _L124070_ _L124071_)
                   (if (let () (declare (not safe)) (gx#identifier? _L124071_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L124070_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L124069_))
                           '#f)
                       '#f)))
                (___kont129657129658_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129653129654_))
                (let ((_e123978124013_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129653129654_))))
                  (let ((_tl123976124018_
                         (let () (declare (not safe)) (##cdr _e123978124013_)))
                        (_hd123977124016_
                         (let ()
                           (declare (not safe))
                           (##car _e123978124013_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123977124016_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123977124016_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123976124018_))
                                (let ((_e123981124021_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123976124018_))))
                                  (let ((_tl123979124026_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123981124021_)))
                                        (_hd123980124024_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123981124021_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123980124024_))
                                        (let ((_e123984124029_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123980124024_))))
                                          (let ((_tl123982124034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123984124029_)))
                                                (_hd123983124032_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123984124029_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123983124032_))
                                                (let ((_e123987124037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123983124032_))))
                                                  (let ((_tl123985124042_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123987124037_)))
                                                        (_hd123986124040_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123987124037_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123986124040_))
                                                        (let ((_e123990124045_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123986124040_))))
                  (let ((_tl123988124050_
                         (let () (declare (not safe)) (##cdr _e123990124045_)))
                        (_hd123989124048_
                         (let ()
                           (declare (not safe))
                           (##car _e123990124045_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123988124050_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123985124042_))
                            (let ((_e123993124053_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123985124042_))))
                              (let ((_tl123991124058_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123993124053_)))
                                    (_hd123992124056_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123993124053_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123991124058_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123982124034_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123979124026_))
                                            (let ((_e123996124061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123979124026_))))
                                              (let ((_tl123994124066_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123996124061_)))
                                                    (_hd123995124064_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123996124061_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123994124066_))
                                                    (___kont129655129656_
                                                     _hd123995124064_
                                                     _hd123992124056_
                                                     _hd123989124048_)
                                                    (___kont129657129658_))))
                                            (___kont129657129658_))
                                        (___kont129657129658_))
                                    (___kont129657129658_))))
                            (___kont129657129658_))
                        (___kont129657129658_))))
                (___kont129657129658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129657129658_))))
                                        (___kont129657129658_))))
                                (___kont129657129658_))
                            (___kont129657129658_))
                        (___kont129657129658_))))
                (___kont129657129658_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr123293_)
        (let* ((___stx129715129716_ _expr123293_)
               (_g123296123454_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129715129716_)))))
          (let ((___kont129717129718_
                 (lambda (_L123842_
                          _L123843_
                          _L123844_
                          _L123845_
                          _L123846_
                          _L123847_
                          _L123848_
                          _L123849_
                          _L123850_
                          _L123851_
                          _L123852_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L123849_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L123845_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L123844_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L123852_
                                      _L123843_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L123851_
                                          _L123848_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123846_
                                              _L123842_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123850_
                                              _L123847_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont129719129720_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129715129716_))
                (let ((_e123311123466_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129715129716_))))
                  (let ((_tl123309123471_
                         (let () (declare (not safe)) (##cdr _e123311123466_)))
                        (_hd123310123469_
                         (let ()
                           (declare (not safe))
                           (##car _e123311123466_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123310123469_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123310123469_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123309123471_))
                                (let ((_e123314123474_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123309123471_))))
                                  (let ((_tl123312123479_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123314123474_)))
                                        (_hd123313123477_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123314123474_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123313123477_))
                                        (let ((_e123317123482_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123313123477_))))
                                          (let ((_tl123315123487_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123317123482_)))
                                                (_hd123316123485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123317123482_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123316123485_))
                                                (let ((_e123320123490_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123316123485_))))
                                                  (let ((_tl123318123495_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123320123490_)))
                                                        (_hd123319123493_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123320123490_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123319123493_))
                                                        (let ((_e123323123498_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123319123493_))))
                  (let ((_tl123321123503_
                         (let () (declare (not safe)) (##cdr _e123323123498_)))
                        (_hd123322123501_
                         (let ()
                           (declare (not safe))
                           (##car _e123323123498_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123321123503_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123318123495_))
                            (let ((_e123326123506_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123318123495_))))
                              (let ((_tl123324123511_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123326123506_)))
                                    (_hd123325123509_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123326123506_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123325123509_))
                                    (let ((_e123329123514_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123325123509_))))
                                      (let ((_tl123327123519_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123329123514_)))
                                            (_hd123328123517_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123329123514_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123328123517_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd123328123517_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123327123519_))
                                                    (let ((_e123332123522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123327123519_))))
                                                      (let ((_tl123330123527_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123332123522_)))
                    (_hd123331123525_
                     (let () (declare (not safe)) (##car _e123332123522_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123331123525_))
                    (let ((_e123335123530_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123331123525_))))
                      (let ((_tl123333123535_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123335123530_)))
                            (_hd123334123533_
                             (let ()
                               (declare (not safe))
                               (##car _e123335123530_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123334123533_))
                            (let ((_e123338123538_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123334123533_))))
                              (let ((_tl123336123543_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123338123538_)))
                                    (_hd123337123541_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123338123538_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123337123541_))
                                    (let ((_e123341123546_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123337123541_))))
                                      (let ((_tl123339123551_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123341123546_)))
                                            (_hd123340123549_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123341123546_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123339123551_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123336123543_))
                                                (let ((_e123344123554_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123336123543_))))
                                                  (let ((_tl123342123559_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123344123554_)))
                                                        (_hd123343123557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123344123554_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123342123559_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl123333123535_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123330123527_))
                        (let ((_e123347123562_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123330123527_))))
                          (let ((_tl123345123567_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123347123562_)))
                                (_hd123346123565_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123347123562_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123346123565_))
                                (let ((_e123350123570_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123346123565_))))
                                  (let ((_tl123348123575_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123350123570_)))
                                        (_hd123349123573_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123350123570_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123349123573_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd123349123573_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123348123575_))
                                                (let ((_e123353123578_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123348123575_))))
                                                  (let ((_tl123351123583_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123353123578_)))
                                                        (_hd123352123581_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123353123578_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123352123581_))
                                                        (let ((_e123356123586_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123352123581_))))
                  (let ((_tl123354123591_
                         (let () (declare (not safe)) (##cdr _e123356123586_)))
                        (_hd123355123589_
                         (let ()
                           (declare (not safe))
                           (##car _e123356123586_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123351123583_))
                        (let ((_e123359123594_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123351123583_))))
                          (let ((_tl123357123599_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123359123594_)))
                                (_hd123358123597_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123359123594_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123358123597_))
                                (let ((_e123362123602_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123358123597_))))
                                  (let ((_tl123360123607_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123362123602_)))
                                        (_hd123361123605_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123362123602_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123361123605_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd123361123605_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123360123607_))
                                                (let ((_e123365123610_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123360123607_))))
                                                  (let ((_tl123363123615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123365123610_)))
                                                        (_hd123364123613_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123365123610_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123364123613_))
                                                        (let ((_e123368123618_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123364123613_))))
                  (let ((_tl123366123623_
                         (let () (declare (not safe)) (##cdr _e123368123618_)))
                        (_hd123367123621_
                         (let ()
                           (declare (not safe))
                           (##car _e123368123618_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123367123621_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123367123621_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123366123623_))
                                (let ((_e123371123626_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123366123623_))))
                                  (let ((_tl123369123631_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123371123626_)))
                                        (_hd123370123629_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123371123626_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123369123631_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123363123615_))
                                            (let ((_e123374123634_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123363123615_))))
                                              (let ((_tl123372123639_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123374123634_)))
                                                    (_hd123373123637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123374123634_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123373123637_))
                                                    (let ((_e123377123642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123373123637_))))
                                                      (let ((_tl123375123647_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123377123642_)))
                    (_hd123376123645_
                     (let () (declare (not safe)) (##car _e123377123642_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123376123645_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123376123645_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123375123647_))
                            (let ((_e123380123650_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123375123647_))))
                              (let ((_tl123378123655_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123380123650_)))
                                    (_hd123379123653_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123380123650_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123378123655_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123372123639_))
                                        (let ((_e123383123658_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123372123639_))))
                                          (let ((_tl123381123663_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123383123658_)))
                                                (_hd123382123661_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123383123658_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123382123661_))
                                                (let ((_e123386123666_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123382123661_))))
                                                  (let ((_tl123384123671_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123386123666_)))
                                                        (_hd123385123669_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123386123666_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd123385123669_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd123385123669_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123384123671_))
                        (let ((_e123389123674_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123384123671_))))
                          (let ((_tl123387123679_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123389123674_)))
                                (_hd123388123677_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123389123674_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123387123679_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123357123599_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123345123567_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123324123511_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123315123487_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123312123479_))
                                                    (let ((_e123392123682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123312123479_))))
                                                      (let ((_tl123390123687_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123392123682_)))
                    (_hd123391123685_
                     (let () (declare (not safe)) (##car _e123392123682_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123391123685_))
                    (let ((_e123395123690_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123391123685_))))
                      (let ((_tl123393123695_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123395123690_)))
                            (_hd123394123693_
                             (let ()
                               (declare (not safe))
                               (##car _e123395123690_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123394123693_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd123394123693_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123393123695_))
                                    (let ((_e123398123698_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123393123695_))))
                                      (let ((_tl123396123703_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123398123698_)))
                                            (_hd123397123701_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123398123698_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123396123703_))
                                            (let ((_e123401123706_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123396123703_))))
                                              (let ((_tl123399123711_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123401123706_)))
                                                    (_hd123400123709_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123401123706_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123400123709_))
                                                    (let ((_e123404123714_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123400123709_))))
                                                      (let ((_tl123402123719_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123404123714_)))
                    (_hd123403123717_
                     (let () (declare (not safe)) (##car _e123404123714_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123403123717_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123403123717_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123402123719_))
                            (let ((_e123407123722_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123402123719_))))
                              (let ((_tl123405123727_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123407123722_)))
                                    (_hd123406123725_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123407123722_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123406123725_))
                                    (let ((_e123410123730_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123406123725_))))
                                      (let ((_tl123408123735_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123410123730_)))
                                            (_hd123409123733_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123410123730_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123409123733_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123409123733_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123408123735_))
                                                    (let ((_e123413123738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123408123735_))))
                                                      (let ((_tl123411123743_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123413123738_)))
                    (_hd123412123741_
                     (let () (declare (not safe)) (##car _e123413123738_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123411123743_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123405123727_))
                        (let ((_e123416123746_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123405123727_))))
                          (let ((_tl123414123751_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123416123746_)))
                                (_hd123415123749_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123416123746_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123415123749_))
                                (let ((_e123419123754_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123415123749_))))
                                  (let ((_tl123417123759_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123419123754_)))
                                        (_hd123418123757_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123419123754_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123418123757_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123418123757_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123417123759_))
                                                (let ((_e123422123762_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123417123759_))))
                                                  (let ((_tl123420123767_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123422123762_)))
                                                        (_hd123421123765_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123422123762_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123420123767_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl123414123751_))
                                                            (let ((_e123425123770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl123414123751_))))
                      (let ((_tl123423123775_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123425123770_)))
                            (_hd123424123773_
                             (let ()
                               (declare (not safe))
                               (##car _e123425123770_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123424123773_))
                            (let ((_e123428123778_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123424123773_))))
                              (let ((_tl123426123783_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123428123778_)))
                                    (_hd123427123781_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123428123778_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd123427123781_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd123427123781_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123426123783_))
                                            (let ((_e123431123786_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123426123783_))))
                                              (let ((_tl123429123791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123431123786_)))
                                                    (_hd123430123789_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123431123786_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123429123791_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123423123775_))
                                                        (let ((_e123434123794_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123423123775_))))
                  (let ((_tl123432123799_
                         (let () (declare (not safe)) (##cdr _e123434123794_)))
                        (_hd123433123797_
                         (let ()
                           (declare (not safe))
                           (##car _e123434123794_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd123433123797_))
                        (let ((_e123437123802_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd123433123797_))))
                          (let ((_tl123435123807_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123437123802_)))
                                (_hd123436123805_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123437123802_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd123436123805_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd123436123805_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123435123807_))
                                        (let ((_e123440123810_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123435123807_))))
                                          (let ((_tl123438123815_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123440123810_)))
                                                (_hd123439123813_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123440123810_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123438123815_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123432123799_))
                                                    (let ((_e123443123818_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123432123799_))))
                                                      (let ((_tl123441123823_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123443123818_)))
                    (_hd123442123821_
                     (let () (declare (not safe)) (##car _e123443123818_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123442123821_))
                    (let ((_e123446123826_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123442123821_))))
                      (let ((_tl123444123831_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123446123826_)))
                            (_hd123445123829_
                             (let ()
                               (declare (not safe))
                               (##car _e123446123826_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123445123829_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd123445123829_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123444123831_))
                                    (let ((_e123449123834_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123444123831_))))
                                      (let ((_tl123447123839_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123449123834_)))
                                            (_hd123448123837_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123449123834_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123447123839_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123441123823_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123399123711_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123390123687_))
                                                        (___kont129717129718_
                                                         _hd123448123837_
                                                         _hd123439123813_
                                                         _hd123421123765_
                                                         _hd123412123741_
                                                         _hd123397123701_
                                                         _hd123388123677_
                                                         _hd123379123653_
                                                         _hd123370123629_
                                                         _hd123355123589_
                                                         _hd123340123549_
                                                         _hd123322123501_)
                                                        (___kont129719129720_))
                                                    (___kont129719129720_))
                                                (___kont129719129720_))
                                            (___kont129719129720_))))
                                    (___kont129719129720_))
                                (___kont129719129720_))
                            (___kont129719129720_))))
                    (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129719129720_))
                                                (___kont129719129720_))))
                                        (___kont129719129720_))
                                    (___kont129719129720_))
                                (___kont129719129720_))))
                        (___kont129719129720_))))
                (___kont129719129720_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129719129720_))))
                                            (___kont129719129720_))
                                        (___kont129719129720_))
                                    (___kont129719129720_))))
                            (___kont129719129720_))))
                    (___kont129719129720_))
                (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129719129720_))
                                            (___kont129719129720_))
                                        (___kont129719129720_))))
                                (___kont129719129720_))))
                        (___kont129719129720_))
                    (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129719129720_))
                                                (___kont129719129720_))
                                            (___kont129719129720_))))
                                    (___kont129719129720_))))
                            (___kont129719129720_))
                        (___kont129719129720_))
                    (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129719129720_))))
                                            (___kont129719129720_))))
                                    (___kont129719129720_))
                                (___kont129719129720_))
                            (___kont129719129720_))))
                    (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129719129720_))
                                                (___kont129719129720_))
                                            (___kont129719129720_))
                                        (___kont129719129720_))
                                    (___kont129719129720_))
                                (___kont129719129720_))))
                        (___kont129719129720_))
                    (___kont129719129720_))
                (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129719129720_))))
                                        (___kont129719129720_))
                                    (___kont129719129720_))))
                            (___kont129719129720_))
                        (___kont129719129720_))
                    (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129719129720_))))
                                            (___kont129719129720_))
                                        (___kont129719129720_))))
                                (___kont129719129720_))
                            (___kont129719129720_))
                        (___kont129719129720_))))
                (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129719129720_))
                                            (___kont129719129720_))
                                        (___kont129719129720_))))
                                (___kont129719129720_))))
                        (___kont129719129720_))))
                (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129719129720_))
                                            (___kont129719129720_))
                                        (___kont129719129720_))))
                                (___kont129719129720_))))
                        (___kont129719129720_))
                    (___kont129719129720_))
                (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129719129720_))
                                            (___kont129719129720_))))
                                    (___kont129719129720_))))
                            (___kont129719129720_))))
                    (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129719129720_))
                                                (___kont129719129720_))
                                            (___kont129719129720_))))
                                    (___kont129719129720_))))
                            (___kont129719129720_))
                        (___kont129719129720_))))
                (___kont129719129720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129719129720_))))
                                        (___kont129719129720_))))
                                (___kont129719129720_))
                            (___kont129719129720_))
                        (___kont129719129720_))))
                (___kont129719129720_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx123035_ _id123036_ _clauses123037_ _gensym?123038_)
        (let _lp123040_ ((_rest123042_ _clauses123037_)
                         (_ids123043_ '())
                         (_impls123044_ '())
                         (_clauses123045_ '()))
          (let* ((_rest123046123054_ _rest123042_)
                 (_else123048123062_
                  (lambda ()
                    (values (reverse _ids123043_)
                            (reverse _impls123044_)
                            (reverse _clauses123045_))))
                 (_K123050123267_
                  (lambda (_rest123065_ _clause123066_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause123066_))
                        (let ((__tmp130809
                               (let ()
                                 (declare (not safe))
                                 (cons _clause123066_ _clauses123045_))))
                          (declare (not safe))
                          (_lp123040_
                           _rest123065_
                           _ids123043_
                           _impls123044_
                           __tmp130809))
                        (let* ((_g123068123079_
                                (lambda (_g123069123076_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g123069123076_))))
                               (_g123067123264_
                                (lambda (_g123069123082_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g123069123082_))
                                      (let ((_e123074123084_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g123069123082_))))
                                        (let ((_hd123073123087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123074123084_)))
                                              (_tl123072123089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123074123084_))))
                                          ((lambda (_L123092_ _L123093_)
                                             (let* ((_id123110_
                                                     (let ((__tmp130756
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id123036_)))
                                                           (__tmp130755
                                                            (length _clauses123045_))
                                                           (__tmp130754
                                                            (if _gensym?123038_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp130756
                                                        '"__"
                                                        __tmp130755
                                                        __tmp130754)))
                                                    (_id123112_
                                                     (let ((__tmp130757
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx123035_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id123110_
                                                        __tmp130757)))
                                                    (_impl123114_
                                                     (let ((__tmp130758
                                                            (let ((__tmp130760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp130759
                           (let ()
                             (declare (not safe))
                             (cons _L123093_ _L123092_))))
                      (declare (not safe))
                      (cons __tmp130760 __tmp130759))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp130758 _stx123035_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause123261_
                                                     (let* ((___stx130099130100_
                                                             _L123093_)
                                                            (_g123118123146_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx130099130100_)))))
               (let ((___kont130101130102_
                      (lambda (_L123240_)
                        (let ((__tmp130761
                               (let ((__tmp130762
                                      (let ((__tmp130763
                                             (let ((__tmp130764
                                                    (let ((__tmp130770
                                                           (let ((__tmp130771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id123112_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130771)))
                  (__tmp130765
                   (let ((__tmp130766
                          (lambda (_g123250123253_ _g123251123255_)
                            (let ((__tmp130767
                                   (let ((__tmp130769
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp130768
                                          (let ()
                                            (declare (not safe))
                                            (cons _g123250123253_ '()))))
                                     (declare (not safe))
                                     (cons __tmp130769 __tmp130768))))
                              (declare (not safe))
                              (cons __tmp130767 _g123251123255_)))))
                     (declare (not safe))
                     (foldr1 __tmp130766 '() _L123240_))))
              (declare (not safe))
              (cons __tmp130770 __tmp130765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130764))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130763
                                         _stx123035_))))
                                 (declare (not safe))
                                 (cons __tmp130762 '()))))
                          (declare (not safe))
                          (cons _L123093_ __tmp130761))))
                     (___kont130105130106_
                      (lambda (_L123191_ _L123192_)
                        (let ((__tmp130772
                               (let ((__tmp130773
                                      (let ((__tmp130774
                                             (let ((__tmp130775
                                                    (let ((__tmp130789
                                                           (let ((__tmp130790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130790)))
                  (__tmp130776
                   (let ((__tmp130787
                          (let ((__tmp130788
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123112_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130788)))
                         (__tmp130777
                          (let ((__tmp130783
                                 (let ((__tmp130784
                                        (let ((__tmp130786
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp130785
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L123191_ '()))))
                                          (declare (not safe))
                                          (cons __tmp130786 __tmp130785))))
                                   (declare (not safe))
                                   (cons __tmp130784 '())))
                                (__tmp130778
                                 (let ((__tmp130779
                                        (lambda (_g123203123206_
                                                 _g123204123208_)
                                          (let ((__tmp130780
                                                 (let ((__tmp130782
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp130781
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g123203123206_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp130782
                                                         __tmp130781))))
                                            (declare (not safe))
                                            (cons __tmp130780
                                                  _g123204123208_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp130779 '() _L123192_))))
                            (declare (not safe))
                            (foldr1 cons __tmp130783 __tmp130778))))
                     (declare (not safe))
                     (cons __tmp130787 __tmp130777))))
              (declare (not safe))
              (cons __tmp130789 __tmp130776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130775))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130774
                                         _stx123035_))))
                                 (declare (not safe))
                                 (cons __tmp130773 '()))))
                          (declare (not safe))
                          (cons _L123093_ __tmp130772))))
                     (___kont130109130110_
                      (lambda (_L123151_)
                        (let ((__tmp130791
                               (let ((__tmp130792
                                      (let ((__tmp130793
                                             (let ((__tmp130794
                                                    (let ((__tmp130802
                                                           (let ((__tmp130803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130803)))
                  (__tmp130795
                   (let ((__tmp130800
                          (let ((__tmp130801
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123112_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130801)))
                         (__tmp130796
                          (let ((__tmp130797
                                 (let ((__tmp130799
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp130798
                                        (let ()
                                          (declare (not safe))
                                          (cons _L123151_ '()))))
                                   (declare (not safe))
                                   (cons __tmp130799 __tmp130798))))
                            (declare (not safe))
                            (cons __tmp130797 '()))))
                     (declare (not safe))
                     (cons __tmp130800 __tmp130796))))
              (declare (not safe))
              (cons __tmp130802 __tmp130795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130794))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130793
                                         _stx123035_))))
                                 (declare (not safe))
                                 (cons __tmp130792 '()))))
                          (declare (not safe))
                          (cons _L123093_ __tmp130791)))))
                 (let* ((___match130124130125_
                         (lambda (___splice130107130108_
                                  _target123132123167_
                                  _tl123134123169_)
                           (letrec ((_loop123135123172_
                                     (lambda (_hd123133123175_
                                              _arg123139123177_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123133123175_))
                                           (let ((_e123136123180_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123133123175_))))
                                             (let ((_lp-tl123138123185_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123136123180_)))
                                                   (_lp-hd123137123183_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123136123180_))))
                                               (let ((__tmp130804
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123137123183_
                                                              _arg123139123177_))))
                                                 (declare (not safe))
                                                 (_loop123135123172_
                                                  _lp-tl123138123185_
                                                  __tmp130804))))
                                           (let ((_arg123140123188_
                                                  (reverse _arg123139123177_)))
                                             (___kont130105130106_
                                              _tl123134123169_
                                              _arg123140123188_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123135123172_
                                _target123132123167_
                                '())))))
                        (___match130118130119_
                         (lambda (___splice130103130104_
                                  _target123121123216_
                                  _tl123123123218_)
                           (letrec ((_loop123124123221_
                                     (lambda (_hd123122123224_
                                              _arg123128123226_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123122123224_))
                                           (let ((_e123125123229_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123122123224_))))
                                             (let ((_lp-tl123127123234_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123125123229_)))
                                                   (_lp-hd123126123232_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123125123229_))))
                                               (let ((__tmp130805
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123126123232_
                                                              _arg123128123226_))))
                                                 (declare (not safe))
                                                 (_loop123124123221_
                                                  _lp-tl123127123234_
                                                  __tmp130805))))
                                           (let ((_arg123129123237_
                                                  (reverse _arg123128123226_)))
                                             (___kont130101130102_
                                              _arg123129123237_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123124123221_
                                _target123121123216_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx130099130100_))
                       (let ((___splice130103130104_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx130099130100_
                                 '0))))
                         (let ((_tl123123123218_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130103130104_ '1)))
                               (_target123121123216_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130103130104_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl123123123218_))
                               (___match130118130119_
                                ___splice130103130104_
                                _target123121123216_
                                _tl123123123218_)
                               (___match130124130125_
                                ___splice130103130104_
                                _target123121123216_
                                _tl123123123218_))))
                       (___kont130109130110_ ___stx130099130100_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp130808
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id123112_
                                                              _ids123043_)))
                                                     (__tmp130807
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl123114_
                                                              _impls123044_)))
                                                     (__tmp130806
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause123261_
                                                              _clauses123045_))))
                                                 (declare (not safe))
                                                 (_lp123040_
                                                  _rest123065_
                                                  __tmp130808
                                                  __tmp130807
                                                  __tmp130806))))
                                           _tl123072123089_
                                           _hd123073123087_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g123068123079_ _g123069123082_))))))
                          (declare (not safe))
                          (_g123067123264_ _clause123066_))))))
            (if (let () (declare (not safe)) (##pair? _rest123046123054_))
                (let ((_hd123051123270_
                       (let ()
                         (declare (not safe))
                         (##car _rest123046123054_)))
                      (_tl123052123272_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest123046123054_))))
                  (let* ((_clause123275_ _hd123051123270_)
                         (_rest123277_ _tl123052123272_))
                    (declare (not safe))
                    (_K123050123267_ _rest123277_ _clause123275_)))
                (let () (declare (not safe)) (_else123048123062_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx123282_ _id123283_ _clauses123284_)
        (let ((_gensym?123286_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx123282_
           _id123283_
           _clauses123284_
           _gensym?123286_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g130811_
        (let ((_g130810_ (let () (declare (not safe)) (##length _g130811_))))
          (cond ((let () (declare (not safe)) (##fx= _g130810_ 3))
                 (apply (lambda (_stx123282_ _id123283_ _clauses123284_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx123282_
                             _id123283_
                             _clauses123284_)))
                        _g130811_))
                ((let () (declare (not safe)) (##fx= _g130810_ 4))
                 (apply (lambda (_stx123288_
                                 _id123289_
                                 _clauses123290_
                                 _gensym?123291_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx123288_
                             _id123289_
                             _clauses123290_
                             _gensym?123291_)))
                        _g130811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g130811_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self122311_ _stx122312_)
        (letrec ((_case-lambda-clause-def122314_
                  (lambda (_id123031_ _impl123032_)
                    (let ((__tmp130812
                           (let ((__tmp130813
                                  (let ((__tmp130816
                                         (let ()
                                           (declare (not safe))
                                           (cons _id123031_ '())))
                                        (__tmp130814
                                         (let ((__tmp130815
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self122311_
                                                   _impl123032_))))
                                           (declare (not safe))
                                           (cons __tmp130815 '()))))
                                    (declare (not safe))
                                    (cons __tmp130816 __tmp130814))))
                             (declare (not safe))
                             (cons '%#define-values __tmp130813))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130812 _stx122312_))))
                 (_opt-lambda-dispatch-name122315_
                  (lambda (_id123027_)
                    (if (uninterned-symbol? _id123027_)
                        (let ((_str123029_ (symbol->string _id123027_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str123029_))
                              '"%"
                              _id123027_))
                        _id123027_)))
                 (_kw-lambda-dispatch-name122316_
                  (lambda (_id123022_ _name123023_)
                    (if (uninterned-symbol? _id123022_)
                        (let ((_str123025_ (symbol->string _id123022_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str123025_))
                              _name123023_
                              _id123022_))
                        _id123022_))))
          (let* ((___stx130147130148_ _stx122312_)
                 (_g122321122380_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130147130148_)))))
            (let ((___kont130149130150_
                   (lambda (_L122931_ _L122932_)
                     (let* ((___stx130127130128_ _L122931_)
                            (_g122949122963_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130127130128_)))))
                       (let ((___kont130129130130_
                              (lambda (_L123007_) _stx122312_))
                             (___kont130131130132_
                              (lambda (_L122976_)
                                (let ((_g130817_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx122312_
                                          _L122932_
                                          _L122976_))))
                                  (begin
                                    (let ((_g130818_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130817_)
                                                 (##vector-length _g130817_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130818_ 3)))
                                          (error "Context expects 3 values"
                                                 _g130818_)))
                                    (let ((_ids122986_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130817_ 0)))
                                          (_impls122987_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130817_ 1)))
                                          (_clauses122988_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130817_ 2))))
                                      (let* ((_g130819_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids122986_))
                                             (_defs122991_
                                              (map _case-lambda-clause-def122314_
                                                   _ids122986_
                                                   _impls122987_)))
                                        (let ((__tmp130821
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L122932_)))
                                              (__tmp130820
                                               (map gxc#identifier-symbol
                                                    _ids122986_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp130821
                                           '" => "
                                           __tmp130820))
                                        (let ((__tmp130822
                                               (let ((__tmp130823
                                                      (let ((__tmp130824
                                                             (let ((__tmp130825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130826
                                   (let ((__tmp130827
                                          (let ((__tmp130832
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L122932_ '())))
                                                (__tmp130828
                                                 (let ((__tmp130829
                                                        (let ((__tmp130831
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses122988_)))
                      (__tmp130830
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp130831 __tmp130830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130829 '()))))
                                            (declare (not safe))
                                            (cons __tmp130832 __tmp130828))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp130827))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130826
                               _stx122312_))))
                       (declare (not safe))
                       (cons __tmp130825 '()))))
                (declare (not safe))
                (foldr1 cons __tmp130824 _defs122991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp130823))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp130822
                                           _stx122312_)))))))))
                         (let ((___match130138130139_
                                (lambda (_e122954122999_
                                         _hd122953123002_
                                         _tl122952123004_)
                                  (let ((_L123007_ _tl122952123004_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L123007_))
                                        (___kont130129130130_ _L123007_)
                                        (___kont130131130132_
                                         _tl122952123004_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx130127130128_))
                               (let ((_e122954122999_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx130127130128_))))
                                 (let ((_tl122952123004_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122954122999_)))
                                       (_hd122953123002_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122954122999_))))
                                   (___match130138130139_
                                    _e122954122999_
                                    _hd122953123002_
                                    _tl122952123004_)))
                               (let ()
                                 (declare (not safe))
                                 (_g122949122963_))))))))
                  (___kont130151130152_
                   (lambda (_L122749_ _L122750_)
                     (let* ((_g122766122796_
                             (lambda (_g122767122793_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122767122793_))))
                            (_g122765122891_
                             (lambda (_g122767122799_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122767122799_))
                                   (let ((_e122773122801_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122767122799_))))
                                     (let ((_hd122772122804_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122773122801_)))
                                           (_tl122771122806_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122773122801_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122771122806_))
                                           (let ((_e122776122809_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122771122806_))))
                                             (let ((_hd122775122812_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122776122809_)))
                                                   (_tl122774122814_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122776122809_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122775122812_))
                                                   (let ((_e122779122817_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122775122812_))))
                                                     (let ((_hd122778122820_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122779122817_)))
                                                           (_tl122777122822_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122779122817_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122778122820_))
                                                           (let ((_e122782122825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122778122820_))))
                     (let ((_hd122781122828_
                            (let ()
                              (declare (not safe))
                              (##car _e122782122825_)))
                           (_tl122780122830_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122782122825_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122781122828_))
                           (let ((_e122785122833_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122781122828_))))
                             (let ((_hd122784122836_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122785122833_)))
                                   (_tl122783122838_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122785122833_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122783122838_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122780122830_))
                                       (let ((_e122788122841_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122780122830_))))
                                         (let ((_hd122787122844_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122788122841_)))
                                               (_tl122786122846_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122788122841_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122786122846_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl122777122822_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122774122814_))
                                                       (let ((_e122791122849_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122774122814_))))
                 (let ((_hd122790122852_
                        (let () (declare (not safe)) (##car _e122791122849_)))
                       (_tl122789122854_
                        (let () (declare (not safe)) (##cdr _e122791122849_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl122789122854_))
                       ((lambda (_L122857_ _L122858_ _L122859_)
                          (let* ((_lambda-id122883_
                                  (let ((__tmp130835
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L122750_)))
                                        (__tmp130833
                                         (let ((__tmp130834
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L122859_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name122315_
                                            __tmp130834))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp130835
                                     '"__"
                                     __tmp130833)))
                                 (_lambda-id122885_
                                  (let ((__tmp130836
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx122312_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id122883_
                                     __tmp130836)))
                                 (_g130837_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id122885_)))
                                 (_new-case-lambda-expr122888_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L122857_
                                     'id:
                                     _L122859_
                                     'new-id:
                                     _lambda-id122885_))))
                            (let ((__tmp130839
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L122750_)))
                                  (__tmp130838
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id122885_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp130839
                               '" => "
                               __tmp130838))
                            (let ((__tmp130840
                                   (let ((__tmp130841
                                          (let ((__tmp130849
                                                 (let ((__tmp130850
                                                        (let ((__tmp130851
                                                               (let ((__tmp130854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id122885_ '())))
                             (__tmp130852
                              (let ((__tmp130853
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self122311_
                                        _L122858_))))
                                (declare (not safe))
                                (cons __tmp130853 '()))))
                         (declare (not safe))
                         (cons __tmp130854 __tmp130852))))
                  (declare (not safe))
                  (cons '%#define-values __tmp130851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp130850
                                                    _stx122312_)))
                                                (__tmp130842
                                                 (let ((__tmp130843
                                                        (let ((__tmp130844
                                                               (let ((__tmp130845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp130846
                                     (let ((__tmp130848
                                            (let ()
                                              (declare (not safe))
                                              (cons _L122750_ '())))
                                           (__tmp130847
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr122888_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp130848 __tmp130847))))
                                (declare (not safe))
                                (cons '%#define-values __tmp130846))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp130845 _stx122312_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self122311_
                   __tmp130844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130843 '()))))
                                            (declare (not safe))
                                            (cons __tmp130849 __tmp130842))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp130841))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130840
                               _stx122312_))))
                        _hd122790122852_
                        _hd122787122844_
                        _hd122784122836_)
                       (let ()
                         (declare (not safe))
                         (_g122766122796_ _g122767122799_)))))
               (let () (declare (not safe)) (_g122766122796_ _g122767122799_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122766122796_
                                                      _g122767122799_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122766122796_
                                                  _g122767122799_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122766122796_ _g122767122799_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122766122796_ _g122767122799_)))))
                           (let ()
                             (declare (not safe))
                             (_g122766122796_ _g122767122799_)))))
                   (let ()
                     (declare (not safe))
                     (_g122766122796_ _g122767122799_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122766122796_
                                                      _g122767122799_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122766122796_
                                              _g122767122799_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122766122796_ _g122767122799_))))))
                       (declare (not safe))
                       (_g122765122891_ _L122749_))))
                  (___kont130153130154_
                   (lambda (_L122463_ _L122464_)
                     (let* ((_g122480122533_
                             (lambda (_g122481122530_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122481122530_))))
                            (_g122479122709_
                             (lambda (_g122481122536_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122481122536_))
                                   (let ((_e122489122538_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122481122536_))))
                                     (let ((_hd122488122541_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122489122538_)))
                                           (_tl122487122543_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122489122538_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122487122543_))
                                           (let ((_e122492122546_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122487122543_))))
                                             (let ((_hd122491122549_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122492122546_)))
                                                   (_tl122490122551_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122492122546_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122491122549_))
                                                   (let ((_e122495122554_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122491122549_))))
                                                     (let ((_hd122494122557_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122495122554_)))
                                                           (_tl122493122559_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122495122554_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122494122557_))
                                                           (let ((_e122498122562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122494122557_))))
                     (let ((_hd122497122565_
                            (let ()
                              (declare (not safe))
                              (##car _e122498122562_)))
                           (_tl122496122567_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122498122562_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122497122565_))
                           (let ((_e122501122570_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122497122565_))))
                             (let ((_hd122500122573_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122501122570_)))
                                   (_tl122499122575_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122501122570_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122499122575_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122496122567_))
                                       (let ((_e122504122578_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122496122567_))))
                                         (let ((_hd122503122581_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122504122578_)))
                                               (_tl122502122583_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122504122578_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd122503122581_))
                                               (let ((_e122507122586_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd122503122581_))))
                                                 (let ((_hd122506122589_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122507122586_)))
                                                       (_tl122505122591_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122507122586_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122505122591_))
                                                       (let ((_e122510122594_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122505122591_))))
                 (let ((_hd122509122597_
                        (let () (declare (not safe)) (##car _e122510122594_)))
                       (_tl122508122599_
                        (let () (declare (not safe)) (##cdr _e122510122594_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd122509122597_))
                       (let ((_e122513122602_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd122509122597_))))
                         (let ((_hd122512122605_
                                (let ()
                                  (declare (not safe))
                                  (##car _e122513122602_)))
                               (_tl122511122607_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e122513122602_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122512122605_))
                               (let ((_e122516122610_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122512122605_))))
                                 (let ((_hd122515122613_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122516122610_)))
                                       (_tl122514122615_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122516122610_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd122515122613_))
                                       (let ((_e122519122618_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd122515122613_))))
                                         (let ((_hd122518122621_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122519122618_)))
                                               (_tl122517122623_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122519122618_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122517122623_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl122514122615_))
                                                   (let ((_e122522122626_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl122514122615_))))
                                                     (let ((_hd122521122629_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122522122626_)))
                                                           (_tl122520122631_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122522122626_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122520122631_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl122511122607_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl122508122599_))
                           (let ((_e122525122634_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl122508122599_))))
                             (let ((_hd122524122637_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122525122634_)))
                                   (_tl122523122639_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122525122634_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122523122639_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl122502122583_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl122493122559_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl122490122551_))
                                               (let ((_e122528122642_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl122490122551_))))
                                                 (let ((_hd122527122645_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122528122642_)))
                                                       (_tl122526122647_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122528122642_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl122526122647_))
                                                       ((lambda (_L122650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L122651_
                         _L122652_
                         _L122653_
                         _L122654_)
                  (let* ((_get-kws-id122694_
                          (let ((__tmp130857
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122464_)))
                                (__tmp130855
                                 (let ((__tmp130856
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122654_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122316_
                                    __tmp130856
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130857 '"__" __tmp130855)))
                         (_get-kws-id122696_
                          (let ((__tmp130858
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122312_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id122694_
                             __tmp130858)))
                         (_main-id122698_
                          (let ((__tmp130861
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122464_)))
                                (__tmp130859
                                 (let ((__tmp130860
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122653_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122316_
                                    __tmp130860
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130861 '"__" __tmp130859)))
                         (_main-id122700_
                          (let ((__tmp130862
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122312_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id122698_
                             __tmp130862)))
                         (_g130863_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id122696_)))
                         (_g130864_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id122700_)))
                         (_new-kw-dispatch122704_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122650_
                             'id:
                             _L122654_
                             'new-id:
                             _get-kws-id122696_)))
                         (_new-get-kws122706_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122651_
                             'id:
                             _L122653_
                             'new-id:
                             _main-id122700_))))
                    (let ((__tmp130867
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L122464_)))
                          (__tmp130866
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id122696_)))
                          (__tmp130865
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id122700_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp130867
                       '" => "
                       __tmp130866
                       '" => "
                       __tmp130865))
                    (let ((__tmp130868
                           (let ((__tmp130869
                                  (let ((__tmp130882
                                         (let ((__tmp130883
                                                (let ((__tmp130884
                                                       (let ((__tmp130885
                                                              (let ((__tmp130887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id122700_ '())))
                            (__tmp130886
                             (let ()
                               (declare (not safe))
                               (cons _L122652_ '()))))
                        (declare (not safe))
                        (cons __tmp130887 __tmp130886))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130884
                                                   _stx122312_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self122311_
                                            __tmp130883)))
                                        (__tmp130870
                                         (let ((__tmp130877
                                                (let ((__tmp130878
                                                       (let ((__tmp130879
                                                              (let ((__tmp130881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id122696_ '())))
                            (__tmp130880
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws122706_ '()))))
                        (declare (not safe))
                        (cons __tmp130881 __tmp130880))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130878
                                                   _stx122312_)))
                                               (__tmp130871
                                                (let ((__tmp130872
                                                       (let ((__tmp130873
                                                              (let ((__tmp130874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp130876
                                    (let ()
                                      (declare (not safe))
                                      (cons _L122464_ '())))
                                   (__tmp130875
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch122704_ '()))))
                               (declare (not safe))
                               (cons __tmp130876 __tmp130875))))
                        (declare (not safe))
                        (cons '%#define-values __tmp130874))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp130873 _stx122312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp130872 '()))))
                                           (declare (not safe))
                                           (cons __tmp130877 __tmp130871))))
                                    (declare (not safe))
                                    (cons __tmp130882 __tmp130870))))
                             (declare (not safe))
                             (cons '%#begin __tmp130869))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130868 _stx122312_))))
                _hd122527122645_
                _hd122524122637_
                _hd122521122629_
                _hd122518122621_
                _hd122500122573_)
               (let ()
                 (declare (not safe))
                 (_g122480122533_ _g122481122536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122480122533_
                                                  _g122481122536_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g122480122533_
                                              _g122481122536_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g122480122533_ _g122481122536_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122480122533_ _g122481122536_)))))
                           (let ()
                             (declare (not safe))
                             (_g122480122533_ _g122481122536_)))
                       (let ()
                         (declare (not safe))
                         (_g122480122533_ _g122481122536_)))
                   (let ()
                     (declare (not safe))
                     (_g122480122533_ _g122481122536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122480122533_
                                                      _g122481122536_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122480122533_
                                                  _g122481122536_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122480122533_ _g122481122536_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g122480122533_ _g122481122536_)))))
                       (let ()
                         (declare (not safe))
                         (_g122480122533_ _g122481122536_)))))
               (let ()
                 (declare (not safe))
                 (_g122480122533_ _g122481122536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122480122533_
                                                  _g122481122536_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122480122533_ _g122481122536_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122480122533_ _g122481122536_)))))
                           (let ()
                             (declare (not safe))
                             (_g122480122533_ _g122481122536_)))))
                   (let ()
                     (declare (not safe))
                     (_g122480122533_ _g122481122536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122480122533_
                                                      _g122481122536_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122480122533_
                                              _g122481122536_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122480122533_ _g122481122536_))))))
                       (declare (not safe))
                       (_g122479122709_ _L122463_))))
                  (___kont130155130156_
                   (lambda (_L122409_ _L122410_)
                     (let ((__tmp130888
                            (let ((__tmp130889
                                   (let ((__tmp130890
                                          (let ((__tmp130891
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self122311_
                                                    _L122409_))))
                                            (declare (not safe))
                                            (cons __tmp130891 '()))))
                                     (declare (not safe))
                                     (cons _L122410_ __tmp130890))))
                              (declare (not safe))
                              (cons '%#define-values __tmp130889))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp130888 _stx122312_)))))
              (let* ((___match130240130241_
                      (lambda (_e122355122431_
                               _hd122354122434_
                               _tl122353122436_
                               _e122358122439_
                               _hd122357122442_
                               _tl122356122444_
                               _e122361122447_
                               _hd122360122450_
                               _tl122359122452_
                               _e122364122455_
                               _hd122363122458_
                               _tl122362122460_)
                        (let ((_L122463_ _hd122363122458_)
                              (_L122464_ _hd122360122450_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122464_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L122463_)))
                              (___kont130153130154_ _L122463_ _L122464_)
                              (___kont130155130156_
                               _hd122363122458_
                               _hd122357122442_)))))
                     (___match130212130213_
                      (lambda (_e122341122717_
                               _hd122340122720_
                               _tl122339122722_
                               _e122344122725_
                               _hd122343122728_
                               _tl122342122730_
                               _e122347122733_
                               _hd122346122736_
                               _tl122345122738_
                               _e122350122741_
                               _hd122349122744_
                               _tl122348122746_)
                        (let ((_L122749_ _hd122349122744_)
                              (_L122750_ _hd122346122736_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122750_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L122749_)))
                              (___kont130151130152_ _L122749_ _L122750_)
                              (___match130240130241_
                               _e122341122717_
                               _hd122340122720_
                               _tl122339122722_
                               _e122344122725_
                               _hd122343122728_
                               _tl122342122730_
                               _e122347122733_
                               _hd122346122736_
                               _tl122345122738_
                               _e122350122741_
                               _hd122349122744_
                               _tl122348122746_)))))
                     (___match130184130185_
                      (lambda (_e122327122899_
                               _hd122326122902_
                               _tl122325122904_
                               _e122330122907_
                               _hd122329122910_
                               _tl122328122912_
                               _e122333122915_
                               _hd122332122918_
                               _tl122331122920_
                               _e122336122923_
                               _hd122335122926_
                               _tl122334122928_)
                        (let ((_L122931_ _hd122335122926_)
                              (_L122932_ _hd122332122918_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122932_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L122931_)))
                              (___kont130149130150_ _L122931_ _L122932_)
                              (___match130212130213_
                               _e122327122899_
                               _hd122326122902_
                               _tl122325122904_
                               _e122330122907_
                               _hd122329122910_
                               _tl122328122912_
                               _e122333122915_
                               _hd122332122918_
                               _tl122331122920_
                               _e122336122923_
                               _hd122335122926_
                               _tl122334122928_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130147130148_))
                    (let ((_e122327122899_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130147130148_))))
                      (let ((_tl122325122904_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122327122899_)))
                            (_hd122326122902_
                             (let ()
                               (declare (not safe))
                               (##car _e122327122899_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122325122904_))
                            (let ((_e122330122907_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122325122904_))))
                              (let ((_tl122328122912_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122330122907_)))
                                    (_hd122329122910_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122330122907_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122329122910_))
                                    (let ((_e122333122915_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122329122910_))))
                                      (let ((_tl122331122920_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122333122915_)))
                                            (_hd122332122918_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122333122915_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122331122920_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122328122912_))
                                                (let ((_e122336122923_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122328122912_))))
                                                  (let ((_tl122334122928_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122336122923_)))
                                                        (_hd122335122926_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122336122923_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122334122928_))
                                                        (___match130184130185_
                                                         _e122327122899_
                                                         _hd122326122902_
                                                         _tl122325122904_
                                                         _e122330122907_
                                                         _hd122329122910_
                                                         _tl122328122912_
                                                         _e122333122915_
                                                         _hd122332122918_
                                                         _tl122331122920_
                                                         _e122336122923_
                                                         _hd122335122926_
                                                         _tl122334122928_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122321122380_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122321122380_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122328122912_))
                                                (let ((_e122375122401_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122328122912_))))
                                                  (let ((_tl122373122406_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122375122401_)))
                                                        (_hd122374122404_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122375122401_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122373122406_))
                                                        (___kont130155130156_
                                                         _hd122374122404_
                                                         _hd122329122910_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122321122380_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122321122380_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122328122912_))
                                        (let ((_e122375122401_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122328122912_))))
                                          (let ((_tl122373122406_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122375122401_)))
                                                (_hd122374122404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122375122401_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122373122406_))
                                                (___kont130155130156_
                                                 _hd122374122404_
                                                 _hd122329122910_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122321122380_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g122321122380_))))))
                            (let () (declare (not safe)) (_g122321122380_)))))
                    (let () (declare (not safe)) (_g122321122380_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self121242_ _stx121243_)
        (letrec* ((_bind-e__128543128544_
                   (lambda (_id122295_ _expr122296_ _compile?122297_)
                     (let ((__tmp130894
                            (let ()
                              (declare (not safe))
                              (cons _id122295_ '())))
                           (__tmp130892
                            (let ((__tmp130893
                                   (if _compile?122297_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self121242_
                                          _expr122296_))
                                       _expr122296_)))
                              (declare (not safe))
                              (cons __tmp130893 '()))))
                       (declare (not safe))
                       (cons __tmp130894 __tmp130892))))
                  (_bind-e__0__128545128546_
                   (lambda (_id122302_ _expr122303_)
                     (let ((_compile?122305_ '#t))
                       (declare (not safe))
                       (_bind-e__128543128544_
                        _id122302_
                        _expr122303_
                        _compile?122305_))))
                  (_bind-e121245_
                   (lambda _g130896_
                     (let ((_g130895_
                            (let ()
                              (declare (not safe))
                              (##length _g130896_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130895_ 2))
                              (apply (lambda (_id122302_ _expr122303_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128545128546_
                                          _id122302_
                                          _expr122303_)))
                                     _g130896_))
                             ((let () (declare (not safe)) (##fx= _g130895_ 3))
                              (apply (lambda (_id122307_
                                              _expr122308_
                                              _compile?122309_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128543128544_
                                          _id122307_
                                          _expr122308_
                                          _compile?122309_)))
                                     _g130896_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130896_))))))
                  (_compile-bindings121246_
                   (lambda (_bindings121879_)
                     (let _lp121881_ ((_rest121883_ _bindings121879_)
                                      (_lift1121884_ '())
                                      (_lift2121885_ '())
                                      (_bind121886_ '()))
                       (let* ((_rest121887121895_ _rest121883_)
                              (_else121889121903_
                               (lambda ()
                                 (values (reverse _lift1121884_)
                                         (reverse _lift2121885_)
                                         (reverse _bind121886_))))
                              (_K121891122282_
                               (lambda (_rest121906_ _hd121907_)
                                 (let* ((___stx130283130284_ _hd121907_)
                                        (_g121911121947_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130283130284_)))))
                                   (let ((___kont130285130286_
                                          (lambda (_L122189_ _L122190_)
                                            (let* ((___stx130263130264_
                                                    _L122189_)
                                                   (_g122205122219_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130263130264_)))))
                                              (let ((___kont130265130266_
                                                     (lambda (_L122267_)
                                                       (let ((__tmp130897
                                                              (let ((__tmp130898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128543128544_
                                _L122190_
                                _L122189_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130898 _bind121886_))))
                 (declare (not safe))
                 (_lp121881_
                  _rest121906_
                  _lift1121884_
                  _lift2121885_
                  __tmp130897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130267130268_
                                                     (lambda (_L122232_)
                                                       (let ((_g130899_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx121243_
                         _L122190_
                         _L122232_
                         '#t))))
                 (begin
                   (let ((_g130900_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130899_)
                                (##vector-length _g130899_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130900_ 3)))
                         (error "Context expects 3 values" _g130900_)))
                   (let ((_ids122242_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130899_ 0)))
                         (_impls122243_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130899_ 1)))
                         (_clauses122244_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130899_ 2))))
                     (let* ((_g130901_
                             (for-each gx#core-bind-runtime! _ids122242_))
                            (_xbind122247_
                             (map _bind-e121245_ _ids122242_ _impls122243_))
                            (_expr*122249_
                             (let ((__tmp130903
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses122244_)))
                                   (__tmp130902
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130903
                                __tmp130902)))
                            (_bind*122251_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128543128544_
                                _L122190_
                                _expr*122249_
                                '#f))))
                       (let ((__tmp130905
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L122190_)))
                             (__tmp130904
                              (map gxc#identifier-symbol _ids122242_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130905
                          '" => "
                          __tmp130904))
                       (let ((__tmp130907
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2121885_ _xbind122247_)))
                             (__tmp130906
                              (let ()
                                (declare (not safe))
                                (cons _bind*122251_ _bind121886_))))
                         (declare (not safe))
                         (_lp121881_
                          _rest121906_
                          _lift1121884_
                          __tmp130907
                          __tmp130906)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130274130275_
                                                       (lambda (_e122210122259_
                                                                _hd122209122262_
                                                                _tl122208122264_)
                                                         (let ((_L122267_
                                                                _tl122208122264_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L122267_))
                       (___kont130265130266_ _L122267_)
                       (___kont130267130268_ _tl122208122264_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130263130264_))
                                                      (let ((_e122210122259_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130263130264_))))
                (let ((_tl122208122264_
                       (let () (declare (not safe)) (##cdr _e122210122259_)))
                      (_hd122209122262_
                       (let () (declare (not safe)) (##car _e122210122259_))))
                  (___match130274130275_
                   _e122210122259_
                   _hd122209122262_
                   _tl122208122264_)))
              (let () (declare (not safe)) (_g122205122219_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130287130288_
                                          (lambda (_L122017_ _L122018_)
                                            (let* ((_g122032122062_
                                                    (lambda (_g122033122059_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g122033122059_))))
                                                   (_g122031122157_
                                                    (lambda (_g122033122065_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g122033122065_))
                                                          (let ((_e122039122067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g122033122065_))))
                    (let ((_hd122038122070_
                           (let ()
                             (declare (not safe))
                             (##car _e122039122067_)))
                          (_tl122037122072_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122039122067_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122037122072_))
                          (let ((_e122042122075_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122037122072_))))
                            (let ((_hd122041122078_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122042122075_)))
                                  (_tl122040122080_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122042122075_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122041122078_))
                                  (let ((_e122045122083_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122041122078_))))
                                    (let ((_hd122044122086_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122045122083_)))
                                          (_tl122043122088_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122045122083_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd122044122086_))
                                          (let ((_e122048122091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd122044122086_))))
                                            (let ((_hd122047122094_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122048122091_)))
                                                  (_tl122046122096_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122048122091_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd122047122094_))
                                                  (let ((_e122051122099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd122047122094_))))
                                                    (let ((_hd122050122102_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122051122099_)))
                                                          (_tl122049122104_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122051122099_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122049122104_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl122046122096_))
                      (let ((_e122054122107_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl122046122096_))))
                        (let ((_hd122053122110_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122054122107_)))
                              (_tl122052122112_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122054122107_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122052122112_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122043122088_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122040122080_))
                                      (let ((_e122057122115_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122040122080_))))
                                        (let ((_hd122056122118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122057122115_)))
                                              (_tl122055122120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122057122115_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122055122120_))
                                              ((lambda (_L122123_
                                                        _L122124_
                                                        _L122125_)
                                                 (let* ((_lambda-id122149_
                                                         (let ((__tmp130909
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L122018_)))
                       (__tmp130908 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130909 __tmp130908)))
                (_lambda-id122151_
                 (let ((__tmp130910
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx121243_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id122149_ __tmp130910)))
                (_g130911_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id122151_)))
                (_new-case-lambda-expr122154_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L122123_
                    'id:
                    _L122125_
                    'new-id:
                    _lambda-id122151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130913
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L122018_)))
                                                         (__tmp130912
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id122151_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130913
                                                      '" => "
                                                      __tmp130912))
                                                   (let ((__tmp130916
                                                          (let ((__tmp130917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128543128544_
                            _L122018_
                            _new-case-lambda-expr122154_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130917 _rest121906_)))
                 (__tmp130914
                  (let ((__tmp130915
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128545128546_
                            _lambda-id122151_
                            _L122124_))))
                    (declare (not safe))
                    (cons __tmp130915 _lift1121884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp121881_
                                                      __tmp130916
                                                      __tmp130914
                                                      _lift2121885_
                                                      _bind121886_))))
                                               _hd122056122118_
                                               _hd122053122110_
                                               _hd122050122102_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122032122062_
                                                 _g122033122065_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122032122062_ _g122033122065_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122032122062_ _g122033122065_)))
                              (let ()
                                (declare (not safe))
                                (_g122032122062_ _g122033122065_)))))
                      (let ()
                        (declare (not safe))
                        (_g122032122062_ _g122033122065_)))
                  (let ()
                    (declare (not safe))
                    (_g122032122062_ _g122033122065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122032122062_
                                                     _g122033122065_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122032122062_
                                             _g122033122065_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122032122062_ _g122033122065_)))))
                          (let ()
                            (declare (not safe))
                            (_g122032122062_ _g122033122065_)))))
                  (let ()
                    (declare (not safe))
                    (_g122032122062_ _g122033122065_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g122031122157_ _L122017_))))
                                         (___kont130289130290_
                                          (lambda (_L121968_ _L121969_)
                                            (let ((__tmp130918
                                                   (let ((__tmp130919
                                                          (let ((__tmp130920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130921
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self121242_ _L121968_))))
                           (declare (not safe))
                           (cons __tmp130921 '()))))
                    (declare (not safe))
                    (cons _L121969_ __tmp130920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130919
                                                           _bind121886_))))
                                              (declare (not safe))
                                              (_lp121881_
                                               _rest121906_
                                               _lift1121884_
                                               _lift2121885_
                                               __tmp130918)))))
                                     (let* ((___match130334130335_
                                             (lambda (_e121928121993_
                                                      _hd121927121996_
                                                      _tl121926121998_
                                                      _e121931122001_
                                                      _hd121930122004_
                                                      _tl121929122006_
                                                      _e121934122009_
                                                      _hd121933122012_
                                                      _tl121932122014_)
                                               (let ((_L122017_
                                                      _hd121933122012_)
                                                     (_L122018_
                                                      _hd121930122004_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L122018_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L122017_)))
                                                     (___kont130287130288_
                                                      _L122017_
                                                      _L122018_)
                                                     (___kont130289130290_
                                                      _hd121933122012_
                                                      _hd121927121996_)))))
                                            (___match130312130313_
                                             (lambda (_e121917122165_
                                                      _hd121916122168_
                                                      _tl121915122170_
                                                      _e121920122173_
                                                      _hd121919122176_
                                                      _tl121918122178_
                                                      _e121923122181_
                                                      _hd121922122184_
                                                      _tl121921122186_)
                                               (let ((_L122189_
                                                      _hd121922122184_)
                                                     (_L122190_
                                                      _hd121919122176_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L122190_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L122189_)))
                                                     (___kont130285130286_
                                                      _L122189_
                                                      _L122190_)
                                                     (___match130334130335_
                                                      _e121917122165_
                                                      _hd121916122168_
                                                      _tl121915122170_
                                                      _e121920122173_
                                                      _hd121919122176_
                                                      _tl121918122178_
                                                      _e121923122181_
                                                      _hd121922122184_
                                                      _tl121921122186_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130283130284_))
                                           (let ((_e121917122165_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130283130284_))))
                                             (let ((_tl121915122170_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121917122165_)))
                                                   (_hd121916122168_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121917122165_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121916122168_))
                                                   (let ((_e121920122173_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121916122168_))))
                                                     (let ((_tl121918122178_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121920122173_)))
                                                           (_hd121919122176_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121920122173_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121918122178_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121915122170_))
                       (let ((_e121923122181_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121915122170_))))
                         (let ((_tl121921122186_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121923122181_)))
                               (_hd121922122184_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121923122181_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121921122186_))
                               (___match130312130313_
                                _e121917122165_
                                _hd121916122168_
                                _tl121915122170_
                                _e121920122173_
                                _hd121919122176_
                                _tl121918122178_
                                _e121923122181_
                                _hd121922122184_
                                _tl121921122186_)
                               (let ()
                                 (declare (not safe))
                                 (_g121911121947_)))))
                       (let () (declare (not safe)) (_g121911121947_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121915122170_))
                       (let ((_e121942121960_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121915122170_))))
                         (let ((_tl121940121965_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121942121960_)))
                               (_hd121941121963_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121942121960_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121940121965_))
                               (___kont130289130290_
                                _hd121941121963_
                                _hd121916122168_)
                               (let ()
                                 (declare (not safe))
                                 (_g121911121947_)))))
                       (let () (declare (not safe)) (_g121911121947_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121915122170_))
                                                       (let ((_e121942121960_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121915122170_))))
                 (let ((_tl121940121965_
                        (let () (declare (not safe)) (##cdr _e121942121960_)))
                       (_hd121941121963_
                        (let () (declare (not safe)) (##car _e121942121960_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121940121965_))
                       (___kont130289130290_ _hd121941121963_ _hd121916122168_)
                       (let () (declare (not safe)) (_g121911121947_)))))
               (let () (declare (not safe)) (_g121911121947_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121911121947_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121887121895_))
                             (let ((_hd121892122285_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121887121895_)))
                                   (_tl121893122287_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121887121895_))))
                               (let* ((_hd122290_ _hd121892122285_)
                                      (_rest122292_ _tl121893122287_))
                                 (declare (not safe))
                                 (_K121891122282_ _rest122292_ _hd122290_)))
                             (let ()
                               (declare (not safe))
                               (_else121889121903_)))))))
                  (_lift-kw-lambda?121247_
                   (lambda (_bind121803_)
                     (let* ((___stx130351130352_ _bind121803_)
                            (_g121806121823_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130351130352_)))))
                       (let ((___kont130353130354_
                              (lambda (_L121859_ _L121860_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L121860_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L121859_))
                                    '#f)))
                             (___kont130355130356_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx130351130352_))
                             (let ((_e121812121835_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx130351130352_))))
                               (let ((_tl121810121840_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e121812121835_)))
                                     (_hd121811121838_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e121812121835_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd121811121838_))
                                     (let ((_e121815121843_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd121811121838_))))
                                       (let ((_tl121813121848_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e121815121843_)))
                                             (_hd121814121846_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e121815121843_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl121813121848_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl121810121840_))
                                                 (let ((_e121818121851_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl121810121840_))))
                                                   (let ((_tl121816121856_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e121818121851_)))
                                                         (_hd121817121854_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e121818121851_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl121816121856_))
                                                         (___kont130353130354_
                                                          _hd121817121854_
                                                          _hd121814121846_)
                                                         (___kont130355130356_))))
                                                 (___kont130355130356_))
                                             (___kont130355130356_))))
                                     (___kont130355130356_))))
                             (___kont130355130356_))))))
                  (_lift-kw-lambda-bindings121248_
                   (lambda (_bindings121415_)
                     (let _lp121417_ ((_rest121419_ _bindings121415_)
                                      (_lift1121420_ '())
                                      (_lift2121421_ '())
                                      (_bind121422_ '()))
                       (let* ((_rest121423121431_ _rest121419_)
                              (_else121425121439_
                               (lambda ()
                                 (values (reverse _lift1121420_)
                                         (reverse _lift2121421_)
                                         (reverse _bind121422_))))
                              (_K121427121791_
                               (lambda (_rest121442_ _hd121443_)
                                 (let* ((___stx130381130382_ _hd121443_)
                                        (_g121446121471_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130381130382_)))))
                                   (let ((___kont130383130384_
                                          (lambda (_L121541_ _L121542_)
                                            (let* ((_g121556121609_
                                                    (lambda (_g121557121606_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121557121606_))))
                                                   (_g121555121785_
                                                    (lambda (_g121557121612_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121557121612_))
                                                          (let ((_e121565121614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121557121612_))))
                    (let ((_hd121564121617_
                           (let ()
                             (declare (not safe))
                             (##car _e121565121614_)))
                          (_tl121563121619_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121565121614_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121563121619_))
                          (let ((_e121568121622_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121563121619_))))
                            (let ((_hd121567121625_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121568121622_)))
                                  (_tl121566121627_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121568121622_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121567121625_))
                                  (let ((_e121571121630_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121567121625_))))
                                    (let ((_hd121570121633_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121571121630_)))
                                          (_tl121569121635_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121571121630_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121570121633_))
                                          (let ((_e121574121638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121570121633_))))
                                            (let ((_hd121573121641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121574121638_)))
                                                  (_tl121572121643_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121574121638_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121573121641_))
                                                  (let ((_e121577121646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121573121641_))))
                                                    (let ((_hd121576121649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121577121646_)))
                                                          (_tl121575121651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121577121646_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121575121651_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121572121643_))
                      (let ((_e121580121654_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121572121643_))))
                        (let ((_hd121579121657_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121580121654_)))
                              (_tl121578121659_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121580121654_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd121579121657_))
                              (let ((_e121583121662_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd121579121657_))))
                                (let ((_hd121582121665_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121583121662_)))
                                      (_tl121581121667_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121583121662_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121581121667_))
                                      (let ((_e121586121670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121581121667_))))
                                        (let ((_hd121585121673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121586121670_)))
                                              (_tl121584121675_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121586121670_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd121585121673_))
                                              (let ((_e121589121678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd121585121673_))))
                                                (let ((_hd121588121681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121589121678_)))
                                                      (_tl121587121683_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121589121678_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd121588121681_))
                                                      (let ((_e121592121686_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd121588121681_))))
                (let ((_hd121591121689_
                       (let () (declare (not safe)) (##car _e121592121686_)))
                      (_tl121590121691_
                       (let () (declare (not safe)) (##cdr _e121592121686_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121591121689_))
                      (let ((_e121595121694_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121591121689_))))
                        (let ((_hd121594121697_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121595121694_)))
                              (_tl121593121699_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121595121694_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121593121699_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121590121691_))
                                  (let ((_e121598121702_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121590121691_))))
                                    (let ((_hd121597121705_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121598121702_)))
                                          (_tl121596121707_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121598121702_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121596121707_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121587121683_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121584121675_))
                                                  (let ((_e121601121710_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121584121675_))))
                                                    (let ((_hd121600121713_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121601121710_)))
                                                          (_tl121599121715_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121601121710_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121599121715_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl121578121659_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl121569121635_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121566121627_))
                              (let ((_e121604121718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121566121627_))))
                                (let ((_hd121603121721_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121604121718_)))
                                      (_tl121602121723_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121604121718_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121602121723_))
                                      ((lambda (_L121726_
                                                _L121727_
                                                _L121728_
                                                _L121729_
                                                _L121730_)
                                         (let* ((_get-kws-id121770_
                                                 (let ((__tmp130923
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121542_)))
                                                       (__tmp130922
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130923
                                                    __tmp130922)))
                                                (_get-kws-id121772_
                                                 (let ((__tmp130924
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121243_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id121770_
                                                    __tmp130924)))
                                                (_main-id121774_
                                                 (let ((__tmp130926
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121542_)))
                                                       (__tmp130925
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130926
                                                    __tmp130925)))
                                                (_main-id121776_
                                                 (let ((__tmp130927
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121243_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id121774_
                                                    __tmp130927)))
                                                (_g130928_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id121772_)))
                                                (_g130929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id121776_)))
                                                (_new-kw-dispatch121780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121726_
                                                    'id:
                                                    _L121730_
                                                    'new-id:
                                                    _get-kws-id121772_)))
                                                (_new-get-kws121782_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121727_
                                                    'id:
                                                    _L121729_
                                                    'new-id:
                                                    _main-id121776_))))
                                           (let ((__tmp130932
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L121542_)))
                                                 (__tmp130931
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id121772_)))
                                                 (__tmp130930
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id121776_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130932
                                              '" => "
                                              __tmp130931
                                              '" => "
                                              __tmp130930))
                                           (let ((__tmp130937
                                                  (let ((__tmp130938
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128543128544_
                                                            _main-id121776_
                                                            _L121728_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130938
                                                          _lift1121420_)))
                                                 (__tmp130935
                                                  (let ((__tmp130936
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128543128544_
                                                            _get-kws-id121772_
                                                            _new-get-kws121782_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130936
                                                          _lift2121421_)))
                                                 (__tmp130933
                                                  (let ((__tmp130934
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128543128544_
                                                            _L121542_
                                                            _new-kw-dispatch121780_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130934
                                                          _bind121422_))))
                                             (declare (not safe))
                                             (_lp121417_
                                              _rest121442_
                                              __tmp130937
                                              __tmp130935
                                              __tmp130933))))
                                       _hd121603121721_
                                       _hd121600121713_
                                       _hd121597121705_
                                       _hd121594121697_
                                       _hd121576121649_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121556121609_ _g121557121612_)))))
                              (let ()
                                (declare (not safe))
                                (_g121556121609_ _g121557121612_)))
                          (let ()
                            (declare (not safe))
                            (_g121556121609_ _g121557121612_)))
                      (let ()
                        (declare (not safe))
                        (_g121556121609_ _g121557121612_)))
                  (let ()
                    (declare (not safe))
                    (_g121556121609_ _g121557121612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121556121609_
                                                     _g121557121612_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121556121609_
                                                 _g121557121612_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121556121609_
                                             _g121557121612_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121556121609_ _g121557121612_)))
                              (let ()
                                (declare (not safe))
                                (_g121556121609_ _g121557121612_)))))
                      (let ()
                        (declare (not safe))
                        (_g121556121609_ _g121557121612_)))))
              (let ()
                (declare (not safe))
                (_g121556121609_ _g121557121612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121556121609_
                                                 _g121557121612_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121556121609_ _g121557121612_)))))
                              (let ()
                                (declare (not safe))
                                (_g121556121609_ _g121557121612_)))))
                      (let ()
                        (declare (not safe))
                        (_g121556121609_ _g121557121612_)))
                  (let ()
                    (declare (not safe))
                    (_g121556121609_ _g121557121612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121556121609_
                                                     _g121557121612_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121556121609_
                                             _g121557121612_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121556121609_ _g121557121612_)))))
                          (let ()
                            (declare (not safe))
                            (_g121556121609_ _g121557121612_)))))
                  (let ()
                    (declare (not safe))
                    (_g121556121609_ _g121557121612_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121555121785_ _L121541_))))
                                         (___kont130385130386_
                                          (lambda (_L121492_ _L121493_)
                                            (let ((__tmp130939
                                                   (let ((__tmp130940
                                                          (let ((__tmp130941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L121492_ '()))))
                    (declare (not safe))
                    (cons _L121493_ __tmp130941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130940
                                                           _bind121422_))))
                                              (declare (not safe))
                                              (_lp121417_
                                               _rest121442_
                                               _lift1121420_
                                               _lift2121421_
                                               __tmp130939)))))
                                     (let ((___match130408130409_
                                            (lambda (_e121452121517_
                                                     _hd121451121520_
                                                     _tl121450121522_
                                                     _e121455121525_
                                                     _hd121454121528_
                                                     _tl121453121530_
                                                     _e121458121533_
                                                     _hd121457121536_
                                                     _tl121456121538_)
                                              (let ((_L121541_
                                                     _hd121457121536_)
                                                    (_L121542_
                                                     _hd121454121528_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L121542_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L121541_)))
                                                    (___kont130383130384_
                                                     _L121541_
                                                     _L121542_)
                                                    (___kont130385130386_
                                                     _hd121457121536_
                                                     _hd121451121520_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130381130382_))
                                           (let ((_e121452121517_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130381130382_))))
                                             (let ((_tl121450121522_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121452121517_)))
                                                   (_hd121451121520_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121452121517_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121451121520_))
                                                   (let ((_e121455121525_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121451121520_))))
                                                     (let ((_tl121453121530_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121455121525_)))
                                                           (_hd121454121528_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121455121525_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121453121530_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121450121522_))
                       (let ((_e121458121533_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121450121522_))))
                         (let ((_tl121456121538_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121458121533_)))
                               (_hd121457121536_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121458121533_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121456121538_))
                               (___match130408130409_
                                _e121452121517_
                                _hd121451121520_
                                _tl121450121522_
                                _e121455121525_
                                _hd121454121528_
                                _tl121453121530_
                                _e121458121533_
                                _hd121457121536_
                                _tl121456121538_)
                               (let ()
                                 (declare (not safe))
                                 (_g121446121471_)))))
                       (let () (declare (not safe)) (_g121446121471_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121450121522_))
                       (let ((_e121466121484_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121450121522_))))
                         (let ((_tl121464121489_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121466121484_)))
                               (_hd121465121487_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121466121484_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121464121489_))
                               (___kont130385130386_
                                _hd121465121487_
                                _hd121451121520_)
                               (let ()
                                 (declare (not safe))
                                 (_g121446121471_)))))
                       (let () (declare (not safe)) (_g121446121471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121450121522_))
                                                       (let ((_e121466121484_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121450121522_))))
                 (let ((_tl121464121489_
                        (let () (declare (not safe)) (##cdr _e121466121484_)))
                       (_hd121465121487_
                        (let () (declare (not safe)) (##car _e121466121484_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121464121489_))
                       (___kont130385130386_ _hd121465121487_ _hd121451121520_)
                       (let () (declare (not safe)) (_g121446121471_)))))
               (let () (declare (not safe)) (_g121446121471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121446121471_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121423121431_))
                             (let ((_hd121428121794_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121423121431_)))
                                   (_tl121429121796_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121423121431_))))
                               (let* ((_hd121799_ _hd121428121794_)
                                      (_rest121801_ _tl121429121796_))
                                 (declare (not safe))
                                 (_K121427121791_ _rest121801_ _hd121799_)))
                             (let ()
                               (declare (not safe))
                               (_else121425121439_))))))))
          (let* ((___stx130425130426_ _stx121243_)
                 (_g121251121277_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130425130426_)))))
            (let ((___kont130427130428_
                   (lambda (_L121337_ _L121338_)
                     (let ((__tmp130943
                            (lambda ()
                              (if (let ((__tmp130970
                                         (let ((__tmp130971
                                                (lambda (_g121366121369_
                                                         _g121367121371_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g121366121369_
                                                          _g121367121371_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp130971
                                                   '()
                                                   _L121338_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?121247_
                                            __tmp130970))
                                  (let ((_g130957_
                                         (let ((__tmp130959
                                                (let ((__tmp130960
                                                       (lambda (_g121373121376_
                                                                _g121374121378_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121373121376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121374121378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130960
                                                          '()
                                                          _L121338_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings121248_
                                            __tmp130959))))
                                    (begin
                                      (let ((_g130958_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130957_)
                                                   (##vector-length _g130957_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130958_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130958_)))
                                      (let ((_lift1121381_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130957_ 0)))
                                            (_lift2121382_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130957_ 1)))
                                            (_hd121383_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130957_ 2))))
                                        (let* ((_expr121385_
                                                (let ((__tmp130961
                                                       (let ((__tmp130962
                                                              (let ((__tmp130963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L121337_ '()))))
                        (declare (not safe))
                        (cons _hd121383_ __tmp130963))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130961
                                                   _stx121243_)))
                                               (_expr121387_
                                                (let ((__tmp130964
                                                       (let ((__tmp130965
                                                              (let ((__tmp130966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121385_ '()))))
                        (declare (not safe))
                        (cons _lift2121382_ __tmp130966))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130964
                                                   _stx121243_)))
                                               (_expr121389_
                                                (let ((__tmp130967
                                                       (let ((__tmp130968
                                                              (let ((__tmp130969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121387_ '()))))
                        (declare (not safe))
                        (cons _lift1121381_ __tmp130969))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130967
                                                   _stx121243_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self121242_
                                             _expr121389_))))))
                                  (let ((_g130944_
                                         (let ((__tmp130946
                                                (let ((__tmp130947
                                                       (lambda (_g121391121394_
                                                                _g121392121396_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121391121394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121392121396_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130947
                                                          '()
                                                          _L121338_))))
                                           (declare (not safe))
                                           (_compile-bindings121246_
                                            __tmp130946))))
                                    (begin
                                      (let ((_g130945_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130944_)
                                                   (##vector-length _g130944_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130945_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130945_)))
                                      (let ((_lift1121399_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130944_ 0)))
                                            (_lift2121400_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130944_ 1)))
                                            (_hd121401_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130944_ 2))))
                                        (let* ((_body121403_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self121242_
                                                   _L121337_)))
                                               (_expr121405_
                                                (let ((__tmp130948
                                                       (let ((__tmp130949
                                                              (let ((__tmp130950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body121403_ '()))))
                        (declare (not safe))
                        (cons _hd121401_ __tmp130950))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130948
                                                   _stx121243_)))
                                               (_expr121407_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2121400_))
                                                    _expr121405_
                                                    (let ((__tmp130951
                                                           (let ((__tmp130952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130953
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121405_ '()))))
                            (declare (not safe))
                            (cons _lift2121400_ __tmp130953))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130952))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130951 _stx121243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr121409_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1121399_))
                                                    _expr121407_
                                                    (let ((__tmp130954
                                                           (let ((__tmp130955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130956
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121407_ '()))))
                            (declare (not safe))
                            (cons _lift1121399_ __tmp130956))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130955))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130954 _stx121243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr121409_)))))))
                           (__tmp130942
                            (let ((__obj130642
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130642)
                              __obj130642)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130943
                        gx#current-expander-context
                        __tmp130942))))
                  (___kont130431130432_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self121242_ _stx121243_)))))
              (let ((___match130452130453_
                     (lambda (_e121257121289_
                              _hd121256121292_
                              _tl121255121294_
                              _e121260121297_
                              _hd121259121300_
                              _tl121258121302_
                              ___splice130429130430_
                              _target121261121305_
                              _tl121263121307_)
                       (letrec ((_loop121264121310_
                                 (lambda (_hd121262121313_ _bind121268121315_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd121262121313_))
                                       (let ((_e121265121318_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd121262121313_))))
                                         (let ((_lp-tl121267121323_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121265121318_)))
                                               (_lp-hd121266121321_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121265121318_))))
                                           (let ((__tmp130974
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd121266121321_
                                                          _bind121268121315_))))
                                             (declare (not safe))
                                             (_loop121264121310_
                                              _lp-tl121267121323_
                                              __tmp130974))))
                                       (let ((_bind121269121326_
                                              (reverse _bind121268121315_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl121258121302_))
                                             (let ((_e121272121329_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl121258121302_))))
                                               (let ((_tl121270121334_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e121272121329_)))
                                                     (_hd121271121332_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e121272121329_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl121270121334_))
                                                     (let ((_L121337_
                                                            _hd121271121332_)
                                                           (_L121338_
                                                            _bind121269121326_))
                                                       (if (let ((__tmp130972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130973
                                 (lambda (_g121358121361_ _g121359121363_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g121358121361_ _g121359121363_)))))
                            (declare (not safe))
                            (foldr1 __tmp130973 '() _L121338_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130972))
                   (___kont130427130428_ _L121337_ _L121338_)
                   (___kont130431130432_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130431130432_))))
                                             (___kont130431130432_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop121264121310_ _target121261121305_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130425130426_))
                    (let ((_e121257121289_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130425130426_))))
                      (let ((_tl121255121294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121257121289_)))
                            (_hd121256121292_
                             (let ()
                               (declare (not safe))
                               (##car _e121257121289_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121255121294_))
                            (let ((_e121260121297_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121255121294_))))
                              (let ((_tl121258121302_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121260121297_)))
                                    (_hd121259121300_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121260121297_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd121259121300_))
                                    (let ((___splice130429130430_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd121259121300_
                                              '0))))
                                      (let ((_tl121263121307_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130429130430_
                                                '1)))
                                            (_target121261121305_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130429130430_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121263121307_))
                                            (___match130452130453_
                                             _e121257121289_
                                             _hd121256121292_
                                             _tl121255121294_
                                             _e121260121297_
                                             _hd121259121300_
                                             _tl121258121302_
                                             ___splice130429130430_
                                             _target121261121305_
                                             _tl121263121307_)
                                            (___kont130431130432_))))
                                    (___kont130431130432_))))
                            (___kont130431130432_))))
                    (___kont130431130432_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self120385_ _stx120386_)
        (letrec* ((_bind-e__128548128549_
                   (lambda (_id121226_ _expr121227_ _compile?121228_)
                     (let ((__tmp130977
                            (let ()
                              (declare (not safe))
                              (cons _id121226_ '())))
                           (__tmp130975
                            (let ((__tmp130976
                                   (if _compile?121228_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120385_
                                          _expr121227_))
                                       _expr121227_)))
                              (declare (not safe))
                              (cons __tmp130976 '()))))
                       (declare (not safe))
                       (cons __tmp130977 __tmp130975))))
                  (_bind-e__0__128550128551_
                   (lambda (_id121233_ _expr121234_)
                     (let ((_compile?121236_ '#t))
                       (declare (not safe))
                       (_bind-e__128548128549_
                        _id121233_
                        _expr121234_
                        _compile?121236_))))
                  (_bind-e120388_
                   (lambda _g130979_
                     (let ((_g130978_
                            (let ()
                              (declare (not safe))
                              (##length _g130979_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130978_ 2))
                              (apply (lambda (_id121233_ _expr121234_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128550128551_
                                          _id121233_
                                          _expr121234_)))
                                     _g130979_))
                             ((let () (declare (not safe)) (##fx= _g130978_ 3))
                              (apply (lambda (_id121238_
                                              _expr121239_
                                              _compile?121240_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128548128549_
                                          _id121238_
                                          _expr121239_
                                          _compile?121240_)))
                                     _g130979_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130979_))))))
                  (_compile-bindings120389_
                   (lambda (_rest120524_)
                     (let _lp120526_ ((_rest120528_ _rest120524_)
                                      (_bind120529_ '()))
                       (let* ((_rest120530120538_ _rest120528_)
                              (_else120532120546_
                               (lambda () (reverse _bind120529_)))
                              (_K120534121213_
                               (lambda (_rest120549_ _hd120550_)
                                 (let* ((___stx130475130476_ _hd120550_)
                                        (_g120555120602_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130475130476_)))))
                                   (let ((___kont130477130478_
                                          (lambda (_L121120_ _L121121_)
                                            (let* ((___stx130455130456_
                                                    _L121120_)
                                                   (_g121136121150_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130455130456_)))))
                                              (let ((___kont130457130458_
                                                     (lambda (_L121198_)
                                                       (let ((__tmp130980
                                                              (let ((__tmp130981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128548128549_
                                _L121121_
                                _L121120_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130981 _bind120529_))))
                 (declare (not safe))
                 (_lp120526_ _rest120549_ __tmp130980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130459130460_
                                                     (lambda (_L121163_)
                                                       (let ((_g130982_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120386_
                         _L121121_
                         _L121163_
                         '#t))))
                 (begin
                   (let ((_g130983_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130982_)
                                (##vector-length _g130982_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130983_ 3)))
                         (error "Context expects 3 values" _g130983_)))
                   (let ((_ids121173_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130982_ 0)))
                         (_impls121174_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130982_ 1)))
                         (_clauses121175_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130982_ 2))))
                     (let* ((_g130984_
                             (for-each gx#core-bind-runtime! _ids121173_))
                            (_xbind121178_
                             (map _bind-e120388_ _ids121173_ _impls121174_))
                            (_expr*121180_
                             (let ((__tmp130986
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121175_)))
                                   (__tmp130985
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130986
                                __tmp130985)))
                            (_bind*121182_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128548128549_
                                _L121121_
                                _expr*121180_
                                '#f))))
                       (let ((__tmp130988
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121121_)))
                             (__tmp130987
                              (map gxc#identifier-symbol _ids121173_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130988
                          '" => "
                          __tmp130987))
                       (let ((__tmp130989
                              (let ((__tmp130990
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind120529_
                                               _xbind121178_))))
                                (declare (not safe))
                                (cons _bind*121182_ __tmp130990))))
                         (declare (not safe))
                         (_lp120526_ _rest120549_ __tmp130989)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130466130467_
                                                       (lambda (_e121141121190_
                                                                _hd121140121193_
                                                                _tl121139121195_)
                                                         (let ((_L121198_
                                                                _tl121139121195_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L121198_))
                       (___kont130457130458_ _L121198_)
                       (___kont130459130460_ _tl121139121195_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130455130456_))
                                                      (let ((_e121141121190_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130455130456_))))
                (let ((_tl121139121195_
                       (let () (declare (not safe)) (##cdr _e121141121190_)))
                      (_hd121140121193_
                       (let () (declare (not safe)) (##car _e121141121190_))))
                  (___match130466130467_
                   _e121141121190_
                   _hd121140121193_
                   _tl121139121195_)))
              (let () (declare (not safe)) (_g121136121150_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130479130480_
                                          (lambda (_L120948_ _L120949_)
                                            (let* ((_g120963120993_
                                                    (lambda (_g120964120990_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120964120990_))))
                                                   (_g120962121088_
                                                    (lambda (_g120964120996_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120964120996_))
                                                          (let ((_e120970120998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120964120996_))))
                    (let ((_hd120969121001_
                           (let ()
                             (declare (not safe))
                             (##car _e120970120998_)))
                          (_tl120968121003_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120970120998_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120968121003_))
                          (let ((_e120973121006_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120968121003_))))
                            (let ((_hd120972121009_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120973121006_)))
                                  (_tl120971121011_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120973121006_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120972121009_))
                                  (let ((_e120976121014_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120972121009_))))
                                    (let ((_hd120975121017_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120976121014_)))
                                          (_tl120974121019_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120976121014_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120975121017_))
                                          (let ((_e120979121022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120975121017_))))
                                            (let ((_hd120978121025_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120979121022_)))
                                                  (_tl120977121027_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120979121022_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120978121025_))
                                                  (let ((_e120982121030_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120978121025_))))
                                                    (let ((_hd120981121033_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120982121030_)))
                                                          (_tl120980121035_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120982121030_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120980121035_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120977121027_))
                      (let ((_e120985121038_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120977121027_))))
                        (let ((_hd120984121041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120985121038_)))
                              (_tl120983121043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120985121038_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120983121043_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120974121019_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120971121011_))
                                      (let ((_e120988121046_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120971121011_))))
                                        (let ((_hd120987121049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120988121046_)))
                                              (_tl120986121051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120988121046_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120986121051_))
                                              ((lambda (_L121054_
                                                        _L121055_
                                                        _L121056_)
                                                 (let* ((_lambda-id121080_
                                                         (let ((__tmp130992
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120949_)))
                       (__tmp130991 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130992 __tmp130991)))
                (_lambda-id121082_
                 (let ((__tmp130993
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120386_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id121080_ __tmp130993)))
                (_g130994_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id121082_)))
                (_new-case-lambda-expr121085_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L121054_
                    'id:
                    _L121056_
                    'new-id:
                    _lambda-id121082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130996
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120949_)))
                                                         (__tmp130995
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id121082_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130996
                                                      '" => "
                                                      __tmp130995))
                                                   (let ((__tmp130999
                                                          (let ((__tmp131000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128548128549_
                            _L120949_
                            _new-case-lambda-expr121085_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp131000 _rest120549_)))
                 (__tmp130997
                  (let ((__tmp130998
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128550128551_
                            _lambda-id121082_
                            _L121055_))))
                    (declare (not safe))
                    (cons __tmp130998 _bind120529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120526_
                                                      __tmp130999
                                                      __tmp130997))))
                                               _hd120987121049_
                                               _hd120984121041_
                                               _hd120981121033_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120963120993_
                                                 _g120964120996_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120963120993_ _g120964120996_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120963120993_ _g120964120996_)))
                              (let ()
                                (declare (not safe))
                                (_g120963120993_ _g120964120996_)))))
                      (let ()
                        (declare (not safe))
                        (_g120963120993_ _g120964120996_)))
                  (let ()
                    (declare (not safe))
                    (_g120963120993_ _g120964120996_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120963120993_
                                                     _g120964120996_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120963120993_
                                             _g120964120996_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120963120993_ _g120964120996_)))))
                          (let ()
                            (declare (not safe))
                            (_g120963120993_ _g120964120996_)))))
                  (let ()
                    (declare (not safe))
                    (_g120963120993_ _g120964120996_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120962121088_ _L120948_))))
                                         (___kont130481130482_
                                          (lambda (_L120672_ _L120673_)
                                            (let* ((_g120687120740_
                                                    (lambda (_g120688120737_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120688120737_))))
                                                   (_g120686120916_
                                                    (lambda (_g120688120743_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120688120743_))
                                                          (let ((_e120696120745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120688120743_))))
                    (let ((_hd120695120748_
                           (let ()
                             (declare (not safe))
                             (##car _e120696120745_)))
                          (_tl120694120750_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120696120745_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120694120750_))
                          (let ((_e120699120753_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120694120750_))))
                            (let ((_hd120698120756_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120699120753_)))
                                  (_tl120697120758_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120699120753_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120698120756_))
                                  (let ((_e120702120761_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120698120756_))))
                                    (let ((_hd120701120764_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120702120761_)))
                                          (_tl120700120766_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120702120761_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120701120764_))
                                          (let ((_e120705120769_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120701120764_))))
                                            (let ((_hd120704120772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120705120769_)))
                                                  (_tl120703120774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120705120769_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120704120772_))
                                                  (let ((_e120708120777_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120704120772_))))
                                                    (let ((_hd120707120780_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120708120777_)))
                                                          (_tl120706120782_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120708120777_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120706120782_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120703120774_))
                      (let ((_e120711120785_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120703120774_))))
                        (let ((_hd120710120788_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120711120785_)))
                              (_tl120709120790_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120711120785_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120710120788_))
                              (let ((_e120714120793_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120710120788_))))
                                (let ((_hd120713120796_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120714120793_)))
                                      (_tl120712120798_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120714120793_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120712120798_))
                                      (let ((_e120717120801_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120712120798_))))
                                        (let ((_hd120716120804_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120717120801_)))
                                              (_tl120715120806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120717120801_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120716120804_))
                                              (let ((_e120720120809_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120716120804_))))
                                                (let ((_hd120719120812_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120720120809_)))
                                                      (_tl120718120814_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120720120809_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120719120812_))
                                                      (let ((_e120723120817_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120719120812_))))
                (let ((_hd120722120820_
                       (let () (declare (not safe)) (##car _e120723120817_)))
                      (_tl120721120822_
                       (let () (declare (not safe)) (##cdr _e120723120817_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120722120820_))
                      (let ((_e120726120825_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120722120820_))))
                        (let ((_hd120725120828_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120726120825_)))
                              (_tl120724120830_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120726120825_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120724120830_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120721120822_))
                                  (let ((_e120729120833_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120721120822_))))
                                    (let ((_hd120728120836_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120729120833_)))
                                          (_tl120727120838_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120729120833_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120727120838_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120718120814_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120715120806_))
                                                  (let ((_e120732120841_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120715120806_))))
                                                    (let ((_hd120731120844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120732120841_)))
                                                          (_tl120730120846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120732120841_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120730120846_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120709120790_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120700120766_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120697120758_))
                              (let ((_e120735120849_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120697120758_))))
                                (let ((_hd120734120852_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120735120849_)))
                                      (_tl120733120854_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120735120849_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120733120854_))
                                      ((lambda (_L120857_
                                                _L120858_
                                                _L120859_
                                                _L120860_
                                                _L120861_)
                                         (let* ((_get-kws-id120901_
                                                 (let ((__tmp131002
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120673_)))
                                                       (__tmp131001
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp131002
                                                    __tmp131001)))
                                                (_get-kws-id120903_
                                                 (let ((__tmp131003
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120386_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120901_
                                                    __tmp131003)))
                                                (_main-id120905_
                                                 (let ((__tmp131005
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120673_)))
                                                       (__tmp131004
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp131005
                                                    __tmp131004)))
                                                (_main-id120907_
                                                 (let ((__tmp131006
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120386_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120905_
                                                    __tmp131006)))
                                                (_g131007_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120903_)))
                                                (_g131008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120907_)))
                                                (_new-kw-dispatch120911_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120857_
                                                    'id:
                                                    _L120861_
                                                    'new-id:
                                                    _get-kws-id120903_)))
                                                (_new-get-kws120913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120858_
                                                    'id:
                                                    _L120860_
                                                    'new-id:
                                                    _main-id120907_))))
                                           (let ((__tmp131011
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120673_)))
                                                 (__tmp131010
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120903_)))
                                                 (__tmp131009
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120907_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp131011
                                              '" => "
                                              __tmp131010
                                              '" => "
                                              __tmp131009))
                                           (let ((__tmp131012
                                                  (let ((__tmp131017
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128548128549_
                                                            _main-id120907_
                                                            _L120859_
                                                            '#f)))
                                                        (__tmp131013
                                                         (let ((__tmp131016
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__128548128549_
                           _get-kws-id120903_
                           _new-get-kws120913_
                           '#f)))
                       (__tmp131014
                        (let ((__tmp131015
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__128548128549_
                                  _L120673_
                                  _new-kw-dispatch120911_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp131015 _rest120549_))))
                   (declare (not safe))
                   (cons __tmp131016 __tmp131014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp131017
                                                          __tmp131013))))
                                             (declare (not safe))
                                             (_lp120526_
                                              __tmp131012
                                              _bind120529_))))
                                       _hd120734120852_
                                       _hd120731120844_
                                       _hd120728120836_
                                       _hd120725120828_
                                       _hd120707120780_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120687120740_ _g120688120743_)))))
                              (let ()
                                (declare (not safe))
                                (_g120687120740_ _g120688120743_)))
                          (let ()
                            (declare (not safe))
                            (_g120687120740_ _g120688120743_)))
                      (let ()
                        (declare (not safe))
                        (_g120687120740_ _g120688120743_)))
                  (let ()
                    (declare (not safe))
                    (_g120687120740_ _g120688120743_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120687120740_
                                                     _g120688120743_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120687120740_
                                                 _g120688120743_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120687120740_
                                             _g120688120743_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120687120740_ _g120688120743_)))
                              (let ()
                                (declare (not safe))
                                (_g120687120740_ _g120688120743_)))))
                      (let ()
                        (declare (not safe))
                        (_g120687120740_ _g120688120743_)))))
              (let ()
                (declare (not safe))
                (_g120687120740_ _g120688120743_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120687120740_
                                                 _g120688120743_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120687120740_ _g120688120743_)))))
                              (let ()
                                (declare (not safe))
                                (_g120687120740_ _g120688120743_)))))
                      (let ()
                        (declare (not safe))
                        (_g120687120740_ _g120688120743_)))
                  (let ()
                    (declare (not safe))
                    (_g120687120740_ _g120688120743_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120687120740_
                                                     _g120688120743_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120687120740_
                                             _g120688120743_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120687120740_ _g120688120743_)))))
                          (let ()
                            (declare (not safe))
                            (_g120687120740_ _g120688120743_)))))
                  (let ()
                    (declare (not safe))
                    (_g120687120740_ _g120688120743_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120686120916_ _L120672_))))
                                         (___kont130483130484_
                                          (lambda (_L120623_ _L120624_)
                                            (let ((__tmp131018
                                                   (let ((__tmp131019
                                                          (let ((__tmp131020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp131021
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120385_ _L120623_))))
                           (declare (not safe))
                           (cons __tmp131021 '()))))
                    (declare (not safe))
                    (cons _L120624_ __tmp131020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp131019
                                                           _bind120529_))))
                                              (declare (not safe))
                                              (_lp120526_
                                               _rest120549_
                                               __tmp131018)))))
                                     (let* ((___match130550130551_
                                             (lambda (_e120583120648_
                                                      _hd120582120651_
                                                      _tl120581120653_
                                                      _e120586120656_
                                                      _hd120585120659_
                                                      _tl120584120661_
                                                      _e120589120664_
                                                      _hd120588120667_
                                                      _tl120587120669_)
                                               (let ((_L120672_
                                                      _hd120588120667_)
                                                     (_L120673_
                                                      _hd120585120659_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120673_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L120672_)))
                                                     (___kont130481130482_
                                                      _L120672_
                                                      _L120673_)
                                                     (___kont130483130484_
                                                      _hd120588120667_
                                                      _hd120582120651_)))))
                                            (___match130528130529_
                                             (lambda (_e120572120924_
                                                      _hd120571120927_
                                                      _tl120570120929_
                                                      _e120575120932_
                                                      _hd120574120935_
                                                      _tl120573120937_
                                                      _e120578120940_
                                                      _hd120577120943_
                                                      _tl120576120945_)
                                               (let ((_L120948_
                                                      _hd120577120943_)
                                                     (_L120949_
                                                      _hd120574120935_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120949_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120948_)))
                                                     (___kont130479130480_
                                                      _L120948_
                                                      _L120949_)
                                                     (___match130550130551_
                                                      _e120572120924_
                                                      _hd120571120927_
                                                      _tl120570120929_
                                                      _e120575120932_
                                                      _hd120574120935_
                                                      _tl120573120937_
                                                      _e120578120940_
                                                      _hd120577120943_
                                                      _tl120576120945_)))))
                                            (___match130506130507_
                                             (lambda (_e120561121096_
                                                      _hd120560121099_
                                                      _tl120559121101_
                                                      _e120564121104_
                                                      _hd120563121107_
                                                      _tl120562121109_
                                                      _e120567121112_
                                                      _hd120566121115_
                                                      _tl120565121117_)
                                               (let ((_L121120_
                                                      _hd120566121115_)
                                                     (_L121121_
                                                      _hd120563121107_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121121_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121120_)))
                                                     (___kont130477130478_
                                                      _L121120_
                                                      _L121121_)
                                                     (___match130528130529_
                                                      _e120561121096_
                                                      _hd120560121099_
                                                      _tl120559121101_
                                                      _e120564121104_
                                                      _hd120563121107_
                                                      _tl120562121109_
                                                      _e120567121112_
                                                      _hd120566121115_
                                                      _tl120565121117_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130475130476_))
                                           (let ((_e120561121096_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130475130476_))))
                                             (let ((_tl120559121101_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120561121096_)))
                                                   (_hd120560121099_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120561121096_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120560121099_))
                                                   (let ((_e120564121104_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120560121099_))))
                                                     (let ((_tl120562121109_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120564121104_)))
                                                           (_hd120563121107_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120564121104_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120562121109_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120559121101_))
                       (let ((_e120567121112_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120559121101_))))
                         (let ((_tl120565121117_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120567121112_)))
                               (_hd120566121115_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120567121112_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120565121117_))
                               (___match130506130507_
                                _e120561121096_
                                _hd120560121099_
                                _tl120559121101_
                                _e120564121104_
                                _hd120563121107_
                                _tl120562121109_
                                _e120567121112_
                                _hd120566121115_
                                _tl120565121117_)
                               (let ()
                                 (declare (not safe))
                                 (_g120555120602_)))))
                       (let () (declare (not safe)) (_g120555120602_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120559121101_))
                       (let ((_e120597120615_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120559121101_))))
                         (let ((_tl120595120620_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120597120615_)))
                               (_hd120596120618_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120597120615_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120595120620_))
                               (___kont130483130484_
                                _hd120596120618_
                                _hd120560121099_)
                               (let ()
                                 (declare (not safe))
                                 (_g120555120602_)))))
                       (let () (declare (not safe)) (_g120555120602_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120559121101_))
                                                       (let ((_e120597120615_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120559121101_))))
                 (let ((_tl120595120620_
                        (let () (declare (not safe)) (##cdr _e120597120615_)))
                       (_hd120596120618_
                        (let () (declare (not safe)) (##car _e120597120615_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120595120620_))
                       (___kont130483130484_ _hd120596120618_ _hd120560121099_)
                       (let () (declare (not safe)) (_g120555120602_)))))
               (let () (declare (not safe)) (_g120555120602_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120555120602_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120530120538_))
                             (let ((_hd120535121216_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120530120538_)))
                                   (_tl120536121218_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120530120538_))))
                               (let* ((_hd121221_ _hd120535121216_)
                                      (_rest121223_ _tl120536121218_))
                                 (declare (not safe))
                                 (_K120534121213_ _rest121223_ _hd121221_)))
                             (let ()
                               (declare (not safe))
                               (_else120532120546_))))))))
          (let* ((___stx130567130568_ _stx120386_)
                 (_g120392120419_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130567130568_)))))
            (let ((___kont130569130570_
                   (lambda (_L120479_ _L120480_ _L120481_)
                     (let ((__tmp131023
                            (lambda ()
                              (let ((_hd120518_
                                     (let ((__tmp131024
                                            (let ((__tmp131025
                                                   (lambda (_g120510120513_
                                                            _g120511120515_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g120510120513_
                                                             _g120511120515_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp131025
                                                      '()
                                                      _L120480_))))
                                       (declare (not safe))
                                       (_compile-bindings120389_ __tmp131024)))
                                    (_body120519_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120385_
                                        _L120479_))))
                                (let ((__tmp131026
                                       (let ((__tmp131027
                                              (let ((__tmp131028
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body120519_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd120518_
                                                      __tmp131028))))
                                         (declare (not safe))
                                         (cons _L120481_ __tmp131027))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp131026
                                   _stx120386_)))))
                           (__tmp131022
                            (let ((__obj130643
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130643)
                              __obj130643)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp131023
                        gx#current-expander-context
                        __tmp131022))))
                  (___kont130573130574_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120385_ _stx120386_)))))
              (let ((___match130594130595_
                     (lambda (_e120399120431_
                              _hd120398120434_
                              _tl120397120436_
                              _e120402120439_
                              _hd120401120442_
                              _tl120400120444_
                              ___splice130571130572_
                              _target120403120447_
                              _tl120405120449_)
                       (letrec ((_loop120406120452_
                                 (lambda (_hd120404120455_ _bind120410120457_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120404120455_))
                                       (let ((_e120407120460_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120404120455_))))
                                         (let ((_lp-tl120409120465_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120407120460_)))
                                               (_lp-hd120408120463_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120407120460_))))
                                           (let ((__tmp131031
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120408120463_
                                                          _bind120410120457_))))
                                             (declare (not safe))
                                             (_loop120406120452_
                                              _lp-tl120409120465_
                                              __tmp131031))))
                                       (let ((_bind120411120468_
                                              (reverse _bind120410120457_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120400120444_))
                                             (let ((_e120414120471_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120400120444_))))
                                               (let ((_tl120412120476_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120414120471_)))
                                                     (_hd120413120474_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120414120471_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120412120476_))
                                                     (let ((_L120479_
                                                            _hd120413120474_)
                                                           (_L120480_
                                                            _bind120411120468_)
                                                           (_L120481_
                                                            _hd120398120434_))
                                                       (if (let ((__tmp131029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131030
                                 (lambda (_g120502120505_ _g120503120507_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120502120505_ _g120503120507_)))))
                            (declare (not safe))
                            (foldr1 __tmp131030 '() _L120480_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp131029))
                   (___kont130569130570_ _L120479_ _L120480_ _L120481_)
                   (___kont130573130574_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130573130574_))))
                                             (___kont130573130574_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120406120452_ _target120403120447_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130567130568_))
                    (let ((_e120399120431_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130567130568_))))
                      (let ((_tl120397120436_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120399120431_)))
                            (_hd120398120434_
                             (let ()
                               (declare (not safe))
                               (##car _e120399120431_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120397120436_))
                            (let ((_e120402120439_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120397120436_))))
                              (let ((_tl120400120444_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120402120439_)))
                                    (_hd120401120442_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120402120439_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120401120442_))
                                    (let ((___splice130571130572_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120401120442_
                                              '0))))
                                      (let ((_tl120405120449_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130571130572_
                                                '1)))
                                            (_target120403120447_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130571130572_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120405120449_))
                                            (___match130594130595_
                                             _e120399120431_
                                             _hd120398120434_
                                             _tl120397120436_
                                             _e120402120439_
                                             _hd120401120442_
                                             _tl120400120444_
                                             ___splice130571130572_
                                             _target120403120447_
                                             _tl120405120449_)
                                            (___kont130573130574_))))
                                    (___kont130573130574_))))
                            (___kont130573130574_))))
                    (___kont130573130574_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind120303_)
        (let* ((___stx130597130598_ _bind120303_)
               (_g120306120323_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx130597130598_)))))
          (let ((___kont130599130600_
                 (lambda (_L120359_ _L120360_)
                   (if (let () (declare (not safe)) (gx#identifier? _L120360_))
                       (let ((_$e120376_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L120359_))))
                         (if _$e120376_
                             _$e120376_
                             (let ((_$e120379_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L120359_))))
                               (if _$e120379_
                                   _$e120379_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120359_))))))
                       '#f)))
                (___kont130601130602_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx130597130598_))
                (let ((_e120312120335_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx130597130598_))))
                  (let ((_tl120310120340_
                         (let () (declare (not safe)) (##cdr _e120312120335_)))
                        (_hd120311120338_
                         (let ()
                           (declare (not safe))
                           (##car _e120312120335_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120311120338_))
                        (let ((_e120315120343_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120311120338_))))
                          (let ((_tl120313120348_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120315120343_)))
                                (_hd120314120346_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120315120343_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120313120348_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120310120340_))
                                    (let ((_e120318120351_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120310120340_))))
                                      (let ((_tl120316120356_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120318120351_)))
                                            (_hd120317120354_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120318120351_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120316120356_))
                                            (___kont130599130600_
                                             _hd120317120354_
                                             _hd120314120346_)
                                            (___kont130601130602_))))
                                    (___kont130601130602_))
                                (___kont130601130602_))))
                        (___kont130601130602_))))
                (___kont130601130602_))))))))
